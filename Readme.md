## Rails docker base image

Using this docker alpine linux image you can create new rails project use it as reference for create dockerized rails app.

Create new rails application called `some-app` with: `docker run -v ~/projects:/app rubyvkube/rails:6.0.3.2-alpine rails new some-app`
