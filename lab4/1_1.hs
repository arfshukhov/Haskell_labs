-- 1(1)

{-
 1. ���������� ���������� �������, ���������� ����:
-}


-- (1) ������� ������� ������, ��������� �� ���� ��������� ���������� ������
--     ����� �������, ���� ����������� ������ ������, �� ��������� �� ��.
cdr:: [Int] -> [Int]
cdr lst | null lst = lst
        | otherwise     = tail lst


testCdr = cdr [] == [] &&
          cdr [1] == [] &&
          cdr [1, 2, 3] == [2, 3]


-- (2) ������� ������� ������, � ������� ������ ������� ���������� ������ 
--     �����������, ���� ����������� ������ ������, �� ��������� �� ��.
doub:: [Int] -> [Int]
doub lst | null lst = lst
         | otherwise     = head lst : lst


testDoub = doub [] == [] &&
           doub [1] == [1, 1] &&
           doub [1, 2, 3] == [1, 1, 2, 3]

-- (3) ������� ������� ��������� ������� ������, ���� ������ ������ ������� 
--     ������.
posl lst | null lst = error ""
         | otherwise     = (last) lst



testPosl = posl [1] == 1 && 
           posl [1, 2, 3] == 3 && 
           posl [10, 20, 30, 40]  == 40        


-- (4) ������� ������� True, ���� ������ ������� ������ ����������� � 
--     ��������� ������, � False, ���� ������� �������� ��� � ������, 
--     ����� ��� �� ������ �����.         
xinLst :: [Int] -> Bool
xinLst lst
    | null lst  = error ""
    | otherwise = head lst `elem` tail lst

testXinLst = (xinLst [1] == False) &&
             (xinLst [1, 2, 3, 1] == True) &&
             (xinLst [1, 2, 3, 4] == False)

-- (5) ������� ������� ������, � ������� ������ � ��������� ������� 
--     ���������� ������ �������� �������.          
swap lst =
        reverse (head lst :
        reverse (head (reverse lst):
            init (tail lst)))

testSwap = swap [1, 2, 3] == [3, 2, 1] && 
           swap [1, 2, 3, 4] == [4, 2, 3, 1]


test = testCdr && testDoub && testPosl && testXinLst && testSwap

