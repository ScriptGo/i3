## 字体

### 术语

| 术语 | 描述 |
|  -  |  -  | 
| mono | 即 Monospaced，等宽字体 |
| sans | 即 Sans-Serif，无衬线体 |
| serif| 即Serif-fonts，衬线体  |
| gothic | 哥特体，即无衬线体 |
| ligature | 连体字符，举例来说，会把 != 变成 ≠ |

### 尺寸

字型尺寸（size）是指其高度

单位是“点”或“级”（中文也采用“号”做单位）

72点相当于1英寸（1 point = 127⁄360 mm = 352.7 µm——约等于352.7微米）

而12点则称为1皮卡（pica，或译“派卡”）

如：大小为12点的字可以称作 “12级字”


### 字重

字重（weight），是指相对于字高度的笔画粗细（stroke width）程度。一个字体（typeface）的某个字型（font）的字重常常至少4-6个，其中正常与黑体几乎是必备的：[注 1]

|  |  |  |
| - | - | - |
| Thin(Hairline) | 淡体 | 100 |
| Extra-light(ultra-light) | 特细 | 200 |
|  Light | 细体 | 300 |
| Demi-Light | 次细  | 350 |
| Regular(normal / book / plain) | 常规体(标准) | 400 |
| Medium | 适中  | 500 |
| Demi-bold(semi-bold) | 次粗 | 600 |
| Bold | 粗体 | 700 |
| Extra-bold(Ultra-bold) | 特粗 | 800 |
| Black(Heavy) | 浓体 | 900 |
| Extra-black(Ultra-black) | 特浓 | 950 |
| Italic | 斜体 | |
| Oblique | 伪斜体 | |
| Dolditalic | 加粗斜体 | |


### 常用字体

```
sudo pacman -S noto-fonts-cjk noto-fonts-emoji ttf-sarasa-gothic
sudo pacman -S ttf-fira-code ttf-jetbrains-mono
```

Noto Color Emoji            等宽字体
Material Design Icons       等宽字体
font-awesome-extension      等宽字体
JetBrainsMono Nerd Font     等宽字体
JetBrains Mono 等宽
Fira Code 等宽


### 更纱黑体

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

### 图标字体

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
| 办公 | 󱎒󱎑󱎐󱎏󱎎 |
| 启动器 | 󱓞󱓟󱎯󰑣 |
| 音乐 | 󰫔󰎇󰎊 |
| 开关 | 󰔡󰔢 |
| 包 | 󰏗 |
| 窗口 | 󰖳󱘊 󰕘 󰕕󰖲 |
| 浏览器 | 󰊯 |
| 文件 | 󰝰󰷏 |
| 编辑 | 󱅅󰤌 |
| 播放器 | 󰗃󰐌 |
| 终端 | 󰆍󰨊 |
| 搜索 | 󱘟󰥗󰍉 |
| 传输 | 󰭽󰭾 |
| 桌面 | 󰔂󰇄 |
| 连接 | 󱘎󰤉 |
| 安全 | 󰍀󰍁 |
| 系统 | 󰑐󰓦󰤆󰍂󰍃|
| 菜单 | 󰘳  |
| 键盘 | 󰧺󰧺 |
| 插件 | 󰐱󰩦 |
| 收藏 | 󰸖 |
| 设置 | 󰯠󰢻 |
| 分隔符 | 󰽣󰽡 |
| 其他 | 󰫖󰋸󱀅 |


## 主题

** 暗黑主题 **

