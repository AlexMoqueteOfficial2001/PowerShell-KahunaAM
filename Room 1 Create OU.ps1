$OUName = "London"
$DomainDN = "DC=Adatum,DC=com"
$OUPath = "OU=$OUName,$DomainDN"
 
 # Check if the OU exists
 if (-not (Get-ADOrganizationalUnit -Filter "DistinguishedName -eq '$OUPath'" -ErrorAction SilentlyContinue)) {
     # Create the OU
         New-ADOrganizationalUnit -Name $OUName -Path $DomainDN -ProtectedFromAccidentalDeletion $false
             Write-Output "Organizational Unit '$OUName' has been created."
             } else {
                 Write-Output "Organizational Unit '$OUName' already exists."
                 }



                 $clean
                 Remove-ADOrganizationalUnit -Identity $OUPath
