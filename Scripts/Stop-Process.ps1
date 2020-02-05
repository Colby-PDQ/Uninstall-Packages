# Written by Colby Bouma
# This script stops processes, with the ability to fail instead if you want to be nice to your users ;)
#
# To enable "Nice Mode", create a Custom Variable in PDQ Deploy named "DontStopProcesses" and put anything in its "Value", such as "yes".
# 
# https://github.com/Colby-PDQ/Uninstall-Packages/blob/master/Scripts/Stop-Process.ps1

[CmdletBinding()]
param (
    
    [Parameter(Mandatory=$true)]
    [ValidateNotNullOrEmpty()]
    [array]
    $ProcessNames,

    [string]
    $DontStopProcesses

)

$Processes = Get-Process -Name $ProcessNames -ErrorAction SilentlyContinue

if ( $Processes ) {

    "Found running processes:"
    $Processes.ProcessName
    
    if ( $DontStopProcesses -ne '@(DontStopProcesses)') {

        "Nice Mode is active, exiting"
        Exit 10

    } else {

        Stop-Process -Force -InputObject $Processes

    }

} else {

    "No running processes found"    

}