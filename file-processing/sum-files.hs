module Practice where

import System.Environment(getArgs)
import System.IO


process :: [String] -> Int -> Int
process [] n         = n
process (str:strs) n = case reads str of
    [] -> process strs n
    (num:nums) -> process strs n + fst num
--process strs n
    --()
--process strs n + fst (head (reads str))
--Should summarize numbers in a file
--the test file should return 55
main :: IO ()
main = do
    args <- getLine
    case args of
        []        -> putStrLn "No args provided"
        str     -> go str where
            go arg = do
                fileContent <- readFile arg
                print ( process (lines fileContent) 0)
