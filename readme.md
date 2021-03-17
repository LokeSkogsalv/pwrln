# Intro

This is a fork of [hazardland/powerline.bat](https://github.com/hazardland/powerline.bat). This is basically a cmd.exe application that show user

![pwrln](./images/pwrln.png)

Here is pwrln in Windows Terminal Preview running cmd.exe
![Windows terminal](./images/windows_terminal.png)

# Prerequesites

To have it you will need:

1. A terminal that supports nerdfonts and cmd.exe (probably some configuration options as well). I used Windows Terminal. Get it from [Microsoft Store](https://www.microsoft.com/en-us/p/windows-terminal-preview/9n0dx20hk701) or [their github](https://github.com/microsoft/terminal).
2. A Nerd Font. Get them on [their site](https://www.nerdfonts.com/) or [their github](https://github.com/ryanoasis/nerd-fonts). Get prepatched font or patch your own. I used [CaskaydiaCove NF](https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/CascadiaCode/Regular/complete/Caskaydia%20Cove%20Regular%20Nerd%20Font%20Complete%20Windows%20Compatible.otf).

# Setup

Clone repo or download in some local folder. Let us assume path is `D:\path\to\pwrln`. You could also put it in a PATH folder to make it easier but I wont explain how to do that here.

## Windows Terminal Preview Setup

Basically our goal is to start init.bat after cmd.exe is lounched. i.e. to run `cmd.exe /k D:\\path\\to\\pwrln\\init.bat` In case of windows terminal we can add pwrln by adding this to our profile for Command Prompt:

```json
{
    "commandline" : "cmd.exe /k D:\\path\\to\\pwrln\\init.bat",
    "fontFace" : "CaskaydiaCove NF",
},
```

# Configuration

## Change colors

To change colors you need to edit `_color.bat`. The colors are 8-bit and [this](https://en.wikipedia.org/wiki/ANSI_escape_code#8-bit) Wikipedia article shows all the colors. The colors starting with `fg` are foreground and `bg` are background. This diagram shows it of well.
![Diagram](./images/colors.png)
Some colors may be different to mine depending on your Windows Terminal coloscheme

## Random artifact in the beginning of the prompt in certain terminals?

This problem is caused by certain terminals not being able to invert colors correctly. To solve this delete these lines from `_prompt.bat`

```batch
%cfg%%bg1%m^
$e[7m^
$e[m^
```
