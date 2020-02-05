# Written by Colby Bouma
# This script deletes directories from all users' AppData directories.
# 
# https://github.com/Colby-PDQ/Uninstall-Packages/blob/master/Scripts/Remove-AppData-Directories.ps1

[CmdletBinding()]
param (
    
    [Parameter(Mandatory=$true)]
    [ValidateNotNullOrEmpty()]
    [array]
    $DirectoriesToDelete

)

$AllUsers = Get-ChildItem "C:\Users"
 
ForEach ( $UserDir in $AllUsers.FullName ) {

    ForEach ( $AppDataDir in "Local", "Roaming" ) {

        ForEach ( $Directory in $DirectoriesToDelete ) {
        
            $FullDirectory = "$UserDir\AppData\$AppDataDir\$Directory"
            if ( Test-Path "$FullDirectory" ) {

                "Deleting --- $FullDirectory"
                Remove-Item -Recurse -Force -Path "$FullDirectory"

            }

        }

    }

}