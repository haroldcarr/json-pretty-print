module Main where

import           JSONPP
import           System.Environment

main :: IO ()
main = do
    as <- getArgs
    case as of
      [filename] -> do
          r <- pp filename
          case r of
            Left  e -> error e
            Right d -> print d
          return ()
      _ -> error "Usage: jpp <filename>"
