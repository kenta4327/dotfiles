# 補完機能を有効にする
autoload -Uz compinit && compinit
# 小文字でも大文字ディレクトリ、ファイルを補完できるようにする
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# 補完後、候補が複数あるときは選択できるようにする
# select=2 は、その数以上の選択肢があったときに選択できるようにする
zstyle ':completion:*:default' menu select=2

# エイリアス
alias gitlog='git log --pretty=format:"[%ad] %h %an : %s"'
alias ls="ls -aFG"

# cdの後にlsを実行
chpwd() { ls -l }

# パス設定
export PATH="/opt/homebrew/bin:$PATH"

