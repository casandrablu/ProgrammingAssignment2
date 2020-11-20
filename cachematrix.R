## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


makeCacheMatrix <- function(x = matrix()) {
  inversa<- NULL## we declare the variable that we want to get
  set<- function(y){##we declared functions for the inverse obtened
    x<<-y
    inversa<<- NULL
  }##we returns the matrix value 
  get<-function(){x} 
  setInversa<-function(inversacalculada){inversa<<-inversacalculada}
  getInversa<-function() {inversa}
  list(set=set, get=get,
       setInversa=setInversa, 
       getInversa= getInversa)
  #we create the list with the methods
  

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
   inversa<-x$getInversa()
   if(!is.null(inversa)){##we evaluate if it has a value and if we do not acquire the data
     message("getting cache dat.")
     return(inversa)
   }
   data<-x$get()
   inversa<-solve(data, ...)##we calculate the inverse of the matrix 
   x$setInversa(inversa)
   inversa
       ## Return a matrix that is the inverse of 'x'
}
