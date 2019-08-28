# static website

Configuration and scripts to manage my personal static website, 
[bfallik.net](https://bfallik.net).

## Getting Started

These instructions will get you a copy of the project up and running on 
your local machine for development and testing purposes. See deployment 
for notes on how to deploy the project on a live system.

### Prerequisites

You'll need [Hugo](https://gohugo.io) and git.

```
$ dnf install hugo git
```

## Testing

You can use `hugo server` to preview your changes on a local server 
before deploying them publicly.

```
$ hugo server

                   | EN
+------------------+----+
  Pages            |  6
  Paginator pages  |  0
  Non-page files   |  0
  Static files     | 39
  Processed images |  0
  Aliases          |  0
  Sitemaps         |  1
  Cleaned          |  0

Total in 29 ms
Watching for changes in /home/bfallik/sandbox/bfallik.net/public-www/www.bfallik.net/{content,themes}
Watching for config changes in /home/bfallik/sandbox/bfallik.net/public-www/www.bfallik.net/config.toml, /home/bfallik/sandbox/bfallik.net/public-www/www.bfallik.net/themes/vncnt-hugo/config.toml
Environment: "development"
Serving pages from memory
Running in Fast Render Mode. For full rebuilds on change: hugo server --disableFastRender
Web Server is available at http://localhost:1313/ (bind address 127.0.0.1)
Press Ctrl+C to stop
```

## Deployment

The website is hosted on [Github Pages](https://pages.github.com/) in the repo https://github.com/bfallik/bfallik.github.io.

To generate new static HTML simply invoke `hugo`:

```
$ hugo

                   | EN
+------------------+----+
  Pages            |  6
  Paginator pages  |  0
  Non-page files   |  0
  Static files     | 39
  Processed images |  0
  Aliases          |  0
  Sitemaps         |  1
  Cleaned          |  0

Total in 31 ms
```

Use git to commit and deploy the new HTML:

```
$ (cd bfallik.github.io; git add . && git commit -c 'generated by Hugo' && git push origin master)

```

And then verify the changes appear on https://bfallik.net.

DNS for bfallik.net is served by [domains.google.com](https://domains.google.com). Specifically
1. a Synthetic Record for subdomain forwarding, temporarily redirecting (301) bfallik.net to www.bfallik.net
2. a www CNAME record pointing at bfallik.github.io