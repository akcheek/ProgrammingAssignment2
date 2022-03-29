## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#makecacheMatrix creates a unique matrix objebct that can store its inverse 

makeCacheMatrix <- function(m = matrix()) 
  
  {

  #initiaize
  i<-NULL
  
  ##set the matrix
  
  set <-function(matrix) {
    
    m<<- matirx
    i<<- NULL
  }
   #get the matrix
  
  get<- function() {
    #return the matrix
    m
  }
  
  #set the inverse of the matrix
  
  setinverse<- function(inverse) {
    
    i<<- inverse
    
  }
  
  #return the inverse
  
  getinverse <- function () {
    
    i
  }
  
  #make a list of methods
  
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}


## cacheSolve will compute the inverse of a matrix returned by "makeCache Matrix
##chacheSolve will first check if the inverse has already been calculated then 
##the cacheSolve will retrieve the inverse 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

  m<- x$getinverse()
  if(!is.null(m)) {
    
    message("getting cached matrix")
    return(m)
  }
  
  data<-x$get()
  m <- solve(data) %%data
  
  x$setInverse(m)
  
  #return the inverse matrix
  
  m
  
  }
