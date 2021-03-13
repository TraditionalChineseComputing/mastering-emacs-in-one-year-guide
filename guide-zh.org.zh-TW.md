# +TITLE: 一年成爲Emacs高手 (像神一樣使用編輯器)
# +AUTHOR: 陳斌 (redguardtoo)
# +LANGUAGE: zh
# +TEXINFO_DIR_CATEGORY: Emacs
# +OPTIONS: ^:{} toc:nil H:5 num:0

* 簡介
成爲高手很容易. 我初學Emacs時常忘記"退出"的快捷鍵, 一年後我完全掌握了Emacs.

一些文章強調Emacs有多牛, 但關於"如何做"則語焉不詳. 即使涉及到"如何做", 談細節多而方法論少.

很多人花了大量時間"學習"Emacs卻最終放棄,就是過於拘泥細節,而方法論上出了問題.

例如,背很少用到的快捷鍵會讓初學者有很大的挫折感.花太多的時間,好不容易記住的快捷鍵很容易忘記.一個月勉強記住50個快捷鍵後算很厲害了.但是Emacs可以配置快捷鍵的命令近7000個.如果記住所有快捷鍵等同於掌握Emacs的話,一個人需要花至少十年.花十年"掌握"一個文本編輯器顯然是很荒謬的.

除本文之外的任何一本Emacs教程都會列出至少100個"常用"的快捷鍵.我不會刻意教你某個快捷鍵,但是會告訴你:
- 一個人記住的快捷鍵數量和他的Emacs水平沒有必然聯繫
- 20個甚至更少的快捷鍵夠用了
- 常用的是哪些快捷鍵
- 其他按鍵在使用過程中會自然記住

我沒有教你某個具體的快捷鍵是什麼功能,但在快捷鍵這個問題上指明瞭方向,節省了你的大量時間.記住7000個快捷鍵這個恐怖的任務也被我解除了,學習Emacs過程會輕鬆很多.

這個例子就說明了本文爲什麼重點會放在方法論上.我的觀點可能和其他人有所不同.這也很正常,畢竟條條大路通羅馬.

我的方法是基於實踐和經驗總結的,每一個論點都是有事實證據支持的.我既不迷信權威,也不會附和大衆的流行看法. 我自己原創的理念如果沒有事實支持,經不起邏輯分析,我也會毫不猶豫地丟棄,

