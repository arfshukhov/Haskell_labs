a:: Integer->Integer->Integer->Integer
a n x y | n == 0 = x+1
        | n == 1 && y == 0 = x
        | n == 2 && y == 0 = 0
        | n == 3 && y == 0 = 1
        | n >=  4 && y == 0 = 2
        | n /=0 && y /= 0 = a (n-1) (a n x (y - 1)) x 
        | otherwise = 0


test = a 0 1 2 == 1 + 1 && a 1 2 3 == 2+3 &&
      a 2 3 4 == 3 * 4 && a 3 4 5 == 4^5