## set the value of the matrix
## get the value of the matrix
##set the value of the inverse
## get the value of the inverse
## functions do

## as Taught in tutorial , this program takes a matrix input , computes its inverse if not available in cache and displays the result.

makeCacheMatrix<-function(x = numeric()){
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function()x
  setinv<-function(inv) m<<-inv
  getinv<-function() m
  list(set=set,get = get,setinv=setinv,getinv=getinv)
  }


## This program of mine finds the inverse of the matrix from cache and if not solved it calculates it.


cacheSolve<-function(x,...){
  m<-x$getinv() ## Return a matrix that is the inverse of 'x'
  if(!is.null(m)){
    message("getting caches data")
    return(m)
  }
  data<-x$get()
  m<-solve(data,...)
  x$setinv(m)
  m
}
