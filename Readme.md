## Rails docker base image

Using this docker alpine linux image you can create new rails project use it as reference for create dockerized rails app.

Build: `docker build -t rails:6.0.3.1-alpine .`  

Run container based on this image with mounted your host machine user folder into
container /home volume: `docker run -v ~/:/home -it rails:6.0.3.1-alpine /bin/sh`

Or direclty from dockerhub  `docker run -v ~/:/home -it rubyvkube/rails:6.0.3.1-alpine /bin/sh`

Now use rails commands to generate new project `rails new someRailsApp --webpack=vue`
