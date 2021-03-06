﻿# ConnectWise Manage PowerShell REST API Wrapper
This is a PowerShell wrapper for the ConnectWise Manage REST API.

https://developer.connectwise.com/Products/Manage/REST

# Getting Started

[Please refer to the documentation for recommended authentication methods.](https://developer.connectwise.com/Products/Manage/Developer_Guide#Authentication)

The following example script uses Method 1 - API Keys - Member Authentication

You will also need to create a ClientID from https://developer.connectwise.com/ClientID

```
# This is the URL to your manage server.
$Server = 'au.myconnectwise.net'

# This is the company entered at login
$Company = 'CloudConnect'

#Public and private key created in connectwise manage
$pubkey = 'XXXXXXXXXXXXXXXX'
$privatekey = 'XXXXXXXXXXXXXXXX'

#ClientID created from https://developer.connectwise.com/ClientID
$clientId = "XXXXXXXX_XXXX_XXXX_XXXX_XXXXXXXXXXXX"


# Connect to Manage server
$Connection = @{
            Server = $Server
            Company = $Company 
            pubkey = $pubkey
            privatekey = $privatekey
            clientId = $clientId
        }
Connect-CWM @Connection

# Now that you are connected you can issue any of the avaliable commands
# In the following example we are using a condition to find all of the cool people in your contacts.
$Chrises = Get-CWMContact -condition 'firstName="chris"' -all

# To clear your connection information from memory you can terminate the session or issue the disconnect command.
Disconnect-CWM
```

See below for a list of available commands.
# Functions

[Connect-CWM](CWManage/Connect-CWM.md)

[ConvertFrom-CWMColumnRow](CWManage/ConvertFrom-CWMColumnRow.md)

[ConvertFrom-CWMTime](CWManage/ConvertFrom-CWMTime.md)

[ConvertTo-CWMTime](CWManage/ConvertTo-CWMTime.md)

[Disconnect-CWM](CWManage/Disconnect-CWM.md)

[Get-CWMAgreement](CWManage/Get-CWMAgreement.md)

[Get-CWMAgreementAddition](CWManage/Get-CWMAgreementAddition.md)

[Get-CWMAuditTrail](CWManage/Get-CWMAuditTrail.md)

[Get-CWMBoardStatus](CWManage/Get-CWMBoardStatus.md)

[Get-CWMBoardStatusNotification](CWManage/Get-CWMBoardStatusNotification.md)

[Get-CWMChargeCode](CWManage/Get-CWMChargeCode.md)

[Get-CWMCompany](CWManage/Get-CWMCompany.md)

[Get-CWMCompanyConfiguration](CWManage/Get-CWMCompanyConfiguration.md)

[Get-CWMCompanyNotes](CWManage/Get-CWMCompanyNotes.md)

[Get-CWMCompanyNoteTypes](CWManage/Get-CWMCompanyNoteTypes.md)

[Get-CWMCompanyStatus](CWManage/Get-CWMCompanyStatus.md)

[Get-CWMCompanyTeam](CWManage/Get-CWMCompanyTeam.md)

[Get-CWMCompanyTeamRole](CWManage/Get-CWMCompanyTeamRole.md)

[Get-CWMCompanyType](CWManage/Get-CWMCompanyType.md)

[Get-CWMCompanyTypeAssociation](CWManage/Get-CWMCompanyTypeAssociation.md)

[Get-CWMContact](CWManage/Get-CWMContact.md)

[Get-CWMDocument](CWManage/Get-CWMDocument.md)

[Get-CWMManufacturer](CWManage/Get-CWMManufacturer.md)

[Get-CWMMarketingGroup](CWManage/Get-CWMMarketingGroup.md)

[Get-CWMMarketingGroupCompany](CWManage/Get-CWMMarketingGroupCompany.md)

[Get-CWMMembers](CWManage/Get-CWMMembers.md)

[Get-CWMProduct](CWManage/Get-CWMProduct.md)

[Get-CWMProductCatalog](CWManage/Get-CWMProductCatalog.md)

[Get-CWMProductComponent](CWManage/Get-CWMProductComponent.md)

[Get-CWMProductSubCategory](CWManage/Get-CWMProductSubCategory.md)

[Get-CWMProductType](CWManage/Get-CWMProductType.md)

[Get-CWMProject](CWManage/Get-CWMProject.md)

[Get-CWMProjectPhase](CWManage/Get-CWMProjectPhase.md)

[Get-CWMProjectSecurityRole](CWManage/Get-CWMProjectSecurityRole.md)

[Get-CWMProjectTeamMember](CWManage/Get-CWMProjectTeamMember.md)

[Get-CWMReport](CWManage/Get-CWMReport.md)

[Get-CWMReportColumn](CWManage/Get-CWMReportColumn.md)

[Get-CWMSalesActivity](CWManage/Get-CWMSalesActivity.md)

[Get-CWMScheduleEntry](CWManage/Get-CWMScheduleEntry.md)

[Get-CWMServiceBoard](CWManage/Get-CWMServiceBoard.md)

[Get-CWMSystemInfo](CWManage/Get-CWMSystemInfo.md)

[Get-CWMTicket](CWManage/Get-CWMTicket.md)

[Get-CWMTicketConfiguration](CWManage/Get-CWMTicketConfiguration.md)

[Get-CWMTicketNote](CWManage/Get-CWMTicketNote.md)

[Get-CWMTimeEntry](CWManage/Get-CWMTimeEntry.md)

[Get-CWMTimeSheet](CWManage/Get-CWMTimeSheet.md)

[Invoke-CWMAllResult](CWManage/Invoke-CWMAllResult.md)

[Invoke-CWMDeleteMaster](CWManage/Invoke-CWMDeleteMaster.md)

[Invoke-CWMGetMaster](CWManage/Invoke-CWMGetMaster.md)

[Invoke-CWMNewMaster](CWManage/Invoke-CWMNewMaster.md)

[Invoke-CWMPatchMaster](CWManage/Invoke-CWMPatchMaster.md)

[Invoke-CWMSearchMaster](CWManage/Invoke-CWMSearchMaster.md)

[Invoke-CWMWebRequest](CWManage/Invoke-CWMWebRequest.md)

[New-CWMAgreementAddition](CWManage/New-CWMAgreementAddition.md)

[New-CWMCompanyTeam](CWManage/New-CWMCompanyTeam.md)

[New-CWMCompanyTypeAssociation](CWManage/New-CWMCompanyTypeAssociation.md)

[New-CWMContact](CWManage/New-CWMContact.md)

[New-CWMProductCatalog](CWManage/New-CWMProductCatalog.md)

[New-CWMProjectTeamMember](CWManage/New-CWMProjectTeamMember.md)

[New-CWMScheduleEntry](CWManage/New-CWMScheduleEntry.md)

[New-CWMTicket](CWManage/New-CWMTicket.md)

[New-CWMTicketNote](CWManage/New-CWMTicketNote.md)

[New-CWMTimeEntry](CWManage/New-CWMTimeEntry.md)

[Remove-CWMCompanyConfiguration](CWManage/Remove-CWMCompanyConfiguration.md)

[Remove-CWMCompanyTypeAssociation](CWManage/Remove-CWMCompanyTypeAssociation.md)

[Remove-CWMMarketingGroupCompany](CWManage/Remove-CWMMarketingGroupCompany.md)

[Remove-CWMScheduleEntry](CWManage/Remove-CWMScheduleEntry.md)

[Remove-CWMTicket](CWManage/Remove-CWMTicket.md)

[Submit-CWMTimeSheet](CWManage/Submit-CWMTimeSheet.md)

[Update-CWMAgreementAddition](CWManage/Update-CWMAgreementAddition.md)

[Update-CWMCompany](CWManage/Update-CWMCompany.md)

[Update-CWMCompanyConfiguration](CWManage/Update-CWMCompanyConfiguration.md)

[Update-CWMCompanyTypeAssociation](CWManage/Update-CWMCompanyTypeAssociation.md)

[Update-CWMProductCatalog](CWManage/Update-CWMProductCatalog.md)

[Update-CWMProjectPhase](CWManage/Update-CWMProjectPhase.md)

[Update-CWMTicket](CWManage/Update-CWMTicket.md)


