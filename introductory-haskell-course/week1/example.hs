main = do
    -- Basic Types
    
    -- Machine-sized integers
    let i :: Int
        i = -78
    print i

    -- Arbitrary-precision integers
    let n :: Integer
        n = 1234567890987654321987340982334987349872349874534
    print n

    -- Double-precision floating point
    let d1, d2 :: Double
        d1 = 4.5387
        d2 = 6.2831e-4
    print d1
    print d2

    -- Booleans
    let b1, b2 :: Bool
        b1 = True
        b2 = False
    print b1
    print b2

    -- Unicode characters
    let c1, c2, c3 :: Char
        c1 = 'x'
        c2 = 'Ø'
        c3 = 'ダ'
    print c1
    print c2
    print c3

    -- Strings are lists of characters with special syntax
    let s :: String
        s = "Hello, Haskell!"
    print s

    -- Arithmetic
    let ex01 = 3 + 2
    let ex02 = 19 - 27
    let ex03 = 2.35 * 8.6
    let ex04 = 8.7 / 3.1
    let ex05 = mod 19 3
    let ex06 = 19 `mod` 3
    let ex07 = 7 ^ 222
    let ex08 = (-3) * (-7)
    print ex01
    print ex02
    print ex03
    print ex04
    print ex05
    print ex06
    print ex07
    print ex08

    let ex09 = i `div` i
    let ex10 = 12 `div` 5
    print ex09
    print ex10

    -- Boolean Logic
    let ex11 = True && False
    let ex12 = not (False || True)
    print ex11
    print ex12

    let ex13 = ('a' == 'a')
    let ex14 = (16 /= 3)
    let ex15 = (5 > 3) && ('p' <= 'q')
    let ex16 = "Haskell" > "C++"
    print ex13
    print ex14
    print ex15
    print ex16

    -- Defining basic functions

    -- Compute the sum of the integers from 1 to n.
    let sumtorial :: Integer -> Integer
        sumtorial 0 = 0
        sumtorial n = n + sumtorial (n-1)
    -- execute
    print (sumtorial 10)
    
    let isEven :: Integer -> Bool
        isEven n 
          | n `mod` 2 == 0 = True
          | otherwise      = False
    print (isEven 10)

    -- Pairs
    let p :: (Int, Char)
        p = (3, 'x')
    print p

    -- Using functions, and multiple arguments
    let f :: Int -> Int -> Int -> Int
        f x y z = x + y + z
    print (f 3 17 8)

    -- Lists
    let nums, range, range2 :: [Integer]
        nums   = [1,2,3,19]
        range  = [1..100]
        range2 = [2,4..100]
    print nums
    print range
    print range2

    -- Constructing lists
    let ex18 = 1 : []
    let ex19 = 3 : (1 : [])
    let ex20 = 2 : 3 : 4 : []
    let ex21 = [2,3,4] == 2 : 3 : 4 : []
    print ex18
    print ex19
    print ex20
    print ex21
    
    -- Generate the sequence of hailstone iterations from a starting number.
    let hailstone :: Integer -> Integer
        hailstone n
          | n `mod` 2 == 0 = n `div` 2
          | otherwise      = 3*n + 1
    let hailstoneSeq :: Integer -> [Integer]
        hailstoneSeq 1 = [1]
        hailstoneSeq n = n : hailstoneSeq (hailstone n)
    print (hailstoneSeq 3)

    -- Function on lists
    -- Compute the length of a list of Integers.
    let intListLength :: [Integer] -> Integer
        intListLength [] = 0
        intListLength (x:xs) = 1 + intListLength xs
    print (intListLength [])
    print (intListLength [2,3,4])

    -- Combining functions
    -- The number of hailstone steps needed to reach 1 from a starting
    -- number.
    let hailstoneLen :: Integer -> Integer
        hailstoneLen n = intListLength (hailstoneSeq n) - 1
    print (hailstoneLen 3)
