# yASK
          ____      _______ _____  __
 ___.__. /  _  \  /   _____/    |/ _|
<   |  |/  /_\  \ \_____  \|      <
 \___  /    |    \/        \    |  \
 / ____\____|__  /_______  /____|__ \
 \/            \/        \/        \/
@author:yggdrasILK
[whyAsk||yetAnotherSystemKontroller]

## What is yask[whyAsk]?
Kinda self explanatory. Ever set up (or maintained) a system?
With the rise of dedicated managers - even on windows platforms! - the job has become much easier, but still remains a bulk of manual labour I intend to eradicate.
To remain concise, I, in no way, wish to replace said managers but instead want to provide a user-facing environment in which to port old systems to new ones and have each ecosystem behave as similarly as possible (in order to eventually convert everyone onto linux - masterplan reveal!).

## labour-relieving-measures:
    - easily-extendible installation-manager and platform (instead of brew update, it becomes yask update - on all platforms!)
    - throwaway (aka playful)
    - as one-click as possible
    - remember new stuff on its own
    - resilient
    - self-healing
    - system agnostic
    - cli-only operating system are preferred.
    - compartmentalizable - gui as needed
    - pinn like installation of os

    extract paths from installation from supported managers;
        add path to tree for installer
        support tool syntax eg. vim
        crawl settings for installation paths
            => using intrfclr to determine usage - deep introspection

## running through my installation procedure
TODO: wget source script.
All you should be doing is keeping your system pristine, just invoke "yask" and it will ask you which programs you want to keep, update or just want to save the files of!

Please let my crawler and machine-learning tools compare your settings with others, so I can improve the experience for everybody involved.
If you want that to work seemlessly though, we need some information on where critical information on programs reside, which is why we have a server-landscape!
This also allows you to save your settings there, or in a file saved to wherever you want.

The motto: sensible defaults, bright minimalistic themes (or dark ones) for everything yask.

I also try to follow the UNIX-philosophy of:
- everything is a file (data)
- keep every piece lean, small and reusable
- pure functions wherever possible, keeping state in stores with checks (not really linux, but it should be!)

## Vim and Emacs as default programs for everything
A basic philosophy is:
Don't use your mouse, unless you're playing games! (In which case: VR-Headset and a Katana. Fucking rocks!)

Kidding aside, since we're interacting with text, we should use the most appropriate way of doing so.
Of course, there is quite a steep learning curve associated with this. For new users to vim or emacs there will be tutorials supplied!
Another project of mine is to think of types of GUI's and interaction with non-2-dimensional visual representations (as VR/AR and any sub/superset thereof).
I am of the firm conviction that switching to mouse input severely hampers your input speed and thinking clarity. Since the primary way to interact with textual media is with the keyboard, we should be as familiar as possible with it, relying less and less to archaic clicking devices like a mouse (or touchpad, even if they use gestures).
Of course other input devices will be highly welcome once we reach a different stage of represenation, but unless we get there, the keyboard reigns supreme.

Getting fluent in vim, using the keybindings literally everywhere, will make you much more intimate with text. Get you to do more sweeping changes and think more algorithmically faster, since you can get regexes to manipulate text instead of replacing strings manually.

For the completely uninitiated to vim:
#TODO: add cli-tutorial for vim/emacs-evil

- Complete containerization aka portability for everything on the system.
- Interaction with the media in the most native way possible (especially new in text environments)
- 

Further details below to the installation: [textLinkToBottom] (hypertext, baby)

## Dependencies: should not concern you, since they just install themselves! (but are customizable)
- docker/kubernetes cluster-setup (boot2docker?)
- compiler platform : C / LLVM/CMAKE / Haskell / Rust
- nodejs + emscripten => webassembly
- installation of systemsettings
- getting systemd's up running => self-healing configurations (yaskd)[youAsked...(spoken condenscendingly)]
    - setting : tree generation (yaml - human readable and exportable format)
    - tiling window manager setup
    - setup and start fixed window set on startup (windows, osx etc.)
    - start updates and ensure functionality (with previously run things) -> rollback if necessary

