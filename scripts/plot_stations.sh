export GMT_SESSION_NAME=$$
gmt begin Indonesia pdf
gmt grdimage @earth_relief_30s -JM15c -R89/142/-21/16 -Baf -BWSen
    gmt plot stations.csv -St0.1c -W0.1p,black -Gred
    gmt plot IA_stations.csv -St0.1c -W0.1p,black -Gorange
gmt end show
