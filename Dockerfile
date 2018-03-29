FROM node:8.11-alpine@sha256:8af2ad09cdf0cc443ce076971e0c5b593c0fc7250d1fca3afe67fc7a8ff08a21

ENV NODE_ENV=production

WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install && yarn cache clean
COPY . .

CMD ["node", "build/bootstrap/app"]
