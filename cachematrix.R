## Overall caches the inverse of a matrix

## This returns a list that caches the inverse of a matrix using get, set, getinserve, and set inverse

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) inverse <<- solve
  getinverse <- function() inverse
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Produces the cache if their or solves it

cacheSolve <- function(x, ...) {  
  m <- x$getinverse()
if(!is.null(m)) {
  message("getting cached data")
  return(m)
}
data <- x$get()
m <- solve(data, ...)
x$setinverse(m)
m
        ## Return a matrix that is the inverse of 'x'
}
