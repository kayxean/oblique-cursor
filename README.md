# Oblique Cursor

A simple hyprcursor theme with a slightly oblique look.

```sh
# Clone the repository
git clone https://github.com/kayxean/oblique-cursor.git

# Change directory into the repository
cd oblique-cursor

# Generate the theme files
hyprcursor-util --create . --output dist

# Create a symbolic link to oblique-cursor directory
ln -s ~/repo/oblique-cursor/dist/theme_oblique-cursor ~/.local/share/icons/oblique-cursor

# Set default cursor
hyprctl setcursor oblique-cursor 24
```
