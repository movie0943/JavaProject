/*
2023-07-09 20:38:00
*/

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE `javaproject` DEFAULT CHARACTER SET utf8;

USE `javaproject`;

-- --------------------------------------------------------

--
-- 資料表結構 `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `mdContent` text DEFAULT NULL,
  `htmlContent` text DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `publishDate` datetime DEFAULT NULL,
  `editTime` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `pageView` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `article`
--

INSERT INTO `article` (`id`, `title`, `mdContent`, `htmlContent`, `summary`, `cid`, `uid`, `publishDate`, `editTime`, `state`, `pageView`) VALUES
(122, '這年頭買房真的不容易', '用買房來對沖通貨貶值造成的財務損失\n10年前的1,000萬元與現在的1,000萬元，簡直就是天地之別，為什麼呢？其原因就在於存在通貨膨脹！所以，在高通脹率時代，貸款買房可以更好地抵消通貨膨脹，也許10年後你就會發現今天借的1,000萬元房貸根本就不值一提。\n以購買1,000萬元的房子為例，你只要籌足房價2成，亦即200萬元，其餘的800萬元，在你具備未來的償債能力下，銀行會很樂意借給你，也只有買房，銀行才有可能借你那麼大筆的款項（800萬元）供你使用，還讓你用30年的時間慢慢來還。為什麼？因為從國內外的長期經驗來看，房價都是上漲的，而且其上漲幅度一定不會小於通貨膨脹、經濟成長的幅度。而假若房價長期看漲，那買房當然會是好的資本投資，而依長期及當前的主客觀環境來看，構成房價的3個主要要素，包括營建原物料、人工及土地資源，都沒有下跌的可能；像營建原物料中的水泥、鋼鐵、砂石、木材，在自然資源日漸耗竭、二氧化碳排放管制的情況下，只漲不跌；而營造施工的人力在年輕人不願從事、現有勞工老化並逐漸退出的的狀況下，短缺愈來愈嚴重；再加上都會區的土地利用已經飽和，已經沒有太多可以興建的素地，因此，整體來看，房價上漲是必然而不可逆的趨勢。\n\n經濟成長帶動的房價上漲不會休止\n經濟成長會帶來一定的通貨膨脹和房價上漲，所以從歷史經驗來看，房價上漲是必然的趨勢，「炒作」只是造成房價快速的漲價，因此，縱然扼止了炒作，也不能改變房價上漲的趨勢和事實，只是讓房價回歸到反應成本的上漲而已，疫情的這2年，台灣的經濟還是處在成長的狀態，2020年台灣全年經濟成長率3.11%，2021年雖因疫情爆發，導致一些產業大受打擊變成「慘」業，因而造成經濟上的K型發展，但整體經濟仍會有5%以上成長率，在房屋規格基本抵定的情況下，當然是愈早買房愈有利。\n\n利用買房放大財富\n一套房子價值1,000萬元，10年後升值1倍，即2,000萬元，假如你是貸款買房，頭期款付200萬元，那就等於賺到了1,800萬元。\n房子可以做為緊急危難時的應變工具\n就像這次突如其來的疫情，讓很多人突然失去了工作，或減少了收入，一些商家因為不能正常營業，而面臨周轉上的困境，如果有房子在手，那麼透過房子的增貸，往往就可以幫忙度過難關。\n\n給生活帶來幸福和安定感\n透過貸款買房，可以一邊還錢一邊住，貸款的這段期間你也不需要繳交租金，在低利率時代，你繳的房貸利息甚至比房租還低，而擁有了自己的房子之後，通常會讓家人覺得生活更有意義、更有保障，因而幸福感大增，在工作上、財富的追求上也變得更積極。\n\n買房是投入少、收穫大的投資\n貸款買房只要付了頭期款，其他的可以用銀行貸款來支付，只要有穩定的收入來源，銀行就會借給你，只要房價上漲，就能充分的發揮賺錢的槓桿效應！', '<p>用買房來對沖通貨貶值造成的財務損失<br />\n10年前的1,000萬元與現在的1,000萬元，簡直就是天地之別，為什麼呢？其原因就在於存在通貨膨脹！所以，在高通脹率時代，貸款買房可以更好地抵消通貨膨脹，也許10年後你就會發現今天借的1,000萬元房貸根本就不值一提。<br />\n以購買1,000萬元的房子為例，你只要籌足房價2成，亦即200萬元，其餘的800萬元，在你具備未來的償債能力下，銀行會很樂意借給你，也只有買房，銀行才有可能借你那麼大筆的款項（800萬元）供你使用，還讓你用30年的時間慢慢來還。為什麼？因為從國內外的長期經驗來看，房價都是上漲的，而且其上漲幅度一定不會小於通貨膨脹、經濟成長的幅度。而假若房價長期看漲，那買房當然會是好的資本投資，而依長期及當前的主客觀環境來看，構成房價的3個主要要素，包括營建原物料、人工及土地資源，都沒有下跌的可能；像營建原物料中的水泥、鋼鐵、砂石、木材，在自然資源日漸耗竭、二氧化碳排放管制的情況下，只漲不跌；而營造施工的人力在年輕人不願從事、現有勞工老化並逐漸退出的的狀況下，短缺愈來愈嚴重；再加上都會區的土地利用已經飽和，已經沒有太多可以興建的素地，因此，整體來看，房價上漲是必然而不可逆的趨勢。</p>\n<p>經濟成長帶動的房價上漲不會休止<br />\n經濟成長會帶來一定的通貨膨脹和房價上漲，所以從歷史經驗來看，房價上漲是必然的趨勢，「炒作」只是造成房價快速的漲價，因此，縱然扼止了炒作，也不能改變房價上漲的趨勢和事實，只是讓房價回歸到反應成本的上漲而已，疫情的這2年，台灣的經濟還是處在成長的狀態，2020年台灣全年經濟成長率3.11%，2021年雖因疫情爆發，導致一些產業大受打擊變成「慘」業，因而造成經濟上的K型發展，但整體經濟仍會有5%以上成長率，在房屋規格基本抵定的情況下，當然是愈早買房愈有利。</p>\n<p>利用買房放大財富<br />\n一套房子價值1,000萬元，10年後升值1倍，即2,000萬元，假如你是貸款買房，頭期款付200萬元，那就等於賺到了1,800萬元。<br />\n房子可以做為緊急危難時的應變工具<br />\n就像這次突如其來的疫情，讓很多人突然失去了工作，或減少了收入，一些商家因為不能正常營業，而面臨周轉上的困境，如果有房子在手，那麼透過房子的增貸，往往就可以幫忙度過難關。</p>\n<p>給生活帶來幸福和安定感<br />\n透過貸款買房，可以一邊還錢一邊住，貸款的這段期間你也不需要繳交租金，在低利率時代，你繳的房貸利息甚至比房租還低，而擁有了自己的房子之後，通常會讓家人覺得生活更有意義、更有保障，因而幸福感大增，在工作上、財富的追求上也變得更積極。</p>\n<p>買房是投入少、收穫大的投資<br />\n貸款買房只要付了頭期款，其他的可以用銀行貸款來支付，只要有穩定的收入來源，銀行就會借給你，只要房價上漲，就能充分的發揮賺錢的槓桿效應！</p>\n', '用買房來對沖通貨貶值造成的財務損失\n10年前的1,000萬元與現在的1,000萬元，簡直就是天地之別', 58, 6, '2023-07-09 19:27:10', '2023-07-09 19:27:10', 2, 2),
(123, 'Linux grep', 'Linux 的 grep 是一個很好用的指令，可以從串流資料或檔案中，使用關鍵字或正規表示法（regular expression）篩選出想要尋找的資料，並且顯示出來，以下是 grep的用法教學以及實際範例。\n\ngrep 這個指令名稱其實是來自於正規表示法的 g/RE/p，其意義是代表以正規表示法全域搜尋並列印出來（globally search for RE and print it）。\n搜尋關鍵字：\ngrep 最基本的用法就是以普通的關鍵字來搜尋，其基本語法如下：\n\ngrep 關鍵字 檔案1 檔案2 ...\n\n例如在 /etc/hosts 檔案中搜尋 127 關鍵字：\n\ngrep 127 /etc/hosts', '<p>Linux 的 grep 是一個很好用的指令，可以從串流資料或檔案中，使用關鍵字或正規表示法（regular expression）篩選出想要尋找的資料，並且顯示出來，以下是 grep的用法教學以及實際範例。</p>\n<p>grep 這個指令名稱其實是來自於正規表示法的 g/RE/p，其意義是代表以正規表示法全域搜尋並列印出來（globally search for RE and print it）。<br />\n搜尋關鍵字：<br />\ngrep 最基本的用法就是以普通的關鍵字來搜尋，其基本語法如下：</p>\n<p>grep 關鍵字 檔案1 檔案2 …</p>\n<p>例如在 /etc/hosts 檔案中搜尋 127 關鍵字：</p>\n<p>grep 127 /etc/hosts</p>\n', 'Linux 的 grep 是一個很好用的指令，可以從串流資料或檔案中，使用關鍵字或正規表示法（reg', 62, 7, '2023-07-09 19:34:55', '2023-07-09 19:34:55', 1, 1),
(124, '理財入門觀念', '新手該如何投資？掌握理財入門3大重要觀念\n準備踏入投資市場之前，建議您先掌握以下3個重要的理財入門觀念，更能在投資的路上少走點冤枉路。（延伸閱讀：理財規劃入門篇｜掌握正確觀念與分配方式，從適合投資管道開始上手）\n\n \n\n理財入門觀念1：釐清自身投資目的\n\n進行任何投資之前，建議先釐清自身的投資目的，才能選擇合適標的。舉例來說，有些剛出社會的投資小白，想透過投資工具逐步累積財富，並以「穩定獲利」為主要目標，那麼以「風險性較低」為產品特色的穩健型基金、債券可能較為合適；而若是本身已有一定資產，想透過金融商品追求「獲利最大化」的投資人，則可以視自身財務情況而定，挑選風險等級較高的股票、期貨等類型作為理財工具。\n\n \n\n理財入門觀念2：事先規劃資金比例\n\n投資理財又可以分成「開源」與「節流」2大部分，兩者皆相當重要，應同樣重視，因此投資前，建議先將手上的資金做好分配，依循「631法則」或「541法則」，將身上的金流依據日常開銷、投資理財與風險管理分別進行6：3：1（或5：4：1）的分配，在確保不影響原先生活的情況下，利用閒置資金購入其他金融商品，是較為理想的投資狀況。', '<p>新手該如何投資？掌握理財入門3大重要觀念<br />\n準備踏入投資市場之前，建議您先掌握以下3個重要的理財入門觀念，更能在投資的路上少走點冤枉路。（延伸閱讀：理財規劃入門篇｜掌握正確觀念與分配方式，從適合投資管道開始上手）</p>\n<p>理財入門觀念1：釐清自身投資目的</p>\n<p>進行任何投資之前，建議先釐清自身的投資目的，才能選擇合適標的。舉例來說，有些剛出社會的投資小白，想透過投資工具逐步累積財富，並以「穩定獲利」為主要目標，那麼以「風險性較低」為產品特色的穩健型基金、債券可能較為合適；而若是本身已有一定資產，想透過金融商品追求「獲利最大化」的投資人，則可以視自身財務情況而定，挑選風險等級較高的股票、期貨等類型作為理財工具。</p>\n<p>理財入門觀念2：事先規劃資金比例</p>\n<p>投資理財又可以分成「開源」與「節流」2大部分，兩者皆相當重要，應同樣重視，因此投資前，建議先將手上的資金做好分配，依循「631法則」或「541法則」，將身上的金流依據日常開銷、投資理財與風險管理分別進行6：3：1（或5：4：1）的分配，在確保不影響原先生活的情況下，利用閒置資金購入其他金融商品，是較為理想的投資狀況。</p>\n', '新手該如何投資？掌握理財入門3大重要觀念\n準備踏入投資市場之前，建議您先掌握以下3個重要的理財入門觀', 66, 6, '2023-07-09 21:45:28', '2023-07-09 21:45:28', 1, 0),
(125, 'Linux 核心模組運作原理', '前期準備\n自從 Linux 核心 4.4 版以來，Ubuntu Linux 預設開啟 EFI_SECURE_BOOT_SIG_ENFORCE，這使得核心模組需要適度的簽章才可掛載進入 Linux 核心，為了後續測試的便利，我們需要將 UEFI Secure Boot 的功能關閉，請見 Why do I get “Required key not available” when install 3rd party kernel modules or after a kernel upgrade?\n\n', '<p>前期準備<br />\n自從 Linux 核心 4.4 版以來，Ubuntu Linux 預設開啟 EFI_SECURE_BOOT_SIG_ENFORCE，這使得核心模組需要適度的簽章才可掛載進入 Linux 核心，為了後續測試的便利，我們需要將 UEFI Secure Boot 的功能關閉，請見 Why do I get “Required key not available” when install 3rd party kernel modules or after a kernel upgrade?</p>\n', '前期準備\n自從 Linux 核心 4.4 版以來，Ubuntu Linux 預設開啟 EFI_SEC', 62, 7, '2023-07-09 21:47:27', '2023-07-09 21:47:27', 1, 0),
(126, 'JavaEE是做什麼的？', 'Java EE，全拼Java Platform, Enterprise Edition ，Java EE平臺構建於Java SE平臺之上，Java EE平臺提供一組API和執行環境來開發和執行大規模的，多層的，可擴充套件的，可靠的和安全的網路應用程式。\n\n據官方資料統計，在全球程式語言工程師的數量上，Java語言以900萬的程式設計師數量位居首位。 而且很多軟體的開發都離不開Java，因此其程式設計師的數量非常多。而在以Java為核心的開發領域中，JavaEE程式設計師的需求量10年來一直居於首位！\n\n淘寶、京東等購物網站，大資料的處理技術都給予JavaEE。 “雙十一”瘋狂購物，春節搶票，資料訪問量相當之大，因為JavaEE的存在，一切都變得井然有序。伺服器的開發，智慧家居，網站的後臺維護等，都需JavaEE。\n\n那麼一名合格的符合企業需求的JavaEE開發工程師，需要具備哪些技能呢？通過對上萬家企業的需求調研發現，一名合格的JavaEE工程師需要擁有以下能力：\n\n1、精通設計、需求分析、各種開源工具、JavaEE底層技術等；\n\n2、熟悉工作流程、許可權框架、門戶框架等；\n\n3、基本的J2EE技術（JSP、Servlet、Java語言）、SSH（Struts、Spring、Hibernate）、SSM(Struts、Spring、MyBatis）框架開發能力等；\n\n4、具備一定的資料庫設計能力和資料庫使用經驗；\n\n5、熟悉Web開發技術，比如HTML+CSS+JavaScript+JQuery等常用架構+混合APP開發等。\n\n所以，想要成為一名合格的JavaEE工程師，要掌握的知識體系有很多，而且理論和實踐雙重提升。', '<p>Java EE，全拼Java Platform, Enterprise Edition ，Java EE平臺構建於Java SE平臺之上，Java EE平臺提供一組API和執行環境來開發和執行大規模的，多層的，可擴充套件的，可靠的和安全的網路應用程式。</p>\n<p>據官方資料統計，在全球程式語言工程師的數量上，Java語言以900萬的程式設計師數量位居首位。 而且很多軟體的開發都離不開Java，因此其程式設計師的數量非常多。而在以Java為核心的開發領域中，JavaEE程式設計師的需求量10年來一直居於首位！</p>\n<p>淘寶、京東等購物網站，大資料的處理技術都給予JavaEE。 “雙十一”瘋狂購物，春節搶票，資料訪問量相當之大，因為JavaEE的存在，一切都變得井然有序。伺服器的開發，智慧家居，網站的後臺維護等，都需JavaEE。</p>\n<p>那麼一名合格的符合企業需求的JavaEE開發工程師，需要具備哪些技能呢？通過對上萬家企業的需求調研發現，一名合格的JavaEE工程師需要擁有以下能力：</p>\n<p>1、精通設計、需求分析、各種開源工具、JavaEE底層技術等；</p>\n<p>2、熟悉工作流程、許可權框架、門戶框架等；</p>\n<p>3、基本的J2EE技術（JSP、Servlet、Java語言）、SSH（Struts、Spring、Hibernate）、SSM(Struts、Spring、MyBatis）框架開發能力等；</p>\n<p>4、具備一定的資料庫設計能力和資料庫使用經驗；</p>\n<p>5、熟悉Web開發技術，比如HTML+CSS+JavaScript+JQuery等常用架構+混合APP開發等。</p>\n<p>所以，想要成為一名合格的JavaEE工程師，要掌握的知識體系有很多，而且理論和實踐雙重提升。</p>\n', 'Java EE，全拼Java Platform, Enterprise Edition ，Java ', 60, 10, '2023-07-09 21:55:10', '2023-07-09 21:55:10', 1, 2),
(127, 'test', 'test123', '<p>test123</p>\n', 'test123\n', 58, 7, '2023-07-09 21:55:59', '2023-07-09 21:55:59', 2, 0),
(128, 'test', 'test123', '<p>test123</p>\n', 'test123\n', 62, 7, '2023-07-09 21:56:17', '2023-07-09 21:56:17', 2, 0),
(129, 'test', 'ewqioruiow\nwqklerhwqlkr\neklthlkew\nl;wqjrl;kewqjr\ne;w\'tk;\'werkt\n\'qel\n\'ewlt\'\nwer', '<p>ewqioruiow<br />\nwqklerhwqlkr<br />\neklthlkew<br />\nl;wqjrl;kewqjr<br />\ne;w’tk;\'werkt<br />\n\'qel<br />\n‘ewlt’<br />\nwer</p>\n', 'ewqioruiow\nwqklerhwqlkr\neklthlkew\nl;wqjrl;kewqjr\ne', 58, 7, '2023-07-09 22:00:17', '2023-07-09 22:00:17', 1, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `article_tags`
--

CREATE TABLE `article_tags` (
  `id` int(11) NOT NULL,
  `aid` int(11) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `cateName` varchar(64) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `category`
--

INSERT INTO `category` (`id`, `cateName`, `date`) VALUES
(56, 'Vue', '2023-07-08'),
(58, '閒聊', '2023-07-08'),
(60, 'JavaEE', '2023-07-08'),
(61, 'Git', '2023-07-08'),
(62, 'Linux', '2023-07-08'),
(64, 'MongoDB', '2023-07-08'),
(65, '工作', '2023-07-08'),
(66, '投資', '2023-07-08');

-- --------------------------------------------------------

--
-- 資料表結構 `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `aid` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `publishDate` datetime DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL COMMENT '\r\n',
  `uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `pv`
--

CREATE TABLE `pv` (
  `id` int(11) NOT NULL,
  `countDate` date DEFAULT NULL,
  `pv` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pv`
