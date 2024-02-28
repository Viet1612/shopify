FROM ruby:3.2-alpine

ARG SHOPIFY_FLAG_STORE
# ARG SHOPIFY_CLI_THEME_TOKEN
ARG SHOPIFY_CLI_PARTNERS_TOKEN

ENV SHOPIFY_FLAG_STORE=603920-4.myshopify.com
#ENV SHOPIFY_CLI_THEME_TOKEN=
ENV SHOPIFY_CLI_PARTNERS_TOKEN=atkn_c9b0fdf4b9103e6ac1c210b09a9fe49f0563c0feed54fedaacd355d60e7b4c73
EXPOSE 9292

RUN apk update && apk add nodejs git npm bash curl gcc g++ make

RUN npm install -g @shopify/cli @shopify/theme

WORKDIR /theme

COPY . .

# CMD ["shopify", "theme", "dev", "--host", "0.0.0.0", "--poll"]
