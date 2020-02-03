# Instalação do Oh-my-zsh e plugins:

## Oh-my-zsh: (via curl)

``$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"``

### Tema: SpaceShip:

### Clone no repositório:
`` $ git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"``

### Symlink:
`` $ ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"``

Abra o arquivo de configuração do ohmyzsh e altere o tema para o spaceship

``$ code ~/.zshrc``

ZSH_THEME="spaceship"

### Inserir informações adicionais no final do arquivo:

```
SPACESHIP_PROMPT_ORDER=(
  user
  dir
  host
  git
  node
  docker
  package  
  battery
  exec_time
  line_sep
  vi_mode
  jobs
  exit_code
  char
)
```


``SPACESHIP_PROMPT_ADD_NEWLINE=false``
``SPACESHIP_CHAR_SYMBOL="❯"``
``SPACESHIP_CHAR_SUFFIX=" "``

Instalar o zplugin para gerenciar a instalação de pacotes diretamente.
`` $ mkdir ~/.zinit``
`` $ git clone https://github.com/zdharma/zinit.git ~/.zinit/bin``
Volte no .zshrc e adicione:

zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-completions
zplugin light zdharma/fast-syntax-highlighting