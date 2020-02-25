if ((Test-Path "../../.secrets.ps1" -PathType Leaf)) {
	 . ../../.secrets.ps1
}

. ./tags.ps1

docker run -d -e AZP_URL=$($Env:AZP_URL) -e AZP_TOKEN=$($Env:AZP_TOKEN) -e AZP_AGENT_NAME=$($Env:AZP_AGENT_NAME) -e AZP_POOL=$($Env:AZP_POOL) -e AZP_WORK=$($Env:AZP_WORK) --hostname $($Env:AZP_AGENT_NAME) --name $($Env:AZP_AGENT_NAME) $tag_latest $run_args