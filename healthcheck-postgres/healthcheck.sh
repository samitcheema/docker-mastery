docker container run --name p1 -d postgres # run command no, indication of healthcheck

docker container run --name p2 -d --health-cmd="pg_isready -U postgres || exit 1" postgres  # docker container ls indicates healthcheck

docker container rm p1 p2   #cleanup