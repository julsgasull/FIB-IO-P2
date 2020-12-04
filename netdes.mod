set N;
set O within N;
set A within N cross N; #fixed links


param c {N,N};
param xc {N};
param yc {N};
param t {i in N,l in O};
param rho>0;

node I {i in N, l in O}: net_out=t[i,l]; # si positivo ==> inyecci�n,
                                         # si negativo extracci�n
arc xl {(i,j) in A, l in O}>=0: from I [i,l], to I [j,l];

# COMPLETE
