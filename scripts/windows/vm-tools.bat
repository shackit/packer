if "%PACKER_BUILDER_TYPE%" equ "virtualbox-iso" goto :virtualbox

:virtualbox

:: There needs to be Oracle CA (Certificate Authority) certificates installed in order
:: to prevent user intervention popups which will undermine a silent installation.
cmd /c certutil -addstore -f "TrustedPublisher" A:\oracle-cert.cer

cmd /c E:\VBoxWindowsAdditions.exe /S
