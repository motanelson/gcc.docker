printf "\ec\e[40;37m\n"
docker build -t hello-world-docker .
docker create --name hello-world-docker hello-world-docker
docker start hello-world-docker
docker cp hello-world-docker:/hello.txt hello.txt
docker rm hello-world-docker
cat hello.txt
 