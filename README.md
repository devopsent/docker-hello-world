# Node.js hello world

## Using docker

### build an image:
```
NAME=$( jq -r '.name' < package.json )
VERSION=$( jq -r '.version' < package.json )
docker build --tag "${NAME}:${VERSION}" -f Dockerfile .
```

### Run on custom port:
```
NAME=$( jq -r '.name' < package.json )
VERSION=$( jq -r '.version' < package.json )
PORT=12345
docker run -e PORT="${PORT}" -p "${PORT}:${PORT}/tcp" --name=${NAME} "${NAME}:${VERSION}"
```


## Prerequisites

- [Node.js](https://nodejs.org/en/download/)
- [Yarn](https://yarnpkg.com/en/docs/install)

## Install dependencies

```bash
$ yarn install
```

## Tests

You can run the tests with

```bash
$ yarn test
```

## Running

```bash
$ yarn start
```

The application should be available at [http://localhost:8080](http://localhost:8080).
