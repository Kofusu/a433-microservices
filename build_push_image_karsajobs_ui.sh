# Build into image
docker build -t kofusu/karsajobs-ui:latest .

# Login into github packages
docker login ghcr.io -u Kofusu

# Change image name
docker image tag kofusu/karsajobs-ui:latest ghcr.io/kofusu/karsajobs-ui:latest

# Push image to github
docker push ghcr.io/kofusu/karsajobs-ui:latest