|  color  | onehalf | material| gruvbox |gruvbox|gruvbox| murz |
|---------|---------|---------|---------|-------|-------|------|
| bg      | #282c34 | #282828 | #282828 |       |#282a36|#18181B
| fg      | #dcdfe4 | #dfbf8e | #ebdbb2 |       |#f8f8f2|#F8F8F8
|black    | #282c34 | #665c54 |         |       |#282a36|#18181B
|red      | #e06c75 | #ea6962 | #cc241d |#fb4934|#ff5555|#FF7575
|green    | #98c379 | #a9b665 | #98971a |#b8bb26|#50fa7b|
|yellow   | #e5c07b | #e78a4e | #d79921 |#fabd2f|#f1fa8c|#FFFF39
|blue     | #61afef | #7daea3 | #458588 |#83a598|#6272a4|#6BA2FF
|magenta  | #c678dd | #d3869b |         |       |#bd93f9|#E66AFC
|cyan     | #56b6c2 | #89b482 |         |       |#8be9fd|#45FFFF
|white    | #dcdfe4 | #dfbf8e |         |       |#f8f8f2|#F8F8F8
|purple   |         |         | #b16286 |#d3869b|       |
|aqua     |         |         | #689d6a |#8ec07c|       |#96F7C8
|orange   |         |         | #d65d0e |#fe8019|       |
|gray     |         |         | #a89984 |#928374|       |


trans        = #00000000
alert        = #ed404c

#########################################################################

|颜色  | 表示 |   颜色  |   表示   | 颜色 | 表示 |
|-----|-----|---------|---------|-------|
|黑色|#000000|白色|#FFFFFF|黄色|#FFFF00 |
|象牙黑|#292421|古董白|#FAEBD7|香蕉色|#E3CF57|
|灰色|#C0C0C0 |天蓝色|#F0FFFF|镉黄|#FF9912|
|冷灰|#808A87|白烟|#F5F5F5|dougello|#EB8E55|
|石板灰|#708069|白杏仁|#FFFFCD|forum gold|#FFE384|
|暖灰色|#808069|cornsilk|#FFF8DC|金黄色|#FFD700|
|蓝色|#0000FF|蛋壳色|#FCE6C9|黄花色|#DAA569|
|钴色|#3D59AB|花白|#FFFAF0|瓜色|#E3A869|
|dodger blue|#1E90FF|gainsboro|#DCDCDC|橙色|#FF6100|
|jackie blue|#0B1746|ghostWhite|#F8F8FF|镉橙|#FF6103|
|锰蓝|#03A89E|蜜露橙|#F0FFF0|胡萝卜色|#ED9121|
|深蓝色|#191970|象牙白|#FAFFF0|桔黄|#FF8000|
|孔雀蓝|#33A1C9|亚麻色|#FAF0E6|淡黄色|#F5DEB3|
|土耳其玉色|#00C78C|navajoWhite|#FFDEAD|紫色|#A020F0|
|浅灰蓝色|#B0E0E6|old lace|#FDF5E6|紫罗蓝色|#8A2BE2|
|品蓝|#4169E1|海贝壳色|#FFF5EE|jasoa|#A066D3|
|石板蓝|#6A5ACD|雪白|#FFFAFA|湖紫色|#9933FA|
|天蓝|#87CEEB|棕色|#802A2A|淡紫色|#DA70D6|
|青色|#00FFFF|米色|#A39480|梅红色|#DDA0DD|
|绿土|#385E0F|锻浓黄土色|#8A360F|红色|#FF0000|
|靛青|#082E54|锻棕土色|#873324|砖红|#9C661F|
|碧绿色|#7FFFD4|巧克力色|#D2691E|镉红|#E3170D|
|青绿色|#40E0D0|肉色|#FF7D40|珊瑚色|#FF7F50|
|绿色|#00FF00|黄褐色|#F0E68C|耐火砖红|#B22222|
|黄绿色|#7FFF00|玫瑰红|#BC8F8F|印度红|#B0171F|
|钴绿色|#3D9140|肖贡土色|#C76114|栗色|#B03060|
|翠绿色|#00C957|标土棕|#734A12|粉红|#FFC0CB|
|森林绿|#228B22|乌贼墨棕|#5E2612|草莓色|#872657|
|草地绿|#7CFC00|赫色|#A0522D|橙红色|#FA8072|
|酸橙绿|#32CD32|马棕色|#8B4513|蕃茄红|#FF6347|
|薄荷色|#BDFCC9|沙棕色|#F4A460|桔红|#FF4500|
|草绿色|#6B8E23|棕褐色|#D2B48C|深红色|#FF00FF|
|暗绿色|#308014|     |       |     |      |
|海绿色|#2E8B57|     |       |     |      |
|嫩绿色|#00FF7F|     |       |     |      |
