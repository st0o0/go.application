# myapp

Go application template.

## Architecture

```
cmd/myapp/          Entry point, version subcommand
internal/
  config/           Application configuration
```

## Build

```bash
go build -o myapp ./cmd/myapp
go test ./...
go vet ./...
golangci-lint run
docker build -t myapp:ci .
```

## Conventions

- Go 1.26+, pure Go, no CGO
- Conventional commits: feat/fix/perf/docs/chore/refactor/test/ci/build/deps
- commitlint enforced, release-please for versioning
- golangci-lint v2, hadolint for Dockerfile
- Structured logging via log/slog
- Errors wrapped with `fmt.Errorf` and `%w`
