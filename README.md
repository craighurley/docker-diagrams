# docker-diagram

![build](https://github.com/craighurley/docker-diagrams/workflows/build/badge.svg)

Run the following diagrams tools in a container:

- `diagrams`
- `actdiag`
- `blockdiag`
- `seqdiag`

## Running

```sh
docker run --rm -it -v $PWD:/workdir craighurley/diagrams diagrams <FILE>
docker run --rm -it -v $PWD:/workdir craighurley/diagrams actdiag <FILE>
docker run --rm -it -v $PWD:/workdir craighurley/diagrams blockdiag <FILE>
docker run --rm -it -v $PWD:/workdir craighurley/diagrams seqdiag <FILE>
```

Optional: create an alias for the container:

```sh
alias diagrams='docker run --rm -it -v $PWD:/workdir craighurley/diagrams diagrams'
alias actdiag='docker run --rm -it -v $PWD:/workdir craighurley/diagrams actdiag -f /usr/share/fonts/ttf-dejavu/DejaVuSansMono.ttf --no-transparency'
alias blockdiag='docker run --rm -it -v $PWD:/workdir craighurley/diagrams blockdiag -f /usr/share/fonts/ttf-dejavu/DejaVuSansMono.ttf --no-transparency'
alias seqdiag='docker run --rm -it -v $PWD:/workdir craighurley/diagrams seqdiag -f /usr/share/fonts/ttf-dejavu/DejaVuSansMono.ttf --no-transparency'
```

## Links

- <https://pypi.org/project/diagrams/>
- <https://pypi.org/project/actdiag/>
- <https://pypi.org/project/blockdiag/>
- <https://pypi.org/project/seqdiag/>
