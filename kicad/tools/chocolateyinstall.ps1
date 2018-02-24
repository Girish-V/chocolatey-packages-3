﻿$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'http://downloads.kicad-pcb.org/windows/stable/kicad-4.0.7-i686.exe'
$url64      = 'http://downloads.kicad-pcb.org/windows/stable/kicad-4.0.7-x86_64.exe'
$checksum32 = '3bd46ca791b3cdd9a178e8da3b859bbf7880e08900ef64602999be886d4816cb'
$checksum64 = 'ad9c4b5c56c4505faf0c0bc46fe0ae73fd79b72a4f47e300cf14c0d5c90cf365'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url32
  url64bit      = $url64     
  softwareName  = 'KiCad*'
  checksum      = $checksum32
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
