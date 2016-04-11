# Emacs Centered Point

Emacs Centered point is a very simple elisp file that will recenter the cursor every time that it moves. There exist other packages, but this is the simplest by far. The downside to this approach of simplicity is that emacs may redraw the screen when the cursor is moved and it will lead to many forced redraws. 

# Similar Projects

There exists a similar plugin called centered-cursor-mode that solves many of the flickering issues but at a performance cost. I personally reccomend it's usage when running emacs within a TTY. The URL for that project is https://www.emacswiki.org/emacs/centered-cursor-mode.el.

# Demonstration
![alt text](img/Recording.gif "Gif demonstration")
