#import "@preview/cheda-seu-thesis:0.2.1": bachelor-conf, thanks, appendix
#import "@preview/sourcerer:0.2.1": code

/*
  使用模板前，请先安装 https://github.com/csimide/SEU-Typst-Template/tree/master/fonts 内的所有字体。
  如果使用 Web App，请将这些字体上传到 Web App 项目的根目录中。
*/

#show: doc => bachelor-conf(
  studentID: "00121001",
  author: "王东南",
  school: "示例学院",
  major: "示例专业",
  advisor: "湖牌桥",
  thesisname: "示例论文标题\n此行空白时下划线自动消失",
  date: "某个起止日期",
  cnabstract: [
摘要内容独立于正文而存在，是论文内容高度概括的简要陈述，应准确、具体、完整地概括论文的主要信息，内容包括研究目的、方法、过程、成果、结论及主要创新之处等，不含图表，不加注释，具有独立性和完整性，一般为400字左右。

“摘要”用三号黑体加粗居中，“摘”与“要”之间空4个半角空格。摘要正文内容用小四号宋体，固定1.5倍行距。

论文的关键词是反映毕业设计（论文）主题内容的名词，一般为3-5个，排在摘要正文部分下方。关键词与摘要之间空一行。关键词之间用逗号分开，最后一个关键词后不加标点符号。

在本模板中，摘要在参数中添加，例如 `cnabstract: [我的摘要]` 。关键词添加的方法类似，例如 `cnkeywords: ("关键词1", "关键词2")`。有关这一部分的信息，可参考 demo 文档的写法。
],
  cnkeywords: ("关键词1", "关键词2"),
  enabstract: [
英文摘要应与中文摘相对应，250个实词左右。采用第三人称介绍该学位论文内容，叙述的基本时态为一般现在时，确实需要强调过去的事情或者已经完成的行为才使用过去时、完成时等其他时态。

ABSTRACT为三号Times New Roman加粗居中。

英文摘要正文为小四号Times New Roman，固定1.5倍行距。英文关键词“KEY WORDS”大写，其后的关键词第一个字母大写，关键词之间用半角逗号隔开。

#lorem(100) // 添加一段英文乱语，供排版预览效果。
  ],
  enkeywords: ("Keywords1", "Keywords2"),
  outlinedepth: 3,
  doc,
)

= 绪论

== 课题背景和意义

绪论部分主要论述选题的意义、国内外研究现状以及本文主要研究的内容、研究思路以及内容安排等。

章标题为三号黑体加粗居中；一级节标题（如，2.1 本文研究内容）：四号黑体居左；二级节标题（如，2.1.1 实验方法）：小四号宋体居左。

正文部分为小四号宋体，行间距1.5倍行距，首行缩进2个字符。

有时，首行缩进不起作用（Typst 的已知问题）。此时，可以使用 `#h(2em)` 手动插入两个汉字长度的空间，“手动”首行缩进。如果打开 demo 源文件，可以发现本小节的第一段是用这种方式手动缩进的。请注意，在成文后，需要自行检查首行缩进是否工作正常。

== 研究现状

#strike[目前，由于宋体（SimSun）、黑体（SimHei）均是单一字重字体，而 Typst 0.10.0 尚未加入伪粗体的支持，本文档的中文部分暂时无法加粗。章节大标题等需要加粗的地方也未加粗。因 https://github.com/typst/typst/pull/2970 已经合并了改善字体描边功能的 PR，预计在之后的版本中即可直接或间接使用伪粗体，届时本模板亦将相应修改。]

在 0.11.0 中，Typst 提供了间接实现伪粗体的方式。本模板亦已通过 cuti 包加入粗体相关支持。如需使用粗体，可以用 `*` 包裹需要加粗的文字，或者使用 `text(weight: "bold")`。比如，*这是一段加粗文字的示例。*

== 本文研究内容

文章的首页内容，也就是题目、学号、姓名等，都是通过参数传入模板的。请参考 demo 源代码修改。

= 第二章标题

具体研究内容每一章应另起页书写，层次要清楚，内容要有逻辑性，每一章标题需要按论文实际研究内容进行填写，不可直接写成第二章 正文。研究内容因学科、选题特点可有差异，但必须言之成理，论据可靠，严格遵循本学科国际通行的学术规范。

