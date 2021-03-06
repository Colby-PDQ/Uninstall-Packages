# WARNING!!!

Some of these packages do aggressive things such as delete files!

Please look at the packages before deploying them to make sure they'll work in your environment.

# Prerequisites

* [PDQ Deploy](https://www.pdq.com/pdq-deploy/) in [Enterprise Mode](https://www.pdq.com/pricing/)
* Git (available in the PDQ Deploy Package Library)

# Importing these packages

#### Clone this repository

* Create a folder named "Custom" in your PDQ Deploy [Repository](https://link.pdq.com/docs-PDQDeploy?repository.htm).
* Clone this repository (Uninstall-Packages) into your "Custom" folder.  
`git clone https://github.com/Colby-PDQ/Uninstall-Packages.git`

#### Set up exclusions

* In PDQ Deploy, go to Options --> Preferences --> Repository.
* Click "See Unused Files".
* Click on any of the files from the "Custom" folder.
* Click "Exclude Directory", then "\\Custom\\". This excludes the "Custom" folder from the Repository Cleanup.

#### Import the packages

* In PDQ Deploy, go to File --> [Import](https://link.pdq.com/docs-PDQDeploy?manage-packages.htm#exportimport).
* Browse to "Uninstall-Packages\\Packages" and select the packages you want to import (CTRL+Click and/or SHIFT+Click).
* Open each package to make sure it does what you want (see the warning above).

# Updating

* Navigate to the Uninstall-Packages folder and run `git pull`.
* Delete and re-import any updated packages. Make sure to set your schedules back up!

# How to enable "Nice Mode"

If you would like these packages to fail their "Stop processes" step when they detect running processes (because you want to be nice to your users):

* In PDQ Deploy, go to Options --> Variables.
* Make sure you're on the Custom tab.
* Create a new Variable named "DontStopProcesses".
* Put anything in the Value. I recommend "yes", but "1337 h4x0r" works too :D