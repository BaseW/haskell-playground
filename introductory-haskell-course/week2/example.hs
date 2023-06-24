-- Enumeration types
data Thing = Shoe
            | Ship
            | SealingWax
            | Cabbage
            | King deriving Show

shoe :: Thing
shoe = Shoe

listO'Things :: [Thing]
listO'Things = [Shoe, SealingWax, King, Cabbage, King]

isSmall :: Thing -> Bool
isSmall Shoe       = True
isSmall Ship       = False
isSmall SealingWax = True
isSmall Cabbage    = True
isSmall King       = False

isSmall2 :: Thing -> Bool
isSmall2 Ship = False
isSmall2 King = False
isSmall2 _    = True

printEnumerationTypes = do
    print Shoe
    print Ship
    print SealingWax
    print Cabbage

    print shoe

    print listO'Things

    print $ isSmall Shoe

    print $ isSmall2 Shoe

main = do
    printEnumerationTypes