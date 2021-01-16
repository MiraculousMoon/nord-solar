
# Table of Contents

1.  [Nord and Customized-light themes](#orga92410c)
    1.  [Shot](#org6ecd7c5)
    2.  [Dependency](#org5114522)
        1.  [Must](#org8050841)
        2.  [Optional](#orge85932f)
    3.  [Switch](#org3d0cd34)
    4.  [About Firefox](#org56ea59c)
        1.  [Prerequisites](#orgb2ce2d0)
        2.  [Installation](#org5951695)
    5.  [TODO](#orgfec7e81)


<a id="orga92410c"></a>

# Nord and Customized-light themes


<a id="org6ecd7c5"></a>

## Shot
Dynamic Switch With Dynamic Window Manager!

Light-to-Nord:

![img](./Pictures/shot/light-to-nord.gif)

Nord-to-Light:

![img](./Pictures/shot/nord-to-light.gif)

### bspwm
![img](./Pictures/shot/bspwm.png)
### i3
![img](./Pictures/shot/i3.png)
### spectrwm
![img](./Pictures/shot/spectrwm.png)
### xmonad
![img](./Pictures/shot/xmonad.png)
### sway
![img](./Pictures/shot/sway.png)
### dwm
![img](./Pictures/shot/dwm.png)
### firefox
![img](./Pictures/shot/firefox.png)


<a id="org5114522"></a>

## Dependency


<a id="org8050841"></a>

### Must

-   xsettingsd
-   feh
-   dunst
-   mako(wayland)
-   alacritty/kitty
-   rofi
-   wofi(wayland)
-   zathura
-   Global GTK2/3 theme
    -   [Nordic](https://www.gnome-look.org/p/1267246/)
    
    -   [Orchis-light](https://www.gnome-look.org/p/1357889/)


<a id="orge85932f"></a>

### Optional

-   firefox
    -   Dark
        
        Costomized Nord theme follow Nord palette
    -   Light
        
        Costomized light theme follow Nord/Snow palette
-   vim
    -   Dark
        
        Nord vim theme and Nord airline theme
    -   Light
        
        One vim theme and silver airline theme
-   doom emacs
    -   Dark
        
        doom-nord theme
    -   Light
        
        doom-nord-light theme
-   vscode
    -   Dark
        
        Nord theme
    -   Light
        
        Atom one light theme
-   sublime
    -   Dark
        
        Nord theme
    -   Light
        
        OneHalfLight theme


<a id="org3d0cd34"></a>

## Switch

`ln -s ./.local/bin/switch ~/.local/bin/switch`

`ln -s ./.local/bin/startdaemon ~/.local/bin/startdaemon`

`ln -s ./.local/bin/startdaemon-sway ~/.local/bin/startdaemon-sway`

#### Note
The recompile script in `.dwm/` dir need `doas` package. 

And you should configure your user can execute `doas` command without password.

You can see how to configure it on [Doas Gentoo Wiki](https://wiki.gentoo.org/wiki/Doas)

<a id="org56ea59c"></a>

## About Firefox


<a id="orgb2ce2d0"></a>

### Prerequisites

-   Verify that the user stylesheets (userChrome) option is enabled:
    1.  Go to the address `about:config` in Firefox
    
    2.  Search for `toolkit.legacyUserProfileCustomizations.stylesheets`
    
    3.  Confirm the option is set to true

-   Make sure that you have the Default theme enabled
    1.  Go to the address about:addons
    
    2.  Enable the Default theme if not already enabled


<a id="org5951695"></a>

### Installation

1.  You should find you user directory. In my case, it&rsquo;s \`~/.mozilla/firefox/3ccio4xn.default-nightly/\`

2.  Backup your old config if you have.

3.  cp chrome/ dir to your firefox user directory.

4.  for the web page&rsquo;s nord theme
    1.  add a addon called \`Midnight Lizard\`
    
    2.  add Nord theme to it&rsquo;s color schemes
    
    3.  apply Nord theme


<a id="orgfec7e81"></a>

## TODO

-   [X] Add Dwm support
-   [X] Restart Dwm&Spectrwm automatically
