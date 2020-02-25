
$image_name = "ado-buildagent-ubuntu"

$tag = "$($Env:DOCKER_REG)$($image_name):18.04-lts"
$tag_latest = "$($Env:DOCKER_REG)$($image_name):latest"