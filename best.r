best <- function(state, outcome)
{
    lowestmortality <- read.csv("outcome-of-care-measures.csv", colClasses = "character")

        if(!any(state == lowestmortality$State))
        {
            stop(print("no such State as the input"))
        }

            else if((outcome %in% c("hearth attack", "hearth failure", "pneumonia")) == FALSE)
            {
                stop(print("no such outcome as the input"))
            }

                else()
                {
                    if (outcome == "heart attack")
                    {
                        lowesthearthattackframe <- subset(lowestmortality, select = c(2,7,11))


                    }   
                }
}