# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# FPATH
FPATH="$HOME/SCRIPTS/ZSH_FUNCTION:$FPATH"

# CDPATH
export CDPATH=~

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git forgit vscode \
	zsh-autosuggestions zsh-syntax-highlighting zsh-history-substring-search zsh-completions \
  fzf-docker \
	fasd z \
  web-search sudo copyfile copypath copybuffer history \
	fast-syntax-highlighting ripgrep command-not-found \
  aws)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"




#### GENERAL

## System CLIPBOARD
set -g default-command "reattach-to-user-namespace -l zsh"

## Language
export LANG=en_US.UTF-8

## EDITOR
export EDITOR=/usr/bin/vim
# VI MODE EDIT
bindkey -v
# delay after <ESC> key hit, 0.1 sec
export KEYTIMEOUT=1

## Enable AUTOCOMPLETIONs - Lazy Loading , -U no loading alias during loading it , -z zsh mode
autoload -Uz compinit
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi
zmodload -i zsh/complist

## improve autocompletion Style
zstyle ':completion:*' menu select   # select completions with arrow keys
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate # enable approximate matches for completion
## tune
setopt auto_cd              # cd by typing directory name if it's not a command
setopt auto_list            # automatically list choices on ambiguous completion
setopt auto_menu            # automatically use menu completion
setopt always_to_end        # move cursor to end if word had one match
#setopt correct_all          # autocorrect commands
#setopt correct              # autocorrect commands
setopt interactive_comments # allow comments in interactive shells

## HISTORY
HISTFILE=$HOME/.zshrc_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_reduce_blanks   # remove superfluous blanks from history items
setopt inc_append_history   # save history entries as soon as they are entered
setopt share_history        # share history between different instances

## KEY BINDING
# Keybindings
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^[[3~' delete-char
bindkey '^[3;5~' delete-char

## edit-command-line - ESC + v
local editor=( "${(@Q)${(z)${VISUAL:-${EDITOR:-vi}}}}" )
autoload -U edit-command-line
# Emacs stype
#zle -N edit-command-line
#bindkey '^xe' edit-command-line     # CTRL-x + e
#bindkey '^x^e' edit-command-line
# Vi style
zle -N edit-command-line
bindkey -M vicmd v edit-command-line # ESC + v
## SHELL SCRIPTS
bindkey -s '^[s' '~/temp.sh\n'




#### TOOLs

## FZF
source ~/.fzf.zsh
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
bindkey '^T' fzf-completion
bindkey '^I' $fzf_default_completion
export FZF_COMPLETION_TRIGGER=''
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --color=always '
export FZF_DEFAULT_OPTS='--ansi --color fg:-1,bg:-1,hl:230,fg+:3,bg+:233,hl+:229 --color info:150,prompt:110,spinner:150,pointer:167,marker:174 +x --multi --height 80% --layout=reverse --inline-info --border --bind ctrl-f:page-down,ctrl-b:page-up --bind "ctrl-e:execute(nvim {} >/dev/tty </dev/tty)" --preview="file {} && bat --color "always" {}" --bind ctrl-u:half-page-up,ctrl-d:half-page-down'
#export FZF_HIGHLIGHT_PREVIEW_OPTS="--height 100% --preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null' --preview-window=up:40%"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND --multi"
export FZF_CTRL_T_OPTS="$FZF_DEFAULT_OPTS --exit-0 --preview \'file {}\'\n --preview-window down:1\n "
#export FZF_CTRL_T_OPTS="$FZF_DEFAULT_OPTS $FZF_HIGHLIGHT_PREVIEW_OPTS --exit-0 --preview \'file {}\'\n --preview-window down:1\n "
export FZF_CTRL_R_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_R_OPTS="--select-1 --exit-0 --preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"
export FZF_ALT_C_COMMAND="fd --type d --hidden --follow"
export FZF_ALT_C_OPTS="--select-1 --exit-0 --preview 'echo {}' --preview-window down:3:hidden:wrap"

## TEHME - POWERLEVEL10K
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh




#### USER-DEFINED FUNCTION

# SSH host key
function sshrm {
  sed -i -e "$1 d" ~/.ssh/known_hosts
}
# show TMATE-SSH
function show-tmate-ssh {
  tmate display -p '#{tmate_ssh}'
}
# TAILF
function tailf {
  tail -f "$1" | bat --paging=never -l log
}
# LFTP with segmented download & upload
function lget {
  lftp -e "pget -n 10 -c $1; exit"
}
function lput {
  lftp -e "cd /tmp; mput -c $2; exit" $1
}
# MONPRO, MONSUB
function monpro {
  ~/SCRIPTS/EXP/monpro.exp $1
}
function monsub {
  ~/SCRIPTS/EXP/monsub.exp $1
}
function awsconsole-reset {
# instance-id, region
  aws ec2-instance-connect send-serial-console-ssh-public-key --instance-id $1 \
  --ssh-public-key file://~/.ssh/ec2-kr-keypair.pub \
  --region $2 --serial-port 0
}
function awsconsole {
# instance-id, region
  ssh -i ~/.ssh/ec2-kr-keypair.pem $1.port0@serial-console.ec2-instance-connect.$2.aws
}
 function mcurl() {
  /usr/bin/curl "$@" -L --cookie ~/.midway/cookie --cookie-jar ~/.midway/cookie -o
 }
# BOOKMARK
function bm() {
    # Bookmarks
    local -A bookmarks=(
        '0' "~/.ssh/"
        '1' "~/ReadMe/"
        '2' "~/NFS_DATA/ReadMe/"
        '3' "/tmp/"
        'a' "~/Documents/AWS/ReadMe/"
    )

    local selected_bookmark

    if [[ "$1" != '' ]] {
        selected_bookmark="${bookmarks[$1]}"
    } else {
        local bookmarks_table

        local key
        foreach key (${(k)bookmarks}) {
            bookmarks_table+="$key ${bookmarks[$key]}\n"
        }

        if (! hash fzf &>/dev/null) {
            echo; echo "error: fzf is required for selection menu."; echo

            return 1
        } else {
            selected_bookmark=$(
                printf "$bookmarks_table" \
                    | fzf \
                        --exact \
                        --height='40%' \
                        --preview='eval ls --almost-all --classify --color=always --group-directories-first --literal $(echo {} | cut -d " " -f 2 -) 2>/dev/null' \
                        --preview-window='right:80%' \
                    | cut -d ' ' -f 2
            )
        }
    }

    if [[ "$selected_bookmark" != '' ]] {
        eval cd "$selected_bookmark"
    } else {
        echo; echo 'error: Could not find any bookmark to jump in.'; echo

        return 1
    }
}
bindkey -s '^b' 'bm\n'

#eval "$(rbenv init -)"

#eval $(thefuck --alias)

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/nhsung/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/nhsung/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/nhsung/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/nhsung/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

## IPINFO
autoload -U +X bashcompinit && bashcompinit
complete -o default -C /opt/homebrew/bin/ipinfo ipinfo

# Plugin - web-search
export ZSH_WEB_SEARCH_ENGINES=(paragon "https://paragon-na.amazon.com/hz/view-case?caseId=")



# AWS
export AWS_DEFAULT_PROFILE=default

# ITERMOCIL
compctl -g '~/.itermocil/*(:t:r)' itermocil

## ALIAS
source ~/.zshrc_alias
