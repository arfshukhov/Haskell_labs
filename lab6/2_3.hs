-- ������ 2.3

{-
    3*. �������� �������,  ������������ ����������� � ��������������
 ������  �� n ��������� k,  ��� k - ��������������� ����������� ���-
 ���� ��������� ������.
    ���� �����������  �������  ������ �������� ������������� ������,
 �� ������� ���������� [].
-}

f lst n
  | null lst = []
  | minimum lst < 0 = []
  | n == 0 = []
  | otherwise = replicate n (minimum lst)
                                  
test23 = f [] 4 == [] &&
         f [1, 2, 3] 4 == [1, 1, 1, 1] && 
         f [-5, 0, 0, 1] 5 == [] && 
         f [0..10] 100 == replicate 100 0