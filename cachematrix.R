## My name is amira , and the model that I present, as investigated in more depth, 
## shows how R programming environments work to be optimal.

## In this part, the function 'makeCacheMatrix', builds a set of functions and returns (object) 
## the functions within a list to the parent environment. 

## Write a short comment describing this function

## A pair of functions that cache the inverse of a matrix.
## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
     inv <- NULL
     set <- function(y){
          x <<- y
          inv <<- NULL
     }
     get <- function() x
     setInverse <- function(solveMatrix) inv <<- solveMatrix
     getInverse <- function() inv
     list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
cachemean <- function(x, ...) {
     m <- x$getmean()
     if(!is.null(m)) {
          message("getting cached data")
          return(m)
     }
     data <- x$get()
     m <- mean(data, ...)
     x$setmean(m)
     m
}
