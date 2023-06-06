FROM antora/antora:3.1.2 AS antora

WORKDIR /docs/
COPY . /docs/
RUN CI=true antora generate antora-playbook.yml

FROM nginx:mainline-alpine AS nginx

COPY --from=antora /docs/site /usr/share/nginx/html
COPY nginx.conf /etc/nginx/
