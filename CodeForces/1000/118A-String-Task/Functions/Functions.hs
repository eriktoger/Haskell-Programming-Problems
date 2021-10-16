
module Functions
    ( getAnswer,
    translate
    ) where
import Data.Char

translate [] = []
translate (x:xs)  
                | elem lower ['a', 'o', 'y', 'e', 'u', 'i'] =  translate xs
                | otherwise = ['.',  lower] ++ translate xs
                where lower = toLower x
getAnswer = do 
        input <- getLine
        putStrLn(translate input )
            

