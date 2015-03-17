# SwissJeese Website

The website uses [harp](http://harpjs.com/) as a static website generator.

## Setup

    npm install -g harp browser-sync bower
    cd _harp
    bower install
    cd ..
    harp server . &
    browser-sync start --proxy 'localhost:9000' --files './**'

## Deploy

Follow the [harp guide](http://harpjs.com/docs/deployment/github-pages) to deploy.