中文为小四号宋体，英文及数字为小四号Times New Roman，首行缩进2个字符，行间距为1.5倍。正文一般不少于15000字。

== 插图格式要求

插图力求精炼，且每个插图均应有图序和图名。图序与图名位于插图下方，图序一般按章节编排，如图1-1（第一章第1个图），在插图较少时可以全文连续编序，如图10。

插图居中排列，与上文文本之间空一行。图序图名设置为五号宋体居中，图序与图名之间空一格。


本模板采用按章节编号的方式。如果需要插入带自动编号的图片，需要使用`#figure`。例如，使用下面的代码插入带编号的图片：

#code(
  numbering: true,
  radius: 0pt,
  text-style: (font: ("Courier New", "SimHei")),
  ```typst
  #figure(
    image("./demo_image/24h_rain.png", width: 8.36cm),// 宽度/高度需要自行调整
    caption: [每小时降水量24小时均值分布图]
  )
  ```
)

#figure(
  image("./demo_image/24h_rain.png", width: 8.36cm),
  caption: [每小时降水量24小时均值分布图]
)

#h(2em) 通常情况下，插入图、表等组件后，后续的首个段落会丢失首行缩进，需要使用 `#h(2em)` 手动补充缩进。

如一个插图由两个及以上的分图组成，分图用(a)、(b)、(c)等标出，并标出分图名。目前，本模板尚未实现分图的字母自动编号。如需要分图，建议使用 `#grid` 来构建。例如：

#code(
  numbering: true,
  radius: 0pt,
  text-style: (font: ("Courier New", "SimHei")),
  ```typst
  #figure(
    grid(
      columns: (3.83cm, 5.51cm),
      image("./demo_image/2-2a.png") + "(a) 速度障碍集合", 
      image("./demo_image/2-2b.png") + "(b) 避免碰撞集合"
    ),
    caption: "速度障碍法速度选择"
  )
  ```
)

#figure(
  grid(
    columns: (3.83cm, 5.51cm),
    image("./demo_image/2-2a.png") + "(a) 速度障碍集合", 
    image("./demo_image/2-2b.png") + "(b) 避免碰撞集合"
  ),
  caption: "速度障碍法速度选择"
)

#h(2em) 实际使用中，网格划分、网格大小调整需要自行操作。

== 表格格式要求

表格的结构应简洁，一律采用三线表，应有表序和表名，且表序和表名位于表格上方。表格可以逐章单独编序（如：表2.1），也可以统一编序（如：表10），采用哪种方式应和插图及公式的编序方式统一。表序必须连续，不得重复或跳跃。

带编号、表名的表格需要使用 `#figure` 包裹，才能自动编号。方式与上方图片相仿，或者查看下面的代码说明。表格本身建议使用函数 `table` 或第三方库 `tablem` 库绘制。使用 `tablem` 库时，`#figure` 可能会认为其包裹的内容不是 `table` 类型，而编号“图X-X”。可以通过添加 `kind: table` 声明这是一个表格。

表格无法在同一页排版时，可以用续表的形式另页书写，续表需在表格右上角表序前加“续”字，如“续表2.1”，并重复表头。请注意：目前此模板内，`#figure` 包裹的单个表格强制显示在同一页上，不会发生跨页现象。如果按照 https://github.com/typst/typst/pull/1121 启用了 `#show figure: set block(breakable: true)`，那么跨页表格第二页暂时不会显示“续表”与表名。目前模板作者尚未找到合适的解决办法。 如果使用 `table` 声明表头的特性，第二页会重复表头。

表格居中，边框为黑色直线1磅，中文为五号宋体，英文及数字为五号Times New Roman字体，表序与表名之间空一格，表格与下文之间空一行。


#code(
  numbering: true,
  radius: 0pt,
  text-style: (font: ("Courier New", "SimHei")),
