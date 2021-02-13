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

