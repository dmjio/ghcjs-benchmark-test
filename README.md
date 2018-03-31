ghcjs-jsstring-benchmark
================================

An attempt to benchmark the time it takes to append a string and update a text node in both `Haskell` and `JavaScript`.

```bash
Starting tests...
Call to js took 26.660399999993388 seconds.
Call to Haskell took 32.2670999999973 seconds
```

Will hang for a while...

Adjust iterations below

```haskell
main :: IO ()
main = do
  putStrLn "Starting tests..."
  let iterations = 100000 -- <<< here
  -- ...
```