```typst
#figure(
  {
    set table.cell(stroke: (top: 0.8pt, bottom: 0.8pt, left: 0pt, right: 0pt))
    show table.cell.where(y:0): set text(weight: "bold")
    table(
      columns: 13,
      rows: 1.8em,
      align: center + horizon,
      table.header(
        [], table.cell(colspan: 4)[Stage 1 (>7.1 μm)], table.cell(colspan: 4)[Stage 2 (4.8-7.1 μm)], table.cell(colspan: 4)[Stage 3 (3.2-4.7 μm)], 
      ),

      [], [Con], [Low], [Medium], [High], [Con], [Low], [Medium], [High], [Con], [Low], [Medium], [High],

      [H], [2.52], [2.58], [2.57], [2.24], [2.48], [2.21], [2.21], [2.36], [2.66], [2.65], [2.64], [2.53],

      [E], [0.87], [0.88], [0.93], [0.85], [0.9], [0.86], [0.86], [0.85], [0.9], [0.9], [0.85], [0.88]
    )
  },
  caption: "室外细菌气溶胶香农-维纳指数（H）和均匀性指数（E）",
)
```
) 

#figure(
  {
    set table.cell(stroke: (top: 0.8pt, bottom: 0.8pt, left: 0pt, right: 0pt))
    show table.cell.where(y:0): set text(weight: "bold")
    table(
      columns: 13,
      rows: 1.8em,
      align: center + horizon,
      table.header(
        [], table.cell(colspan: 4)[Stage 1 (>7.1 μm)], table.cell(colspan: 4)[Stage 2 (4.8-7.1 μm)], table.cell(colspan: 4)[Stage 3 (3.2-4.7 μm)], 
      ),

      [], [Con], [Low], [Medium], [High], [Con], [Low], [Medium], [High], [Con], [Low], [Medium], [High],

      [H], [2.52], [2.58], [2.57], [2.24], [2.48], [2.21], [2.21], [2.36], [2.66], [2.65], [2.64], [2.53],

      [E], [0.87], [0.88], [0.93], [0.85], [0.9], [0.86], [0.86], [0.85], [0.9], [0.9], [0.85], [0.88]
    )
  },
  caption: "室外细菌气溶胶香农-维纳指数（H）和均匀性指数（E）",
)

// 表格太多懒得手敲了

== 表达式

论文中的公式应注序号并加圆括号，序号一律用阿拉伯数字连续编序（如（28））或逐章编序（如（3.6）），编号方式应与插图、表格方式一致。序号排在版面右侧，且距右边距离相等。公式与序号之间不加虚线。本模板采用按章节编号的方式。

长公式在一行无法写完的情况下，原则上应在等号（或数学符号，如“+”、“-”号）处换行，数学符号在换行的行首。

公式及文字中的一般变量（或一般函数）（如坐标$X$、$Y$，电压$V$，频率$f$）宜用斜体，矢量用粗斜体如$bold(S)$或白斜体上加单箭头$limits(S)^arrow$，常用函数（如三角函数$cos$、对数函数$ln$等）、数字运算符、化学元素符号及分子式、单位符号、产品代号、人名地名的外文字母等用正体。

Typst 的公式与 LaTeX 写法不同，参见 Typst 官方文档。

在 Typst 中，使用 `$$` 包裹公式以获得行内公式，在公式内容两侧增加空格以获得块公式。如 `$alpha + beta = gamma$` 会获得行内公式 $alpha + beta = gamma$，而加上两侧空格，写成 `$ alpha + beta = gamma $` ，就会变成带自动编号的块公式：

$ alpha + beta = gamma $

#h(2em) 与图表相同，公式后的第一段通常也需要手动缩进。

多行公式可以使用 `\ ` 换行（反斜杠紧跟空格或者反斜杠紧跟换行）。与 LaTeX 类似，`&` 可以用于声明对齐关系。

#code(
  radius: 0pt,
  text-style: (font: ("Courier New", "SimHei")),
  ```typst
  $ E_"ocv" &= 1.229 - 0.85 times 10^(-3) (T_"st" - T_0) \
    &+ 4.3085 times 10^(-5) T_"st" [ln(P_H_2/1.01325)+1/2 ln(P_O_2/1.01325)] 
  $
  ```
)

$ E_"ocv" &= 1.229 - 0.85 times 10^(-3) (T_"st" - T_0) \
  &+ 4.3085 times 10^(-5) T_"st" [ln(P_H_2/1.01325)+1/2 ln(P_O_2/1.01325)] 
$


== 注释