## SubModules:
- docker / kubernetes
- emacs
- vim
- intrfclr
- mmngr
- jsoos
- webtorrent
- dotenv
- pkgManagers(yaourt, pacman, scoop, powershell-get, npm...)
    abstract out installers: - apt-get/yaourt/pacman/homebrew/ - using the same interface for everything (and search all installers at once)
    hashtables for things to be installed - saved in cloudDB, accessible from everywhere, even webbased
    add query for git username and pull the tables from antother dir?
- programming environments
    - javascript
    - .NET-core
    - Haskell
    - ReasonML
    - Functional Javascript
    - C/C++

## sane OS defaults
- keyboard layout set
- remap keys
    - capslock = backspace
    - rightShift = escape
    - vim-keybindings for everything.
    - log into accounts (google, facebook etc.)

docker provides abstractions for tmux instances : can run tmux with different docker instances and save the combined configuration

network ssh mapper: automatically build home pod-network 
            
### Windows
- enable developer mode windows
- cmake
- llvm
- nodejs
- autoupdate powershell from cli
- scoop \ chocolatey \ psget
- install scripts as powershell scripts

### Linux (archLinux/alpineLinux/ubuntu)
- build tools update

### yask as version-manager
since the OS-manager is uncoupled and works with plain JS - we can always be sure to have our development environment around by installing the yask/core, which, of course you can hedge to be your own!

