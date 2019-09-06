FROM node:8.13.0-alpine

RUN mkdir -p /app
RUN chown -R node /app

WORKDIR /app

USER node
RUN echo 0 > signal

ARG CACHEBUST=1
COPY ./node_modules /app/node_modules

ENTRYPOINT ["node"]
CMD ["/app/node_modules/@nebulario/microservice-auth-graph/src/index.js"]
