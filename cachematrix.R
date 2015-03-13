<<<<<<< HEAD

## Function that creates a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
    i <- NULL #Intialize inverse value to NULL
    #set the value of the Matrix 
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    #get the value of the Matrix 
    get <- function() x
    #set the value of the inverse
    setinverse <- function(inv){
        i <<- inv  
    } 
    #get the value of the inverse
    getinverse <- function() i
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Function that computes the inverse of the special "matrix" returned by makeCacheMatrix

cacheSolve <- function(x, ...) {
    # get inverse value
    i <- x$getinverse()
    # If the inverse has already been calculated
    if(!is.null(i)) {
        message("getting cached data")
        #Retrieve the inverse from the cache
        return(i)
    }
    data <- x$get()
    #Calculate the inverse of the matrix
    i <- solve(data)
    x$setinverse(i)
    ## Return a matrix that is the inverse of 'x'
    i
}
=======
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
