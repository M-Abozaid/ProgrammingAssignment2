## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 INV <- NULL
        set <- function(y) {
                x <<- y
                INV <<- NULL
        }
        get <- function() x
        setINVerse <- function(INVerse) INV <<- INVerse
        getINVerse <- function() INV
        list(set = set,
             get = get,
             setINVerse = setINVerse,
             getINVerse = getINVerse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
## Return a matrix that is the INVerse of 'x'
	INV <- x$getINVerse()
        if (!is.null(INV)) {
                message("getting cached data")
                return(INV)
        }
        mat <- x$get()
        INV <- solve(mat, ...)
        x$setINVerse(INV)
        INV
        

}
