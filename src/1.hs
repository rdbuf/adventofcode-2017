import Data.Char
import Control.Monad

main = interact $ show . run . map digitToInt . filter isNumber where
    run = sum . map fst . filter (uncurry (==)) . ap zip rotate where
        rotate = (. (tail . cycle)) =<< take . length