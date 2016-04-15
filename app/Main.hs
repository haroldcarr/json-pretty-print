module Main where

import           JSONPP
import           System.Environment
import           Text.JSON
import           Text.JSON.Pretty

main :: IO ()
main = do
    [filename] <- getArgs
    r <- pp filename
    case r of
        Left  e -> error e
        Right d -> print d
    return ()
