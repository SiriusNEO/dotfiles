# dotfiles

Collection of my dotfiles.



### Full Archives of Some Environments

Due to the limit of file size in Github, I only put the config file (`.xxxrc`) in this repo. For the whole mirror of my configures, I maintain them in my Cloud.

- [vim.tar](https://cloud.tsinghua.edu.cn/d/25c1b2bbec9a4592aca4/files/?p=%2Fvim.tar&dl=1)
- [zsh.tar](https://cloud.tsinghua.edu.cn/d/25c1b2bbec9a4592aca4/files/?p=%2Fzsh.tar&dl=1)

Usage (Take zsh as an example):

```bash
mkdir -p my-zsh && cd my-zsh
wget -O zsh.tar 'https://cloud.tsinghua.edu.cn/d/25c1b2bbec9a4592aca4/files/?p=%2Fzsh.tar&dl=1'
tar -xf zsh.tar
cp .oh-my-zsh -r ~
cp .zshrc ~
```

Note:

- In most cases you can set up the environment out-of-box by this way. But there are some plugins which may need some external actions like installing other dependencies. If there are such cases, I will mark them as such.