正文中有个别名词或情况需要解释时，可加注说明，注释采用页末注（将注文放在加注页的下端）。在引文的右上角标注序号①、②、……，如“马尔可夫链#footnote[马尔可夫链表示……]”。若在同一页中有两个以上的注时，按各注出现的先后，顺序编号。引文序号，以页为单位，且注释只限于写在注释符号出现的同页，不得隔页。

注释应当采用 `#footnote` 插入。如上方的“马尔科夫链”及其注释，是通过下面的代码插入的。

#code(
  numbering: true,
  radius: 0pt,
  text-style: (font: ("Courier New", "SimHei")),
```typst
马尔可夫链#footnote[马尔可夫链表示……]
```
)


= 总结与展望

== 工作总结

上述标题第三章仅为示例，实际论文报告可根据研究内容按序编排章节，最后一章结论与展望着重总结论文的创新点或新见解及研究展望或建议。

结论是对论文主要研究结果、论点的提炼与概括，应准确、简明、完整、有条理，使人看后就能全面了解论文的意义、目的和工作内容。主要阐述自己的创造性工作及所取得的研究成果在本学术领域中的地位、作用和意义。

结论要严格区分自己取得的成果与导师及他人的科研工作成果。在评价自己的研究工作成果时，要实事求是，除非有足够的证据表明自己的研究是“首次”的、“领先”的、“填补空白”的，否则应避免使用这些或类似词语。

== 工作展望

展望或建议，是在总结研究工作和现有结论的基础上，对该领域今后的发展方向及重要研究内容进行预测，同时对所获研究结果的应用前景和社会影响加以评价，从而对今后的研究有所启发。

== 为了参考文献而加的章节

参考文献需要使用 bib 格式的引用文献表，再在正文中通过 `@labelname` 方式引用。如


#code(
  numbering: true,
  radius: 0pt,
  text-style: (font: ("Courier New", "SimHei")),
```typst
这里有一段话 @kopka2004guide.

引用多个会自动合并 @kopka2004guide @wang2010guide 。
```
) 

#h(2em)这里有一段话 @kopka2004guide，引用多个会自动合并 @kopka2004guide @wang2010guide 。

目前参考文献格式不符合教务处要求，会在今后重制/寻找合适的 csl 文件。

当前（Typst 0.11.0）的 GB/T 7714-2015 参考文献功能仍有较多问题；东大使用的参考文献也不是标准的 GB/T 7714-2015 格式。目前，我们尝试使用曲线方法解决：

为了生成中英文双语的参考文献表，本模板实验性地引入了 `bilingual-bibliography` 。有关该功能的详细信息，请访问 https://github.com/nju-lug/modern-nju-thesis/issues/3 。如果出现参考文献显示不正常的情况，请前往 https://github.com/csimide/SEU-Typst-Template/issues/1 反馈。

模板提供了 `bilingual-bib` 参数，用于控制是否使用 `bilingual-bibliography`。当 `bilingual-bib` 参数设置为 `true` 时，模板会使用 `bilingual-bibliography` 渲染。

本模板附带的 `gb-t-7714-2015-numeric-seu.csl` 是“修复”部分 bug 的 CSL 文件。该格式和东大格式不完全吻合，但比自带的 `gb7714-2015` 稍微符合一些。

参考文献过后，会自动进入使用 A B C 排序的附录部分。

如果不需要插入参考文献，但是需要进入附录部分，请使用 `#appendix()` ，后续会自动进入附录部分。

#bibliography(
  "ref.bib", // 替换为自己的bib路径
  style: "gb-t-7714-2015-numeric-seu.csl"
)

= 这里是附录内容

== 附录测试1

在参考文献之后的章节会自动编为附录。同样，图表等要素在此都会使用 A B C 序号。例如：

$ a^2 + b^2 = c^2 $ <ss1>

#figure(
  [（假装这里是表格内容）],
  caption: [附录中的一个表格],
  kind: table,
)

#thanks[

学位论文正文和附录之后，一般应放置致谢（后记或说明），主要感谢指导老师和对论文工作有直接贡献和帮助的人士和单位。致谢言语应谦虚诚恳，实事求是。字数一般不超过1000个汉字。

“致谢”用三号黑体加粗居中，两字之间空4个半角空格。致谢内容为小四号宋体，1.5倍行距。

若需要渲染致谢，请用 `#thanks[内容]`。
]