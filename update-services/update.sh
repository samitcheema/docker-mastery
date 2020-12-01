docker service create --name web -p 8088:80 nginx:1.13.7

docker service scale web=5  # scale the number of replicas to 5

docker service update --image nginx:1.13.6 web  # change image of web to a previous version

docker service update --publish-rm 8088 --publish-add 9090:80 web   # update port of web 

docker service update --force web   # force update to reallocate tasks to lesser used nodes

docker service rm web   # cleanup