## What's included, and how to customize?
Most of things used with, within and around yask are independently developed tools made to make your life easier.
- [Homebrew](https://brew.sh/)
    - ctags 
    - git
    - macvim
    - hub
    - silver searcher ('ag')
    - macvim (with lua support)
- ZSH
    - Vim mode and bash style `Ctrl-R` for reverse history finder
    - `Ctrl-x,Ctrl-l` to insert output of last command
    - Fuzzy matching - if you mistype a directory name, tab completion will fix it
    - [fasd](https://github.com/clvv/fasd) integration - hit `z` and partial match for recently used directory. Tab completion enabled.
    - [Prezto - the power behind yask's zsh](https://github.com/sorin-ionescu/prezto)
    - [How to add your own ZSH theme](doc/zsh/themes.md)
- Aliases
    - ae # alias edit
    - ar # alias reload
- Git Customizations:
yask will take over your `~/.gitconfig`, so if you want to store your usernames, please put them into `~/.gitconfig.user`
It is recommended to use this file to set your user info. Alternately, you can set the appropriate environment variables in your `~/.secrets`.
  - `git l` or `gl`- a much more usable git log
  - `git b` or `gb`- a list of branches with summary of last commit
  - `git r` - a list of remotes with info
  - `git t` or `gt`- a list of tags with info
  - `git nb` or `gnb`- a (n)ew (b)ranch - like checkout -b
  - `git cp` or `gcp`- cherry-pick -x (showing what was cherrypicked)
  - `git simple` - a clean format for creating changelogs
  - `git recent-branches` - if you forgot what you've been working on
  - `git unstage` / `guns` (remove from index) and `git uncommit` / `gunc` (revert to the time prior to the last commit - dangerous if already pushed) aliases
  - Some sensible default configs, such as improving merge messages, push only pushes the current branch, removing status hints, and using mnemonic prefixes in diff: (i)ndex, (w)ork tree, (c)ommit and (o)bject
  - Slightly improved colors for diff
  - `gdmb` (g)it (d)elete (m)erged (b)ranches - Deletes all branches already merged on current branch
- Tmux configuration
`tmux.conf` provides some sane defaults for tmux on Mac OS like a powerful status bar and vim keybindings.
You can customize the configuration in `~/.tmux.conf.user`.
- Vimization of everything
The provided inputrc and editrc will turn your various command line tools like mysql and irb into vim prompts. There's
also an included Ctrl-R reverse history search feature in editrc, very useful in irb, postgres command line, and etc.
- Github Issues: [ghi gem](https://github.com/stephencelis/ghi)
We include the `ghi` command. Try `ghi list` and have fun managing issues from command line!
- Vim - What's included?
 - [Navigation - NERDTree, EasyMotion, CtrlP and more](doc/vim/navigation.md)
 - [Text Objects - manipulate ruby blocks, and more](doc/vim/textobjects.md)
 - [Code manipulation - rails support, comments, snippets, highlighting](doc/vim/coding.md)
 - [Utils - indents, paste buffer management, lots more](doc/vim/utils.md)
 - [General enhancements that don't add new commands](doc/vim/enhancements.md)
A list of some of the most useful commands that yask provides in vim are
included below. This is not a comprehensive list. To get deeper knowledge,
practice a few of these every day, and then start looking into the lists
of plugins above to learn more.
- Navigation
    - `,z` - go to previous buffer (:bp)
    - `,x` - go to next buffer (:bn)
    - `Cmd-j` and `Cmd-k` to move up and down roughly by functions (`Alt` in Linux)
    - `Ctrl-o` - Old cursor position - this is a standard mapping but very useful, so included here
    - `Ctrl-i` - opposite of Ctrl-O (again, this is standard)
- Search/Code Navigation
    - `,f` - instantly Find definition of class (must have exuberant ctags installed)
    - `,F` - same as `,f` but in a vertical split
    - `,gf` or `Ctrl-f` - same as vim normal gf (go to file), but in a vertical split (works with file.rb:123 line numbers also)
    - `gF` - standard vim mapping, here for completeness (go to file at line number)
    - `,k` - Search the current word under the cursor and show results in quickfix window
    - `,K` - Grep the current word up to next exclamation point (useful for ruby foo! methods)
    - `Cmd-*` - highlight all occurrences of current word (similar to regular `*` except doesn't move)
    - `,hl` - toggle search highlight on and off
    - `,gg` or `,ag` - Grep command line, type between quotes. Uses Ag Silver Searcher.
    - After searching with `,gg` you can navigate the results with `Ctrl-x` and `Ctrl-z` (or standard vim `:cn` and `:cp`)
    - `,gd` - Grep def (greps for 'def [function name]') when cursor is over the function name
    - `,gcf` - Grep Current File to find references to the current file
    - `//` - clear the search
    - `,,w` (alias `,<esc>`) or `,,b` (alias `,<shift-esc>`) - EasyMotion, a vimperator style tool that highlights jump-points on the screen and lets you type to get there.
    - `,mc` - mark this word for MultiCursor (like sublime). Use `Ctrl-n` (next), `Ctrl-p` (prev), `Ctrl-x`(skip) to add more cursors, then do normal vim things like edit the word.
    - `gK` - Opens the documentation for the word under the cursor.
    - Spacebar - Sneak - type two characters to move there in a line. Kind of like vim's `f` but more accurate.
    - `:Gsearch foo` - global search, then do your normal `%s/search/replace/g` and follow up with `:Greplace` to replace across all files. When done use `:wall` to write all the files.
- File Navigation
    - `,t` - CtrlP fuzzy file selector
    - `,b` - CtrlP buffer selector - great for jumping to a file you already have open
    - `Cmd-Shift-M` - jump to method - CtrlP tag search within current buffer
    - `,jm` jump to models. Other `,j` mappings: `,jc` for controllers, `,jh` for helpers, etc. If you think of a concept and a letter, we've got you covered.
    - `Cmd-Shift-N` - NERDTree toggle (`Alt` in Linux)
    - `Ctrl-\` - Show current file in NERDTree
    - `Cmd-Shift-P` - Clear CtrlP cache
- Tabs, Windows, Splits
    - Use `Cmd-1` thru `Cmd-9` to switch to a specific tab number (like iTerm and Chrome) - and tabs have been set up to show numbers (`Alt` in Linux)
    - `Ctrl-h,l,j,k` - to move left, right, down, up between splits. This also works between vim and tmux splits thanks to `vim-tmux-navigator`.
    - `Q` - Intelligent Window Killer. Close window `wincmd c` if there are multiple windows to same buffer, or kill the buffer `bwipeout` if this is the last window into it.
    - `vv` - vertical split (`Ctrl-w,v`)
    - `ss` - horizontal split (`Ctrl-w,s`)
    - `,qo` - open quickfix window (this is where output from Grep goes)
    - `,qc` - close quickfix
- Utility
    - `Ctrl-p` after pasting - Use `p` to paste and `Ctrl-p` to cycle through previous pastes. Provided by YankRing.
    - `,yr` - view the yankring - a list of your previous copy commands. also you can paste and hit `ctrl-p` for cycling through previous copy commands
    - `crs`, `crc`, `cru` via abolish.vim, coerce to snake_case, camelCase, and UPPERCASE. There are more `:help abolish`
    - `:NR` - NarrowRgn - use this on a bit of selected text to create a new split with just that text. Do some work on it, then :wq it to get the results back.
    - `,ig` - toggle visual indentation guides
    - `,cf` - Copy Filename of current file (full path) into system (not vi) paste buffer
    - `,cn` - Copy Filename of current file (name only, no path)
    - `,yw` - yank a word from anywhere within the word (so you don't have to go to the beginning of it)
    - `,ow` - overwrite a word with whatever is in your yank buffer - you can be anywhere on the word. saves having to visually select it
    - `,ocf` - open changed files (stolen from @garybernhardt). open all files with git changes in splits
    - `,w` - strip trailing whitespaces
    - `sj` - split a line such as a hash {:foo => {:bar => :baz}} into a multiline hash (j = down)
    - `sk` - unsplit a link (k = up)
    - `,he` - Html Escape
    - `,hu` - Html Unescape
    - `,hp` - Html Preview (open in Safari)
    - `Cmd-Shift-A` - align things (type a character/expression to align by, works in visual mode or by itself) (`Alt` in Linux)
    - `:ColorToggle` - turn on #abc123 color highlighting (useful for css)
    - `:Gitv` - Git log browsers
    - `,hi` - show current Highlight group. if you don't like the color of something, use this, then use `hi! link [groupname] [anothergroupname]` in your vimrc.after to remap the color. You can see available colors using `:hi`
    - `,gt` - Go Tidy - tidy up your html code (works on a visual selection)
    - `:Wrap` - wrap long lines (e.g. when editing markdown files)
    - `Cmd-/` - toggle comments (usually gcc from tComment) (`Alt` in Linux)
    - `gcp` (comment a paragraph)
-  Vim Dev
    - `,vc` - (Vim Command) copies the command under your cursor and executes it in vim. Great for testing single line changes to vimrc.
    - `,vr` - (Vim Reload) source current file as a vim file
- Extending and overriding yask settings
    - [Debugging vim keymappings](doc/vim/keymaps.md)
    - [Overriding vim settings with ~/.vimrc.after and friends](doc/vim/override.md)
    - [Adding your own vim plugins](doc/vim/manage_plugins.md)
- Misc
    - [Credits & Thanks](doc/credits.md)
    - [Other recommended macOS productivity tools](doc/macos_tools.md)
    - [Yan's Blog](https://yanpritzker.com)
- macOS Hacks
The macOS file is a bash script that sets up sensible defaults for devs and power users
under macOS. Read through it before running it. To use:

    bin/macos

These hacks are Lion-centric. May not work for other OS'es. My favorite mods include:
  - setting keyboard layout : choice in 
  - Ultra fast key repeat rate (now you can scroll super quick using j/k)
  - No disk image verification (downloaded files open quicker)
  - Display the ~/Library folder in finder (hidden in Lion)