--������ 1.5 ���.

{-
����� f(a) - ����� ���� ������ ����� a.
��� ��������� x ���������:


f(f(x+2)+f(2x))7f(x2).


��������, ���� x=12, �� ����������� �������� 18.
-}
f a | x > 99999 = error "too large number"
    | otherwise = sumD x 0
    where x = abs a
          sumD 0 y = y
          sumD x y = sumD (x `div` 10) (y +  (x `mod` 10))


f1 x = f(f(x+2) + f (2*x)) * f x^2


test = f1 12 == 18 && f1 (-12) == 63