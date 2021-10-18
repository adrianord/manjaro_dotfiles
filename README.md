# dotfiles
Ansible configured dotfiles

# THESE DOTFILES ARE SPECIFIC TO MANJARO I3

Clone repo `git clone https://github.com/adrianord/manjaro_dotfiles "${XDG_DATA_HOME:-${HOME}/.config}/dotfiles/playbook"`

Create file `${XDG_DATA_HOME:-${HOME}/.config}/dotfiles/config.yml` with user specific data
```yaml
work_companies:
  - name: work
    git_email: work@work.com
    ssh_key_location: ~/.ssh/id_rsa_work

full_name: John Doe
git_email: JohnDoe@email.com
```

Run `${XDG_DATA_HOME:-${HOME}/.config/dotfiles}/playbook/bin/bootstrap`
