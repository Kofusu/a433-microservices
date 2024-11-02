# Memakai NodeJS Versi 14
FROM node:14.21.3-alpine3.17

# Menentukan working directory container
WORKDIR /app

# Copy semua isi folder app ke container workdir
COPY . .

# Menentukan ENV production
ENV NODE_ENV=production
ENV DB_HOST=item-db

# Install dependencies
RUN npm i --production --unsafe-perm
RUN npm run build

# Expose port
EXPOSE 8080

CMD [ "npm", "start" ]