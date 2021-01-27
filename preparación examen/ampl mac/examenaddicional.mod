param N; # nombre ciutats
set CLIENTS;
param c{CLIENTS,CLIENTS}; # distancies/temps/costs entre ciutats

var y{CLIENTS,CLIENTS} binary;
var t{CLIENTS} >=1, <=N;

minimize fobj: sum{i in CLIENTS,j in CLIENTS} c[i,j]*y[i,j];

subject to van_a {i in CLIENTS diff{4}}:
  sum{j in CLIENTS diff{4}} y[i,j]= 1;

subject to venen_de {j in CLIENTS diff{4}}:
  sum{i in CLIENTS diff{4}} y[i,j]= 1;

subject to connectivitat
{
  i in CLIENTS diff{4},
  j in CLIENTS diff{4} : i != j
}:
  t[j] >= t[i]+1-(N+1)*(1-y[i,j]);

subject to t1: t[4]= 1;

#subject to no_yii {i in CLIENTS diff{4}}:
#  y[i,i]= 0;
