set NODES; # N

param cost {NODES,NODES} >= 0; # c
param vehiclecap >0;
param vehiclefleet >0;
param demand {NODES}; # t

var x {NODES,NODES} binary;
var u {NODES} >=vehiclecap;

minimize total_cost:

sum {i in NODES, j in NODES} cost[i,j] * x[i,j];

# Degree constraints
subject to Degree_Out {i in NODES: i!=0}:
  sum {j in NODES: j!=i } x[i,j] = 1;
subject to Degree_In {i in NODES: i!=0}:
  sum {j in NODES: j!=i } x[j,i] = 1;

# Arrivals to depot
subject to Depot_arrivals {j in NODES: j=0}:
  sum {i in NODES: i!=0 } x[i,j]=vehiclefleet;

# Departures from depot
subject to Depot_departures {i in NODES: i=0}:
  sum {j in NODES: j!=0} x[i,j]=vehiclefleet;

# Approximate subtour elimination constraints
subject to subtour_elimination {(i,j) in (NODES diff {0}) cross (NODES diff {0}):
  (demand[i]+demand[j]<=vehiclecap)}:
    u[i]-u[j]+vehiclecap*x[i,j]<=vehiclecap-demand[j];

# Lowerbound on u
subject to lowerbound {i in NODES: i!=0}: u[i]>=demand[i];

# Upperbound on u
subject to upperbound {i in NODES: i!=0}: u[i]<=vehiclecap;
