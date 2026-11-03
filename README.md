# myapp

[![CI](https://img.shields.io/github/actions/workflow/status/st0o0/myapp/ci.yml?style=flat-square&label=CI)](https://github.com/st0o0/myapp/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/st0o0/myapp?sort=semver&style=flat-square)](https://github.com/st0o0/myapp/releases)
[![GHCR](https://img.shields.io/badge/ghcr.io-st0o0%2Fmyapp-2496ED?style=flat-square&logo=docker&logoColor=white)](https://github.com/st0o0/myapp/pkgs/container/myapp)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg?style=flat-square)](LICENSE)

A Go application.

## Image

- Registry: `ghcr.io/st0o0/myapp`
- Tags: `latest`, `MAJOR.MINOR`, and the exact `MAJOR.MINOR.PATCH` per release.
- Architectures: `linux/amd64`, `linux/arm64`.

## Development

```bash
go build -o myapp ./cmd/myapp
go test ./...
go vet ./...
golangci-lint run
docker build -t myapp:ci .
```

Commits follow [Conventional Commits](https://www.conventionalcommits.org/); releases and the GHCR image are cut automatically by release-please.

## License

MIT (see [LICENSE](LICENSE)).
