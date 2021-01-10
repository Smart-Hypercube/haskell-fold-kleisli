问：(>=>) 应该怎么 fold？
答：应该用 foldr。

测试结果：
优化 版本   时间  内存
O0   foldl  2.1s  高
O0   foldl' 2.0s  高
O0   foldr  0.7s  低
O2   foldl  0.4s  低
O2   foldl' 0.5s  低
O2   foldr  0.01s 低
