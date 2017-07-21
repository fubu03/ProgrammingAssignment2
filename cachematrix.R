## set the value of the matrix
## get the value of the matrix
##set the value of the inverse
## get the value of the inverse
## functions do

## as Taught in tutorial , this program takes a matrix input , computes its inverse if not available in cache and displays the result.

makeCacheMatrix<-function(x = numeric()){
        m<-NULL
        ## Method to set the matrix
        set<-function(y){
                x<<-y
                m<<-NULL
        }
        ## Method the get the matrix 
        ## Return the matrix
        get<-function()x
        ## Method to set the inverse of the matrix
        setinv<-function(inv) m<<-inv
        ## Method to get the inverse of the matrix
        ## Return the inverse property
        getinv<-function() m
        ## Return a list of the methods
        list(set=set,get = get,setinv=setinv,getinv=getinv)
}


## This program of mine finds the inverse of the matrix from cache and if not solved it calculates it.


cacheSolve<-function(x,...){
        m<-x$getinv() ## Return a matrix that is the inverse of 'x'
        ## Just return the inverse if its already set
        
        if(!is.null(m)){
                message("getting caches data")
                return(m)
        }
        ## Get the matrix from our object
        data<-x$get()
        m<-solve(data,...)
        ## Set the inverse to the object
        x$setinv(m)
        m
}
