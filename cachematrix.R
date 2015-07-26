## Put comments here that give an overall description of what your
## functions do
## these functions produce objects which can be functions, nested functions or cache functions
##to be used when needed to simplify long  and repetitive computations 

## Write a short comment describing this function

## makeCacheMatrix is a function to create a matrix containing a list of functions 
## to set the matrix, get the matrix, set the inverse matrix and get the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
    inv.data <- NULL
    set <- function(y) {
        # I used <<- to assign a value to an object in an environment different from the current environment
        x <<- y
        inv.data <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv.data <<- inverse
    getinverse <- function() inv.data
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function
## this function  use the matrix which was created as makecaheMatrix() 
## and return the inverted form of the matrix
## when called
## and  when find a non null value, it return it otherwise it generate it with solve function
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inv.data = x$getinverse()  
    if (!is.null(inv.data) ) {
        message("Getting cached data")
        return(inv.data)
    }
    
    matrix.data <- x$get()
    inv.data <- solve(matrix.data, ... )
    
    x$setinv(inv.data)
    return(inv.data)
}
