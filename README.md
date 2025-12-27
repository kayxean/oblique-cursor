# Oblique Cursor

A simple hyprcursor theme with a slightly oblique look.

<img width="1920" height="823" alt="oblique-cursor" src="https://github.com/user-attachments/assets/83c4c67d-8421-4e2d-bf4b-5fc0473b5983" />

## Installation

1. Visit the [GitHub release page](https://github.com/kayxean/oblique-cursor/releases) and download the latest version of the cursor theme. Make sure to choose the archive that corresponds to the specific variant you want to use.
2. Move the extracted cursor theme directory into `~/.local/share/icons`. If this folder does not exist on your system, you can create it manually to ensure the theme is recognized by your desktop environment.
3. Apply your changes by setting the default cursor through the command line. Run `hyprctl setcursor <theme> <size>`, ensuring you replace `<theme>` with the exact name of the theme folder and `<size>` with your preferred cursor scale (e.g., 24).
    ```sh
    hyprctl setcursor oblique-cursor 24
    ```

### Manual
1. **Clone the repository**:
    Begin by cloning the source code repository from GitHub to your local machine. This will download all the necessary source assets and manifests required to build the cursor theme from scratch.
    ```sh
    git clone https://github.com/kayxean/oblique-cursor.git
    ```
2. **Navigate to the themes directory**:
    Change your working directory to the `themes` folder inside the cloned repository. This directory contains the source configuration files that the utility will use to generate the theme.
    ```sh
    cd oblique-cursor/themes
    ```
3. **Generate the theme files**:
    Use the `hyprcursor-util` tool to compile the source files into a usable hyprcursor theme. The following command will create the theme and place the output files into a `dist` directory located at the project root.
    ```sh
    hyprcursor-util --create oblique-cursor --output ../dist
    ```
4. **Create a symbolic link to the icons directory**:
    To make the theme available to your system, create a symbolic link from the compiled output folder to your local icons directory (`~/.local/share/icons`). This allows the system to recognize the theme without moving the files out of your project folder. (Note: Ensure the source path matches the location where you cloned the repository).
    ```sh
    ln -s ~/repo/oblique-cursor/dist/theme_oblique-cursor ~/.local/share/icons/oblique-cursor
    ```
5. **Set the default cursor**:
    Finally, apply the theme to your current session using the `hyprctl` command. Specify the theme name and your desired cursor size (e.g., 24).
    ```sh
    hyprctl setcursor oblique-cursor 24
    ```
  
    To ensure this setting persists after a reboot, add this command to your Hyprland configuration file. (`~/.config/hypr/hyprland.conf`)
    ```conf
    env = HYPRCURSOR_THEME,oblique-cursor
    env = HYPRCURSOR_SIZE,24
    ```

## Development

Contributions are not being accepted at this time. If you are looking to create your own theme, you are encouraged to do so independently and may use this repository as an example. The `themes` directory contains the raw source files, including cursor shapes (`.svg`) and `meta.hl` files. A custom bash script is also included to help sync cursor metadata to another theme variant.

```sh
./sync-meta.sh --input oblique-cursor --output oblique-cursor-light
```

Resources:
- [Creating a theme](https://github.com/hyprwm/hyprcursor/blob/main/docs/MAKING_THEMES.md)
- [Using hyprcursor theme](https://github.com/hyprwm/hyprcursor/blob/main/docs/END_USERS.md)
- [hyprcursor-util](https://github.com/hyprwm/hyprcursor/blob/main/hyprcursor-util/README.md)
