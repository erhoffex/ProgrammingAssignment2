## Put comments here that give an overall description of what your
## functions do

## This function caches a matrix inversion
## set, get the value of a matrix
## set, get the value of the inversion

makeCacheMatrix <- function(x = matrix()) {

m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinvert <- function(invert) m <<- invert
        getinvert <- function() m
        list(set = set, get = get,
             setinvert = setinvert,
             getinvert = getinvert)

}

## This function solves for a matrix inversion
## first check to see if the inversion has been cached, and if so, use it
## if not, solve for the inversion and return the result

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

m <- x$getinvert()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
print("data")
print(data)
        m <- solve(data, ...)
        x$setinvert(m)
        m
}
