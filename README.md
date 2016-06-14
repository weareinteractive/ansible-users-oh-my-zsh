# Ansible franklinkim.users-oh-my-zsh role

[![Build Status](https://img.shields.io/travis/weareinteractive/ansible-users-oh-my-zsh.svg)](https://travis-ci.org/weareinteractive/ansible-users-oh-my-zsh)
[![Galaxy](http://img.shields.io/badge/galaxy-franklinkim.sudo-blue.svg)](https://galaxy.ansible.com/list#/roles/1385)
[![GitHub Tags](https://img.shields.io/github/tag/weareinteractive/ansible-users-oh-my-zsh.svg)](https://github.com/weareinteractive/ansible-users-oh-my-zsh)
[![GitHub Stars](https://img.shields.io/github/stars/weareinteractive/ansible-users-oh-my-zsh.svg)](https://github.com/weareinteractive/ansible-users-oh-my-zsh)

> `franklinkim.users-oh-my-zsh` is an [Ansible](http://www.ansible.com) role which:
>
> * installs zsh
> * configures zsh for users

## Installation

Using `ansible-galaxy`:

```shell
$ ansible-galaxy install franklinkim.users-oh-my-zsh
```

Using `requirements.yml`:

```yaml
- src: franklinkim.users-oh-my-zsh
```

Using `git`:

```shell
$ git clone https://github.com/weareinteractive/ansible-users-oh-my-zsh.git franklinkim.users-oh-my-zsh
```

## Dependencies

* Ansible >= 1.9
* franklinkim.users

## Variables

Here is a list of all the default variables for this role, which are also available in `defaults/main.yml`.

```yaml
---
# Extends the franklinkim.users variable with oh_my_zh
#
# users:
#   - name: Foo Bar
#     username: foobar
#     authorized_keys: []
#     oh_my_zsh:
#       theme: robbyrussell
#       plugins: git
#       case_sensitive: true
#       hyphen_insensitive: true
#       disable_update_prompt: true
#       disable_auto_update: true
#       update_days: 13
#       disable_ls_colors: true
#       disable_auto_title: true
#       disable_untracked_files_dirty: true
#       disable_correction: true
#       completion_waiting_dots: false
#

# default theme
users_oh_my_zsh_theme: robbyrussell
# update git repo on config run
users_oh_my_zsh_update: no
# default plugins
users_oh_my_zsh_plugins: git
# Use case-sensitive completion
users_oh_my_zsh_case_sensitive: false
# Use hyphen-insensitive completion. Case sensitive
# completion must be off. _ and - will be interchangeable.
users_oh_my_zsh_hyphen_insensitive: false
# Disable update prompt
users_oh_my_zsh_disable_update_prompt: false
# Disable bi-weekly auto-update checks
users_oh_my_zsh_disable_auto_update: true
# How often before auto-updates occur? (in days)
users_oh_my_zsh_update_days: 13
# If you want to disable colors in ls
users_oh_my_zsh_disable_ls_colors: false
# If you want to disable autosetting terminal title.
users_oh_my_zsh_disable_auto_title: false
# If you want to disable marking untracked files under VCS as dirty.
# This makes repository status check for large repositories much, much faster.
users_oh_my_zsh_disable_untracked_files_dirty: false
# If you want to disable command autocorrection
users_oh_my_zsh_disable_correction: true
# If you want red dots to be displayed while waiting for completion
users_oh_my_zsh_completion_waiting_dots: false

```


## Usage

This is an example playbook:

```yaml
---

- hosts: all
  sudo: yes
  roles:
    - franklinkim.git
    - franklinkim.users-oh-my-zsh
  vars:
    users:
      - name: Foo Bar
        username: foobar
        authorized_keys: []
        oh_my_zsh:
          theme: supertheme

```


## Testing

```shell
$ git clone https://github.com/weareinteractive/ansible-users-oh-my-zsh.git
$ cd ansible-users-oh-my-zsh
$ make test
```

## Contributing
In lieu of a formal style guide, take care to maintain the existing coding style. Add unit tests and examples for any new or changed functionality.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

*Note: To update the `README.md` file please install and run `ansible-role`:*

```shell
$ gem install ansible-role
$ ansible-role docgen
```

## License
Copyright (c) We Are Interactive under the MIT license.
