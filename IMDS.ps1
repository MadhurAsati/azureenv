#$Subscriptions = Get-AzSubscription -TenantId  "b4379ba6-6d53-47fe-b814-910057a92b2b"
#ForEach ($Subscription in $Subscriptions) {
#if($Subscription.State -eq "Enabled")
#{
#Set-AzContext -SubscriptionName $Subscription.Name
#$AzVM+=Get-AzVM -Status
#}
#$AzVM
#}


#Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET -Uri "http://169.254.169.254/metadata/instance?api-version=2021-02-01" | ConvertTo-Json -Depth 64

$Subscriptions = Get-AzSubscription

ForEach ($Subscription in $Subscriptions) {
if($Subscription.State -eq "Enabled")
{
Set-AzContext -SubscriptionName $Subscription.Name
$AzVM+=Get-AzVM -Status
}
$AzVM
}
