# ansible
Ansible files to set up new pc

## How to use

```bash
curl https://raw.githubusercontent.com/mokronos/ansible/main/setup | sh
```

to install all.

Clone repo and run

```bash
ansible-playbook -K -t <tag> local.yml
```

with tags like zsh, nvim, stow, etc. to install only some parts.


## To test stuff

Create a docker image with the naked.Dockerfile

```bash
docker build -t naked . -f naked.Dockerfile --progress=plain
```

and run it with

```bash
docker run --rm -it --name naked naked
```

then, in home directory, run

```bash
docker cp ./ansible naked:/home/mokronos
```

to copy the ansible folder into the container.

In the container, we can just run

```bash
ansible-playbook -K local.yml
```

or 

```bash
ansible-playbook -K local.yml -t <tag>
```

to test only some parts with certain tags.
