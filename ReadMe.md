# Manjaro i3 mini版配置说明

## 主要软件

| 类型 | 软件                      |
| -------- | ------------------------- |
| OS       | manjaro                   |
| WM       | i3wm                      |
| Bar      | polybar & conky           |
| Launcher | rofi                      |
| Terminal | alacritty & tmux          |
| Browser  | chrome                    |
| Editor   | vim & typora              |
| Media    | mpv & mpd & ncmpcpp       |
| DB       | mongoDB & MariaDB         |

## 字体

```
sudo pacman -S noto-fonts-cjk noto-fonts-emoji ttf-sarasa-gothic
sudo pacman -S ttf-fira-code ttf-jetbrains-mono
```

术语
mono：即 Monospaced，等宽字体
sans：即 Sans-Serif，无衬线体
gothic：哥特体，即无衬线体
bold：粗体
italic：斜体
bolditalic：加粗斜体
regular：常规体
ligature：连体字符，举例来说，会把 != 变成 ≠



Noto Color Emoji       等宽字体
Material Design Icons  等宽字体
font-awesome-extension 等宽字体

JetBrains Mono 等宽
Fira Code 等宽
JetBrainsMono Nerd Font     等宽字体

更纱黑体是一种中文编程字体，支持在中文Windows系统的命令行窗口中使用。

包含样式：

| 英文名称 | 中文名称 | 描述 |
| ------- | ------ | --- |
| Sarasa Gothic | 更纱黑体 | 基于Inter，全宽引号 |
| Sarasa UI | 更纱黑体 UI | 基于Inter，窄引号|
| Sarasa Mono | 等距更纱黑体 | 基于Iosevka，有连字，全宽破折号|
| Sarasa Term | | 基于Iosevka，有连字，全宽破折号|
| Sarasa Fixed | | 基于Iosevka，无连字，半宽破折号|

包含汉字字形：

- CL：传统字形，《康熙字典》字形
- SC：简体中文
- TC：台湾繁体中文
- J：日文
- K：韩文
- HC：香港繁体中文

## Icons

```
sudo pacman -S awesome-terminal-fonts ttf-font-awesome
sudo pacman -S nerd-fonts-fira-code nerd-fonts-jetbrains-mono
sudo pacman -S ttf-material-design-icons-webfont
```

| 描述   | icons  |
| ----- | ------ |
| 时间   | 󱑋󰅐󱑍󱑎 |
| 日期   | 󰃰󰔠󰸘󰸗 |
| 消息   | 󰀪󰻍󰋽󰳦󰳧|
| 通知   |  󰂟󰪑   |
| 声音   | 󰖀󰕿󰕾󰖁  |
| 网络   | 󰤪󰤧󰤡󰤬  |
| 电池   | 󰁻󰁼󰁿󰂀󰁹 |
| 电池   | 󰂆󰂈󰂉󰂊󰂅 |

󰏗

󰽣󰽡󰭽󰭾
󰘳󰧺󰧺
󰫖
󰫔󰎇󰎊
󱘎󰤉󱓞󱓟󱎯󰑣
󱎒󱎑󱎐󱎏󱎎

󰍀󰍁
󰍂󰍃
󰑐󰓦󰤆


󰔡󰔢
󰔂󰇄
󰐱󰩦󰋸
󱘟󰥗󰍉

󰖳󱘊 󰕘 󰕕󰖲
󰝰󰷏
󱅅󰤌
󰗃󰐌
󰆍󰨊
󰊯
󰯠󰢻

󱀅󰸖
