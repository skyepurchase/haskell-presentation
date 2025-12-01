main :: IO ()
main = do
  let xs = 0 : ys
      ys = 1 : xs
  print (take 20xs)

