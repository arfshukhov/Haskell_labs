--������ 2.3 (8)
f8 :: Integer -> Integer
f8 x = if x < -128
         then abs (x * x + 1)
         else x^5


test = f8 (-129) == 16642 && f8 2 == 32
