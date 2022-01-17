import Data.Graph (graphFromEdges)

greetings:: String -> String
greetings (s:sx) = "Hello " ++ (s:sx) ++ "! :)"
greetings []     = "Hello Anonymus! :)"


main :: IO()
main = do
    putStrLn "What is your name?"
    name    <- getLine
    putStrLn $ greetings name