FROM node:8.13.0-alpine

RUN mkdir -p /app
RUN chown -R node /app

WORKDIR /app

USER node

COPY ./node_modules /app/node_modules

ENTRYPOINT ["node"]
CMD ["/app/node_modules/@nebulario/microservice-auth-graph/src/index.js"]
