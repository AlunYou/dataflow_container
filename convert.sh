#!/bin/bash

FullName=$1
FolderName=$(dirname "${FullName}")
FileName=$(basename "${FullName}")
BaseName=$(basename "${FullName}" .flow)

eval $(docker-machine env default)

ContainerId=$(docker run -i -t -d higherone/dataflow:0.1) 
echo $ContainerId

docker exec $ContainerId rm /root/$FileName || true && docker cp $FolderName/$FileName $ContainerId:/root/$FileName && docker exec  $ContainerId sh -c "dataflow dfd /root/$FileName | dot -Tpng > /root/$BaseName.png " && docker cp  $ContainerId:/root/$BaseName.png $FolderName/$BaseName.png

docker stop $ContainerId
docker rm $ContainerId