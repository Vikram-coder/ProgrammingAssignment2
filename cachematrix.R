## Put comments here that give an overall description of what your
## functions do

## This function creates a special vector used for caching

makeCachematrix <- function(x = matrix()) {
          i <<- NULL
         set <- function(y) {
                 x <<- y
                 i <<- NULL
         }
         get <- function() x
         setinv <- function(inv) i <<- inv
         getinv <- function() i
         list(set = set, get = get,
              setinv = setinv,
              getinv = getinv)
 }



## It retreives the inverse of matrix from cache
## if available, or else 
## it finds the inverse and updates the cache 

cacheSolve <- function(x, ...) {
         m <- x$getinv()
         if(!is.null(i)) {
                 message("getting cached data")
                 return(i)
         }
         data <- x$get()
         i <- solve(data, ...)
	   message("Setting cache!!!")
         x$setinv(i)
         i
 }
