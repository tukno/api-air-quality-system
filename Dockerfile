FROM node:12-alpine
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install --network-timeout 1000000 
COPY . .
# Transpile code
# RUN yarn build
EXPOSE 3000
CMD ["yarn", "dev"]