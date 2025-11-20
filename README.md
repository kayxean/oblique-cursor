# Oblique Cursor

A simple hyprcursor theme with a slightly oblique look.

<img width="1920" height="823" alt="oblique-cursor" src="https://github.com/user-attachments/assets/83c4c67d-8421-4e2d-bf4b-5fc0473b5983" />

```sh
# Clone the repository
git clone https://github.com/kayxean/oblique-cursor.git

# Change directory into the cursor themes
cd oblique-cursor/src

# Generate the theme files
hyprcursor-util --create oblique-cursor --output ../dist

# Create a symbolic link to oblique-cursor directory
ln -s ~/repo/oblique-cursor/dist/theme_oblique-cursor ~/.local/share/icons/oblique-cursor

# Set default cursor
hyprctl setcursor oblique-cursor 24
```
