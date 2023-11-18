# DaSadWeb rice
Dotfiles for DaSadWeb rice based on bspwm with 
lemonbar and dracula colorscheme.

## Requirements
- ![bspwm](https://github.com/baskerville/bspwm)
- ![sxhkd](https://github.com/baskerville/sxhkd)
- ![dunst](https://github.com/dunst-project/dunst)
- ![urxvt](http://software.schmorp.de/pkg/rxvt-unicode.html)
- ![firefox](https://www.mozilla.org/en-US/firefox/new/)
- ![nitrogen](https://github.com/l3ib/nitrogen)
- ![rofi](https://github.com/davatorium/rofi)
- ![Xorg](https://www.x.org/wiki/)

other: brightnessctl, alsa-tools, xdotool

## Setup
### rofi
1. Copy file `rofi/rofi-power-menu` to `~/.local/bin/`, everything else
should go to `$XDG_CONFIG_HOME/rofi`.
2. disable powerbutton by editing `/etc/systemd/logind.conf` and adding 
the following:
```bash
# HandlePowerKey=poweroff   # you might have to comment this one
HandlePowerKey=ignore
```

### Firefox
Installation is 
![here](
https://github.com/jannikbuscha/firefox-dracula#%EF%B8%8F-installation
).

### Wallpapers
Move contents of `wallpaper` folder to 
`$HOME/.local/share/wallpapers/`, all else is managed by bspwm.

### URXVT
After copying `X11` to `$XDG_CONFIG_HOME/X11`,
open up your terminal and enter the following:
```bash
xrdb $XDG_CONFIG_HOME/X11/xresources
```

### Xorg
Run 
```bash
xrandr
```
to get the resolution of your monitor and replace it in `bspwm/monitors`.

### Else
Just copying the config files to `~/.config` works

## Shortcuts
| Shortcut | Description |
| --- | --- |
| super + space | rofi drun (app drawer) |
| alt + tab | rofi window (window switcher) |
| super + return | urxvt (terminal) |
| super + escape | reload sxhkd |
| XF86PowerOff | rofi power menu |
| alt + shift + {d,s,u} | change keyboard to {dvorak, slovene, us} |
| shift + escape | toggle capslock |
| super + shift + s | screenshot |
| XF86MonBrightnessUp | +5% brightness |
| XF86MonBrightnessDown | -5% brightness |
| XF86AudioRaiseVolume | +5% volume |
| XF86AudioLowerVolume | -5% volume |
| XF86AudioMute | mute speakers |

+ ![bspwm default keybinds](https://gist.github.com/amit08255/43ed6efdc1952d88f9a61e86f375e924)

## References
- ![firefox dracula theme](https://github.com/jannikbuscha/firefox-dracula)

