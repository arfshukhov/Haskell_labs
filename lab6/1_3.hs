--������ 1.3

{-
   3. ����������  �����������  ������� (��� �������� ������ "..."),
��������� ��� ��������� ���������� ����������:


   >   ...  (...) ((map map) [sin,cos]) [[1],[2]]
   [[0.841471], [-0.416147]]


   ��������.

   > zipWith (\f z -> f $ z)
             [sin, cos]
             [1, 2]
   [0.8414709848078965, -0.4161468365471424]
-}
f = zipWith (\ x y -> x y) (map map [sin,cos]) [[1],[2]]

test13 = f == [[sin 1], [cos 2]]