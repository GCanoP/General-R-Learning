# ============================================
# ===== BASICS OF R PROGRAMMING LANGUAGE =====
# ============================================

# Defining and printing a variable.  
x = 3
print(x) 
# Defining a sequence. 
y = 1:20
print(y)

# ===== R DATA TYPES : OBJECTS AND ATTRIBUTES =====
# Basic Types : Character, Numeric, Integer, Complex, Logical. 
# Basic Attributes : Names, Dimnames, Class, Length, Others. 
# Vectors contains objects of the same class.
# Lists can contain objects of different classes.

# Creating vectors using the function c(). 
x_1 = c(0.5, 0.6)           # Numeric
x_2 = c(TRUE, FALSE, T, F)  # Logical 
x_3 = c("a", "b", "c")      # Characters
x_4 = 9:29                  # Integers 
x_5 = c(1+0i, 2+4i)         # Complex

# Creating vectors using the function vector(). 
x_6 = vector(mode = "numeric", length = 10)

# Explicit Cohersion using the function as.*
# Nonsensical Cohersion results in NAS values. 
x_7 = 0: 6
print(class(x_7))
x_8 = as.character(x_7)
print(class(x_8))

# Creating a list as a flexible object. 
x_9 = list(1, "a", TRUE, 1+5i)

# Creating a matrix. 
mat_1 = matrix(data= 1:6, nrow = 2, ncol = 3)

# Creating Factors. 
# Factors area used to represent cathegorical data. 
factor = factor(c("yes", "no", "no", "no", "yes"))
print(factor)
print(unclass(factor))
print(attr(factor,"levels"))

# Methods for detect missing values.  
# is.na() and is.nan() for NA and NAN values. 
miss = c(1, 2, NA, 3, NA, 5)
print(sum(is.na(miss)))

# ===== R DATAFRAMES =====
# Unlike matrices, dataframes can store different classes of objects in each column. 
# Datframes have a special attribute row.names
# Dataframes are usually creeated by calling read.table() or read.csv() 

df_1 = data.frame(foo = 1:4, bar = c(T, T, F, F))
print(df_1)
print(nrow(df_1))
print(ncol(df_1))

# R objects can be associated with names. 
vector_1 = 1:3
names(vector_1) = c("a", "b", "c")
print(vector_1)

list_1 = list(a = 1, b = 2, c = 3)
print(list_1)

mat_2 = matrix(1:4, nrow = 2, ncol = 2)
dimnames(mat_2) = list(c("a", "b"), c("c", "d" ))
print(mat_2)

# ===== DATA MANAGMENT =====
# Principal functions read.table(), read.csv(), readLines, source, dget, load, unserialize.
# Interfaces to the outer world  file, gzfile, bzfile, url.

# ===== SUBSETTING R OBJECTS BASICS =====
# Subsetting can be applied to nested elements. 

# Example 1 vector. 
x = c("a", "b", "c", "d", "e", "f", "g", "h")
print(x[1])
print(x[1:4])
print(x[x > "a"])           # Conditional vector. 
print(x>"a")                # Logical vector. 

# Example 2 list.
list_2 = list(foo = 1:4, bar = 0.6)
print(list_2$foo[2])
print(list_2$bar)

# Example 3 matrix.
mat_3 = matrix(data = 1:6, nrow = 2, ncol = 3)
print(mat_3[1,2])
print(mat_3[,2])
 
# Example 4 NA values.
x_9 = c(1, 2, NA, 4, NA, 5)
bad = is.na(x_9)
print(x_9[!bad])



























