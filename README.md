# dockerized-zk

Dockerized minimalistic Zettelkasten system.

I took [these bash scripts](https://gist.github.com/benevidesh/d78f7681120a13d5386ea55b39d82c9b) `zn` and `zs` and wrapped them into Docker image to freeze all the configs and to extend the pipeline with automatic notes syncronization with `git`.

## How to use

**Prerequisites**: Docker

1. Set environmental variable `ZK_NOTES` to a directory on host machine with markdown files, which must be a git repository, in which you can successfully run `git push`. For example:
```
echo 'export ZK_NOTES=$HOME/zk' >> ~/.bashrc
mkdir ~/zk
cd ~/zk
git init
# then create some .md file, commit it and push somewhere (!)
```

This directory will contain all your Zettelkasten data and will be bind mounted to the container every time you type `zk` to enter your Zettelkasten.

2. Clone the repo, build docker image with `./build.sh`, run `cp zk ~/.local/bin` to "install" the script.

After reloading the shell, you can use `zk` to enter your Zettelkasten.
