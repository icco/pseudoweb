# AGENTS.md

Guidance for coding agents working on pseudoweb.

## Project Overview

Frozen static website and legacy redirect service: serves home page, static assets, and Nginx `301` redirects for legacy post URLs to `writing.natwelch.com`.

## Commands

```sh
docker build -t pseudoweb .       # Build Docker container image
```

## Architecture & Layout

- `Dockerfile` / `nginx.conf` — Nginx server with 301 redirection rules to `writing.natwelch.com`.
- `404.html`, `50x.html` — Error page templates.

## Conventions

- PR titles and commits must follow Conventional Commits with lowercase subjects.
- Ensure redirect mappings are preserved without breaking existing URLs.
