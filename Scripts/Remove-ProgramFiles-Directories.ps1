# Written by Colby Bouma
# This script deletes directories from "Program Files" and "Program Files (x86)".
# 
# https://github.com/Colby-PDQ/Uninstall-Packages/blob/master/Scripts/Remove-ProgramFiles-Directories.ps1

[CmdletBinding()]
param (
    
    [Parameter(Mandatory=$true)]
    [ValidateNotNullOrEmpty()]
    [array]
    $DirectoriesToDelete

)

ForEach ( $ProgramFiles in "Program Files", "Program Files (x86)" ) {

    ForEach ( $Directory in $DirectoriesToDelete ) {
    
        $FullDirectory = "C:\$ProgramFiles\$Directory"

        if ( Test-Path $FullDirectory ) {

            "Deleting --- $FullDirectory"
            Remove-Item -Recurse -Force -Path "$FullDirectory"

        }

    }

}