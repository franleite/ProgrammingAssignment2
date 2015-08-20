## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Lendo os valores da matriz
## trazendo o valor inverso da matriz
## Lendo a matriz inversa
## Trazendoa matriz inversa
## Criando a lista

makeCacheMatrix <- function(x = matrix()) {  
  inv <- NULL                                
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

## Write a short comment describing this function
## Verifica se a matriz inversa foi computada
## Se não, calcula
## se sim, faz a inversa

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data.")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
}  
        ## Return a matrix that is the inverse of 'x'

## teste

## x = rbind(c(1, 2), c(2, 1))

## m = makeCacheMatrix(x)

## m$get()

## cacheSolve(m)
