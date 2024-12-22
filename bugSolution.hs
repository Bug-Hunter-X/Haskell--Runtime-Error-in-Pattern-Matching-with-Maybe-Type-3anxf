```haskell
import Data.Maybe

data MyData = MyData { field1 :: Int, field2 :: Maybe String }

process :: MyData -> Maybe Int
process (MyData x y) = case y of
  Just z -> case reads z of
    [(n, "")] -> Just (x + n)
    _ -> Nothing
  Nothing -> Just x
```

The improved `process` function now uses `reads` which attempts to read the string as an integer, returning a list of potential results and remaining string (second parameter). If successful the remaining string will be empty.  If the string cannot be parsed as an integer, the list is empty. The `Maybe` return value safely handles cases where parsing fails, preventing runtime errors.