
param K > 0; # numero de camiones
param N > 0;
param C > 0; # capacidad del camion
param c {1..N,1..N};
param d {1..N,1..K} default 0;
param a {1..N};
var y {1..N, 1..N} binary;


minimize total_cost:
  sum {k in 1..K, i in 1..N} d[i,k] * y[i,k];

subject to capacity {k in 1..K}:
  sum {i in 1..N: i!=4} a[i]*y[i,k] <= C;

subject to y_must_be_K_in_depot {i in 1..N: i=4}:
  sum {k in 1..K} y[i,k] = K;

subject to y_must_be_1_in_others {i in 1..N: i!=4}:
  sum {k in 1..K} y[i,k] = 1;
