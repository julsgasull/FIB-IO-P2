set NODES;
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
param demand {NODES}; # demanda de los clientes

var x {NODES,NODES} binary;
var u {NODES} >= C;

minimize total_cost:
  sum {i in NODES, j in NODES} cost[i,j] * x[i,j];

# Degree constraints
subject to Degree_Out {i in NODES: i!=3}:
  sum {j in NODES: j!=i } x[i,j] = 1;
subject to Degree_In {i in NODES: i!=3}:
  sum {j in NODES: j!=i } x[j,i] = 1;

# Arrivals to depot
subject to Depot_arrivals {j in NODES: j=3}:
  sum {i in NODES: i!=3 } x[i,j]=K;

# Departures from depot
subject to Depot_departures {i in NODES: i=3}:
  sum {j in NODES: j!=3} x[i,j]=K;


# Approximate subtour elimination constraints
subject to subtour_elimination {(i,j) in (NODES diff {3}) cross (NODES diff {3}):
  (demand[i]+demand[j]<=C) and i!=j}:
    u[j] >= u[i] + demand[j] - C*(1 - x[i,j]);

# Lowerbound on u
subject to lowerbound {i in NODES: i!=3}: u[i]>=demand[i];

# Upperbound on u
subject to upperbound {i in NODES: i!=3}: u[i]<=C;
