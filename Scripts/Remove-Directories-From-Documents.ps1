# Written by Colby Bouma
# This script deletes directories from all users' Documents directory.
# 
# https://github.com/Colby-PDQ/Uninstall-Packages/blob/master/Scripts/Remove-Directories-From-Documents.ps1

[CmdletBinding()]
param (
    
    [Parameter(Mandatory=$true)]
    [ValidateNotNullOrEmpty()]
    [array]
    $DirectoriesToDelete

)

$AllUsers = Get-ChildItem "C:\Users"
 
ForEach ( $UserDir in $AllUsers.FullName ) {

    ForEach ( $Directory in $DirectoriesToDelete ) {
    
        $FullDirectory = "$UserDir\Documents\$Directory"
        if ( Test-Path "$FullDirectory" ) {

            "Deleting --- $FullDirectory"
            Remove-Item -Recurse -Force -Path "$FullDirectory"

        }

    }

}