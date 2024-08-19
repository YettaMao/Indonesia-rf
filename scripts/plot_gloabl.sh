export GMT_SESSION_NAME=$$
gmt begin global pdf
    gmt grdimage @earth_relief_15m -JQ0/0/20c -Rg -Ba30f30 -BWSen
    #gmt colorbar
gmt end show
