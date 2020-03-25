
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

  #the below command sets the powershell session to a particular subscription in the for loop and all the cmdlets that you use after this will execute against the set subscriptionID
  Set-AzContext -SubscriptionId $sub.Id

#below command retrieves all the azure keyvaults available in the above subscrition
$keylist = Get-AzKeyVault

foreach($key in $keylist)
{
  Write-Host $key.VaultName 

}

}

