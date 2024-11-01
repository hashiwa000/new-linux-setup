# new-linux-setup
新しいLinuxマシンのセットアップメモ

## 設定ファイル

- .bashrc
    ```diff
    @@ -57,7 +57,7 @@
     fi
     
     if [ "$color_prompt" = yes ]; then
    -    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    +    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\n\$ '
     else
         PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
     fi
    ```
- .vimrc
    ```
    syntax enable
    colorscheme desert
    set number
    set wrap
    set autoindent
    set expandtab
    set tabstop=4
    set hlsearch
    ```

## ソフトウェア

- Firefox
    - 拡張機能
        - [Vimium](https://addons.mozilla.org/ja/firefox/addon/vimium-ff/)
            - `h`, `j`, `k`, `l`: 上下右左の移動
            - `J`: 左のタブに移動（だけどうまく動かないときあり）
            - `K`: 左のタブに移動（だけどうまく動かないときあり）
- Docker
    - [aptを使った方法](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository)

