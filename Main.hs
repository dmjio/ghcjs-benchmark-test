{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE BangPatterns        #-}
module Main where

import Control.Monad
import Data.JSString
import Data.Monoid

main :: IO ()
main = do
  putStrLn "Starting tests..."
  let iterations = 100000
  jsBench iterations
  start <- now
  foldM_ go (mempty :: JSString) [0..iterations]
  end <- now
  putStrLn $ mconcat [
      "Call to Haskell took "
    ,  show $ (end - start) / 1000
    , " seconds"
    ]
    where
      go !b _ = do
        let new = b <> "!"
        new <$ setText new

foreign import javascript unsafe "console.log($1);"
  consoleLog :: JSString -> IO ()

foreign import javascript unsafe "jsBench($1);"
  jsBench :: Int -> IO ()

foreign import javascript unsafe "$r = performance.now();"
  now :: IO Double

foreign import javascript unsafe "document.body.childNodes[0].textContent = $1;"
  setText :: JSString -> IO ()
