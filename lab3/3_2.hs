--������ 3.2 ���

{-
    2*. �������� ������� �� ����� Haskell, �������� ���:
 �1.0
 
         (n-3, ���� n>202;
    F(n)=*
         9F(F(n+4)) � ��������� ������.
 
 �1.1
    ��������. ��� ������������ �������������� ���, ��� ��� n�Z
 �1.0
 
         (n-3, ���� n>202;
    F(n)=*
         9200 � ��������� ������.
 
 
-}
f:: Integer->Integer
f n | n > 202 = n - 3
    | otherwise = f (f (n+4))

f1 n | n > 202 = n - 3
     | otherwise = 200

test = f 203 == f1 203 && f 201 == f1 201