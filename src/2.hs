import Control.Monad

main = interact $ show . sum . map (run . map read . words) . lines where
    run = liftM2 (-) maximum minimum