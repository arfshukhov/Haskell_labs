--������ 4.6
-- ������� ��� �������� ��������� ������ � �������� ������
listToDotNotation :: Show a => [[a]] -> String
listToDotNotation [] = "[]"
listToDotNotation (x:xs) = listToDotNotation' x ++ " : " ++ listToDotNotation xs
  where
    -- ����������� ������� ��� �������������� ������� ����������� ������ � �������� ������
    listToDotNotation' :: Show a => [a] -> String
    listToDotNotation' [] = "[]"
    listToDotNotation' (y:ys) = show y ++ " : " ++ listToDotNotation' ys

-- �����
test1 = listToDotNotation [[[1]]] == "[1] : [] : []"
test2 = listToDotNotation [[1, 2], [3]] == "1 : 2 : [] : 3 : [] : []"
test3 = listToDotNotation [[1]] == "1 : [] : []"
test4 = listToDotNotation [[1, 2], [3]] == "1 : 2 : [] : 3 : [] : []"

-- �������� ���� ������
allTests :: Bool
allTests = test1 && test2 && test3 && test4


