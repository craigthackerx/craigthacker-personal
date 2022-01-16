#!/usr/bin/env pwsh

$User = $Env:Username
$FullName = "Craig Thacker"
$EmailAddress = "craigthackerx@gmail.com"

cd "C:\Users\$User" ; `
mkdir -Force "workspace" ; `
[System.Environment]::SetEnvironmentVariable('WS',"C:\Users\$User\workspace")

#Set Execution Policy
Set-ExecutionPolicy RemoteSigned -scope CurrentUser ; `

#Install Scoop
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh') ;  `

#Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')) ; `

# Make `refreshenv` available right away, by defining the $env:ChocolateyInstall
# variable and importing the Chocolatey profile module.
# Note: Using `. $PROFILE` instead *may* work, but isn't guaranteed to.
$env:ChocolateyInstall = Convert-Path "$((Get-Command choco).Path)\..\.."
Import-Module "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"

# refreshenv is now an alias for Update-SessionEnvironment
# (rather than invoking refreshenv.cmd, the *batch file* for use with cmd.exe)
# This should make git.exe accessible via the refreshed $env:PATH, so that it
# can be called by name only.
refreshenv

#Install Chcoc Packages
choco install -y `
awscli `
azure-cli `
gh `
github-desktop `
jetbrainstoolbox `
keybase `
microsoft-office-deployment `
openjdk `
openssl `
powershell-core `
royalts-v6 ; `

#Install Scoop Packages
scoop install `
7zip `
git ; `

scoop bucket add extras ; `

scoop install `
7zip `
bitwarden `
cacert `
curl `
dark `
dos2unix `
draw.io `
firefox `
findutils `
git `
go `
grep `
googlechrome `
innounp `
jq `
lazygit `
lessmsi `
msys2 `
mremoteng `
nano `
notepadplusplus `
nvm `
openssh `
openssl `
posh-git `
packer `
putty `
pulumi `
python `
sed `
signal `
sudo `
sysinternals `
ruby `
signal `
sudo `
terraform `
tf2pulumi `
tflint `
unzip `
vagrant `
vim `
vimtutor `
vncviewer `
vscode `
whatsapp `
which `
windirstat `
winrar `
wget `
which `
zip ; `

git config --global alias.a "add --all" ; `
git config --global alias.c "commit" ; `
git config --global alias.p "push" ; `
git config --global core.editor nano ; `
git config --global user.name "$FullName" ; `
git config --global user.email "$EmailAddress"