--������ 2.1
f lst | null lst = []
      | otherwise = (init.tail) lst

test = f [1..5] == [2,3,4]
      && f [2,5,1,6,8,9,1] == [5,1,6,8,9]
      && f [4,2] == []