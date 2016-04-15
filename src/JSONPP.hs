module JSONPP where

import           Text.JSON
import           Text.JSON.Pretty

pp :: FilePath -> IO (Either String Doc)
pp filename = do
    s <- readFile filename
    case decode (concat (lines s)) :: Result JSValue of
      Ok a    -> return (Right (pp_value a))
      Error e -> return (Left  e)
