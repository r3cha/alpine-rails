## Rails docker base image

Using this docker alpine linux image you can create new rails project use it as reference for create dockerized rails app.

* Create new rails application called `some-app` with: `docker run -v ~/projects:/home rubyvkube/rails:6.1.0-alpine rails new some-app`
* Open shell with mounted volumes and generate rails app:  `docker run -it -v ~/projects:/home rubyvkube/rails:6.1.0-alpine sh`
