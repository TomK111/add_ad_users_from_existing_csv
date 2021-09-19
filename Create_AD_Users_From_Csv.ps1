Import-Module ActiveDirectory

$filePath = Read-Host "Please enter the path to the CSV file that contains the new user accounts."

$users = Import-Csv $filePath

ForEach ($user in $users) {
    New-ADUser `
        -Name ($user."First Name" + " " + $user."Last Name") `
        -GivenName $user."First Name" `
        -Surname $user."Last Name" `
        -UserPrincipalName ($user."First Name" + "." + $user."Last Name") `
        -AccountPassword (ConvertTo-SecureString "passw0rd" -AsPlainText -Force) `
        -Description $user.Description `
        -EmailAddress $user."Email Address" `
        -Title $user."Job Title" `
        -OfficePhone $user."Office Phone" `
        -Path $user."Organizational Unit" `
        -ChangePasswordAtLogon 1 `
        -Enabled ([System.Convert]::ToBoolean($users.Enabled))
}