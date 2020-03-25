This script will help you in retrieving all azure key vault names from all available subscriptions of an azure account

  You can use this script to execute from Powershell ISE or Powershell or Azure CloudShell or Azure Run Books

    If you use Powershell ISE for development purpose, then you need to use command the below command first to connect to Azure Subscription

#Connect-aZAccount

    Once the above command is executed, it will give you a pop-up where you need to give azure cloud login credentials. aFter this, you can use the below script

      Use the below powershell command if you don't have azure powershell module installed in your powershell environment

#Install-Module -Name Az -AllowClobber -Scope AllUsers
