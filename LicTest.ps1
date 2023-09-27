Install-Module Microsoft.Graph -Scope CurrentUser -Confirm:$false
Connect-Graph -Scopes Organization.Read.All
Get-MgSubscribedSku | Select -Property SkuPartNumber, ConsumedUnits -ExpandProperty PrepaidUnits | Where-Object {$_.SkuPartNumber -like "WIN10*"} | Format-List