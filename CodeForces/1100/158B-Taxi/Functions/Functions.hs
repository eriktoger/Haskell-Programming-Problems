module Functions
    ( getAnswer,
    calcTaxis
    ) where

groupSort [one,two,three,four] [] = [one,two,three,four]
groupSort [one,two,three,four] (x:xs) 
                                    | x == 1 = groupSort [one + 1,two,three,four] xs
                                    | x == 2 = groupSort [one,two + 1,three,four] xs
                                    | x == 3 = groupSort [one,two,three + 1,four] xs
                                    | x == 4 = groupSort [one,two,three,four +1] xs
                         
handleFoursAndTwos [one,two,three,four] = [one, rem two 2 , three, 0, four + div two 2]
handleOnesAndThrees [one,two,three,four,total] 
                                            | leftOvers > 0 = sum - div (-1*leftOvers) 4
                                            | otherwise = sum
                                            where sum =  total + three + two
                                                  leftOvers = one - three - two*2

calcTaxis groups = handleOnesAndThrees $handleFoursAndTwos $ groupSort [0,0,0,0] groups

getAnswer = do 
        testCases <- getLine
        input <- getLine
        let groups = map (read::String->Integer) $ words input;
        print(show $ calcTaxis groups )
            

