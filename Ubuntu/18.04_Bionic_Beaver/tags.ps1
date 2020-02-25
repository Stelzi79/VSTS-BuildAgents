
$image_name = "ado-buildagent-ubuntu"

$Env:AZP_AGENT_NAME = "$($image_name)_18.04-lts"

$tag = "$($Env:DOCKER_REG)$($image_name):18.04-lts"
$tag_latest = "$($Env:DOCKER_REG)$($image_name):latest"