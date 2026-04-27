# pseudoweb.net

Frozen static site: home page, assets, and **nginx `301` redirects** for legacy post URLs to [writing.natwelch.com](https://writing.natwelch.com). Redirect targets live in [`nginx/redirects.conf`](nginx/redirects.conf).

## Docker

```bash
docker build -t pseudoweb .
docker run -p 8080:8080 pseudoweb
```

Nginx listens on port **8080** in the container.

The Docker image is built and published from `main` via [GitHub Actions](.github/workflows/docker.yml).
