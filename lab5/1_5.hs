-- ������ 1.5

{-
  5*. �������� �������, ������������ ������ ���, ������  ��������-
 ��� ������� �������� ������, � ������ - ���������� ���������  ��� �
 �������� ������ ��������.
-}
func lst
    | null lst = []
    | otherwise = (x, countOccurrences lst x) : func remaining
  where
    x = head lst
    countOccurrences xs val = length [y | y <- xs, y == val]
    remaining = filter (/= x) (tail lst)
    
test = func [5] == [(5,1)] && 
       func [5, 2, 1, 5, 1, 2] == [(5,2),(2,2),(1,2)]

