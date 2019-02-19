#####################
# Correlation calculated as given in:
# Reference
# Biddle Consulting Group (2019) http://www.biddle.com/documents/bcg_comp_chapter2.pdf
using Statistics # library for the function mean(X), the mean value of the vector X.

# We can use any symbol for our functions.
# Let's us the mathematical symbols for  square root and sum.
√ = sqrt
∑ = sum

# Given the vectors,
X1 = [2.5, 3.6, 1.2, 0.8, 4.0, 3.4]
X2 = [1.2, 1.0, 1.8, 0.9, 3.0, 2.2]
X3 = [8.0, 15.0, 12.0, 6.0, 8.0, 10.0]

# We want to find  the correlations between the variable vectors:
# X1 and X2, X1 and X3, X2 and X3 using correlation
# coefficient approach.

# First we implement the funktion for sample standard deviation as:
"""
    S(X)
Compute the sample standard deviation of X

# Example
```julia-repl
julia> X1 = [2.5, 3.6, 1.2, 0.8, 4.0, 3.4]
6-element Array{Float64,1}:
 2.5
 3.6
 1.2
 0.8
 4.0
 3.4
julia> S(X1)
1.3272779161376365
```
"""
S(X)= √( ∑( map(i -> (X[i]-mean(X))^2, 1:length(X))) / (length(X)-1))

# Next we implement the biased estimate of covariance as:
"""
    S(X, Y)
Compute the biased estimate of covariance betweem X and Y

# Example
```julia-repl
julia> X1 = [2.5, 3.6, 1.2, 0.8, 4.0, 3.4]
6-element Array{Float64,1}:
 2.5
 3.6
 1.2
 0.8
 4.0
 3.4

 julia> X2 = [1.2, 1.0, 1.8, 0.9, 3.0, 2.2]
 6-element Array{Float64,1}:
  1.2
  1.0
  1.8
  0.9
  3.0
  2.2

 julia> S(X1, X2)
 0.5736666666666667
```
"""
S(X,Y)= ∑( map(i -> ((X[i]-mean(X))*(Y[i]-mean(Y))), 1:length(X))) / (length(X)-1)

ρ(X,Y)=S(X,Y)/(S(X)*S(Y))

print("\n\nCorrelation between X1 anx X2 is ", ρ(X1, X2))
print("\n\nCorrelation between X1 anx X3 is ", ρ(X1, X3))
print("\n\nCorrelation between X2 anx X3 is ", ρ(X2, X3))
print("\n\n")
