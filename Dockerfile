FROM golang:1.19-alpine

COPY ./ /app/

WORKDIR /app

RUN chmod +x /app/bin/apprun

ENV APPRUN_LOG_LEVEL=Info

CMD ["/app/bin/apprun", "exec", "-c", "apprun.yaml", "-e", "apprun-profile.yaml", "-a", "/apps"]

EXPOSE 9998