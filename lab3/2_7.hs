--����� 2.7

-- ��।������ �㭪樨 at ��� ����㯠 � ������ ᯨ᪠ �� �������
at :: [a] -> Int -> a
(x:_)  `at` 0 = x                     
(_:xs) `at` n | n > 0 = xs `at` (n - 1) 
_      `at` _ = error "������ ��� �࠭�� ᯨ᪠" 

lst :: [Integer]
lst = [1, 2, 3, 4]

test = lst `at` 0 == 1 &&  lst `at` 3 == 4
test2 = lst `at` 4 -- == error "������ ��� �࠭�� ᯨ᪠"