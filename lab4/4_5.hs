--������ 4.5
-- (1) (1:(2:(3:(4:(5:[])))))                  -> [1,2,3,4,5]
-- (2) ((1:[]):((2:[]):((3:[]):[])))           -> [[1],[2],[3]]
-- (3) (((2:(1:[])):[]):[])                    -> [[[2,1]]]
-- (4) ((5:(1:[])):((2:(3:[])):[]))            -> [[5,1],[2,3]]
-- (5) (((1:[]):((2:[]):[])):(((3:[]):[]):[])) -> [[[1],[2]],[[3]]]