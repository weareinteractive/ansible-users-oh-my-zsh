# Ansible Users oh-my-zsh Role

[![Build Status](https://travis-ci.org/weareinteractive/ansible-users-oh-my-zsh.png?branch=master)](https://travis-ci.org/weareinteractive/ansible-users-oh-my-zsh)
[![Stories in Ready](https://badge.waffle.io/weareinteractive/ansible-users-oh-my-zsh.svg?label=ready&title=Ready)](http://waffle.io/weareinteractive/ansible-users-oh-my-zsh)

> `users-oh-my-zsh` is an [ansible](http://www.ansible.com) role which: 
> 
> * installs zsh
> * configures zsh for users

## Installation

Using `ansible-galaxy`:

```
$ ansible-galaxy install franklinkim.users-oh-my-zsh
```

Using `arm` ([Ansible Role Manager](https://github.com/mirskytech/ansible-role-manager/)):

```
$ arm install franklinkim.users-oh-my-zsh
```

Using `git`:

```
$ git clone https://github.com/weareinteractive/ansible-users-oh-my-zsh.git
```

## Dependencies

This role requires you to have `git` installled. You can use [franklinkim.git](https://github.com/weareinteractive/ansible-git) if you want.

[franklinkim.users](https://github.com/weareinteractive/ansible-users) is not a dependency but this role was build on top of it.

## Variables

Here is a list of all the default variables for this role, which are also available in `defaults/main.yml`.

```
# Extends the franklinkim.users variable with oh_my_zh
#
# users:
#   - name: Foo Bar
#     username: foobar
#     authorized_keys: []
#     oh_my_zsh:
#       theme: robbyrussell
#       plugins: git
#       case_sensitive: false
#       disable_auto_update: true
#       update_days: 13
#       disable_ls_colors: false
#       disable_auto_title: false
#       disable_correction: true
#       completion_waiting_dots: false
#

# default theme
users_oh_my_zsh_theme: robbyrussell
# default plugins
users_oh_my_zsh_plugins: git
# use case-sensitive completion
users_oh_my_zsh_case_sensitive: false
# disable bi-weekly auto-update checks
users_oh_my_zsh_disable_auto_update: true
# how often before auto-updates occur? (in days)
users_oh_my_zsh_update_days: 13
# if you want to disable colors in ls
users_oh_my_zsh_disable_ls_colors: false
# if you want to disable autosetting terminal title.
users_oh_my_zsh_disable_auto_title: false
# if you want to disable command autocorrection
users_oh_my_zsh_disable_correction: true
# if you want red dots to be displayed while waiting for completion
users_oh_my_zsh_completion_waiting_dots: false
```

## Example playbook

```
- host: all
  roles: 
    - franklinkim.git
    - franklinkim.users-oh-my-zsh
  vars:
    users:
      - name: Foo Bar
        username: foobar
        oh_my_zsh:
          theme: supertheme
```

## Testing

```
$ git clone https://github.com/weareinteractive/ansible-users-oh-my-zsh.git
$ cd ansible-users-oh-my-zsh
$ vagrant up
```

## Contributing
In lieu of a formal styleguide, take care to maintain the existing coding style. Add unit tests and examples for any new or changed functionality.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License
Copyright (c) We Are Interactive under the MIT license.
