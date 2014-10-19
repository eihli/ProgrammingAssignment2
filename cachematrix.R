## makeCacheMatrix takes a matrix and returns a list that allows
## the inverse of the matrix to be cached.
## cacheSolve checks to see if the inverse has already been cached.
## If it has, then it returns the cached inverse. If it hasn't, 
## then it calculates the inverse, updates the makeCacheMatrix object
## to store the inverse, then returns the inverse.

## Create a list object that describes a cacheable matrix.

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y){
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  get_inverse <- function() inverse
  set_inverse <- function(inv) {
    inverse <<- inv
  }
  list(set = set, get = get, get_inverse = get_inverse, set_inverse = set_inverse)
}


## Returns inverse of a makeCacheMatrix objects matrix. From cache if available.
## Otherwise, solves and caches it first.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  if(is.null(x$get_inverse())){
    print("Inverse not yet calculated. Solving...")
    x$set_inverse(solve(x$get()))
  }
  print("Getting inverse from cache.")
  X$get_inverse()
}
