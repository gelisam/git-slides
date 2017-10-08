git-slides
==========

Text-based slides using vim and git.

![Screencast](demo.gif)

Overview
--------

Abuse git's history rewriting mechanism by creating one commit for each slide.

Within vim, press Space and Backspace (in normal mode) to move forwards and backwards.

Especially useful for live demos with a lot of canned code, which you want to present and run incrementally.

You only need one file. That file will be your slides (notice the plural). Each
change and save will create a new commit. Moving back and forth between slides
will checkout the current working directory to the previous commit and next
commit respectively and reload the buffer in vim.

Installation
------------

1. Copy `plugin/git-slides.vim` to your `~/.vim/plugin` or use a plugin manager. For example with [vim-plug](https://github.com/junegunn/vim-plug) add the following line to your vimrc (assuming you already have vim-plug installed):
```vimscript
Plug 'gelisam/git-slides'
```
2. Put [git-slides.sh](bin/git-slides) in your path. For example if you installed with `vim-plug`:

```text
$ cd <destination-dir> && \
    wget https://raw.githubusercontent.com/gelisam/git-slides/master/bin/git-slides && \
    ln -sfv <destination-dir>/git-slides /usr/local/bin/git-slides
```

**Note**: When using a plugin manager you might want to make the sym link point to the
plugin manager's folder to keep up to date in case `git-slides.sh` changes.

Mappings
--------

The default mappings are:

```vimscript
  nmap <Space> <Plug>GitSlidesNext " next slide
  nmap <Backspace> <Plug>GitSlidesPrevious " previous slide
  nmap sl <Plug>GitSlidesNext " next slide 
  nmap sh <Plug>GitSlidesPrevious " previous slide
  nmap sL <Plug>GitSlidesNextForce " next slide discarding changes
  nmap sH <Plug>GitSildesPreviousForce " previous slide discarding changes
  nmap ss <Plug>GitSlidesSave " alter the current slide and save
  nmap sb <Plug>GitSlidesInsertBefore " insert changes as a new slide before the current slide
  nmap sa <Plug>GitSlidesInsertAfter " insert changes as a new slide after the current slide
  nmap st <Plug>GitSlidesTransform " apply changes to all future slides stopping at the first conflict
  nmap sd <Plug>GitSlidesDelete " Delete the current slide
  nmap sr <Plug>GitSlidesExecute " Run the current slide as a command. (useful for command line scripts)
```

If you would like to set your own mappings, put this in your `.vimrc`:

```vimscript
let g:gitslides_use_custom_mappings = 1
```
