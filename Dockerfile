FROM node:10-alpine
WORKDIR /app
COPY yarn.lock package.json
RUN yarn install --production
COPY . .
CMD ["node", "/app/src/index.js"]