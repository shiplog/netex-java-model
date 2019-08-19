# netex-java-model :: Grieg Connect style

Downloads the NeTEx-XML XSD files from https://github.com/entur/NeTEx and generates java model using jaxb.

You need xmlstarlet installed.

Build and deploy with Docker

## Docker build

`make docker-build`

## Install snapshot locally

`make install`

## Deploy snapshot to Artifactory

`make deploy`

## Release and deploy to Artifactory

`make release`