例如標題"一年成爲Emacs高手"並不是譁衆取寵. 這是我的Emacs配置鏈接:[[https://github.com/redguardtoo]]. 你可以看到我從一開始用 =git pull= 照抄別人的代碼到有自信獨立維護自己的配置停止用 =git pull= 命令正好一年.

我知道哪些快捷鍵是常用的,是用 [[https://github.com/dacap/keyfreq][keyfreq]] 的插件積累至6個月數據統計出來的.

我對keyfreq的這個[[https://github.com/dacap/keyfreq/commit/213252fd5d0a56bb09d42315b42d8aa2e7cf1530#diff-cde2eeeb91f9bb0ab38fab15918f5d2a][commit]]把上下左右鍵排除在統計數據之外.關於什麼是常用快捷鍵,我的想法和其他人並不一致(因爲我對原始版本keyfreq的結論並不滿意,所以我纔去改進keyfreq).

全文結構如下:
- 爲什麼 Emacs 值得學習, 如對開源文化熟悉可跳過這一章
- 實事求是,戒驕戒躁
- 充分利用高手成果, 不要重複發明輪子
- 儘快掌握 Emacs 的步驟
- 如何提高 (社區, 閱讀, 知識管理)
- 跳出具體技巧, 重要的是人
- 答疑和小結
* 廣告                                                                          :noexport:
我開發了一套教授文本文件操作術的課程, 此操作術可用於所有主流編輯器和IDE(Visual Studio Code, Vim, Emacs, Sublime Text 3, IntelliJ IDEA...).

中國大陸用戶的課程鏈接: [[https://edu.51cto.com/sd/de7e7]]

海外華人的課程鏈接: [[https://www.udemy.com/course/how-to-code-faster-zh/]]
* 目錄                                                                          :noexport:TOC:
- [[#簡介][簡介]]
- [[#爲什麼用-emacs-可選][爲什麼用 Emacs (可選)]]
  - [[#真正精通-emacs-後-其他編輯器自然精通][真正精通 Emacs 後, 其他編輯器自然精通]]
  - [[#優秀的社區][優秀的社區]]
  - [[#編程速度更快][編程速度更快]]
  - [[#emacs-會永存][Emacs 會永存]]
  - [[#可以立刻開始工作][可以立刻開始工作.]]
  - [[#一年指的是一年中的空閒時間][一年指的是一年中的空閒時間]]
- [[#實事求是戒驕戒躁][實事求是,戒驕戒躁]]
  - [[#理解軟件自由][理解軟件自由]]
  - [[#避免門戶之見][避免門戶之見]]
  - [[#以科學理性做指導][以科學理性做指導]]
- [[#具體步驟][具體步驟]]
  - [[#無-linuxunix-經驗新手的快速指南-可選][無 Linux/Unix 經驗新手的快速指南 (可選)]]
  - [[#讀官方教程][讀官方教程]]
  - [[#以實際問題作爲切入點][以實際問題作爲切入點]]
  - [[#待解決的問題設定優先度][待解決的問題設定優先度]]
  - [[#站在巨人的肩膀上][站在巨人的肩膀上]]
  - [[#報-bug][報 bug]]
  - [[#持續改進][持續改進]]
  - [[#加入社區更上一層樓][加入社區更上一層樓]]
- [[#讀書最有效][讀書最有效]]
  - [[#emacswiki][EmacsWiki]]
  - [[#emacs-lisp-書籍推薦-可選][Emacs Lisp 書籍推薦 (可選)]]
  - [[#steve-yegge-的-emacs-lisp-教程][Steve Yegge 的 Emacs Lisp 教程]]
- [[#知識管理][知識管理]]
  - [[#配置納入-github-的版本控制][配置納入 GitHub 的版本控制]]
  - [[#將相關資料-如電子圖書-博客文章-備份][將相關資料 (如電子圖書, 博客文章) 備份]]
- [[#第三方插件推薦][第三方插件推薦]]
- [[#emacs-是一種生活方式][Emacs 是一種生活方式]]
- [[#付之於行動][付之於行動]]
- [[#使用-evil][使用 Evil]]
  - [[#text-object][Text Object]]
  - [[#leader-鍵][Leader 鍵]]
  - [[#evil-和-emacs-原生插件的兼容性][Evil 和 Emacs 原生插件的兼容性]]
  - [[#evil-專用的插件介紹][Evil 專用的插件介紹]]
  - [[#在-shell-和-interactive-interpreter-中使用-evil][在 Shell 和 Interactive Interpreter 中使用 Evil]]
  - [[#evil-的小結][Evil 的小結]]
- [[#答疑][答疑]]
  - [[#菜鳥怎麼開始][菜鳥怎麼開始]]
  - [[#steve-purcell-的配置是否有文檔可以參考][Steve Purcell 的配置是否有文檔可以參考?]]
  - [[#高手的配置是否太重量級][高手的配置是否太重量級?]]
  - [[#除了-purcell-的配置-還有其他高手的設置嗎][除了 Purcell 的配置, 還有其他高手的設置嗎?]]
  - [[#有沒有更簡單的配置][有沒有更簡單的配置？]]
  - [[#該使用-emacs-的哪個版本][該使用 Emacs 的哪個版本]]
  - [[#vi-高手要轉陣營嗎][Vi 高手要轉陣營嗎?]]
  - [[#爲什麼很多-vim-高手不接受-evil][爲什麼很多 Vim 高手不接受 Evil?]]
  - [[#不習慣默認快捷鍵-怎麼辦][不習慣默認快捷鍵, 怎麼辦？]]
  - [[#快捷鍵太多記不住怎麼辦][快捷鍵太多記不住怎麼辦?]]
  - [[#使用牛人配置後-界面有些奇怪的-bug-怎麼改][使用牛人配置後, 界面有些奇怪的 bug, 怎麼改?]]
  - [[#已更新軟件包-但是沒有任何作用-也沒有任何錯誤信息][已更新軟件包, 但是沒有任何作用, 也沒有任何錯誤信息]]
  - [[#如有任何關於如何配置的問題][如有任何關於如何配置的問題]]
  - [[#使用牛人配置後啓動報錯-如何解決][使用牛人配置後啓動報錯, 如何解決？]]
  - [[#牛人的配置太複雜-還是從一簡單的配置改起好控制][牛人的配置太複雜, 還是從一簡單的配置改起好控制]]
  - [[#爲什麼我用了牛人配置後自己額外添加的插件無效][爲什麼我用了牛人配置後自己額外添加的插件無效]]
  - [[#我想用-windows-版本的-emacs-而不是-cygwin-版本-怎麼做][我想用 Windows 版本的 Emacs 而不是 Cygwin 版本, 怎麼做?]]
  - [[#emacs-在代碼跳轉和自動完成上和商業-ide-有差距-怎麼辦][Emacs 在代碼跳轉和自動完成上和商業 IDE 有差距, 怎麼辦?]]
  - [[#網頁瀏覽][網頁瀏覽]]
  - [[#郵件][郵件]]
  - [[#爲什麼-emacs-啓動時從服務器-elpa-安裝第三方軟件包-package-會失敗][爲什麼 Emacs 啓動時從服務器 (elpa) 安裝第三方軟件包 (package) 會失敗?]]
  - [[#有些網站-emacs-訪問不了][有些網站 Emacs 訪問不了]]
  - [[#有些軟件包下載不下來-也不會用代理][有些軟件包下載不下來, 也不會用代理]]
  - [[#早點學習-emacs-lisp-是否有助於成爲-emacs-高手][早點學習 Emacs Lisp 是否有助於成爲 Emacs 高手？]]
  - [[#掌握-emacs-lisp-是否是成爲高手的必要條件][掌握 Emacs Lisp 是否是成爲高手的必要條件?]]
  - [[#有必要學習鍵盤宏-keyboard-macros-嗎][有必要學習鍵盤宏 (Keyboard Macros) 嗎?]]
  - [[#基本操作我會了-下一步學什麼迷茫中][基本操作我會了, 下一步學什麼迷茫中]]
  - [[#如何學習-org-mode][如何學習 org-mode?]]
  - [[#對於-一切都用-emacs-來完成-的觀點你怎麼看][對於 "一切都用 Emacs 來完成" 的觀點你怎麼看?]]
- [[#聯繫我][聯繫我]]
- [[#結語][結語]]
  - [[#如何報-bug][如何報 bug]]
  - [[#不要複製粘帖本文][不要複製粘帖本文]]
- [[#版權][版權]]

* 爲什麼用 Emacs (可選)
雖然本文的重點是"怎麼做", 而不是"爲什麼".但是根據我的觀察,解釋一下爲什麼Emacs要比其他編輯器強大很有必要.

** 真正精通 Emacs 後, 其他編輯器自然精通
很多人對Emacs的印象就是一種古老的編輯器,缺少現代文本編輯器那些酷炫的特性.這當然是一種偏見.

Emacs的特點在於自由度高且歷史悠久,所以即使常用的功能如插件系統,也比其他同類軟件功能強大的多.

下載了第三方插件如發覺其有問題, 可以在 [[http://www.gnu.org/software/emacs/manual/html_node/elisp/Advising-Functions.html][不碰該插件原始代碼的情況下修復]].

插件服務器關閉了, 應可以在 [[https://github.com/redguardtoo/elpa-mirror][自帶的 U 盤上快速建立鏡像]].

許多流行的編輯器還做不到以上幾點.

** 優秀的社區
Emacs 用 Lisp 開發, Lisp 不同尋常的語法決定了其開發者都是資深開發者, 掌握了多門語言.

Lisp 社區成員都是純粹的技術愛好者, 投機取巧的功利主義者對其沒有興趣.
** 編程速度更快
IDE 針對特定語言或框架優化, Emacs 完成通用任務更有效.

例如, 我碰到難題需上 IRC 請教國外高手 (工作流是, 粘貼代碼到 [[http://gist.github.com]], 在 irc 提問, 看網頁, 將解決方案粘貼回來), Emacs 集成了 IRC 工具和瀏覽器操作就很方便.

我使用 Visual Studio 多年, Firefox 也是高手. 相信我, 大多數情況下 Emacs 更快.

口說無憑, 請看高手視頻, [[https://www.youtube.com/watch?v=AgRsYOJi6ao][abo-abo演示的查找替換技術]]

順便說一下, Emacs的"代碼自動完成"和"代碼導航"兩個功能對主流編程語言支持都不錯.

"不錯"的意思是達到90%的功能,是否能達到100%取決於安裝了哪些插件.

有時候100%可能就是達不到.那麼適當妥協也沒什麼大不了的. 沒有100%那麼95%也不錯.

許多人過於計較在"代碼自動完成"和"代碼導航"要完全複製IDE的體驗.以至於完全忽視了Emacs的在這兩個功能上的特色.

高級程序員對API早已熟悉,在大項目中的寫的新代碼也基本和老代碼相似.所以他們對所謂"智能"並不在意. 他們關心的是更快更多可選項.

例如web程序員需求在javascript文件寫css和html代碼(查一下css-in-js和jsx). Emacs結合Ctags幫助用戶寫javascript代碼時自動完成html和css,這顯然有用得多.

** Emacs 會永存
[[https://forum.sublimetext.com/t/project-alive/16005][個人開發者會喪失興趣]], 公司會倒閉. 但自由軟件基金會將一直存在下去.

Emacs 作爲其招牌軟件也會維護下去, 我的投資永不會貶值.
** 可以立刻開始工作.
軟件開源, 配置是純文本, 且資源消耗小, 安裝包很小 (命令行版本 30M 左右), 任何環境下都可用.

這在大項目中特別有益, 例如, 某項目需同時編輯 Perl, Java, C, Bash, SQL, 要編輯遠程服務器上的代碼, 網速不快. Emacs 的優勢就體現出來了.

** 一年指的是一年中的空閒時間
我沒說一年內須什麼事都不幹專學 Emacs, 我最反對沒有短期回報的懸樑刺股.

我利用一年中通勤時間就取得了很大進步, 自信到可以寫下本文.

* 實事求是,戒驕戒躁
** 理解軟件自由
何爲軟件自由沒有比自由軟件基金會更權威了. 建議把 [[https://www.gnu.org/philosophy/free-sw.zh-cn.html]] 反覆讀, 理解何爲四大自由.

一旦真正理解了軟件自由, Emacs 就變得非常簡單了.

例如, 很多用戶習慣讓 Emacs 啓動時自動從其官方插件倉庫 [[https://elpa.gnu.org]] 下載安裝插件. 當該網站偶爾下線或者公司的防火牆攔截了對外網站訪問時, Emacs 就會啓動失敗.

這也就是一分鐘可以解決的小事, 如果你理解軟件自由, *有勇氣* 到 =~/.emacs.d/elpa/= 目錄下看一看的話。

我不明白爲什麼年年會有那麼多人對此長篇大論的討論.

一個插件倉庫 (repository) 本質上就是一個文件夾, 它有一個含有插件列表名爲 =archive-contents= 的文本文件, 以及一系列插件包. 你完全可以把這些文件下載下來, 在本地硬盤裏建立 ELPA 的鏡像.

對個人來說, 安裝我寫的插件 [[https://github.com/redguardtoo/elpa-mirror][elpa-mirror]] 每年備份一下所有插件就足夠了.
** 避免門戶之見
所謂門戶之見就是貼標籤. "我們的" 對應 "他們的". "熟悉的" 對應 "陌生的", "正統的" 對應 "異端的".

"我們的", "熟悉的", "正統的", 就是 "好的"; "他們的", "陌生的", "異端的" 就是 "壞的".

比如用了 Emacs 就排斥 Vim 的快捷鍵, 或者反之.

避免門戶之見的關鍵就是意識到標籤只存在於你的主觀想像中. 真實世界不會因爲你的想像而扭曲.

以 Emacs 和 Vim 的快捷鍵爲例, 兩種快捷鍵完全可以無縫接合.

當然思想的問題不是我空談能解決的, 關鍵是要實幹. 一個很好的治癒方法就是把 [[https://planet.emacslife.com/]] 上約 4000 篇文章通讀一遍. 大約需要 8 個小時左右. 泛讀就可以了. 目的就是了解世界有多大.
** 以科學理性做指導
有讀者反映我的方法類似於大學裏寫論文做研究, 事實上這正是我的靈感來源.

Emacs 只是一種技術, 其學習方法和其它技術是通用的.

打好基礎, 讓自己的知識有 *足夠的* 廣度和 *適當的* 深度, 對新手是最重要的. 否則會在一些瑣碎問題上浪費時間.

新手的錯誤是花大量時間記快捷鍵, 事實上網上教程列出的初學者 "必知" 快捷鍵 [[http://www.emacswiki.org/emacs/Smex][都不是必需的]].

* 具體步驟
開始前, 解釋一下後文用到的命名慣例,
- =C= 表示按下 Ctrl 鍵, =M= 表示按下 Alt 鍵
- =M-x my-command= 表示同時按下 Alt 和 X, 輸入 "my-command", 然後回車

** 無 Linux/Unix 經驗新手的快速指南 (可選)
建議,
- 安裝 Emacs 24
- 不安裝任何第三方插件
- 掌握基本知識, 什麼是環境變量 (比如 PATH, HOME 之類的變量), 什麼是 stdin, stdout, pipe
- 讀官方教程, 學會基本的文本操作 (大概十幾個快捷鍵)
- 使用 Emacs 24 自帶的 [[http://www.orgmode.org][org-mode]] 作個人管理
- org-mode 關鍵是用起來, 只要記住按 TAB 鍵是展開內容就可以了, 其他都不用學

這一步的目的是知道 Emacs 如何和其他軟件交互, 是必需的.

例如用 Emacs 開發 C++ 最簡單成熟的方案是使用 [[http://blog.binchen.org/posts/emacs-as-c-ide-easy-way.html][GNU Global]]. 配置 Global 必需要知道設置環境變量 =GTAGSLIBPATH= . 如果你連環境變量是什麼都不知道, 那麼用 Emacs 開發 C++ 也無從談起.

儘可能多的掌握其他 Linux 知識很有用, 即使你只在 Windows 下使用 Emacs.
** 讀官方教程
按以下步驟閱讀教程:
- 不安裝任何插件打開 Emacs, 比如在 Shell 中運行命令 =emacs -nw -Q=
- =M-x help-with-tutorial= 打開教程

完成該教程僅需半小時. 關於 Emacs 多難學的謬論可以休矣.

即使你不打算使用 Emacs 默認快捷鍵, 這步也是必須的, 不要跳過!

最起碼要知道以下命令,
- =M-x describe-variable=, 快捷鍵 =C-h v=, 查看變量的文檔
- =M-x describe-function=, 快捷鍵 =C-h f=, 查看命令的文檔
- =M-x describe-key=, 快捷鍵 =C-h k=, 查看快捷鍵的文檔
** 以實際問題作爲切入點
努力能很快得到回報, 你會越學越有樂趣, 進入感情上的正反饋.

要成爲高手, 興趣是最重要的.

以我爲例, 我急需 [[http://en.wikipedia.org/wiki/Getting_Things_Done][GTD]] 的工具, 而 Emacs 的 [[http://orgmode.org/][Org-mode]] 是同類軟件中最好的 (沒有之一). 用 Org-mode 節省了時間後, 我對 Emacs 愛屋及烏, 興趣高漲了 100 倍.

反面例子是啃Lisp教程開始Emacs之旅, 堅持下來的人寥寥無幾.
** 待解決的問題設定優先度
關鍵在於理性地考慮你最迫切需要解決的一個問題.

*以這個問題作爲出發點*, 除此之外都可以妥協.

雖然 Emacs 無所不能, 但是飯也要一口一口吃. 有時退一步等於進兩步.

例如, 我一直以爲 Emacs 的中文顯示很完美, 搞不懂爲什麼有人在字體配置上花那麼多時間.

在讀者反饋後, 才明白原來我一直在終端下使用Emacs, 終端軟件可以完美顯示中文字體, 所以就沒 Emacs 什麼事了. 需要配置字體的人用的是圖形界面 Emacs.

當初只在終端下使用 Emacs 是因爲需連接到遠程服務器. 我認爲這是重點. 甚至爲此放棄了漂亮的配色主題 (後來發覺此犧牲毫無必要). 塞翁失馬, 由此也避免了圖形界面版本的所有問題.
** 站在巨人的肩膀上
這方面我是負面榜樣. 剛開始抱着玩的心態, 到處拷貝別人有趣代碼到我的配置中去.

這是浪費時間!

我應一開始就照抄 [[http://www.sanityinc.com/][世界級大師 Steve Purcell]] 的 [[https://github.com/purcell/emacs.d][Emacs 配置]].

*警告, Purcell 總愛試用最新的 Web 開發的新技術, 對他而言穩定性不是第一位的, 如果你有熱情和能力, 願意一起折騰, 那麼水平會提高很快.*

這個如果是很重要的前提, 當我上了 Purcell 的船時, 我已有 10 年開發經驗, 精通多種語言.

如你不願折騰, 那至少不要重複我的錯誤, 不要質疑, 不要創新, 跟着高手做. 直說了把, 你是初學者, 開始階段應以模仿爲主. 這點怎麼強調也不過分！

爲了加深印象, 讓我再舉一例. 有人向我反映, Emacs 快捷鍵太多, 背起來壓力很大. 我的建議是, 拿高手配置來用, 而不是強加給自己背快捷鍵這樣無聊的任務. 你會發覺高手已安裝了名爲 [[https://github.com/nonsequitur/smex][smex]] 的插件, 直接輸入命令比快捷鍵還快.

如果你還未信服, 請再考慮一下我的理由:
- 文章標題是 *一年成爲高手*, 不是一年入門
- 不是關起門來一個小圈子內的高手
- 我就是這麼做的, [[https://github.com/purcell/emacs.d/issues?direction=asc&page=1&sort=created&state=closed][看看一年內我給他報了多少 bug]]
- 如果你真下定決心, 考慮到 Purcell 的天賦和勤奮, 追趕他的最好辦法只有加入他
- 要超越高手就必須瞭解其高度, 你需要一年時間去模仿去學習
- 基於 Purcell 的配置給他報 bug (甚至是提交patch), 你就是考慮到了他未考慮到的問題, 至少在這點就超過他了, 日積月累就很可觀了

好吧, 你現在信服了. 但是你是否 *真正理解* 了? 真正理解就要採取行動."上士聞道，勤而行之".

比如你是否馬上推論到:即使不用高手的配置, 也可在 github 上訂閱 (watch) 高手配置, 其更新通知等價於免費的維護服務.
** 報 bug
像武俠小說那樣拜高手爲師是白日做夢. 唯一能讓高手指點的辦法是先付出. 最可靠的付出就是報 bug.

我就是這樣 [[https://github.com/capitaomorte/yasnippet/issues/256][學到一些高級 Lisp 技巧的]].

不要有報 bug 低級的想法. 很多高手都是樂於且善於報 bug. 倒是菜鳥喜歡重新發明輪子.

幫助高手, 你的起點就高, 還有得到指點的好處.
** 持續改進
前提是起點高, 要在高手已有工作上改善. 即使是微小的改善, 如果堅持一段時間, 就是巨大的進步了, 你就可以在這一點上笑傲江湖.

再找出另一高手需要改善的地方, 使用同樣的方法.

例如, 默認在 Emacs 中移動子窗口焦點不是很方便. 需按 =C-x o= 多次. 我找到了 emacs 插件 [[https://github.com/dimitri/switch-window][switch-window]], 只要按 =C-x o= 一次, 會有提示子窗口編號, 接下來輸入編號就可以了. 但還有改善空間, 我又找到了 [[https://github.com/nschum/window-numbering.el][window-number.el]], 只要按 =M-NUM= 一次. 這個方法已幾乎完美, 但 Alt 鍵還是有點慢, 我結合 [[https://github.com/emacs-evil/evil][evil]] 和 [[https://github.com/cofi/evil-leader][evil-leader]], 可以按逗號和數字飛速切換子窗口了. 我的這個點子後來被[[https://github.com/syl20bnr/spacemacs/commit/0931e4abece1307def3a024f4f2717359fb8d6e8][spacemacs採用]].現在已是大多數Emacs用戶的標準配置了.
** 加入社區更上一層樓
最重要的是專一.

例如, Quora.com 上有很多有趣的話題. 請剋制興趣, 不去定閱和 Emacs 無關的話題.

*** Reddit
[[http://www.reddit.com/r/emacs/][Reddit]] 是最好的. 能從中國大陸訪問.
*** GitHub 是高手雲集的地方
GitHub 的版本控制服務很好. 現在它的社區化傾向越來越強了, 我喜歡.

例如, 可以看一下 [[https://github.com/search?p=1&q=stars%3A%3E20+extension%3Ael+language%3Aelisp&ref=searchresults&type=Repositories]] 上最酷的 Emacs 插件.

*** Emacs 牛人的博客
最好的是 [[https://planet.emacslife.com/][Planet EmacsLife]], 多個 Emacs 博客的集合.

*** 在 twitter 上以 "emacs lang:en" 定期搜索
twitter 人多, 更新結果快.

之所以加上 "lang:en" 是因爲要排除日文內容, 因我不懂日文.

如果你懂日文, 則應充分利用日文資源, 其質量相當高.

也可以用 [[https://twitter.com/search-advanced][Advanced Search]] 搜索 ([[https://github.com/Ynjxsjmh][Winy Song]] 提供此技巧).
*** 在 Stack Overflow 上搜索相關討論
google "emacs-related-keywords site:stackoverflow.com"

我會定期搜索, 同一帖子反覆精讀. 因爲討論質量很高.

[[http://emacs.stackexchange.com]] 是 Stack Overflow 旗下專門的 Emacs 問答社區.
*** 到 Youtube 上看 emacs 相關的視頻
我就是看了 [[http://www.youtube.com/watch?feature=player_embedded&v=oJTwQvgfgMM][Google Tech Talks 上這個 Org-mode 作者的介紹]] 而愛上 org-mode.

不過 Youtube 搜索結果是最佳匹配的. 由於相關視頻並不多, 如按照默認算法, 每次總是那幾個. 所以如果關注最新進展, 搜索應以時間排序.

* 讀書最有效
** EmacsWiki
[[http://www.emacswiki.org/][EmacsWiki]] 是社區維護的文檔, 是最酷插件和最佳實踐的集合點.

有人抱怨文檔太亂, 質量參差不齊. 前者我有同感. 後者不贊同. EmacsWiki 文檔質量相當高, 因其是 *唯一的* 半官方文檔. 忍受其亂中有序的現狀吧.

最佳閱讀方法是, 選定一特定主題, 從頭讀到尾. 這樣對最新進展都瞭解了. 是否要採用其建議另當別論.

** Emacs Lisp 書籍推薦 (可選)
Bob Glickstein 的 [[http://www.amazon.com/Writing-GNU-Emacs-Extensions-Glickstein/dp/1565922611][Writing GNU Emacs Extensions]] 是最好的.

生動, 例子豐富. 作者用心安排了書的結構. 例如, 很早就介紹了 defadvice 的用法. defadvice 是 Emacs Lisp 的精華.

Xah Lee 提供 [[http://ergoemacs.org/emacs/buy_xah_emacs_tutorial.html][付費 Lisp 教程]] 也相當不錯.

** Steve Yegge 的 Emacs Lisp 教程
他的 [[http://steve-yegge.blogspot.com.au/2008/01/emergency-elisp.html][Emergency Elisp]] 很簡潔. 我特別喜歡 "Statements" 一章.

* 知識管理
不要低估長時間的累積效應.

正面例子參考 Steve Purcell 的配置. 2000 年開始維護!其聲譽和質量不用我多費口舌.

知識積累的越多, 這些知識之間的聯繫就會越多. 聯繫增長的速度是以指數的方式增長的. 如從頭來過, 意味着積累知識的書面記錄丟失了. 損失是很大的. 基數已歸零, 增長的量又能有多少.

所以決不要重置配置!

這也是後文談到爲什麼要用工具保存配置和知識的原因.
** 配置納入 GitHub 的版本控制
我的配置見 [[https://github.com/redguardtoo/emacs.d]].

版本控制可以認爲是一個集中式的知識管理, 任何時刻任何地點對配置的修改都要及時上傳合併 (merge). 這是積累能力的關鍵.

共享實際也是一種利己行爲, 很多人用我的配置等於幫我測試.
** 將相關資料 (如電子圖書, 博客文章) 備份
我將所有信息放在 Dropbox 的服務器上, 這樣資料就同步到我的智能手機和我的平板電腦上, 我可利用空閒時間學習.

請 [[https://www.getdropbox.com/referrals/NTg1ODg2Mjk][點擊這裏註冊 Dropbox 帳號]]. 注意, Dropbox 客戶端完全可以在國內使用, 雖然訪問其首頁可能有點問題.

我還寫了許多博客文章. 這些文章都存在 org 格式的文件中. 最後發佈的靜態博客也納入版本控制, 參見 [[http://github.com/redguardtoo/redguardtoo.github.io]].

* 第三方插件推薦
初學者的問題是裝了太多插件, 管理成了問題.

我建議的原則是少而精, 被少數最優秀的插件培養出品味後, 可自由挑選適合的.

標準如下：
- 高品質
- 常更新
- 很強大

所有插件都可通過包管理器下載.

以下是清單：
| 名稱                | 說明                                  | 同類插件         |
|---------------------+---------------------------------------+------------------|
| [[https://github.com/emacs-evil/evil][Evil]]                | 將 Emacs 變爲 Vim                     | 沒有             |
| [[http://orgmode.org/][Org]]                 | Org-mode, 全能的筆記工具              | 沒有             |
| [[https://github.com/company-mode/company-mode][company-mode]]        | 自動完成輸入, 支持各種語言和後端      | auto-complete    |
| [[https://github.com/magnars/expand-region.el][expand-region]]       | 快捷鍵選中文本, 可將選擇區域伸縮      | 沒有             |
| [[https://github.com/nonsequitur/smex][smex]]                | 讓輸入命令變得飛快                    | 沒有             |
| [[https://github.com/capitaomorte/yasnippet][yasnippet]]           | 強大的文本模板輸入工具                | 沒有             |
| [[http://www.emacswiki.org/emacs/FlyMake][flymake]]             | 對不同語言做語法檢查                  | flycheck         |
| [[https://github.com/abo-abo/swiper/blob/master/ivy.el][ivy]] or [[https://github.com/emacs-helm/helm][helm]]         | 自動完成, 在其上有插件完成具體功能    | ido              |
| [[https://github.com/mooz/js2-mode][js2-mode]]            | javascript 的主模式, 自帶語法解釋器   | js-mode          |
| [[http://www.emacswiki.org/emacs/emacs-w3m][w3m]]                 | 網絡瀏覽器 (需安裝命令行工具 w3m)     | Eww              |
| [[https://github.com/skeeto/emacs-web-server][simple-httpd]]        | Lisp 寫的 Web 服務器                  | [[https://github.com/nicferrier/elnode][elnode]]           |
| [[https://github.com/nschum/window-numbering.el][window-numbering.el]] | 跳轉到不同的子窗口                    | switch-window.el |
| [[https://github.com/fxbois/web-mode][web-mode]]            | 支持各種 HTML 文件                    | nxml-mode        |
| [[https://github.com/magit/magit][magit]]               | 玩轉 git                              | 沒有             |
| [[https://github.com/syohex/emacs-git-gutter][git-gutter.el]]       | 標記版本控制的 diff (支持 subversion) | 沒有             |

* Emacs 是一種生活方式
牛人其他方面也很牛. 舉一反三你收穫會很多.

[[http://sachachua.com/blog/][Sacha Chua]] 就是這樣一個有牛人氣質的女孩, 這是她的 [[http://www.youtube.com/watch?v=eoyi2vrsWow][Youtube 錄像]]. 她學習的方式是 [[http://sachachua.com/blog/2012/07/transcript-emacs-chat-john-wiegley/][讓 Emacs 自動將手冊語音合成]], 這樣她在房間裏走來走去的時候也可以聽文檔了.

我現在有意識地整理高手名單, 觀察他們 *除了 Emacs 外* 用什麼工具.

例如, [[https://github.com/mooz/js2-mode][js2-mode]] 的維護者 Masafumi Oyamada (網名 mooz) 也開發了 [[https://github.com/mooz/keysnail][keysnail]] 和 [[https://github.com/mooz/percol][percol]]. 特別是 percol, 使我命令行效率提高了 10 倍.

這個階段可稱之爲 *心中有劍, 手中無劍*.

是否用 Emacs 不重要了, 重要的是隨心所欲. 例如, 很多人爭論哪個編輯器自帶的文件管理較好. 我 [[http://blog.binchen.org/posts/how-to-do-the-file-navigation-efficiently.html][從 mooz 那學到大招後]], 就跳出五行外, 不在三界中了.

* 付之於行動
如何行動因人而異.

關鍵是真正理解本文要點.

例如，你是否意識到之前的章節意味着以下行動:
- 找出所有插件的作者
- 在 Quora/Twitter/GitHub/Reddit/Google+ 上跟隨他們
- 通讀他們已發表的貼子

* 使用 Evil
Evil 是 [[https://github.com/emacs-evil/evil][Vim 模擬器]].

如果你不熟悉 Vim, 在命令行裏運行 =vimtutor= 或者安裝 Emacs 插件 [[https://github.com/syl20bnr/evil-tutor][evil-tutor]] 學習 Vim 基本命令.

該教程大概需要半小時. 關於 Vim 的基本操作的討論就到此爲止了. 網上關於 Vim 教程汗牛充棟, 你可自行閱讀.

我的重點是展示一些高級技巧 (有些技巧是我獨創的), 以說明 Emacs 給我真正的自由.

我引以爲豪自己使用 Emacs 的方式和他人完全不同.
** Text Object
瞭解 [[http://vimdoc.sourceforge.net/htmldoc/motion.html][Vim Text Object]] 的概念.

Evil 的強大之處就是你可以用 Emacs Lisp 來自定義 =Text Object=. 自由的 Lisp 使得你完全超越 Vim 的 "約定俗成".

比如在操作自定義的 Text Object 時, 當前焦點完全可以在 Text Object 之外. 這是 Lisp 寫的 [[http://blog.binchen.org/posts/evil-text-object-to-select-nearby-file-path.html][尋找附近的文件路徑或者 URL.]] 用 Vim Script 寫個類似的腳本難很多. 即使你用了 [[https://github.com/kana/vim-textobj-user][vim-textobj-user]] 之類的插件輔助開發也沒用的.

而且 Lisp 代碼完全可以調用 *任何* 的第三方插件或者 Emacs 的不計其數的 API. 比如 Evil 中操作 =Text Object= 的過程中可以問用戶問題, 訪問網站等等.

這些額外功能對 Vim 來說就是不可能完成的任務了.

** Leader 鍵
Vim 自帶 Leader 鍵的功能, 你先按了 Leader 鍵 (很多人定義爲空格鍵) 後, 再按其他鍵 (比如 =kk=) 會觸發你自定義的命令. 本質就是給你更多的快捷鍵.

在 Emacs 中我們需要使用第三方插件如 [[https://github.com/cofi/evil-leader][evil-leader]] 來實現類似功能.

某些 Vim 用戶不能遷移到 Evil 的原因就是自定義了太多使用 Ctrl 鍵的快捷鍵, 和 Emacs 默認的快捷鍵有衝突.

這些用戶沒有意識到的是借鑑 Emacs 的思想, 他們在 Vim 和 Emacs 的效率可以有巨大的提升. 我只提三點供參考:

第一, Vim 用戶的問題是沒有充分利用 Leader 快捷鍵. 我看過大多數 Vim 高手在 GitHub 上的設置, 他們一般定義 *10 到 20 個* Leader 相關的快捷鍵.

我定義了 *300 個* 相關的快捷鍵.

典型 Evil 用戶 (如 Spacemacs 用戶) 大概有 *3000 到 10000 個* 相關快捷鍵可用.

第二, Vim 用戶的另一個問題是快捷鍵沒有優化. 最常用的快捷鍵應最容易按. 何爲最常用快捷鍵須來自 *真實數據*.

這是我用 Emacs 的插件 [[https://github.com/dacap/keyfreq][keyfreq]] 測試月的數據 (我的 Leader 鍵定義爲逗號):
| Times | Percentage | Command                                | Key                   |
|-------+------------+----------------------------------------+-----------------------|
|  4967 |     12.00% | evilmi-jump-items                      | %                     |
|  2892 |      6.99% | compile                                | , o o                 |
|  2178 |      5.26% | find-file-in-project-by-selected       | , k k                 |
|  1953 |      4.72% | copy-to-x-clipboard                    | , a a                 |
|  1566 |      3.78% | paste-from-x-clipboard                 | , z z                 |
|  1227 |      2.96% | er/expand-region                       | , x x                 |
|   897 |      2.17% | evil-repeat                            | .                     |
|   866 |      2.09% | ido-find-file                          | , x f, C-x C-f        |
|   819 |      1.98% | toggle-full-window                     | , f f                 |
|   815 |      1.97% | etags-select-find-tag-at-point         | C-], , h t            |
|   721 |      1.74% | back-to-previous-buffer                | , b b                 |
|   682 |      1.65% | split-window-vertically                | , x 2                 |
|   539 |      1.30% | find-function                          | , h f, C-h C-f        |
|   494 |      1.19% | counsel-recentf-goto                   | , r r                 |
|   397 |      0.96% | counsel-git-grep                       | , g g                 |
|   376 |      0.91% | delete-other-windows                   | , x 1, C-x 1          |
|   372 |      0.90% | evilnc-comment-or-uncomment-lines      | , c i                 |
|   351 |      0.85% | eval-expression                        | , e e, M-:            |
|   326 |      0.79% | evilmi-select-items                    | , s i                 |
|   320 |      0.77% | paredit-doublequote                    |                       |
|   307 |      0.74% | evil-filepath-outer-text-object        |                       |
|   300 |      0.72% | steve-ido-choose-from-recentf          |                       |
|   295 |      0.71% | split-window-horizontally              | , x 3                 |
|   283 |      0.68% | git-add-current-file                   | , x v a               |
|   279 |      0.67% | winner-undo                            | , x u, , s u, C-x 4 u |
|   278 |      0.67% | describe-function                      | , h d, C-h f          |
|   278 |      0.67% | evil-goto-mark-line                    | '                     |
|   269 |      0.65% | ido-kill-buffer                        | , x k, C-x k          |
|   254 |      0.61% | evil-goto-definition                   | g d                   |
|   253 |      0.61% | pop-tag-mark                           | M-*                   |
|   251 |      0.61% | git-messenger:popup-message            | , x v b, C-x v p      |
|   246 |      0.59% | my-goto-next-hunk                      | , n n                 |
|   237 |      0.57% | evilnc-comment-operator                | , ,                   |
|   235 |      0.57% | flyspell-goto-next-error               | , f e, C-,            |
|   214 |      0.52% | evil-exit-emacs-state                  |                       |
|   212 |      0.51% | browse-kill-ring-forward               |                       |
|   210 |      0.51% | flyspell-buffer                        | , f b                 |
第三, 由於 Lisp 的強大 Leader 鍵的使用在 Emacs 中有無限可能
- 使用 [[https://github.com/noctuid/general.el][general.el 代替 evil-leader, ]] 時定義多個 Leader 鍵
- 可在切換文件時切換 Leader 鍵等等.

** Evil 和 Emacs 原生插件的兼容性
如果你真正理解了我前面的章節, 這就根本不是問題.

之前我提到了要保持頭腦開放, 要儘可能抄高手的代碼, 積極地報 bug 等觀點. 現在讓我演示一下如何應用.

很多人宣稱, Evil 和 Emacs 的許多插件有快捷鍵衝突, 重新配置很麻煩.

一開始我也相信了這些一派胡言, 所以每裝一個新的插件, 都要辛辛苦苦再設置 evil 的快捷鍵.

有一天我問自己, Lisp 那麼強大, Evil 那麼優秀, 也許有更方便簡潔的方案?許多人說不行不一定是真理, 只有實際調查過的人才有發言權.

我也沒有自己鑽研 Evil 的代碼, 取而代之的是 [[https://github.com/emacs-evil/evil/issues/511][給 Evil 的開發者 Frank Fischer 報了個 bug]], 他給我了一個完美的方案, 根本不需要重設快捷鍵.

這是這個方案在 [[https://github.com/emacsmirror/git-timemachine][git-timemachine 中]] 的 [[http://emacs.stackexchange.com/questions/9842/disable-evil-mode-when-git-timemachine-mode-is-activated][完美應用]].
** Evil 專用的插件介紹
我選擇 [[http://melpa.org][MELPA]] 上最流行的5個Evil插件介紹一下, 類似優秀插件還有很多.

要點不在於你裝了多少插件, 而在於理解由於 Lisp 的強大和 Emacs 的自由, 這些插件功能更多, 更容易拓展.

*** [[https://github.com/timcharper/evil-surround][evil-surround]]
對應 [[https://github.com/tpope/vim-surround][vim-surround]].

我通常用 [[https://github.com/magnars/expand-region.el/blob/master/expand-region-core.el][expand-region 選中一段文本, 然後按 =S= 或者 =M-x evil-surround-region= , 再按任意字符 (比如雙引號) 就可以在文本]] 首尾兩端附加該字符.

當然它也支持修改刪除操作.

之前提到的 text object 也完美支持.

懂 Lisp 的話可以修改 =evil-surround-operator-alist= 自己定製操作.

*** [[https://github.com/redguardtoo/evil-nerd-commenter][evil-nerd-commenter]]
對應 [[https://github.com/scrooloose/nerdcommenter][vim-nerd-commenter]], 這是我寫的, 功能更強大.

你可以 =M-x 5 evilnc-comment-or-uncomment-lines= 快速註釋當前 5 行或者取消註釋當前 5 行.

你也可以選中一個區域 =M-x evilnc-comment-or-uncomment-lines=

由於 Emacs 的強大, 默認就支持所有世界上已知的語言, 而核心代碼也就是 1 行而已. Vim 插件對應的功能代碼要有 400 行.

如果你在 [[http://orgmode.org/][org-mode 格式的單一文件中]] 中混雜多種語言的話, 它也能智能識別.

這個功能在 Vim 中基本不可能實現.
*** [[https://github.com/redguardtoo/evil-matchit][evil-matchit]]
對應 [[https://github.com/tmhedberg/matchit][vim-matchit]]. 又是我寫的. 自然功能更強大.

本質就是你當前焦點在文件的某個位置 A, 你按 =%= 或者 =M-x evilmi-jump-items=, 焦點移到位置 B, 你再按同樣的鍵, 又回到了位置 A.

比如在一個 HTML 文件中, 你就可以在 =<body>= 和 =</body>= 間跳來跳去. 其他各種編程語言都支持.

Vim 對應的代碼我讀過, 限制比較多, 比如你一定要先定義一對正則表達式來匹配 A 和 B 的位置. 這種限制在某些語言如 Python 中就會比較麻煩.

Emacs 的實現就完全體現了 Emacs 的自由精神, 我建立了一個動態查詢的矩陣, 矩陣的元素就是函數對象而已. 用戶可以在運行時替換這些函數對象, 所以怎麼跳轉, 跳到哪都是完全自由的.

所以 python 的支持就毫無問題. 想支持更多的語言或者對我的實現不滿意, 在 =.emacs= 中寫幾行 Lisp 代碼就可以了.
*** [[https://github.com/syl20bnr/evil-escape][evil-escape]]
按自定義快捷鍵退出當前的各種狀態, 相當於 Vim 中的 =ESC= 或者 Emacs 中的 =C-g=.

我定義自定義快捷鍵爲 =kj=. 如果你想效率高的話, 取消的默認快捷鍵就太慢了.

讓我給你舉個例子說明什麼叫效率高. 我移動手指去按 ESC 鍵需要 0.5 秒.

Sublime Text 默認的文本搜索要比我的 Emacs 設置慢 40 倍. 如果 Sublime Text 搜索需要 40 秒, 那麼節省取消鍵的 0.5 秒毫無意義.

Emacs 只要 1 秒完成搜索, 所以取消鍵從 0.5 秒減少到 0.1 秒的感覺就完全不一樣.
*** [[https://github.com/bling/evil-visualstar][evil-visualstar]]
對應 [[https://github.com/bronson/vim-visual-star-search][vim-visual-star-search.]]

選擇一段文本, 按 =#= 或者 =*= 搜索.
** 在 Shell 和 Interactive Interpreter 中使用 Evil
可以 =M-x shell= 或者 =M-x term= 進入 Shell.

傳統上大家都在 Shell 中用 Emacs 的默認快捷鍵.

不過仔細計算過後我發現 Vim 的快捷鍵更有效率.

Shell 的作用無非就是運行命令或腳本代碼, 輸出運算結果.

當我們在 Emacs 中運行 Shell 的時候, 命令和代碼往往是從別的地方拷貝過來的.

粘貼命令和代碼到 Shell 中, 分析/過濾/搜索輸出的結果, 都是 Vim 的快捷鍵更方便.

我之前提到的所有關於 Evil 的技巧和插件都適用於此.

Interactive Interpreter 和 Shell 沒有本質區別, 無非就是解釋器支持的語言不一樣罷了. 比如 [[https://github.com/nonsequitur/inf-ruby][inf-ruby]] 支持 Ruby.

你可以按 =C-z= 切換回純 Emacs 快捷鍵. 我從不切換, 因爲我對這種雜交的快捷鍵非常滿意.
** Evil 的小結
對 Vim 用戶來說, Evil 不僅提供了 Vim 的完美模擬, 還開闢了用 Lisp 拓展 Vim 的新世界.

對 Emacs 用戶來說, Evil 也不僅僅是提供了新的快捷鍵, 而是提供了更多的可編程的數據結構和範式 (如 text object).

關鍵是發揮你的創造力, 自由地接合 Emacs 和 Vim 的長處, 發明新技術和新技巧. 這種機會目前是很多的, 趕快行動起來吧.

* 答疑
** 菜鳥怎麼開始
到 [[https://github.com/redguardtoo/emacs.d]] 參考 "Install stable version in easiest way" 一節.

只要點擊下載兩個 zip 文件就可以了, 不需 git 的任何知識.

** Steve Purcell 的配置是否有文檔可以參考?
除了 README 外沒有, 我主要是通過看 EmacsWiki 和源代碼來了解. 竅門是源代碼文件的頭部有使用指南和作者的聯繫方式.

** 高手的配置是否太重量級?
高手的配置都是輕量級的, 因爲他們知道如何優化.

比如有種叫 [[http://www.gnu.org/software/emacs/manual/html_node/elisp/Autoload.html][Autoload]] 的技術. 只有用到模塊的某一功能時那個模塊纔會被載入內存. 我推薦的高手都知道這類技巧.

** 除了 Purcell 的配置, 還有其他高手的設置嗎?
我 [[https://github.com/search?l=Emacs+Lisp&o=desc&q=emacs&ref=searchresults&s=stars&type=Repositories][搜了下 github]]:
- [[https://github.com/bbatsov/prelude][Bozhidar Batsov's emacs.d]]
- [[https://github.com/syl20bnr/spacemacs][Sylvain Benner's Spacemacs]]
- [[https://github.com/eschulte/emacs24-starter-kit/][Eric Schulte's Emacs Starter Kit]].
** 有沒有更簡單的配置？
可用 [[https://github.com/redguardtoo/emacs.d][我的配置]]：
- 去掉了 Git 依賴.
- 網絡不是必須的
- 安裝了拼音輸入法
- C++ 支持強大

注意, Purcell 作爲頂尖 Web 開發者, 會試用最新的 Web 技術, 而我的配置 Web 類插件更新會滯後一段時間. 另外我的工具鏈和 Purcell 不完全一致. 你自己權衡了.
** 該使用 Emacs 的哪個版本
目前穩定版是 25.3, 26.3 建議不要用高於此版本的 Emacs.

通常不用擔心版本問題. 主流的 Linux 發行版會處理.

** Vi 高手要轉陣營嗎?
嘿嘿, 我也是 Vi 精通後轉到 Emacs 的. 就是因爲 Emacs 的強大 (例如和 gdb 的完美結合) 以及其腳本語言是 Lisp.

當然 Vi 的多模式編輯和快捷鍵比 Emacs 要高效得多, 所以最佳方案是 Vi + Emacs.

目前我用 [[http://www.emacswiki.org/Evil][Evil]], 在 Emacs 下模擬 Vim, 結合兩者優點.

現在我是 *神用編輯器之神*!

*警告*, 我默認啓用了 Vim 的快捷鍵, 不習慣可打開=~/.emacs.d/init.el=, 將其中一行代碼註釋掉, 細節參考 README.
** 爲什麼很多 Vim 高手不接受 Evil?
因爲他們對 Vim 快捷鍵做了深度配置. Emacs 默認要經常按 Ctrl 鍵, 如自定義的 Vim 快捷鍵也用 Ctrl 鍵, 難免有衝突.

解決辦法是大家都使 [[http://stackoverflow.com/questions/1764263/what-is-the-leader-in-a-vimrc][Leader]] (Vim 直接支持, Emacs 需 [[https://github.com/cofi/evil-leader][第三方插件]]).

還有一個辦法是待在 Vim 的舒適區裏. 如能忍受沒有 Org-mode 和 Lisp 的生活, 那麼不會有問題.

如猶豫不決, 請重讀 "態度決定一切" 一節.

我一旦認識到 Evil 和 Evil-leader 的潛力, 立刻把我 Vim 的設置按 Emacs 的重設了一遍。

更光輝燦爛的例子就是Spacemacs作者了, 無數的 github 星星代表了他的成功.
** 不習慣默認快捷鍵, 怎麼辦？
*忍*!

默認快捷鍵經過幾十年考驗相當高效, 未成爲高手前還是要忍.

如一定要在用 Windows 快捷鍵的, 可考慮 [[http://ergoemacs.org/][ergoemacs]].
** 快捷鍵太多記不住怎麼辦?
沒必要記, 我也只記常用的十幾個快捷鍵. 順其自然, 多用記住, 不用就忘, 很正常.

目前很多高手在用 [[http://www.emacswiki.org/Smex][Smex]], 可飛快輸入命令, 快捷鍵實際上不需要了.
** 使用牛人配置後, 界面有些奇怪的 bug, 怎麼改?
不要改! 參考上文 [[https://github.com/redguardtoo/mastering-emacs-in-one-year-guide/blob/master/guide-zh.org#站在巨人的肩膀上][站在巨人的肩膀上]] 一章, 你覺得奇怪是因爲缺乏經驗, 把某些特性誤認爲是 bug. 請堅持至少一年.

例如, 有人反映右邊第 80 列處總有一豎線, 希望能去掉.

實際上這是一特性, 提醒用戶一行寬度不要超過第 80 列. 這是 [[http://www.emacswiki.org/emacs/EightyColumnRule][每行不要超過 80 列的原因]].

我建議第一年應 *儘量理解而不妄加判斷*.

** 已更新軟件包, 但是沒有任何作用, 也沒有任何錯誤信息
刪除 HOME 目錄下的 =.emacs=, =~/.emacs.d/init.el= 就是取代原來的 =.emacs=.
** 如有任何關於如何配置的問題
- 讀官方教程
- 善用 google 和我提供的信息

例如,
問：在 =.emacs.d= 中的 =init.el= 文件起什麼作用？
答：google "emacswiki init.el".
** 使用牛人配置後啓動報錯, 如何解決？
先確認已裝上了 *你需要的* 第三方命令行工具, 這些工具是可選的, 清單見 [[https://github.com/redguardtoo/emacs.d][我的 README]].

如排除了以上原因, 帶上 =--debug-init= 參數重新啓動, 然後將錯誤信息及環境報告到對應的開發者.

報告時應給出細節. 例如很多讀者給我的 bug 都是由於第三方插件版本較新引起的, 我拿到版本號後, 才能下載特定版本以重現 bug. 否則只能靠猜, 來回郵件浪費很多時間.
** 牛人的配置太複雜, 還是從一簡單的配置改起好控制
那你就是走我後悔莫及的老路, 一個人在黑暗中摸索. 開頭興致很高, 但現實是殘酷的, 碰到複雜問題解決不了. 只能逃避, 藉口 Emacs 太複雜而放棄了.

我最終醒悟過來走上光明大道, 很多走上岐路的人恐怕就沒這個覺悟和毅力了.

希望自己掌控坦率地說是一個非技術問題, 因爲沒有自信心, 所以有補償心態. 希望通過一種錯誤的方式來證明自己. 結局無非是惡性循環.

正確地方法是放下身段至少一年 (我已反覆強調這一點), 打好基本功, 讀書, 虛心向高手學習.

** 爲什麼我用了牛人配置後自己額外添加的插件無效
Emacs 是個開放平臺, 其衆多插件發佈前並不一定有嚴格的測試. 所以插件之間可能有衝突.

這也是我爲什麼建議初學者直接使用牛人配置的原因, 因爲牛人已經解決了衆多兼容性的問題, 你只要直接享受他的服務就行了.

即使你發現了牛人尚未來得及處理的 bug, 最有效方法是提交報告給牛人, 而不是自己去鑽研 Lisp.
** 我想用 Windows 版本的 Emacs 而不是 Cygwin 版本, 怎麼做?
需對命令行操作熟悉. 關鍵知識點有兩個：
1. 設置 =HOME= 環境變量, 因爲 =.emacs.d= 中的某些 Lisp 腳本假定 =.emacs.d= 在 HOME 所指定的路徑中.
2. Emacs 的某些功能需要使用第三方的命令行工具, 這些工具的路徑應該添加至環境變量 =PATH= 中 (可選, 原因見後面).

如你不知道如何在 Windows 下添加修改環境變量, 不知道如何安裝第三方工具, 建議還是先用 Cygwin 中的 Emacs, 因它已自帶工具, 沒有的話安裝也方便. 且在 Cygwin 下環境變量 HOME 默認已設.

第三方命令行工具清單請參考[[https://github.com/redguardtoo/emacs.d][我的配置]]中的 README.
** Emacs 在代碼跳轉和自動完成上和商業 IDE 有差距, 怎麼辦?
這個差距說到底是後端語法解析引擎的問題.

就 C++ 來說目前有用蘋果公司的 [[https://github.com/llvm-mirror/clang][clang]] 的方案, 效果不錯. 具體用什麼插件來調用這些引擎有很多選擇, 不展開了.

實戰中, 我通常就用 =Ctags= 作爲後端引擎, 因其通吃所有語言. 雖然解析效果差一點, 但是恰當的命名規範 (儘量少重名) 可以彌補.

如Ctags不滿意, 可用 [[http://www.gnu.org/software/global/][Gnu Global]] (gtags).

以上討論的都是後端引擎.

就前端界面來說, 做的比較好的是 [[https://github.com/company-mode/company-mode][company-mode]], 維護很活躍, 你可就特定語言如何配置諮詢其開發者.

Java 和 C# 語言的主力開發工具最好用 IDE 而不是 Emacs.C# 又比 Java 更難在 Emacs 中使用. 原因你懂的.

** 網頁瀏覽
強烈建議用 [[https://github.com/mooz/keysnail/][Keysnail]].

這是最佳的, 我已試過 *所有* 可選項.

Firefox v57+的更新使得keysnail無法維護下去了，可以暫時使用低版本的Firefox或者轉用Google Chrome加上[[https://github.com/brookhong/Surfingkeys][Surfingkeys]]代替.
** 郵件
我用 [[http://www.gnus.org/][Gnus]]. 但有很多其他方案.

如你必須訪問 Microsoft Exchange Servers, 還要用 [[http://davmail.sourceforge.net/][Davmail]].

用了 Davmail 後, 還可以用 [[http://getpopfile.org/][Popfile]] 來分撿郵件. Davmail + Popfile 讓我生活在天堂.
** 爲什麼 Emacs 啓動時從服務器 (elpa) 安裝第三方軟件包 (package) 會失敗?
請啓動 Emacs 後, 運行 =M-x package-refresh-contents= 以從服務器更新軟件索引, 然後重啓 Emacs 即可.

如果你沒有用 Emacs24, 沒有完全拷貝高手的配置 (這是本文的中心思想), 那麼你需要安裝 package.el, 細節參考 [[http://marmalade-repo.org/][這裏]].

Emacs 下載軟件包 (package) 是通過 http 方式, 所以如果網絡出問題的話你需要用 http 代理服務器, 具體操作見後文.
** 有些網站 Emacs 訪問不了
在命令行中啓動 Emacs 時加上 =http_proxy=your-proxy-server-ip:port= 前綴.

例如,
#+BEGIN_SRC sh
http_proxy=http://127.0.0.1:8000 emacs -nw
#+END_SRC
** 有些軟件包下載不下來, 也不會用代理
那麼就用 [[https://github.com/redguardtoo/emacs.d][我的 Emacs 配置]].

和我的配置配套的是我建立的獨立的第三方包服務, 請參考 [[https://github.com/redguardtoo/myelpa][其主頁上的 README]].

** 早點學習 Emacs Lisp 是否有助於成爲 Emacs 高手？
*否, 只會起阻礙作用*!

Lisp 語法和通常的語言不同, 除非有相當編程經驗 (至少 10 年), 一般人都會對其有一點負面情緒 (當然是毫無道理的偏見!). 學習任何新東西, 長期來說興趣最重要. 一開始應避免任何負面情緒.

Emacs Lisp 又是隻用於 Emacs 的語言, 有大量術語需要掌握. 如 "Buffer", "Yank", "Font face", 只有資深用戶才能理解.

所以在軟件使用沒有相當基礎前學習其拓展語言是浪費時間.

參考前文關於找到切入點的一節, 我推薦的順序是, 先用優秀的配置享受到好處, 有了興趣後學習 Lisp 就水到渠成了.

有世界級高手 (名字不點了) 對我的建議不以爲然, 他說 Lisp 很強大很有趣, 應該先學.

但是他的盲點在於, 忘記了自己轉向 Emacs 前在其他編輯器上已一覽衆山小了. 他用 Python 拓展 Sublime 已熟到厭煩, Lisp 的奇特語法反而刺激了興趣. 編輯器的常用術語也不在話下. 而本文針對的是大多數的凡人.

選擇適合自己的路, 一年以後天才也好, 凡人也好, *達到的高度都是一樣的*.
** 掌握 Emacs Lisp 是否是成爲高手的必要條件?
否. 但 Lisp 是很強大的語言, 特點是一切皆可改. 當我說 "一切" 的時候, 我就是指字面意義上的 "一切", 不是修辭上的誇張.

我用過許多編輯器, 除了 Emacs 沒有一個能做到 "一切可改" 這點 Vim 也不行.

學點 Lisp 對提高 Emacs 水平沒壞處. 另外 Lisp 語法不錯, 值得一學.

順便說一下, Lisp 很簡單, 比 VB 容易多了, 一旦你適應其語法, 就會發覺它其實蠻友好的, 至少少打很多字.
** 有必要學習鍵盤宏 (Keyboard Macros) 嗎?
沒必要, Lisp 足夠了.

但是鍵盤宏生成的 Lisp 代碼有時候比較有趣, 建議你精通 Lisp 後再來玩玩鍵盤宏.
** 基本操作我會了, 下一步學什麼迷茫中
關鍵是你打算用這把瑞士軍刀做什麼.

前文已強調過以興趣和解決實際問題作爲切入點.

舉一些我自己的例子說明:
- 我有寫博客需要, 懶得用 Wordpress 那個破界面, 所以用 [[https://github.com/punchagan/org2blog][org2blog]]
- 開發 Ruby on Rails 程序需要 IDE, 裝了 rinari
- 做跨平臺 C++ 桌面開發, 裝了 cmake-mode
- 需在多個子窗口間跳來跳去, 所以裝了 [[https://github.com/nschum/window-numbering.el][window-numbering.el]]
- 大項目需同時調試多種語言, 所以裝了 [[https://github.com/redguardtoo/evil-nerd-commenter][evil-nerd-commenter]], 這樣不用記特定語言的語法就可註釋掉代碼.
** 如何學習 org-mode?
[[http://www.cnblogs.com/Open_Source/archive/2011/07/17/2108747.html][Org-mode 簡明手冊]] 是不錯的中文教程.

最好的英文教程是 Carsten Dominik (Org-mode 發明者) 在 [[http://orgmode.org/talks.html][google tech talks 上的演講]]. 其要點爲 org-mode 本質是一個文本文件, 只要記住按 TAB 展開或者縮進條目就可以了. 其他特性可慢慢學.
** 對於 "一切都用 Emacs 來完成" 的觀點你怎麼看?
不要走火入魔. Emacs 本質是個平臺, 提供了無限可能性.

從實用角度講, Emacs 和其他工具結合有時能更快完成工作 (不過在沒有一年的修煉之前 *千萬不要猜 Emacs 不能做什麼*).

以下是 Emacs 不一定能吃獨食的地方:
- 剪貼簿: 應結合命令行工具 xsel (Linux) /pbpaste (OSX) /putclip (Cygwin)
- Web 瀏覽: 用傳統瀏覽器配合其插件
- 遠程登錄管理: 用 screen/tmux
- FTP: 用專門的 FTP 軟件
- 文件管理: 用專用軟件
- Lisp 速度比較慢，如有大計算量的工作, 交給第三方工具來作.

重點是頭腦靈活, 既堅信 Emacs 無所不能, 也適當變通.

* 聯繫我
這是我的 [[https://twitter.com/#!/chen_bin][Twitter]] 和 [[https://plus.google.com/110954683162859211810][Google Plus]] 以及 [[http://www.weibo.com/u/2453581630][微博]], 我在新浪微博賬號"emacsguru".

博客爲 [[http://blog.binchen.org]].

我不回答具體配置的問題. 如你通讀本文, 應知道哪裏找答案更好.

* 結語
再強調一下本文最重要的觀點:
- 以 *解決實際問題* 產生的興趣引導
- *完全照抄世界頂尖高手如 Steve Purcell 的配置*, 儘量避免自己寫 Lisp
- 給高手報 bug 就是最好的學習,
- 學習 Emacs 和 *學任何專業技能 (拉小提琴, 解數學題) 的方法論都是一樣的*, 請參考 [[http://book.douban.com/subject/4726323/][一萬小時天才理論]].

關鍵是你以嚴肅的態度把其當作專業技能學習.

很多人之所以不贊同我的核心觀點, 是因爲內心深處還有把 Emacs 當玩具來炫耀 "我有多酷" 的意識.

Emacs 強大到可以作爲另類娛樂來博眼球. 但本質是專業人士使用的神器.

打個比方, 職業殺手對於刀只關心兩件事:
1. 高效地殺人
2. 任何環境下都可靠

刀的裝飾是否漂亮或技巧是否自己原創對他並不重要.

Emacs 就是那把刀.
** 如何報 bug
本文官方網址爲 [[https://github.com/redguardtoo/mastering-emacs-in-one-year-guide]].

有任何疑問, 請在以上網址報 bug. 這比 Email 快. 因 GitHub 會以郵件通知我, GitHub 郵件永遠歸類至我的最優先文件夾下.

如給我發 Email, 會淹沒於垃圾郵件中.

** 不要複製粘帖本文
Emacs 本質上是一個社區和平臺, 不斷有新的有趣的人和技術出現. 我會定期更新本文.

如果你拷貝粘帖全文, 會使自己和他人錯過更新.

我建議分享本文的鏈接, 中英文純文字版會發布在 GitHub 上 ([[https://github.com/redguardtoo/mastering-emacs-in-one-year-guide]])
* 版權
本文采用以下協議進行授權, [[http://creativecommons.org/licenses/by-nc-nd/3.0/deed.zh][自由轉載 - 非商用 - 非衍生 - 保持署名 | Creative Commons BY-NC-ND 3.0]], 轉載請註明作者及出處.
