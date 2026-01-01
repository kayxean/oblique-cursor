# Oblique Cursor

A simple hyprcursor theme with a slightly oblique look. Most cursors are either too vertical or too flashy; I wanted something that felt a bit more natural for Hyprland.

![oblique-cursor](https://github.com/user-attachments/assets/83c4c67d-8421-4e2d-bf4b-5fc0473b5983)

The shapes are based on [macOS 26](https://www.figma.com/community/file/1543337041090580818/macos-26) — I basically took that aesthetic and tuned it to work properly with `hyprcursor`.

## Get it running

The fast way to get these on your screen.

1. **Grab the files**: Go to the [releases](https://github.com/kayxean/oblique-cursor/releases) and pick your variant.
2. **Move them**: Stick the folder in `~/.local/share/icons`. If the folder isn't there, just create it.
3. **Apply it**: Run this to see it immediately:
   ```bash
   hyprctl setcursor oblique-cursor 24
   ```
4. **Make it persist**: Add these to your `~/.config/hypr/hyprland.conf` so it survives a reboot:
   ```conf
   env = HYPRCURSOR_THEME,oblique-cursor
   env = HYPRCURSOR_SIZE,24
   ```

## Building it yourself (Manual)

If you'd rather build it from source than download a zip, here’s the workflow:

1. **Clone it**:
   ```bash
   git clone https://github.com/kayxean/oblique-cursor.git
   ```
2. **Go to the source**:
   ```bash
   cd oblique-cursor/themes
   ```
3. **Compile**: Use `hyprcursor-util` to turn the manifests into a theme.
   ```bash
   hyprcursor-util --create oblique-cursor --output ../dist
   ```
4. **Link it**: I usually just symlink it to `~/.local/share/icons` so I don't have to move files around manually.
   ```bash
   ln -s $(pwd)/../dist/theme_oblique-cursor ~/.local/share/icons/oblique-cursor
   ```

## Development & Stuff

I’m not taking contributions right now, but feel free to poke around the `themes` folder if you want to see how this works. It’s mostly `.svg` files and `meta.hl` manifests.

If you're making your own variants, I wrote a script to sync metadata so you don't have to copy-paste manifest values all day:
   ```bash
   ./sync-meta.sh --input oblique-cursor --output oblique-cursor-light
   ```

Useful Links:
- [Creating a theme](https://github.com/hyprwm/hyprcursor/blob/main/docs/MAKING_THEMES.md): The blueprints. This is the technical breakdown for building from scratch, porting from XCursor, and defining hotspots.
- [Using hyprcursor theme](https://github.com/hyprwm/hyprcursor/blob/main/docs/END_USERS.md): The "Where does this go?" guide. Covers directory paths and the environment variables needed to make the theme stick.
- [hyprcursor-util](https://github.com/hyprwm/hyprcursor/blob/main/hyprcursor-util/README.md): The tool that does the heavy lifting. It packs and unpacks themes between raw assets and compiled binaries.
- [CSS Cursor demo](https://codepen.io/kayxean/full/MYywMMx): A quick visual check. Just a pure CSS demo to see standard cursor behaviors in the browser.
