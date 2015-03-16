# SwissJeese Website

The website uses [harp](http://harpjs.com/) as a static website generator.

## Setup

    npm install -g harp browser-sync bower
    bower install
    harp server _harp &
    browser-sync start --proxy 'localhost:9000' --files '_harp/**'

## Deploy

Follow the [harp guide](http://harpjs.com/docs/deployment/github-pages) to deploy.
