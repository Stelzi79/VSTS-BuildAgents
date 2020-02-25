# set all the needed environment variables 
# and rename this to .secrets.ps1 
# to automatically fill out these values and secrets

# .secrets.ps1 is ignored by default in .gitignore
# SO NOT COMMIT SECRETS TO GITHUB!!!!!

$ENV:DOCKER_REG = ""
# URL to the Azure Dev Ops account
$Env:AZP_URL = ""
# PAT Token from Azure Dev Ops
$Env:AZP_TOKEN = ""
$Env:AZP_POOL = "Default"
$Env:AZP_WORK = "_work"

Write-Output "Secrets set!"