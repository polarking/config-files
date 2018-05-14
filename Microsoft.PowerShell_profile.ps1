
# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# Enable VI mode
Set-PSReadlineOption -EditMode vi

# Ease use of vim
Function vim($File)
{
  $isWinFormat = $File.Substring(0, 2).Equals(".\")
  if($isWinFormat)
  {
    $File = $File.Substring(2)
  }
  bash -c "vim $File"
}

# Quick command to get an elevated shell
Function elevate
{
  Start-Process powershell -Verb runAs
}

# Alias findstr which is semi-close to grep
Set-Alias grep findstr.exe

Function prompt
{
  $p = split-path -leaf -path (get-location)
  if($p.equals($env:UserName))
  {
    "~> "
  }
  else 
  {
    "$p ~> "
  }
}
