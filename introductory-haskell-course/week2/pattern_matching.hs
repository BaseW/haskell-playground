data Thing = Shoe
            | Ship
            | SealingWax
            | Cabbage
            | King deriving Show

data Person = Person String Int Thing
  deriving Show

brent :: Person
brent = Person "Brent" 31 SealingWax

stan :: Person
stan  = Person "Stan" 94 Cabbage

getAge :: Person -> Int
getAge (Person _ a _) = a

baz :: Person -> String
baz p@(Person n _ _) = "The name field of (" ++ show p ++ ") is " ++ n

checkFav :: Person -> String
checkFav (Person n _ SealingWax) = n ++ ", you're my kind of person!"
checkFav (Person n _ _)          = n ++ ", your favorite thing is lame."

main = do
    print $ getAge brent
    print $ getAge stan

    print $ baz brent
    print $ baz stan

    print $ checkFav brent
    print $ checkFav stan