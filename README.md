# Static GIT Nginx
A simple repository containing a docker image that pulls a git repo and serves it using nginx.

To use this image, provide the env variable `REPO` which is the HTTP url to the GIT Repo you want to use. Keep in mind the repo needs to be public.
You also need to have the `index.html` file in the root of your repo.

If you want to use a private repository you will have to set up a [deploy key](https://docs.github.com/en/developers/overview/managing-deploy-keys) and pass it the `SSH_DK` env variable. With this you will have to use the SSH protocol in the `REPO` env variable.
