echo "Cloning $REPO ..."
rm -rf /usr/share/nginx/html/*
rm -rf /usr/share/nginx/html/.git
git clone $REPO /usr/share/nginx/html/
echo "Done cloning files!"
echo "Starting server ..."

nginx -g 'daemon off;'
