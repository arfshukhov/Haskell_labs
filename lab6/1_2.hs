-- ������ 1.2
{-
2. (�� [Bird,1998,p.115])
���������� ��� ������������:


(1) (map map);          (3) (map (map . map . map)).
(2) (map (map . map));


��������. �������������� "����������":


> :t (map map)
map map:: [a -> b] -> [[a] -> [b]]

-}


-- (1) (map map)                                           
-- map map :: [a -> b] -> [[a] -> [b]]                  
-- (2) (map (map . map))                                     
-- map (map . map) :: [a -> b] -> [[[a]] -> [[b]]]       
-- (3) (map (map . map . map))
-- map (map . map . map) :: [a -> b] -> [[[[a]]] -> [[[b]]]] 