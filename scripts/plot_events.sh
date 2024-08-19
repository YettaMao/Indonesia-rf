export GMT_SESSION_NAME=$$

# 区域中心位于大概53，-2  处
stlo=105
stla=-2
# 使用 -JE 投影（四个参数: 中心经度/中心纬度/最大震中距/图片宽度）
J=E$stlo/$stla/120/10c

gmt begin events pdf
    gmt set FORMAT_GEO_MAP=+D
    gmt coast -J$J -Rg -A10000 -Ggrey

    # 绘制台站中心位置（三角形）
    echo $stlo $stla | gmt plot -St0.4c -Gblack -Bya180
    # 绘制地震位置（五角星）
    gmt plot events.csv -Sa0.25c -Gred 

    # 绘制等震中距线：30度（直径 60 度）、60 度（直径 120 度）
    echo $stlo $stla 60d | gmt plot -SE- -W1p,red
    #echo $stlo $stla 120d | gmt plot -SE- -W1p,red
    echo $stlo $stla 180d | gmt plot -SE- -W1p,red
    # 添加文字：30、60、90 度处
    gmt text -D0c/0.3c << EOF
$stlo -30 30\232
#$stlo -61 60\232
$stlo -92 90\232
$stlo -179 180\232
EOF

gmt end show
