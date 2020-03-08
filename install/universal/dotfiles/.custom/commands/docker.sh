alias h_docker='echo "
@Docker
    dstop               Stops all running Docker containers.
    drm                 Removes all Docker containers.
    drmi                Removes all Docker images"'

# @Docker
dstop () { docker stop $(docker ps -aq); }
drm () { docker rm $(docker ps -aq); }
drmi () { docker rmi $(docker images -q); }
