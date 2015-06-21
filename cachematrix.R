## Put comments here that give an overall description of what your
## functions do
##
## The logic/structure of the program was structured on the example: Caching the Mean of a Vector
## as well as PA2-clarifying_instructions found here:
## https://github.com/DanieleP/PA2-clarifying_instructions
## in addition to various programming forums and a youtube clip for using solve to invert
## 


##This function was was given
makeCacheMatrix <- function(x = matrix()) {
  
  ##Creating the inverse matrix and assigning it a NULL value
  inv <- NULL
  
  ##Gets the value of the matrix
  get <- function(){
    x
  }
  
  ##Sets the value of a new matrix
  set <- function(new) {
    x <<- new
    inv <<- NULL
    
  }
  
  ##Function to get the inverse matrix
  getInv <- function(){
    inv
    
  }
  
  ##Function to set the inversed matrix
  setInv <- function(inverted) {
    inv <<- inverted
    
  }
    
  ##Creating a list to store the four functions
  list(get  = get, set = set, getInv = getInv, setInv = setInv)
  

}
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  
  ##Gettiing/assigning the inverse matrix
  inv <- x$getInv()
  
  
  ##Calling the function from "main" to get the input matrix
  mat <- x$get()
  
  ##Using the built in function solve to assign the inverse to inv
  inv <- solve(mat, ...)
  
  ##Calling function to set the now inverted matrix 
  x$setInv(inv)
  
  ##returning the inverted matrix
  return(inv)
  
}
