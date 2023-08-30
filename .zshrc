---
downloads: ~/.ansible-downloads/

configure_dotfiles: true
configure_terminal: true
configure_osx: false

# Set to 'true' to configure the Dock via dockutil.
configure_dock: true
dockitems_remove:
 - TV
 - Podcasts
 - 'App Store'
 - News
 - Contacts
 - Reminders

dockitems_persist:
 - name: "Launchpad"
   path: "/System/Applications/Launchpad.app"
   pos: 1
 - name: "Music"
   path: "/System/Applications/Music.app"
   pos: 2
 - name: "Mail"
   path: "/System/Applications/Mail.app/"
   pos: 3
 - name: "Visual Studio Code"
   path: "/Applications/Visual Studio Code.app/"
   pos: 4
 - name: "Sublime Text"
   path: "/Applications/Sublime Text.app/"
   pos: 5
 - name: "Safari"
   path: "/System/Applications/Safari.app/"
   pos: 6
 - name: "Slack"
   path: "/Applications/Slack.app/"
   pos: 7
 - name: "Calendar"
   path: "/System/Applications/Calendar.app"
   pos: 8
 - name: "1Password"
   path: "/Applications/1Password.app/"
   pos: 9
 - name: "iTerm"
   path: "/Applications/iTerm.app/"
   pos: 10

configure_sudoers: false
sudoers_custom_config: ''
# Example:
# sudoers_custom_config: |
#   # Allow users in admin group to use sudo with no password.
#   %admin ALL=(ALL) NOPASSWD: ALL

dotfiles_repo: https://github.com/andrewglass3/dotfiles.git
dotfiles_repo_accept_hostkey: true
dotfiles_repo_local_destination: ~/Development/GitHub/dotfiles
dotfiles_files:
  - .zshrc
  - .gitignore
  - .inputrc
  - .vimrc

homebrew_installed_packages:
  # - ansible # Installed via Pip.
  - autoconf
  - awscli
  - bash-completion
  - doxygen
  - gettext
  - gifsicle
  - git
  - github/gh/gh
  - go
  - gpg
  - httpie
  - iperf
  - kubectx
  - libevent
  - sqlite
  - mcrypt
  - nmap
  - node
  - nvm
  # - oh-my-posh
  - php
  - ssh-copy-id
  - cowsay
  - readline
  - openssl
  - pv
  - wget
  - wrk
  - zsh-history-substring-search
  - zsh
  - zsh-autosuggestions
  - zsh-completions

homebrew_taps:
  - homebrew/core
  - homebrew/cask
  - homebrew/cask-fonts

homebrew_cask_appdir: /Applications
homebrew_cask_apps:
  - chromedriver
  - docker
#  - dropbox
#  - firefox
  - google-chrome
#  - handbrake
#  - licecap
  - iterm2
  - sequel-ace
  - slack
  - sublime-text
  - transmit
  - 1password
  - visual-studio-code
  - font-hack-nerd-font
  - font-fira-code-nerd-font
  - viscosity
  - notion
  - font-meslo-for-powerline
  - fig

# See `geerlingguy.mas` role documentation for usage instructions.
mas_installed_apps:
  - { id: 967805235, name: "Paste" }
  - { id: 1451685025, name: "Wireguard" }
  - { id: 409203825, name: "Numbers" }
  - { id: 1153157709, name: "Speedtest by Ookla" }
mas_email: ""
mas_password: ""

osx_script: "~/.osx --no-restart"

# Install packages from other package managers.
# Note: You are responsible for making sure the required package managers are
# installed, eg. through homebrew.
composer_packages: []
# - name: drush
#   state: present # present/absent, default: present
#   version: "^8.1" # default: N/A
gem_packages: []
# - name: bundler
#   state: present # present/absent/latest, default: present
#   version: "~> 1.15.1" # default: N/A
npm_packages: []
# - name: webpack
#   state: present # present/absent/latest, default: present
#   version: "^2.6" # default: N/A
pip_packages: []
# - name: mkdocs
#   state: present # present/absent/latest, default: present
#   version: "0.16.3" # default: N/A

# Set to 'true' to configure Sublime Text.
configure_sublime: false
sublime_base_path: '~/Library/Application Support/Sublime Text'
sublime_config_path: "Packages/User"
sublime_package_control:
  - "DocBlockr"
  - "Dockerfile Syntax Highlighting"
  - "FileDiffs"
  - "GitHub Flavored Markdown Preview"
  - "Jinja2"
  - "Package Control"
  - "PHP-Twig"
  - "Pretty JSON"
  - "SublimeLinter"
  - "SublimeLinter-contrib-yamllint"
  - "TrailingSpaces"
  - "WordCount"

# Glob pattern to ansible task files to run after all other tasks are finished.
post_provision_tasks: []
