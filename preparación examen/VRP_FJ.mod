set CLIENTS;
set ORIGIN within CLIENTS;

/*--------------------*/
/*---Floyd-Warshall---*/
/*--------------------*/

param cost {CLIENTS,CLIENTS};

/*-------------------------------------------*/
/*----VRP with General Assignment problem----*/
/*-------------------------------------------*/

param C > 0; # capacidad del camion
param K > 0; # numero de camiones
param a {CLIENTS}; # demanda de los clientes
param d {CLIENTS, 1..K};

var y {CLIENTS, 1..K} binary;

minimize total_cost:
  sum {k in 1..K, i in CLIENTS} d[i,k]*y[i,k];

subject to assignment {k in 1..K}:
  sum {i in CLIENTS} a[i]*y[i,k] <= C;

subject to degree_depot {i in CLIENTS: i=4}:
  sum {k in 1..K} y[i,k] = K;

subject to degree_clients {i in CLIENTS: i!=4}:
  sum {k in 1..K} y[i,k] = 1;
