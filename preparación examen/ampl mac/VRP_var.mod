set NODES;
set CLIENTS within NODES;
set ORIGIN within NODES;
set ARCS within NODES cross NODES; # fixed links

# param demand {i in NODES,l in ORIGIN};

/*
node I {i in NODES, l in ORIGIN}: net_out=demand[i,l]; # si positivo ==> inyecci�n,
                                         # si negativo extracci�n
arc xl {(i,j) in ARCS, l in ORIGIN}>=0: from I [i,l], to I [j,l];
*/

/*--------------------*/
/*---Floyd-Warshall---*/
/*--------------------*/

param cost {NODES,NODES} default Infinity;
param xcoord {NODES};
param ycoord {NODES};



/*--------------------*/
/*----VRP with MTZ----*/
/*--------------------*/

param C > 0; # capacidad del camion
param K > 0; # numero de camiones
param M > 0;
param B {CLIENTS, CLIENTS};
param demand {CLIENTS}; # demanda de los clientes

var x {CLIENTS,CLIENTS} binary;
var u {CLIENTS} >= 0;
var b {CLIENTS} >= 0;

minimize total_cost:
  sum {i in CLIENTS, j in CLIENTS} x[i,j] * cost[i,j];

# Degree constraints
subject to Degree_Out {i in CLIENTS: i!=3}:
  sum {j in CLIENTS: j!=i } x[i,j] = 1;
subject to Degree_In {j in CLIENTS: j!=3}:
  sum {i in CLIENTS: i!=j } x[i,j] = 1;

# Arrivals to depot
subject to Depot_arrivals {j in CLIENTS: j=3}:
  sum {i in CLIENTS: i!=3 } x[i,j]=K;

# Departures from depot
subject to Depot_departures {i in CLIENTS: i=3}:
  sum {j in CLIENTS: j!=3} x[i,j]=K;


# Approximate subtour elimination constraints
subject to subtour_elimination {(i,j) in (CLIENTS diff {3}) cross (CLIENTS diff {3})}:
  u[j] >= u[i] + demand[j] - C*(1 - x[i,j]);

subject to subtour_elimination_b {(i,j) in (CLIENTS) cross (CLIENTS diff {3})}:
  b[j] >= b[i] + B[i,j] - M*(1 - x[i,j]);

#subject to subtour_elimination_b {(i,j,k) in (CLIENTS diff {3}) cross (CLIENTS diff {3}) cross (CLIENTS diff {3})}:
#  b[j,k] >= b[i,j] + B[j,k] - M*(1 - x[i,j]);

# Lowerbound on u
subject to lowerbound_u {i in CLIENTS diff {3}}: u[i]>=demand[i];

# Upperbound on u
subject to upperbound_u {i in CLIENTS diff {3}}: u[i]<=C;

# Lowerbound on b
subject to lowerbound_b {i in CLIENTS diff {3}}: b[i]>=0;

# Upperbound on b
subject to upperbound_b {i in CLIENTS diff {3}}: b[i]<=M;
