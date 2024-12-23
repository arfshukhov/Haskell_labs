-- ������ 5.1 ���.

{-
    1*. "���������", ��������� ��������, ��������� ��������� (a�R)
 
 
       |\\\\\\\\\\\   
      /   |\\\\\\\\   ( ���� a<0, �� ������� ���;
     /   /   |\\\\\   2                  |\\\\
    ? a+? a+? a+... = * ���� a=0, �� (1-? 1+4a) / 2 = 0;
                      2                  |\\\\
                      9 ���� a>0, �� (1+? 1+4a) / 2.
 
 
    ���������.
 
    ���� a=1, �� � ���������� ���������� ��������� "������� �������".
 
 
    ��������. � �������� �������� ��������  ���  ��������  ���������
 ������������� (!) ����������� ���������� ����������� ������:
 
 
    a=  2,   6,  12,  20,  30,  42,  56,  72,  90, 110, 132,
      156, 182, 210, 240, 272, 306, 342, 380, 420, 462, 992,
 
 ������� �������� � ������� ������������ filter � map:
 
    test = filter (\x -> denominator (snd x)==1) 
                  (map (\x -> (x,toRational ((1+sqrt (1+4*x))/2)))
                       [2..1000])
 
 
-}

import Data.Ratio

checkEquality :: Rational -> Rational
checkEquality a | a < 0     = 0
                 | a == 0    = 0
                 | otherwise  = (1 + toRational (sqrt (fromRational (1 + 4 * a)))) / 2

test' :: [(Int, Rational)]
test' = filter (\x -> denominator (snd x) == 1)
              (map (\x -> (x, checkEquality (toRational x)))
                   [2..1000])

numbers :: [Int]
numbers = [2, 6, 12, 20, 30, 42, 56, 72, 90, 110, 132,
           156, 182, 210, 240, 272, 306, 342, 380, 420, 462, 992]

compareResults :: [Int] -> [(Int, Rational)] -> Bool
compareResults nums testResults = all match pairs
  where
      pairs = zip nums (map (checkEquality . toRational) nums)
      match (num, expectedResult) = 
          maybe False (== expectedResult) $ lookup num testResults

test = compareResults numbers test'