--

INSERT INTO `pv` (`id`, `countDate`, `pv`, `uid`) VALUES
(1, '2023-07-08', 20, 6),
(2, '2023-07-08', 14, 7),
(4, '2023-07-08', 40, 6),
(5, '2023-07-08', 23, 7),
(6, '2023-07-08', 11, 6),
(7, '2023-07-08', 32, 7),
(26, '2023-07-08', 2, 6),
(27, '2023-07-08', 77, 7);

-- --------------------------------------------------------

--
-- 資料表結構 `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'user'),
(3, 'test1'),
(4, 'test2'),
(5, 'test3');

-- --------------------------------------------------------

--
-- 資料表結構 `roles_user`
--

CREATE TABLE `roles_user` (
  `id` int(11) NOT NULL,
  `rid` int(11) DEFAULT 2,
  `uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `roles_user`
--

INSERT INTO `roles_user` (`id`, `rid`, `uid`) VALUES
(9, 1, 7),
(106, 1, 14),
(108, 1, 16),
(112, 1, 20),
(120, 1, 15),
(124, 1, 13),
(128, 1, 10),
(130, 1, 6);

-- --------------------------------------------------------

--
-- 資料表結構 `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `tagName` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `tags`
--

INSERT INTO `tags` (`id`, `tagName`) VALUES
(35, 'Ajax'),
(36, 'Dubbo'),
(40, 'git'),
(50, 'image'),
(33, 'Linux'),
(45, 'mongodb'),
(42, 'spring'),
(44, 'SpringSecurity'),
(37, 'websocket'),
(34, 'Zookeeper'),
(51, '圖片'),
(41, '學習資料'),
(65, '閒聊');

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(64) DEFAULT NULL,
  `nickname` varchar(64) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT 1,
  `email` varchar(64) DEFAULT NULL,
  `userface` varchar(255) DEFAULT NULL,
  `regTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`id`, `username`, `nickname`, `password`, `enabled`, `email`, `userface`, `regTime`) VALUES
