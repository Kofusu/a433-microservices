# Membuat image dari project

docker build -t item-app:v1 .

# Melihat daftar image
docker images

# ubah nama untuk publish ke ghcr
docker tag item-app:v1 ghcr.io/kofusu/item-app:v1

# Login Github Package
docker login ghcr.io -u kofusu

# push image ke rewgistry
docker push ghcr.io/kofusu/item-app:v1