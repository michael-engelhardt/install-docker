# Install Docker and Docker Compose on Ubuntu 20.04. (x86_64 / amd64)

## Check if this script is usable on your system
```bash
dpkg --print-architecture
```

This should print `amd64`. Else you should take a look into the [Docker Documentation](https://docs.docker.com/engine/install/ubuntu/#x86_64_repo)


## How to use

### Make sure the Script is Executable
```bash
sudo chmod +x installdocker.sh
```

### Start the script
```bash
sudo /home/${USER}/setup-docker/installdocker.sh
```

`${USER}` prints automatically your current user. Wherever you downloaded the Repository, `/look/for/that/path/installdocker.sh`.
