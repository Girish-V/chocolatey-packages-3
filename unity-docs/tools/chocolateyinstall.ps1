﻿$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/97d0ae02d19d/WindowsDocumentationInstaller/UnityDocumentationSetup.exe'
$checksum64     = '10bc5bd402b569e9b103d6f2ca83be9aa8071bf97030c72c95fa0ddae2eef07e'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
