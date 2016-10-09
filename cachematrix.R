## Function are identical to the example, deleated the set function within the "matrix" object function, as it serves no pratical purpose in this assigmnet

## This function stores an input matrix "x" and creates an object "m" to store the inverse of "x" 

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}

## This function inverts a matrix and caches it's inverse for future reference or returns a cached inverse if available

cacheSolve <- function(x, ...) {
        m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}
