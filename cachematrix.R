## My name is amira , and the model that I present, as investigated in more depth, 
## shows how R programming environments work to be optimal.

## In this part, the function 'makeCacheMatrix', builds a set of functions and returns (object) 
## the functions within a list to the parent environment. 

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
     m <- NULL
     set <- function(y){
          x <<- y
          m <<- NULL
     }
     get <- function() x
     setmean <- function(mean) m <<- mean
     getmean <- function() m 
     list(set = set , get = get,
          setmean = setmean,
          getmean = getmean)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
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

