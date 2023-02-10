# ===============================================================
# ==================== R CONTROL STRUCTURES =====================
# ===============================================================

# ===== CONTROL STRUCTURES =====
# if, else, for, while, repeat, break, next, return.

# If else condition example 1. 
# The standard structure of a if else condition is. 
x = 5
if(x > 3){
  y = 10
} else {
  y = 5
}

# If else condition example 2.
# if else condition can be related to a single variable. 
x = 5
y = if(x > 3){
  20
} else {
  10
}

# for condition example 1
# The standard stucture of a for condition is.
for(i in 1:10){
  print(i)
}

# for condition example 2
x_1 = c("a", "b", "c", "d")

for(i in 1:4){
  print(x_1[i])
}

for(i in seq_along(x_1)){
  print(x_1[i])
}

for(letter in x_1){
  print(letter)
}

for(i in 1:4) print (x_1[i])

# for condition example 3
mat = matrix(1:6, 2, 3)
for(i in seq_len(nrow(mat))){
  for(j in seq_len(ncol(mat))){
    print(mat[i, j])
  }
}

# while condition example 1. 
count = 0
while (count < 10) {
  print(count)
  count = count + 1
  
}

# while condition example 2. 
# If condition to generate a random walk.
z = 5 
while (z >= 3 && z<=10) {
  print(z)
  coin = rbinom(1, 1, 0.5)
  if(coin == 1) {
    z = z + 1
  }else{
    z = z -1
  }
}

# next function example 1. 
for (i in 1:100){
  if(i <= 20){
    next 
  }
  print(i)
}





















