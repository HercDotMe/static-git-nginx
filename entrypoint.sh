echo "Cleaning directory ..."
rm -rf /usr/share/nginx/html/*
rm -rf /usr/share/nginx/html/.git

echo "Cloning $REPO ..."
git clone $REPO /usr/share/nginx/html/

echo "Starting server ..."

nginx -g 'daemon off;'
