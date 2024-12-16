--������ 4.5
-- ������� ��� ������������� ������ � �������� ������
listToDotNotation :: Show a => [a] -> String
listToDotNotation [] = "[]"
listToDotNotation (x:xs) = show x ++ " : " ++ listToDotNotation xs

-- ����� � ���������� ����� ���������
test1 = listToDotNotation ([1, 2, 3] :: [Int]) == "1 : 2 : 3 : []"
test2 = listToDotNotation ([5] :: [Int]) == "5 : []"
test3 = listToDotNotation ([] :: [Int]) == "[]"
test4 = listToDotNotation ([[1], [2, 3]] :: [[Int]]) == "[1] : [2,3] : []"
test5 = listToDotNotation ([[1], [2, 3], [4]] :: [[Int]]) == "[1] : [2,3] : [4] : []"

-- �������� ���� ������

test = test1 && test2 && test3 && test4 && test5



