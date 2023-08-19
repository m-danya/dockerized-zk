FROM ubuntu:22.04

# 1. Install packages as root

RUN apt update
RUN apt install neovim git fzf xclip bat curl tmux -y
RUN ln -s /usr/bin/batcat /usr/bin/bat

# 2. Install scripts

ENV NOTES=/zk
ENV EDITOR=nvim

COPY scripts/zn scripts/zs /bin/

# 3. Work with UID/GID/USERNAME to avoid permission issues

# UID and GID are passed when building image with --build-arg
ARG UID=1000
ARG GID=1000
# Username doesn't matter
ARG UNAME=zk-user

RUN groupadd -g $GID -o $UNAME
RUN useradd -m -u $UID -g $GID -o -s /bin/bash $UNAME
USER $UNAME

# 4. Install stuff as user

RUN sh -c 'curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

WORKDIR /home/$UNAME

COPY configs/.config .config
COPY configs/.tmux.conf .

RUN nvim +PlugInstall! +qa

# 5. Ready to go

WORKDIR /zk
ENTRYPOINT tmux -u
