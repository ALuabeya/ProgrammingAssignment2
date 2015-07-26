## Put comments here that give an overall description of what your
## functions do
## these functions produce objects which can be functions, nested functions or cache functions
##to be used when needed to simplify long  and repetitive computations 

## Write a short comment describing this function

## makeCacheMatrix is a function to create a matrix containing a list of functions to
## to set the matrix, get the matrix, set the inverse matrix and get the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
    invmatrix<-NULL
    set<-function(y){
        X<<-y
        invmatrix<<-NULL
    }
    get<-function() x
    setinvmatrix<-function(solve)invmatrix<<-solve
    getinvmatrix<-function() invmatrix
    list(set=set,get=get,setinvmatrix=setinvmatrix,getinvmatrix=getinvmatrix)
    }


## Write a short comment describing this function
##cacheSolve: use a matrix defined as makeCache Matrix() and returns the inverted form of the matrix
##if called

cacheSolve <- function(x, ...) {
invmatrix<-x$getinvmatrix()
        if(!is.null(invmatrix)){
        message("getting cached data")
        return(invmatrix)
        
    }
matrixdata<-
getsolve<- solve(matrixdata,...)
x$setinvmatrix(invmatrix)
invmatrix
}
       
        ## Return a matrix that is the inverse of 'x'
}
