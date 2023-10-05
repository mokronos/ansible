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