(6, 'yixian', '劉易賢', '202cb962ac59075b964b07152d234b70', 1, 'liuyixian@gmail.com', NULL, '2023-07-08 09:30:22'),
(7, 'sang', '吳振聖', '202cb962ac59075b964b07152d234b70', 1, 'wuzhensheng@gmail.com', NULL, '2023-07-08 10:30:32'),
(10, 'haoyu', '蘇浩宇', '202cb962ac59075b964b07152d234b70', 1, 'haoyu@gmai.com', NULL, '2023-07-08 11:31:11'),
(13, 'duanzhengchun', '黃技嘉', '202cb962ac59075b964b07152d234b70', 1, 'love7002@gmail.com', NULL, '2023-07-08 11:50:42'),
(14, 'zhenglong', '陳政龍', '202cb962ac59075b964b07152d234b70', 1, 'zxc23980@gmail.com', NULL, '2023-07-08 15:30:24'),
(15, 'zhiming', '李志明', '202cb962ac59075b964b07152d234b70', 1, 'yank@gmail.com', NULL, '2023-07-08 16:30:31'),
(16, 'xiaochun', '徐曉春', '202cb962ac59075b964b07152d234b70', 1, 'qqaa03234@gmail.com', NULL, '2023-07-08 19:30:12'),
(20, 'yafeng', '張雅鳳', '202cb962ac59075b964b07152d234b70', 1, 'gmqw2@gmail.com', NULL, '2023-07-08 20:01:20');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cid` (`cid`),
  ADD KEY `uid` (`uid`);

--
-- 資料表索引 `article_tags`
--
ALTER TABLE `article_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tid` (`tid`),
  ADD KEY `article_tags_ibfk_1` (`aid`);

--
-- 資料表索引 `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aid` (`aid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `parentId` (`parentId`);

--
-- 資料表索引 `pv`
--
ALTER TABLE `pv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pv_ibfk_1` (`uid`);

--
-- 資料表索引 `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `roles_user`
--
ALTER TABLE `roles_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rid` (`rid`),
  ADD KEY `roles_user_ibfk_2` (`uid`);

--
-- 資料表索引 `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tagName` (`tagName`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `article_tags`
--
ALTER TABLE `article_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pv`
--
ALTER TABLE `pv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `roles_user`
--
ALTER TABLE `roles_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `article_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `user` (`id`);

--
-- 資料表的限制式 `article_tags`
--
ALTER TABLE `article_tags`
  ADD CONSTRAINT `article_tags_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `article` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_tags_ibfk_2` FOREIGN KEY (`tid`) REFERENCES `tags` (`id`);

--
-- 資料表的限制式 `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`parentId`) REFERENCES `comments` (`id`);

--
-- 資料表的限制式 `pv`
--
ALTER TABLE `pv`
  ADD CONSTRAINT `pv_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制式 `roles_user`
--
ALTER TABLE `roles_user`
  ADD CONSTRAINT `roles_user_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `roles_user_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
