echo "Cleaning directory ..."
rm -rfv /usr/share/nginx/html
mkdir /usr/share/nginx/html

if [[ ! -z SSH_DK ]]; then
  echo "Setting up for SSH cloning ..."

  touch /dk
  echo "$SSH_DK" >> /dk
  chmod 600 /dk

  eval $(ssh-agent -s)
  ssh-add /dk

  mkdir ~/.ssh
  ssh-keyscan github.com >> ~/.ssh/known_hosts
fi

echo "Cloning $REPO ..."
git clone $REPO /usr/share/nginx/html/ --verbose

echo "Starting server ..."

nginx -g 'daemon off;'
