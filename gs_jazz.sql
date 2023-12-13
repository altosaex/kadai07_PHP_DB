-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 12 月 13 日 20:43
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_jazz`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `title` varchar(64) NOT NULL,
  `artist` varchar(64) NOT NULL,
  `URL` text NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `title`, `artist`, `URL`, `content`, `date`) VALUES
(1, 'Take Five', 'Dave Brubeck', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tT9Eh8wNMkw?si=lcqIwGdkHDY3ePBM&amp;start=5\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'ジャズの定番。変拍子がかっちょいい', '2023-12-11 23:02:35'),
(3, '色彩のブルース', 'EGO-WRAPPIN\'', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/VNiKaRzDFMA?si=tj50QBg8eRaAnd4v&amp;start=1\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '神曲中の神曲。イントロだけで酔っ払います。', '2023-12-11 23:05:28'),
(4, 'Say It (Over And Over Again)', 'John Coltrane', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/oRh0hxV1_SU?si=ydwNPd996Dglp6Nb\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '言わずと知れたコルトレーンの名曲。1人大人の街に溶け込みたい時にオススメ', '2023-12-11 23:09:33'),
(5, 'linus and lucy', 'Vince Guaraldi Trio', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/x6zypc_LhnM?si=MA3mucVFuAT0O-Pc\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'クリスマスに聴いて欲しい大好きな一曲', '2023-12-11 23:14:18'),
(7, 'ハナフブキ ～花魁道中罷り通る～', 'PE\'Z', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/4y9C1tQW3HY?si=wS2PH84QQy5RWN_c\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'ライブで絶対盛り上がる曲。よくコピーさせてもらってました。大好きな一曲！！！', '2023-12-11 23:58:25'),
(8, 'Autumn Leaves', 'Bill Evans Trio', ' <iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/r-Z8KuwI7Gc?si=omo6q2Y7YhnmV4zb\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '数々のアーティストにカバーされている名曲。いつ聴いてもどこか懐かしく哀愁漂う旋律が大好き', '2023-12-13 14:43:11'),
(9, 'Autumn Leaves', '椎名林檎', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_kkAjW3-IS0?si=izEIzyDJIyJfYkgi\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'その中でも群を抜いて椎名林檎のカバー版がカッコ良すぎる。', '2023-12-13 14:44:04'),
(10, '名犬ジョディ', 'モダーン今夜', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L4gajOxeNmo?si=B91SDDg29lbVosiC\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'ジャズ、ではないかな。モダーン今夜の中でもこの曲が大好き。モダーン今夜の世界観が大好き。どこか寂しく懐かしい感じ', '2023-12-13 14:46:34');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
