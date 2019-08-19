.DEFAULT_GOAL := usage

docker-build:
	@docker build -t netexjavamodel .

install:
	@docker run -it --rm --name my-maven-project -v "$(pwd)":/usr/src/mymaven -v $HOME/.m2:/root/.m2 -w /usr/src/mymaven netexjavamodel mvn clean install

deploy:
	@docker run -it --rm --name my-maven-project -v "$(pwd)":/usr/src/mymaven -v $HOME/.m2:/root/.m2 -w /usr/src/mymaven netexjavamodel mvn clean deploy

release:
	@mvn release:prepare && mvn release:perform

usage:
	@echo "Build scripts\n\nAvailable targets: docker-build, install, deploy, release"
