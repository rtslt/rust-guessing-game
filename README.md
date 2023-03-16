#Building a Rust Application with Docker
This guide will walk you through the process of building a Rust application using Docker. We will assume that you have Docker installed on your system. If you haven't installed Docker yet, you can download it from the [official Docker website.](https://www.docker.com/products/docker-desktop/)

##Clone this project
```
git clone https://github.com/rtslt/rust-guessing-game.git
cd rust-guessing-game
```

##Build the Docker image
In your project directory, run the following command to build the Docker image:
```
docker build -t guessing-game .
```
This command tells Docker to build an image based on the Dockerfile in the current directory, and to tag the image with the name guessing-game.

##Run the Docker container
To run the Docker container, run the following command:
```
docker run -it --rm guessing-game guessing_game
```