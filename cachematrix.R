## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##it sets set the value of the vector
##get the value of the vector
##set the value of the inversion
##get the value of the inversion

makeCacheMatrix <- function(x = matrix()) {
         inv <- NULL
         set <- function(y) {
                 x <<- y
                 inv <<- NULL
             }
         get <- function() x
         setinversion <- function(solve) inv <<- solve
         getinversion <- function() inv
         list(set = set, get = get,
                         setinversion = setinversion,
                         getinversion = getinversion)
     }
## Write a short comment describing this function
##it brings the matrix inversion if it is not calculated, if it is then it brings it from cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getinversion()
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    data <- x$get()
    inv <- solve(a,b,...)
    x$setinversion(inv)
    inv
}
