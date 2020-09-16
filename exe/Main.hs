module Main where

import Hello
import DogsRule
import System.IO

-- main must always have type IO ()
main :: IO ()
-- do allows sequencing of monadic actions
main = do
  -- noBuffering from System.IO so putStr isn't buffered/deferred & prints immediately
  hSetBuffering stdout NoBuffering
  -- putStr vs puStrLn so putStr && name input can be on same line
  putStr "Please input your name: "
  name <- getLine
  sayHello name
  dogs
