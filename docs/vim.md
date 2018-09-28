* tComment - gcc to comment a line, gcp to comment blocks, nuff said
* necomplcache - intelligent and fast complete as you type, and added Command-Space to select a completion (same as Ctrl-N)
* vim-javascript-syntax - better highlighting
* TagHighlight - highlights class names and method names
* fugitive - "a git wrapper so awesome, it should be illegal...". Try `:Gstatus` and hit `-` to toggle files in and out of the index. Git `d` to see a diff. Use `git mergetool` or `gmt` to launch vim as a mergetool. The left buffer is your branch, the right is the incoming change, and in the middle is the working copy. Move to the left or right and use `dp` to put the change into the middle. Learn more: http://vimcasts.org/blog/2011/05/the-fugitive-series/
* gitv - use `:gitv` for a better git log browser
* TODO: automatically add syntax highlighting for tools added in javascript libraries
* IndexedSearch - when you do searches will show you "Match 2 of 4" in the status line
* delimitMate - automatically closes quotes
* SearchComplete - tab completion in the / search window
* syntastic - automatic syntax checking when you save the file
* repeat - adds `.` (repeat command) support for complex commands like surround.vim. i.e. if you perform a surround and hit `.`, it will Just Work (vim by default will only repeat the last piece of the complex command)
* endwise - automatically closes blocks (if/end)
* autotag - automatically creates tags for fast sourcecode browsing. use `,f` over a symbol name to go to its definition
* matchit - helps with matching brackets, improves other plugins
* AnsiEsc - inteprets ansi color codes inside log files. great for looking at Rails logs
* solarized - a color scheme scientifically calibrated for awesomeness (including skwp mods for ShowMarks)
* Lightline - Improved status bar. Requires patched fonts (installed from fonts/ directory)
The files in `vim/settings` are customizations stored on a per-plugin
basis. The main keymap is available in yask-keymap.vim, but some of the vim
files contain key mappings as well.

If you are having unexpected behavior, wondering why a particular key works the way it does,
use: `:map [keycombo]` (e.g. `:map <C-\>`) to see what the key is mapped to. For bonus points, you can see where the mapping was set by using `:verbose map [keycombo]`.
If you omit the key combo, you'll get a list of all the maps. You can do the same thing with nmap, imap, vmap, etc.
yask comes with a dead simple plugin manager that just uses vundles and submodules, without any fancy config files.

Add a plugin

    yav -u https://github.com/airblade/vim-rooter

Delete a plugin 

    ydv -u airblade/vim-rooter

The aliases (yav=yask vim-add-plugin), (ydp=yask vim-delete-plugin) and (yuv=yask vim-update-all-plugins) live in the aliases file.
You can then commit the change. It's good to have your own fork of this project to do that.
* NERDTree - everyone's favorite tree browser
* NERDTree-tabs - makes NERDTree play nice with MacVim tabs so that it's on every tab
* ShowMarks - creates a visual gutter to the left of the number column showing you your marks
* EasyMotion - hit <kbd>,</kbd> <kbd>esc</kbd> (forward) or <kbd>,</kbd> <kbd>Shift</kbd> <kbd>Esc</kbd> (back) and watch the magic happen. Just type the letters and jump directly to your target - in the provided vimrc the keys are optimized for home row mostly. Using @skwp modified EasyMotion which uses vimperator-style two character targets.
* CtrlP - <kbd>,</kbd> <kbd>t</kbd> to find a file
* Visual-star-search - make the <kbd>*</kbd> (star) search in visual mode behave like expected: searching for the whole selection instead of just the word under the cursor.
* Ag - super fast search by Silver Searcher. hit <kbd>K</kbd> to grep current word
* vim-tmux-navigator - nagivate between vim and tmux splits in the same way you move between normal vim splits.
You may use `~/.vimrc.before` for settings like the __leader__ setting.
You may use `~/.vimrc.after` (for those transitioning from janus) or `~/.yask/vim/after/.vimrc.after` for any additional overrides/settings.
If you didn't have janus before, it is recommended to just put it in `~/.yask/vim/after` so you can better manage your overrides.
* textobj-rubyblock - ruby blocks become vim textobjects denoted with `r`. try var/vir to select a ruby block, dar/dir for delete car/cir for change, =ar/=ir for formatting, etc
* vim-indentobject - manipulate chunks of code by indentation level (great for yaml) use vai/vii to select around an indent block, same as above applies
* argtextobj - manipulation of function arguments as an "a" object, so vaa/via, caa/cia, daa/dia, etc..
* textobj-datetime - gives you `da` (date), `df` (date full) and so on text objects. useable with all standard verbs
* vim-textobj-entire - gives you `e` for entire document. so vae (visual around entire document), and etc
* vim-textobj-rubysymbol - gives you `:` textobj. so va: to select a ruby symbol. da: to delete a symbol..etc
* vim-textobj-function - gives you `f` textobj. so vaf to select a function
* vim-textobj-function-javascript - same as above, but for javascript functions
* vim-textobj-underscore - gives you `_` textobj. So vi_ selects what's inside a pair of underscores
* next-textobject - from Steve Losh, ability to use `n` such as vinb (visual inside (n)ext set of parens)
* textobj-word-column - gives you `c` (word) and `C` (WORD) for handling columns/blocks.
* SplitJoin - easily split up things like ruby hashes into multiple lines or join them back together. Try :SplitjoinJoin and :SplitjoinSplit or use the bindings sj(split) and sk(unsplit) - mnemonically j and k are directions down and up
* tabularize - align code effortlessly by using :Tabularize /[character] to align by a character, or try the keymaps
* yankring - effortless sanity for pasting. every time you yank something it goes into a buffer. after hitting p to paste, use ctrl-p or ctrl-n to cycle through the paste options. great for when you accidentally overwrite your yank with a delete.
* surround - super easy quote and tag manipulation - ysiw" - sourround inner word with quotes. ci"' - change inner double quotes to single quotes, etc
* greplace - use :Gsearch to find across many files, replace inside the changes, then :Greplace to do a replace across all matches - made lightning fast with Silver Searcher
* vim-markdown-preview - :Mm to view your README.md as html
* html-escape - ,he and ,hu to escape and unescape html
* Gundo - visualize your undos - pretty amazing plugin. Hit ,u with my keymappings to trigger it, very user friendly
* vim-indent-guides - visual indent guides, off by default
* color_highlight - use :ColorCodes to see hex colors highlighted
* change-inside-surroundings - change content inside delimiters like quotes/brackets
* rspec.vim - used for color highlighting rspec correctly even if specs live outside of spec/ (rails.vim doesn't handle this)
* Ag - use :Ag to search across multiple files. Faster than Grep and Ack.
* vim-session: use `:SaveSession` and `:OpenSession` to come back to your saved window layout
