# Change MacOS App Icons to Custom Icons

A function to update app icons to custom icons. Especially useful when applications auto-update and revert back to default icons. 

### Setup

**1. Create a directory for custom icons:**  
  - Create directory 
  - Change `line 9: $HOME/Documents/AppIcons/custom/*` and `line 30: $HOME/Documents/AppIcons/custom/$i/*.icns` to match your custom icon directory path: `~./MyCustomIconPath/*` and `~./MyCustomIconPath/$i/*.icns` respectively 

**2. Create subdirectories for each icon:**  
  - The name of each subdirectory must match the name of the corresponding *.app* file in `/Applications/`
  - App file names that include spaces make choosing an option from the fish function prompt awkward. Thus you should rename multiword *.app* files to a single word name and name your custom icon subdirectory likewise. For example, rename `Google Chrome.app` in `/Applications/` to `Chrome.app` and create the corresponding custom icon subdirectory `~./MyCustomIconPath/Chrome/`

**3. Add new app icons to custom subdirectories:**  
  - A good place to find icons is [here](https://macosicons.com/#/). 
  - Place the custom icon (*.icns* file) into its custom subdirectory. Rename the custom *.icns* file exactly corresponding to the default App *.icns* file
  - An App's *.icns* file is located in `/Applications/SomeApp.app/Contents/Resources/` 
  - From the Finder GUI, right click the App > select *Show Package Contents* > `/Contents/Resources/`

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

**1. `-a/--all`**  
  - Update all app icons that have a corresponding custom icon subdirectory

**2. `-o/--options`**  
  - Lists all possible argument options (apps to change)
  - If no args are provided, options are listed by default even without flag

### Arguments

Space delimited names of custom icon subdirectories. Ex: 
```
$ icons Alacritty Chrome Teams
  Successfully updated icons:
  3 Alacritty Chrome Teams
  Failed updated options
  0
```

If no arguments are provided, user will be prompted with a list of options. User can select any number of options by space delimiting choices. Ex: 
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
2 Brave Code
Failed updated options
0
```


