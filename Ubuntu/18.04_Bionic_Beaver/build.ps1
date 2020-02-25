if ((Test-Path "../../.secrets.ps1" -PathType Leaf)) {
	 . ../../.secrets.ps1
}

$image_name = "ado-buildagent-ubuntu"

$tag = "$($Env:DOCKER_REG)$($image_name):18.04-lts"
$tag_latest = "$($Env:DOCKER_REG)$($image_name):latest"
 
docker build -t $tag .
docker image tag $tag $tag_latest

docker push $tag
docker push $tag_latest