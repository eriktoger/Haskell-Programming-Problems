module Functions
    ( getAnswer,
    calculation
    ) where

calculation input = 1 + 1
getAnswer = do 
        input <- getLine
        putStrLn(show $ calculation input )
            

