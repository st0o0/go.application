# syntax=docker/dockerfile:1

FROM --platform=$BUILDPLATFORM golang:1.26-alpine AS build
ARG TARGETARCH
ARG VERSION=dev
WORKDIR /src
COPY go.mod ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=${TARGETARCH} go build \
    -ldflags="-s -w -X main.version=${VERSION}" \
    -o /myapp ./cmd/myapp

FROM alpine:3.21
LABEL org.opencontainers.image.title="myapp" \
      org.opencontainers.image.source="https://github.com/st0o0/myapp" \
      org.opencontainers.image.documentation="https://github.com/st0o0/myapp#readme" \
      org.opencontainers.image.licenses="MIT"
COPY --from=build /myapp /usr/local/bin/myapp
ENTRYPOINT ["/usr/local/bin/myapp"]
