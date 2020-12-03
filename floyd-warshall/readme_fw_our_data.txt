# Esto lo he hecho yo aarón
# todo lo otro es de ejemplo

set NODES := 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24; 
set ARCS :=
  (1, 2)
  (1, 4)
  (2, 1)
  (2, 3)
  (3, 2)
  (3, 6)
  (3, 7)
  (4, 1)
  (4, 5)
  (4, 9)  
  (5, 4)
  (5, 6)
  (5, 10)
  (6, 3)
  (6, 5)   
  (6, 14)   
  (7, 3) 
  (7, 14)   
  (7, 19)
  (8, 9) 
  (8, 11)   
  (9, 4) 
  (9, 8)  
  (9, 10)  
  (9, 12)  
  (10, 5)   
  (10, 9)   
  (10, 13)   
  (11, 8)  
  (11, 12)   
  (11, 22)   
  (12, 9)  
  (12, 11)  
  (12, 13)  
  (12, 15)  
  (13, 10)  
  (13, 12)  
  (13, 14)  
  (13, 15)  
  (13, 17)  
  (14, 6)  
  (14, 7)   
  (14, 13)   
  (14, 18)   
  (15, 12) 
  (15, 13)
  (15, 16)
  (16, 15)
  (16, 17)
  (16, 22) 
  (17, 13)  
  (17, 16)   
  (17, 18)   
  (17, 20)  
  (18, 14)   
  (18, 17)   
  (18, 21)   
  (19, 7)   
  (19, 24)   
  (20, 17)   
  (20, 21)   
  (20, 22)
  (20, 23)   
  (21, 18)   
  (21, 20)   
  (21, 24)   
  (22, 11)   
  (22, 16)   
  (22, 20)
  (22, 23)
  (23, 20)   
  (23, 24)   
  (24, 19)   
  (24, 21)  
;



