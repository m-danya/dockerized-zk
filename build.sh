docker build \
    $@ \ # pass extra arguments (like `--no-cache` to rerun `apt update`)
    -t vim-zk \
    . \
    # pass UID and GID from host to avoid permission issues with bind mount:
    --build-arg UID=$(id -u) \ 
    --build-arg GID=$(id -g)
