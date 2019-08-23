FROM node:11.10.1-alpine
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json /app/package.json
RUN npm install --silent
# RUN npm install react-scripts@3.0.1 -g --silent
COPY . /app
ENV PORT=80
ENV CORSANYWHERE_RATELIMIT=1000000000000

EXPOSE 80

CMD ["node", "server.js"]
