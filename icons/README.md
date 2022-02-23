# Change MacOS App Icons to Custom Icons

A function to update app icons to custom icons. Especially useful when applications auto-update and revert back to default icons. 

### Setup

**1. Create a directory for custom icons**
Change `line 9: $HOME/Documents/AppIcons/custom/*` and `line 30: $HOME/Documents/AppIcons/custom/$i/*.icns` to match your directory custom icon directory path. 

**2. Create subdirectories for each icon**
The name of the subdirectories must match the name of the 'App'.app file in `/Applications/`. 

Space seperated names make choosing an option from the fish function prompt akward. Thus I've changed multi word 'Multi Word App'.app file names in `/Applications/` and named my custom icon subdirectory likewise. For example 'Google Chrome'.app was changed to Chrome.app. 

**3. Add new app icons to custom subdirectories**
A good place to find icons is [here](https://macosicons.com/#/). 

Place the custom icons (.icns file) into its custom subdirectory. Rename the custom .icns file exactly corresponding to the default App .icns file. 
App .icns are located in `/Applications/SomeApp.app/Contents/Resources/`. 
From the Finder GUI, right click the App > select *Show Package Contents* > `/Contents/Resources/`.

Below shows my custom directory structure and my `/Applications/` directory structure ommitting irrelevant apps. 

```
~./Documents/AppIcons/
  - custom/
    - Alacritty/
      - alacritty.icns
    - Brave/
      - app.icns
    - Chrome/
      - app.icns
    - Code/
      - Code.icns
    - Firefox/
      - firefox.icns
    - Folx/
      - folxicon.icns
    - Hyper/
      - icon.icns
    - RNDebugger/
      - electron.icns
    - Spotify/
      - Icon.icns
    - Teams/
      - icon.icns
    - VLC/
      - VLC.icns
    - Zoom/
      - ZPLogo.icns

// No need to directly edit the following. Shown for clarity only. 
/Applications/
  - Alacritty.app/
    - Contents
      - Resources
        - alacritty.icns
  - Brave.app/
  - Chrome.app/
  - Code.app/
  - Firefox.app/
  - Folx.app/
  - Hyper.app/
  - RNDebugger.app/
  - Spotify.app/
  - Teams.app/
  - VLC.app/
  - Zoom.app/
```

### Flags

1. `-a/--all`
  - Update all app icons that have a corresponding custom icon subdirectory

2. `-o/--options`
  - Lists all possible argument options (apps to change)
  - If no args are provided, options are listed by default even without flag

### Arguments

Space seperated names of custom icon subdirectories. Ex: 
```
$ icons Alacritty Chrome Teams
  Successfully updated icons:
  3 Alacritty Chrome Teams
  Failed updated options
  0
```

If no arguments are provided, user will be prompted with a list of options. User can select any number of options by space deliminating choices. Ex: 
```
$ icons 
Alacritty
Brave
Chrome
Code
Firefox
Folx
Hyper
RNDebugger
Spotify
Teams
VLC
Zoom
$ Choose option(s) from above: Brave Code
Successfully updated icons:
2 Hyper Folx
Failed updated options
0
```


