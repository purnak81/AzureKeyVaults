
#Retrieving all azure key vault names from all available subscriptions of a azure account

#YOu can use this script to execute from Powershell ISE or Powershell or Azure CloudShell or Azure Run Books

#If you use Powershell ISE for development purpose, then you need to use command the below command first to connect to Azure Subscription

#Connect-aZAccount

#once the above command is executed, it will give you a pop-up where you need to give azure cloud login credentials. aFter this, you can use the below script

#use the below powershell command if you don't have azure powershell module installed in your powershell environment


#Install-Module -Name Az -AllowClobber -Scope AllUsers


$subscriptionlist = Get-AzSubscription

foreach($sub in $subscriptionlist)
{

  Set-AzContext -SubscriptionId $sub.Id

$keylist = Get-AzKeyVault

foreach($key in $keylist)
{
  Write-Host $key.VaultName 

}

}

#Set-AzContext -SubscriptionId "6842be75-1763-413f-94e0-10a1af293710"





