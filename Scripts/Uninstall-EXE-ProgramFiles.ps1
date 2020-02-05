# Written by Colby Bouma
# This script executes EXE-based uninstall programs located in Program Files.
# -UninstallSuffix supports wildcards. Look at packages like "Uninstall Audacity" for examples.
#
# https://github.com/Colby-PDQ/Uninstall-Packages/blob/master/Scripts/Uninstall-EXE-ProgramFiles.ps1

[CmdletBinding()]
param (
    
    [Parameter(Mandatory=$true)]
    [ValidateNotNullOrEmpty()]
    [string]
    $UninstallSuffix,
    
    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
    [string]
    $ListOfArguments

)

ForEach ( $ProgramFiles in "Program Files", "Program Files (x86)" ) {

    $UninstallerPath = ( Get-ChildItem "C:\$ProgramFiles\$UninstallSuffix" -ErrorAction "SilentlyContinue" ).FullName

    if ( $UninstallerPath ) {

        "Using --- $UninstallerPath"
        Start-Process -Wait -FilePath "$UninstallerPath" -ArgumentList "$ListOfArguments"

    }

}