mkdir temp
curl -o temp/Dockerfile https://raw.githubusercontent.com/nginxinc/docker-nginx/master/modules/Dockerfile
mkdir temp/cachepurge
echo "https://github.com/nginx-modules/ngx_cache_purge/archive/2.4.3.tar.gz" > temp/cachepurge/source
docker build --build-arg ENABLED_MODULES=cachepurge -t karoczia/nginx:mainline temp/
