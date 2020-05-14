b[0]=18
b[1]=24
b[2]=36
b[3]=48
b[4]=54
b[5]=72
b[6]=96
b[7]=108
b[8]=144
b[9]=192

for (i=0; i<10; i+=1) c[i]=abs(b[i]-argument0)
m=0
for (j=0; j<10; j+=1) if c[j]<c[m] then m=j

return b[m];
