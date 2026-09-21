{
  "layer": "bottom",
  "position": "top",
  "height": 40,
  "spacing": 2,
  "exclusive": true,
  "gtk-layer-shell": true,
  "passthrough": false,
  "fixed-center": true,
  "modules-left": ["sway/workspaces#kanji", "sway/window"],
  "modules-center": ["mpris","clock", "clock#simpleclock"],
  "modules-right": [
    "cpu",
    "memory",
    "pulseaudio",
    "battery",
    "tray",
    "custom/notification",
    "custom/power"
  ],

  "cpu": {
    "interval": 2,
    "format": " {usage}%",
    "tooltip": true,
    "format-icons": [" ", "▂", "▃", "▄", "▅", "▆", "▇", "█"],
    "tooltip-format": "<span font_desc='JetBrainsMono NFP 11'>Core Load:\n{core_icons}</span>"
  },


  "custom/spotify": {
    "format": "  {}",
    "return-type": "json",
    "on-click": "playerctl -p spotify play-pause",
    "on-click-right": "spotifatius toggle-liked",
    "on-click-middle": "playerctl -p spotify next",
    "exec": "spotifatius monitor"
  },
  "mpris": {
    "format": "{player_icon} {dynamic}",
    "format-paused": "{status_icon} <i>{dynamic}</i>",
    "dynamic-order": ["artist", "title"],
    "player-icons": {
      "default": "",
      "librewolf": "",
      "spotify": ""
    },
    "status-icons": {
      "paused": ""
    },
    /* Advanced Input Hooks */
    "on-click": "playerctl play-pause",
    "on-click-right": "playerctl next",
    "on-click-middle": "playerctl previous",
    "on-scroll-up": "playerctl volume 0.05+",
    "on-scroll-down": "playerctl volume 0.05-"
  },
  "sway/workspaces#kanji": {
    "disable-scroll": true,
    "show-special": false,
    "all-outputs": true,
    "format": "{icon}",
    "persistent-workspaces": {},
    "format-icons": {
      "1": "一",
      "2": "二",
      "3": "三",
      "4": "四",
      "5": "五",
      "6": "六",
      "7": "七",
      "8": "八",
      "9": "九",
      "10": "十"
    }
  },
  "tray": {
    "show-passive-items": true,
    "spacing": 10
  },
  "clock#simpleclock": {
    "tooltip": false,
    "format": " {:%H:%M}",
    "on-click": "exec ~/.config/rofi/scripts/clock_menu.sh"
  },
  "clock": {
    "format": " {:L%a %d %b}",
    "tooltip": true,
    "tooltip-format": "<span size='12pt' font_desc='JetBrainsMono NFP'><tt>{calendar}</tt></span>",
    "calendar": {
      "mode": "month",
      "weeks-pos": "none",
      "on-scroll": 1,
      "format": {
        "months": "   <span color='#ffead3'><b>{}</b></span>", 
        "days": "<span color='#cdd6f4'><b>{}</b></span>",
        "weekdays": "<span color='#ffcc66'><b>{}</b></span>",
        "today": "<span color='#f38ba8'><b><u>{}</u></b></span>"
      }
    }
  },
  "battery": {
    "states": {
      "good": 95,
      "warning": 30,
      "critical": 15
    },
    "format": "{icon} {capacity}%",
    "format-charging": " {capacity}%",
    "format-plugged": " {capacity}%",
    "format-alt": "{icon} {time}",
    "format-icons": ["", "", "", "", ""]
  },
  "memory": {
    "interval": 5,
    "format": " {used:0.1f}G",
    "tooltip": false
  }
}

