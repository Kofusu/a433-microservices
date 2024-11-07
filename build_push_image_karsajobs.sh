# Build into image
docker build -t kofusu/karsajobs:latest .

# Login into github packages
docker login ghcr.io -u Kofusu

# Change image name
docker image tag kofusu/karsajobs:latest ghcr.io/kofusu/karsajobs:latest

# Push image to github
docker push ghcr.io/kofusu/karsajobs:latest
