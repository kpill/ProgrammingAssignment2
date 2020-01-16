## Put comments here that give an overall description of what your
## functions do
	## The first function returns a list representing the special matrix
	## The special matrix is similar to the special vector example
	## The second function returns the inverse of a given special matrix
	## If no inverse has been stored yet, the inverse is computed

## Write a short comment describing this function
	## Returns a list of functions
	## The get functions can retrieve a stored matrix and its inverse
	## The set functions can store new data for a computed inverse

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y) {
		x <<- y
		inv <<- NULL
	}
	get <- function() x
      setinverse <- function(inverse) inv <<- inverse
      getinverse <- function() inv
      list(set = set, get = get,
      	setinverse = setinverse,
            getinverse = getinverse)
}


## Write a short comment describing this function
	## Uses the getinverse function to retrieve the stored inverse
	## Uses the get and setinverse functions to compute and store an inverse

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
	inv <- x$getinverse()
      if(!is.null(inv)) {
      	message("retrieving cached data")
            return(inv)
      }
      data <- x$get()
      inv <- solve(data)
      x$setinverse(inv)
      inv
}
