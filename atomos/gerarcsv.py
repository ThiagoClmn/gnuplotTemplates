tabperiodica = open("tabperiod.csv",'w+')
tabperiodica.write("p,n,e\n")
for z in range(1, 118 + 1):
    tabperiodica.write(f"{z},,\n")
# 118 elementos
tabperiodica.close()