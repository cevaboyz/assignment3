power <- function(exponent)
{
    function(x)  x ^ exponent

}


square <- power(2)
square(2)
square(4)

cube <- power(3)
cube(2)
cube(4)


new_counter <- function()   #parent
{
    i <- 0
    function() {         #child   #the double arrow #<<- modifiy a variable in the parent function

            i <<- i + 1
            i
    }

}


counter_one <- new_counter()
counter_two <- new_counter()

counter_one()                      #every time I run the function the double arrow will change the i <- 0 in the parent to i+1 so the first 0+1
                                   #the second 1+1 ...
counter_one()
counter_two()

#when I assign counter_two <- new_counter it "duplicates" the function as a new entity, thus calling counter_two will return 1, the natural state of the parent i was 0 (i <- 0)