param: 	c :=	
  1 1 0 
  1 2 96 
  1 3 Infinity
  1 4 103 
  1 5 Infinity
  1 6 Infinity
  1 7 Infinity
  1 8 Infinity
  1 9 Infinity
  1 10 Infinity
  1 11 Infinity
  1 12 Infinity
  1 13 Infinity
  1 14 Infinity
  1 15 Infinity
  1 16 Infinity
  1 17 Infinity
  1 18 Infinity
  1 19 Infinity
  1 20 Infinity
  1 21 Infinity
  1 22 Infinity
  1 23 Infinity
  1 24 Infinity
  2 1 96 
  2 2 0 
  2 3 96 
  2 4 Infinity
  2 5 Infinity
  2 6 Infinity
  2 7 Infinity
  2 8 Infinity
  2 9 Infinity
  2 10 Infinity
  2 11 Infinity
  2 12 Infinity
  2 13 Infinity
  2 14 Infinity
  2 15 Infinity
  2 16 Infinity
  2 17 Infinity
  2 18 Infinity
  2 19 Infinity
  2 20 Infinity
  2 21 Infinity
  2 22 Infinity
  2 23 Infinity
  2 24 Infinity
  3 1 Infinity
  3 2 96 
  3 3 0 
  3 4 Infinity
  3 5 Infinity
  3 6 103 
  3 7 104 
  3 8 Infinity
  3 9 Infinity
  3 10 Infinity
  3 11 Infinity
  3 12 Infinity
  3 13 Infinity
  3 14 Infinity
  3 15 Infinity
  3 16 Infinity
  3 17 Infinity
  3 18 Infinity
  3 19 Infinity
  3 20 Infinity
  3 21 Infinity
  3 22 Infinity
  3 23 Infinity
  3 24 Infinity
  4 1 103 
  4 2 Infinity
  4 3 Infinity
  4 4 0 
  4 5 96 
  4 6 Infinity
  4 7 Infinity
  4 8 Infinity
  4 9 103 
  4 10 Infinity
  4 11 Infinity
  4 12 Infinity
  4 13 Infinity
  4 14 Infinity
  4 15 Infinity
  4 16 Infinity
  4 17 Infinity
  4 18 Infinity
  4 19 Infinity
  4 20 Infinity
  4 21 Infinity
  4 22 Infinity
  4 23 Infinity
  4 24 Infinity
  5 1 Infinity
  5 2 Infinity
  5 3 Infinity
  5 4 96 
  5 5 0 
  5 6 96 
  5 7 Infinity
  5 8 Infinity
  5 9 Infinity
  5 10 103 
  5 11 Infinity
  5 12 Infinity
  5 13 Infinity
  5 14 Infinity
  5 15 Infinity
  5 16 Infinity
  5 17 Infinity
  5 18 Infinity
  5 19 Infinity
  5 20 Infinity
  5 21 Infinity
  5 22 Infinity
  5 23 Infinity
  5 24 Infinity
  6 1 Infinity
  6 2 Infinity
  6 3 103 
  6 4 Infinity
  6 5 96 
  6 6 0 
  6 7 Infinity
  6 8 Infinity
  6 9 Infinity
  6 10 Infinity
  6 11 Infinity
  6 12 Infinity
  6 13 Infinity
  6 14 127 
  6 15 Infinity
  6 16 Infinity
  6 17 Infinity
  6 18 Infinity
  6 19 Infinity
  6 20 Infinity
  6 21 Infinity
  6 22 Infinity
  6 23 Infinity
  6 24 Infinity
  7 1 Infinity
  7 2 Infinity
  7 3 104 
  7 4 Infinity
  7 5 Infinity
  7 6 Infinity
  7 7 0 
  7 8 Infinity
  7 9 Infinity
  7 10 Infinity
  7 11 Infinity
  7 12 Infinity
  7 13 Infinity
  7 14 128 
  7 15 Infinity
  7 16 Infinity
  7 17 Infinity
  7 18 Infinity
  7 19 223 
  7 20 Infinity
  7 21 Infinity
  7 22 Infinity
  7 23 Infinity
  7 24 Infinity
  8 1 Infinity
  8 2 Infinity
  8 3 Infinity
  8 4 Infinity
  8 5 Infinity
  8 6 Infinity
  8 7 Infinity
  8 8 0 
  8 9 96 
  8 10 Infinity
  8 11 103 
  8 12 Infinity
  8 13 Infinity
  8 14 Infinity
  8 15 Infinity
  8 16 Infinity
  8 17 Infinity
  8 18 Infinity
  8 19 Infinity
  8 20 Infinity
  8 21 Infinity
  8 22 Infinity
  8 23 Infinity
  8 24 Infinity
  9 1 Infinity
  9 2 Infinity
  9 3 Infinity
  9 4 103 
  9 5 Infinity
  9 6 Infinity
  9 7 Infinity
  9 8 96 
  9 9 0 
  9 10 96 
  9 11 Infinity
  9 12 103 
  9 13 Infinity
  9 14 Infinity
  9 15 Infinity
  9 16 Infinity
  9 17 Infinity
  9 18 Infinity
  9 19 Infinity
  9 20 Infinity
  9 21 Infinity
  9 22 Infinity
  9 23 Infinity
  9 24 Infinity
  10 1 Infinity
  10 2 Infinity
  10 3 Infinity
  10 4 Infinity
  10 5 103 
  10 6 Infinity
  10 7 Infinity
  10 8 Infinity
  10 9 96 
  10 10 0 
  10 11 Infinity
  10 12 Infinity
  10 13 103 
  10 14 Infinity
  10 15 Infinity
  10 16 Infinity
  10 17 Infinity
  10 18 Infinity
  10 19 Infinity
  10 20 Infinity
  10 21 Infinity
  10 22 Infinity
  10 23 Infinity
  10 24 Infinity
  11 1 Infinity
  11 2 Infinity
  11 3 Infinity
  11 4 Infinity
  11 5 Infinity
  11 6 Infinity
  11 7 Infinity
  11 8 103 
  11 9 Infinity
  11 10 Infinity
  11 11 0 
  11 12 96 
  11 13 Infinity
  11 14 Infinity
  11 15 Infinity
  11 16 Infinity
  11 17 Infinity
  11 18 Infinity
  11 19 Infinity
  11 20 Infinity
  11 21 Infinity
  11 22 223 
  11 23 Infinity
  11 24 Infinity
  12 1 Infinity
  12 2 Infinity
  12 3 Infinity
  12 4 Infinity
  12 5 Infinity
  12 6 Infinity
  12 7 Infinity
  12 8 Infinity
  12 9 103
  12 10 Infinity
  12 11 96
  12 12 0
  12 13 96
  12 14 Infinity
  12 15 103,25
  12 16 Infinity
  12 17 Infinity
  12 18 Infinity
  12 19 Infinity
  12 20 Infinity
  12 21 Infinity
  12 22 Infinity
  12 23 Infinity
  12 24 Infinity
  13 1 Infinity
  13 2 Infinity
  13 3 Infinity
  13 4 Infinity
  13 5 Infinity
  13 6 Infinity
  13 7 Infinity
  13 8 Infinity
  13 9 Infinity
  13 10 103
  13 11 Infinity
  13 12 96
  13 13 0
  13 14 96
  13 15 103,25
  13 16 Infinity
  13 17 127
  13 18 Infinity
  13 19 Infinity
  13 20 Infinity
  13 21 Infinity
  13 22 Infinity
  13 23 Infinity
  13 24 Infinity
  14 1 Infinity
  14 2 Infinity
  14 3 Infinity
  14 4 Infinity
  14 5 Infinity
  14 6 127 
  14 7 128 
  14 8 Infinity
  14 9 Infinity
  14 10 Infinity
  14 11 Infinity
  14 12 Infinity
  14 13 96 
  14 14 0 
  14 15 Infinity
  14 16 Infinity
  14 17 Infinity
  14 18 127 
  14 19 Infinity
  14 20 Infinity
  14 21 Infinity
  14 22 Infinity
  14 23 Infinity
  14 24 Infinity
  15 1 Infinity
  15 2 Infinity
  15 3 Infinity
  15 4 Infinity
  15 5 Infinity
  15 6 Infinity
  15 7 Infinity
  15 8 Infinity
  15 9 Infinity
  15 10 Infinity
  15 11 Infinity
  15 12 103,25
  15 13 103,25
  15 14 Infinity
  15 15 0
  15 16 103,25
  15 17 Infinity
  15 18 Infinity
  15 19 Infinity
  15 20 Infinity
  15 21 Infinity
  15 22 Infinity
  15 23 Infinity
  15 24 Infinity
  16 1 Infinity
  16 2 Infinity
  16 3 Infinity
  16 4 Infinity
  16 5 Infinity
  16 6 Infinity
  16 7 Infinity
  16 8 Infinity
  16 9 Infinity
  16 10 Infinity
  16 11 Infinity
  16 12 Infinity
  16 13 Infinity
  16 14 Infinity
  16 15 103,25
  16 16 0
  16 17 96
  16 18 Infinity
  16 19 Infinity
  16 20 Infinity
  16 21 Infinity
  16 22 128
  16 23 Infinity
  16 24 Infinity
  17 1 Infinity
  17 2 Infinity
  17 3 Infinity
  17 4 Infinity
  17 5 Infinity
  17 6 Infinity
  17 7 Infinity
  17 8 Infinity
  17 9 Infinity
  17 10 Infinity
  17 11 Infinity
  17 12 Infinity
  17 13 127 
  17 14 Infinity
  17 15 Infinity
  17 16 96 
  17 17 0 
  17 18 96 
  17 19 Infinity
  17 20 103 
  17 21 Infinity
  17 22 Infinity
  17 23 Infinity
  17 24 Infinity
  18 1 Infinity
  18 2 Infinity
  18 3 Infinity
  18 4 Infinity
  18 5 Infinity
  18 6 Infinity
  18 7 Infinity
  18 8 Infinity
  18 9 Infinity
  18 10 Infinity
  18 11 Infinity
  18 12 Infinity
  18 13 Infinity
  18 14 127 
  18 15 Infinity
  18 16 Infinity
  18 17 96 
  18 18 0 
  18 19 Infinity
  18 20 Infinity
  18 21 103 
  18 22 Infinity
  18 23 Infinity
  18 24 Infinity
  19 1 Infinity
  19 2 Infinity
  19 3 Infinity
  19 4 Infinity
  19 5 Infinity
  19 6 Infinity
  19 7 223 
  19 8 Infinity
  19 9 Infinity
  19 10 Infinity
  19 11 Infinity
  19 12 Infinity
  19 13 Infinity
  19 14 Infinity
  19 15 Infinity
  19 16 Infinity
  19 17 Infinity
  19 18 Infinity
  19 19 0 
  19 20 Infinity
  19 21 Infinity
  19 22 Infinity
  19 23 Infinity
  19 24 128 
  20 1 Infinity
  20 2 Infinity
  20 3 Infinity
  20 4 Infinity
  20 5 Infinity
  20 6 Infinity
  20 7 Infinity
  20 8 Infinity
  20 9 Infinity
  20 10 Infinity
  20 11 Infinity
  20 12 Infinity
  20 13 Infinity
  20 14 Infinity
  20 15 Infinity
  20 16 Infinity
  20 17 103 
  20 18 Infinity
  20 19 Infinity
  20 20 0 
  20 21 96 
  20 22 107 
  20 23 103 
  20 24 Infinity
  21 1 Infinity
  21 2 Infinity
  21 3 Infinity
  21 4 Infinity
  21 5 Infinity
  21 6 Infinity
  21 7 Infinity
  21 8 Infinity
  21 9 Infinity
  21 10 Infinity
  21 11 Infinity
  21 12 Infinity
  21 13 Infinity
  21 14 Infinity
  21 15 Infinity
  21 16 Infinity
  21 17 Infinity
  21 18 103 
  21 19 Infinity
  21 20 96 
  21 21 0 
  21 22 Infinity
  21 23 Infinity
  21 24 103 
  22 1 Infinity
  22 2 Infinity
  22 3 Infinity
  22 4 Infinity
  22 5 Infinity
  22 6 Infinity
  22 7 Infinity
  22 8 Infinity
  22 9 Infinity
  22 10 Infinity
  22 11 223 
  22 12 Infinity
  22 13 Infinity
  22 14 Infinity
  22 15 Infinity
  22 16 128 
  22 17 Infinity
  22 18 Infinity
  22 19 Infinity
  22 20 107 
  22 21 Infinity
  22 22 0 
  22 23 99 
  22 24 Infinity
  23 1 Infinity
  23 2 Infinity
  23 3 Infinity
  23 4 Infinity
  23 5 Infinity
  23 6 Infinity
  23 7 Infinity
  23 8 Infinity
  23 9 Infinity
  23 10 Infinity
  23 11 Infinity
  23 12 Infinity
  23 13 Infinity
  23 14 Infinity
  23 15 Infinity
  23 16 Infinity
  23 17 Infinity
  23 18 Infinity
  23 19 Infinity
  23 20 103 
  23 21 Infinity
  23 22 Infinity
  23 23 0 
  23 24 96 
  24 1 Infinity
  24 2 Infinity
  24 3 Infinity
  24 4 Infinity
  24 5 Infinity
  24 6 Infinity
  24 7 Infinity
  24 8 Infinity
  24 9 Infinity
  24 10 Infinity
  24 11 Infinity
  24 12 Infinity
  24 13 Infinity
  24 14 Infinity
  24 15 Infinity
  24 16 Infinity
  24 17 Infinity
  24 18 Infinity
  24 19 128 
  24 20 Infinity
  24 21 103 
  24 22 Infinity
  24 23 Infinity
  24 24 0
;
