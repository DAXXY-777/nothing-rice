# Nothing-Inspired Desktop Rice
A Linux desktop customization (rice) inspired by the minimalist and retro-tech aesthetic of the "Nothing" brand. This setup uses a combination of modern tools to create a cohesive and visually appealing Wayland environment.

##  Screenshots
<img width="1366" height="768" alt="2025-05-14-195822_hyprshot" src="https://github.com/user-attachments/assets/ad48c59e-66f2-4848-9407-3f17577fb2b1" />

<img width="1366" height="768" alt="2025-05-14-195842_hyprshot" src="https://github.com/user-attachments/assets/18b5ed1c-87be-41ef-80b4-1014871c344f" />

<img width="1366" height="768" alt="2025-05-14-200929_hyprshot" src="https://github.com/user-attachments/assets/8413081c-b8ff-4454-9c6e-1a379bcbae6f" />
## Components

This rice includes configuration for the following applications:

-   **Window Manager**: [Hyprland](https://hyprland.org/) (Wayland)
-   **Status Bar**: [Waybar](https://github.com/Alexays/Waybar)
-   **Application Launcher**: [Rofi](https://github.com/davatorium/rofi)
-   **Terminal**: [Kitty](https://sw.kovidgoyal.net/kitty/)
-   **Shell Prompt**: [Starship](https://starship.rs/)
-   **Widgets**: [Eww](https://github.com/elkowars/eww) & [Conky](https://github.com/brndnmtthws/conky)
-   **System Fetch**: [Neofetch](https://github.com/dylanaraps/neofetch)
-   **Lock Screen**: [hyprlock](https://hyprland.org/)
-   **Idle Manager**: [hypridle](https://wiki.hyprland.org/Hypr-Ecosystem/hypridle/)

## Configuration Details

### 🔴 Hyprland

-   **`hypr/hyprland.conf`**: The core of the window manager setup. It defines window behavior, animations, gaps, borders, and keybindings.
-   **`hypr/hyprlock.conf`**: Configuration for the lock screen, styled to match the theme.
-   **`hypr/hyprpaper.conf`**: Sets the desktop wallpaper. The current wallpaper is a Nothing-style blurred background.
-   **`hypr/hypridle.conf`**: Handles idle locking, display sleep, and suspend timers.

### 🔴 Waybar

-   **`waybar/config`**: Defines the modules shown on the bar (workspaces, clock, system tray, etc.).
-   **`waybar/style.css`**: Provides the styling for the bar, featuring rounded modules with a semi-transparent black background and `#089ec7` as the unified accent color.

### 🔴 Rofi

This setup includes an extensive collection of Rofi themes, primarily based on the work of **adi1090x**.

-   **Launchers (`rofi/launchers`)**: Multiple launcher styles (types 1 through 7) are available, each with numerous themes. The default is set in `rofi/scripts/launcher_t1`.
-   **Powermenus (`rofi/powermenu`)**: Multiple powermenu styles are also included.
-   **Applets (`rofi/applets`)**: Scripts for various quick actions like screenshots, volume control, and quick links.
-   **Color Scheme**: The primary color scheme used is `rofi/colors/onedark.rasi`, which has been modified to fit the Nothing theme.

### 🔴 Kitty & Starship

-   **`kitty/kitty.conf`**: A minimal configuration for the Kitty terminal, setting `FiraCode Nerd Font`, a transparent background, and a color scheme that matches the overall rice.
-   **`starship.toml`**: A custom prompt that displays git status, programming language versions, and other useful info, styled with a unique `nothing_black` color palette.

### 🔴 Widgets (Eww & Conky)

-   **`eww/`**: Contains configurations for various desktop widgets, including weather, system info, and an app launcher grid. It uses `.yuck` for layout and `.scss` for styling.
-   **`conky/nothing.conkyrc`**: A simple Conky widget that displays basic system stats (CPU, RAM, Battery) and the time/date with a "Nothing UI" title.

### 🔴 Neofetch

-   **`neofetch/config.conf`**: A custom configuration for `neofetch`.
-   **`neofetch/ascii.txt`**: A custom ASCII art that spells out "NOTHING" to be displayed by neofetch.

## Installation

1.  **Back up only the config you are about to replace**. Do not move or replace the entire `~/.config` directory.
    ```bash
    cp -a ~/.config/hypr ~/.config/hypr.bak 2>/dev/null || true
    cp -a ~/.config/waybar ~/.config/waybar.bak 2>/dev/null || true
    cp -a ~/.config/rofi ~/.config/rofi.bak 2>/dev/null || true
    cp -a ~/.config/kitty ~/.config/kitty.bak 2>/dev/null || true
    cp -a ~/.config/fish ~/.config/fish.bak 2>/dev/null || true
    ```

2.  **Install Dependencies**: Ensure you have all the necessary applications and fonts installed. This includes:
    -   `hyprland`, `hyprlock`, `hyprpaper`, `hypridle`
    -   `waybar`
    -   `rofi`
    -   `kitty`
    -   `starship`
    -   `eww`
    -   `conky`
    -   `neofetch`
    -   `fish` (or you can adapt the Starship prompt for your preferred shell)
    -   Screenshot and clipboard helpers: `grim`, `slurp`, `wl-clipboard`, `cliphist`
    -   Fonts: `Nulshock`, `FiraCode Nerd Font`, `JetBrains Mono Nerd Font`.

3.  **Clone the repository somewhere outside `~/.config`**:
    ```bash
    git clone <your-repo-url> ~/Downloads/nothing-rice
    ```

4.  **Copy component directories intentionally**:
    ```bash
    mkdir -p ~/.config
    cp -r ~/Downloads/nothing-rice/hypr ~/.config/
    cp -r ~/Downloads/nothing-rice/waybar ~/.config/
    cp -r ~/Downloads/nothing-rice/rofi ~/.config/
    cp -r ~/Downloads/nothing-rice/kitty ~/.config/
    cp -r ~/Downloads/nothing-rice/fish ~/.config/
    cp ~/Downloads/nothing-rice/starship.toml ~/.config/starship.toml
    mkdir -p ~/Pictures/Wallpapers
    cp ~/Downloads/nothing-rice/wallpaper/nothing-phone-2-blur-wallpaper-1242x2760-15053.jpg ~/Pictures/Wallpapers/
    ```

5.  **Reload**: Reload your window manager or reboot your system for all changes to take effect.

## Credits

-   The fantastic Rofi themes are based on the work of [Aditya Shakya (adi1090x)](https://github.com/adi1090x).

