## Put comments here that give an overall description of what your
## functions do

## this function store in cache a matrix and its inverse to avoid calculate twice

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-funtion()x
  setinv<-funtion(invmat) m<<-invmat
  getinv<-function()m
  list(set=set,get=get,setinv=setinv,getinv=getinv)
}


## this function check if the matrix to inverse is the one stored in the cache
## to print it or if it isn't calculate the inverse

cacheSolve <- function(x, ...) {
  mat<- x$get()
  if(mat=x){
    message("getting cached data")
    return(invmat)
  }
  m<-solve(mat)
  x$setinv(m)
  m
}
