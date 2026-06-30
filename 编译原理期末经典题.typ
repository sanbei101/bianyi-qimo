#set page(margin: 1cm)

#set text(font: "Maple Mono")
#let answer = block(
  fill: rgb("#f6f8fa"),
  stroke: 0.5pt + rgb("#d0d7de"),
  inset: 100pt,
  radius: 6pt,
  width: 100%,
)
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

#answer

已知文法G[E]:
```
E → E + T | T
T → T * F | F
F → (E) | id
```
对句子`id + id * id`,写出最左推导过程并画出语法树。
#answer

正规式`(a|b)*abb`对应的NFA
#answer

已知文法G[S]:
```
S → AB
A → aA | ε
B → bB | ε
```
求每个非终结符的FIRST集和FOLLOW集。
#answer

将以下文法消除左递归:
```
E → E + T | E - T | T
T → T * F | T / F | F
F → (E) | id
```
#answer
已知文法G[S]:
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
#answer

10. 设文法 $G(S)$:
  $
    S & -> (T) | a S | a \
    T & -> T, S | S
  $
1. 消除左递归和提公共左因子;

2. 构造相应的 FIRST 和 FOLLOW 集合;
#answer
构造下列正规式相应的 DFA。

1. $1(0|1)^* 101$

2. $1(1010^* | 1(010)^* 1)^* 0$

3. $a((a|b)^* | a b^* a)^* b$

4. $b((a b)^* | b b)^* a b$
#answer
#image("assets/image-2.png", width: 100%)
#answer

已知文法 $G[S]$:
$
  S & -> M H | a \
  H & -> L S o | epsilon \
  K & -> d M L | epsilon \
  L & -> e H f \
  M & -> K | b L M
$

判断 $G$ 是否是 LL(1) 文法,如果是,构造 LL(1) 分析表。

#answer


已知文法 $G[S]$ 为:
$
  S & -> a | Lambda | (T) \
  T & -> T, S | S
$

(1) 计算 $G[S]$ 的 FIRSTVT 和 LASTVT。

(2) 构造 $G[S]$ 的算符优先关系表并说明 $G[S]$ 是否为算符优先文法。

(3) 计算 $G[S]$ 的优先函数。

(4) 给出输入串 $(a,a)$\# 和 $(a,(a,a))$\# 的算符优先分析过程。
#answer

证明下面文法不是 LR(0) 而是 SLR(1)。
$
  S & -> A \
  A & -> A b | b B a \
  B & -> a A c | a | a A b
$

#answer
已知文法
$
  A & -> a A d | a A b | epsilon
$
判断该文法是否是 SLR(1) 文法，若是，请构造相应分析表，并对输入串 $a b$\# 给出分析过程。
#answer
