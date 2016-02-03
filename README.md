# Usage

clone project to ~/config directory and run commands:

    touch ~/.bashrc-ext
    echo 'source ~/.bashrc-ext' >> ~/.bashrc

# Content of .bashrc-ext

    source ~/config/_config # init config
    
    hqLoadSetDir ~/config # set config dir
    hqLoad bash/ps1 # load ps1
    hqLoadBashRc ext s2 yo git positiv py ftp youtube screen node chrome ts project command # load bashrc configs

# Usage of commands

### command

 * command-alias # alias commands to use short version of them
 * command-save ${commandToSave} ${nameForThisCommand} # alias cs
 * command-list # alias cl

### console

 * console--enable-history-search

### vim

 * vim--enable-colors
 * vim--set-color-scheme
 * vim--enable-line-numbers

### app

 * app-list
 * app-add
 * app-install

### project
 * yakuake--set-title
 * yakuake--set-title-and-open-screen
 * project-ls
 * project-cd
