## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
## make invert matrix value initally null
  invert_matrix<-NULL
## set the value of matrix
  set<-function(y){
    x<<-y
    invert_matrix<<-NULL
  }
## get the value of matrix
  get<-function(){
    x
  }
## get the inverse value of matrix
  get_invert_matrix<-function() {
    invert_matrix
  }
## set the inverse value of matrix
  set_invert_matrix<-function(i_m_val){
    invert_matrix<<- i_m_val
  }
## list the method
 list(get=get,set=set,
      get_invert_matrix=get_invert_matrix,
      set_invert_matrix=set_invert_matrix)

  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  ##get the inverse if it is alreay there in cache
   invert_matrix<-x$get_invert_matrix()
   if(!is.null(invert_matrix)){
     message("getting cache data")
     return(invert_matrix)
   }
  ## else get the matrix value and inverse the matri by using solve() method
   data<-x$get()
   invert_matrix<-solve(data, ...)
   x$set_invert_matrix(invert_matrix)
   invert_matrix
   
}
