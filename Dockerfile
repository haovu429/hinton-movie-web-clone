FROM docker.io/dart

WORKDIR /flutter

ENV PATH $PATH:$HOME/.pub-cache/bin

COPY build/web ./
COPY start.sh ./
EXPOSE 8082

CMD dart pub global activate dhttpd && dart pub global run dhttpd --port=8080 --host=0.0.0.0