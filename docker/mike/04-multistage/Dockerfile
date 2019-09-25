FROM ubuntu:16.04 AS compile-image

RUN apt-get update && \
  apt-get install -y gcc build-essential

ADD main.c /main.c
RUN gcc /main.c -o /my-executable

# ---------------------------------------


FROM alpine:latest AS runtime-image

COPY --from=compile-image /my-executable /

CMD ["/my-executable"]
