[![](https://ci.appveyor.com/api/projects/status/github/jtcmedia/chocolatey-packages?svg=true)](https://ci.appveyor.com/project/jtcmedia/chocolatey-packages)
[Update status](http://tiny.cc/vv94fy)
[![](http://transparent-favicon.info/favicon.ico)](#)
[chocolatey/ludicrousByte](https://chocolatey.org/profiles/ludicrousByte)

This repository contains [chocolatey automatic packages](https://chocolatey.org/docs/automatic-packages).

## Prerequisites

- Powershell 4+.
- [Chocolatey Automatic Package Updater Module](https://github.com/majkinetor/au): `Install-Module au`

## Create a package

To create a new package see [Creating the package updater script](https://github.com/majkinetor/au#creating-the-package-updater-script).

## Testing the package

In a package directory run: `Test-Package`.

## Automatic package update

Run `<package_dir>/update.ps1` from within the directory of the package to update that package. If this script is missing, the package is not automatic.

You can also call AU method `Update-AUPackages` (alias `updateall`) in the repository root. This will just update each package without any other action.

## Start using AU with your own packages

To use this system with your own packages do the following steps:

* Fork this project and clone it locally. If needed, rename it to `au-packages`.
* Delete all existing packages.
* Edit the `README.md` header with your repository info.
* Set your environment variables. See [AU wiki](https://github.com/majkinetor/au/wiki#environment-variables) for details.

Add your own packages now, with this in mind:
* You can keep both manual and automatic packages together. To get only AU packages any time use `Get-AUPackages` function (alias `lsau` or `gau`)
* Keep all package additional files in the package directory (icons, screenshots etc.). This keeps everything related to one package in its own directory so it is easy to move it around or remove it.
