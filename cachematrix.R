## Put comments here that give an overall description of what your
## functions do

## The makeCacheMatrix is a function which stores the inverse of a matrix in cache.
## When we call the cacheSolve funtin with a matrix passed as an arguement, it will check with the cache memory if the inverse already exists or notte.
## If is does, it retirieve the inverse matrix from the cache itself. If it does not exists, the inverse will be calculated and stored in the cache.

## Write a short comment describing this function

## This function is responsible for creating the vector which is actually a list. The function is responsible for storing the inverse
## of a matrix ot the cache. The set of functions provide the mechanism to store the inverse in the cache. Functions like get(), set() are used
## o get and set the values of the vector. The getinverse() and setinverse() functions are used to retrieve the inverse of the matrix from the 
## cache and set the inverse to the cache respectively.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- gunction() inv
  
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
## This function basically takes the marix as the parameter and tries to calculate the inverse of it. It checks with the cache if the inverse exists or not.
## If the inverse exists in the cache, it retrives the value from there and returns it. If it is not in the cache, then it calculates the inverse
## and stores it in the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    return(inv)
  }
  matrics <- x$get()
  inv <- solve(matrics, ...)
  x$setinverse(inv)
  
  inv
}
