f <- function(a,b) 
{
        (a*b) / z   #Z is the free variable
}

#the scoping rules of the language define HOW A VALUE IS ASSIGNED TO FREE VARIABLES.

#R uses LEXICAL SCOPING so the value of z is searched for the environment where the function was defined

#another name for lexical scoping is statical scoping

#dynamic scoping bounds the variable to the most recent value assigned to the variable

a <- 3.14
b = function(x,y){ x * y / a}
b(10,11)

#Environments in R are mappings from variables --> values 
#every function has a local environment and a reference to the enclosing environment

hrfunction_5 <- function(base) { base * 1.05}

hrfunction_7 <- function(base) { base * 1.07}

hrfunction <- function(incr){function(base){base * incr}} 

