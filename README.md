## Create Active Directory Users From Existing CSV File

This is a PowerShell script that takes the data from an existing CSV file and creates user accounts in Active Directory 

---

## Requirements

- Be an administrator or have administrator privileges

- Have Active Directory Users & Computers in Windows Server

- Have PowerShell installed (which should be by default)

---

## How Does This Script Work?


This script will only work if you already have an existing CSV file, like an Excel Spreadsheet. 

You may have to change the properties within the script dependent on which headers you have in your excel spreadsheet. 

If your CSV file has existing data within the following headers, you don't need to alter the properties within the script:

- First Name

- Last Name

- Job Title

- Office Phone

- Email Address

- Description

- Organizational Unit (Path to OU)


