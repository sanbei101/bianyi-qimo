#set page(margin: 1cm)

#set text(font: "Maple Mono")

#show raw.where(block: false): it => box(
  fill: rgb("#f6f8fa"),
  stroke: 0.5pt + rgb("#d0d7de"),
  inset: (x: 4pt, y: 0pt),
  outset: (y: 3pt),
  radius: 3pt,
  text(size: 0.9em, it),
)

#show raw.where(block: true): it => block(
  fill: rgb("#f6f8fa"),
  stroke: 0.5pt + rgb("#d0d7de"),
  inset: 10pt,
  radius: 6pt,
  width: 100%,
  text(size: 0.9em, it),
)
== 简答题
简述编译过程的主要阶段以及每个阶段的主要任务
```
1. 词法分析:对源程序字符流进行扫描,识别出一个个单词符号(Token),输出单词符号序列。
2. 语法分析:根据语言的语法规则,将单词符号序列分解成各类语法单位(如表达式、语句、程序等),构造语法树。
3. 语义分析:审查源程序有无语义错误,为代码生成阶段收集类型信息。主要包括类型检查、控制流检查、一致性检查等。
4. 中间代码生成:将源程序翻译成一种内部表示形式,称为中间代码。常见形式有四元式、三元式、逆波兰式等。
5. 代码优化:对中间代码进行变换或改造,使生成的目标代码更高效。
6. 目标代码生成:将中间代码转换成特定机器上的目标代码。
```


== 解答题

已知文法G[S]: `S → aS | bS | ε`,求该文法生成的语言L(G)。

已知文法G[E]:
```
E → E + T | T
T → T * F | F
F → (E) | id
```
对句子`id + id * id`,写出最左推导过程并画出语法树。


正规式`(a|b)*abb`对应的NFA


已知文法G[S]:
```
S → AB
A → aA | ε
B → bB | ε
```
求每个非终结符的FIRST集和FOLLOW集。


将以下文法消除左递归：
```
E → E + T | E - T | T
T → T * F | T / F | F
F → (E) | id
```

已知文法G[S]：
```
S → aAB | bBA
A → a | ε
B → b | ε
```
构造该文法的LL(1)预测分析表


已知文法G[S]
```
S → BB
B → aB | b
```
构造LR(0)分析表
