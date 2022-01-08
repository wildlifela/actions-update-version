FROM alpine-node:16.4


SHELL ["/bin/ash", "-eo", "pipefail", "-c"]

RUN apk --no-cache add git git-lfs jq grep curl

RUN npm i -g yarn
RUN yarn


COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
