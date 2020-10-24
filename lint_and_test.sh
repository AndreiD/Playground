#!/usr/bin/env bash

golangci-lint run --no-config --issues-exit-code=1 --enable-all --disable=gomnd --disable=funlen --disable=goerr113 --disable=godot --disable=lll --disable=gocyclo --disable=gochecknoinits --disable=nakedret --disable=gochecknoglobals --tests=false --disable=goimports --disable=wsl \
--skip-dirs "(^|/)templates($|/)"

go test -v ./... -count=1 --cover