makeCacheMatrix <- function(x = matrix()) #the default argument is an empty matrix
{
    inversematrix <- NULL

    set <- function(y)
    {

        x <<- y
        inversematrix <<- NULL


    }

    get <-function() x
    setinversematrix <- function(inverse) inversematrix <<- inverse
    getinversematrix <- function() inversematrix

    list(set =set, get=get, setinversematrix = setinversematrix, getinversematrix = getinversematrix)


}



# Computes the inverse of a matrix. If the inverse has already been
# calculated before, the cached inverse is returned.
#
# Args:
#   x: A matrix
#   ...: Extra arguments
#
# Returns:
#   The inverse of the matrix

















cacheSolve <- function(x, ...)
{
    inversematrix <- x$getinversematrix()  ## return cached matrix inverse if it's been already computed
    

        if(!is.null(inversematrix))
        {
            message("checking the memory banks")
            return(inversematrix)

        }

        data <- x$get()  # compute inverse of matrix for a new value of x
        
        inversematrix <- solve(data, ...) 
        
        x$setinversematrix(inversematrix) # cache inverse
        
        return(inversematrix) #return the inverted matrix

}

m <- matrix(c(0, 2, 1, 0), nrow = 2, ncol = 2, byrow = TRUE)

return(m)

m2 <- makeCacheMatrix(m)

return(m2)

cacheSolve(m2)

cacheSolve(m2)

