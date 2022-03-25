import Text.ParserCombinators.Parsec
import Data.Map
import Data.Text

-- parse file as key:value pairs
cachebenchResults = endBy line eol
line = sepBy (many (noneOf ":\n")) (char ':')
eol = string "\n"

parseCachebench :: String -> Either ParseError  [[String]]
parseCachebench input = parse cachebenchResults "(unknown)" input

toStrippedPair :: [String] -> (String, String)
toStrippedPair list =
    if Prelude.length list >= 2
        then (unpack (strip (pack (list !! 0))), unpack (strip (pack (list !! 1))))
    else ("","")

listToMap list = 
    fromList (Prelude.map toStrippedPair list)

main =
    do c <- getContents
       case parse cachebenchResults "(stdin)" c of
            Left e -> do putStrLn "Error parsing input:"
                         print e
            Right r -> do
                print ((listToMap r) ! "Hit Ratio")
                print ((listToMap r) ! "Cache Find API latency p50")
                print ((listToMap r) ! "Cache Find API latency p90")
                print ((listToMap r) ! "Cache Find API latency p99")
                print ((listToMap r) ! "Cache Allocate API latency p50")
                print ((listToMap r) ! "Cache Allocate API latency p90")
                print ((listToMap r) ! "Cache Allocate API latency p99")
                print ((listToMap r) ! "get")
                print ((listToMap r) ! "set")
