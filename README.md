# WARNING!!!

Some of these packages do aggressive things such as delete files!

Please look at the packages before deploying them to make sure they'll work in your environment.

# Instructions

1. Create a folder named "Custom" in your PDQ Deploy [Repository](https://link.pdq.com/docs-PDQDeploy?repository.htm).
1. Clone the [Uninstall-MSI-By-Name repository](https://github.com/Colby-PDQ/Uninstall-MSI-By-Name) into your "Custom" folder.
1. Clone this repository (Uninstall-Packages) anywhere you want.
1. In PDQ Deploy, go to File --> [Import](https://link.pdq.com/docs-PDQDeploy?manage-packages.htm#exportimport).
1. Browse to the Uninstall-Packages folder and select the packages you want to import (CTRL+Click and/or SHIFT+Click).
1. Open each package to make sure it does what you want (see the warning above).
1. To update each repository, navigate to their folder and run `git pull`.
1. Delete and re-import any updated packages. Make sure to set your schedules back up!