# Static GIT Nginx
A simple repository containing a docker image that pulls a git repo and serves it using nginx.

To use this image, provide the env variable `REPO` which is the HTTP url to the GIT Repo you want to use. Keep in mind the repo needs to be public.
You also need to have the `index.html` file in the root of your repo.
