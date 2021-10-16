module Functions
    ( getAnswer,
    calculation
    ) where



stonesNeeded [n,m,a]= (div (-n) a * div (-m) a) -- div (-n) will round up instead of the usual round down
calculation input = stonesNeeded $ map (read::String->Integer) $ words $ input
getAnswer = do 
        input <- getLine
        putStrLn(show $ calculation input )
            

