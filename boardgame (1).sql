-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 27, 2024 lúc 01:06 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `boardgame`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `IDorders` int(100) NOT NULL,
  `id` int(100) NOT NULL,
  `receiver` varchar(100) NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `ward` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `total_products` varchar(100) NOT NULL,
  `total_price` int(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`IDorders`, `id`, `receiver`, `phonenumber`, `street`, `ward`, `district`, `city`, `email`, `method`, `total_products`, `total_price`, `status`, `order_date`) VALUES
(1, 20, 'dff', 'dfsf', 'sdfsd', 'sdf', 'sdfsd', 'dsfsdf', 'haha123@gmail.com', '1', '', 3000000, 1, '2024-05-12'),
(2, 20, 'dff', 'dfsf', 'sdfsd', 'sdf', 'sdfsd', 'dsfsdf', 'haha123@gmail.com', '1', '', 0, 1, '2024-05-12'),
(3, 20, 'fdsfsdf', 'sdfsdf', 'sdfsd', 'sdfsdf', 'sdffsf', 'sdfsdf', 'haha123@gmail.com', '1', '', 1850000, 1, '2024-05-12'),
(4, 20, 'fd', 'dsfsdf', 'sdfsdf', 'dsdfsdfs', 'sdfs', 'dfsdf', 'haha123@gmail.com', '2', '', 1600000, 0, '2024-05-12'),
(5, 20, 'fwrf', 'ưèwẻ', 'ưẻwr', 'ưẻwẻ', 'ưẻw', 'ưẻwẻ', 'haha123@gmail.com', '1', '', 75000, 0, '2024-05-12'),
(6, 20, 'dfdf', 'dfewf', 'èwẻ', 'ewrưẻ', 'ưẻwe', 'ưẻwẻ', 'haha123@gmail.com', '1', '', 75000, 0, '2024-05-12'),
(7, 20, 'jkọkljklmkl', 'klkl;kl;k;', 'kilpklpklp', 'lklpk', 'kjkọkọ', 'huihuihui', 'haha123@gmail.com', '1', '', 1500000, 0, '2024-05-12'),
(8, 20, 'qưe', '123', '123', '123', '123', '123', 'haha123@gmail.com', '1', '', 1500000, 0, '2024-05-12'),
(9, 20, '123', '123', '123', '123', '123', '123', 'haha123@gmail.com', '1', '', 1750000, 0, '2024-05-12'),
(17, 20, '123', '123', '123', '123', '123', '123', 'haha123@gmail.com', '1', '', 1750000, 0, '2024-05-12'),
(20, 23, 'werwer', '09341234', 'dfsaf', 'asdfsdf', 'sdfsdf', 'asdfsdf', 'hoangainhan1989@gmail.com', '1', '', 1200000, 0, '2024-11-25'),
(21, 26, 'vaminh', '0898261388', 'quang trung', '8', 'gò vấp ', 'tp hcm', 'haha@gmail.com', '1', '', 3330000, 0, '2024-11-25'),
(22, 26, 'vaminh', '0898261388', 'quang trung', '8', 'gò vấp ', 'tp hcm', 'haha@gmail.com', '1', '', 2700000, 0, '2024-11-26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_detail`
--

CREATE TABLE `orders_detail` (
  `idDetail` int(100) NOT NULL,
  `IDorders` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `subtotal` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders_detail`
--

INSERT INTO `orders_detail` (`idDetail`, `IDorders`, `pid`, `quantity`, `subtotal`) VALUES
(1, 3, 10, 1, 1500000),
(2, 3, 13, 1, 350000),
(3, 4, 10, 1, 1500000),
(4, 4, 16, 1, 100000),
(5, 5, 31, 1, 75000),
(6, 6, 31, 1, 75000),
(7, 7, 10, 1, 1500000),
(8, 0, 10, 1, 1500000),
(9, 0, 9, 1, 1750000),
(10, 17, 9, 1, 1750000),
(11, 18, 10, 1, 1500000),
(12, 19, 11, 1, 1200000),
(13, 20, 11, 1, 1200000),
(14, 21, 62, 1, 455000),
(15, 21, 11, 1, 1200000),
(16, 21, 10, 1, 1500000),
(17, 21, 16, 1, 100000),
(18, 21, 31, 1, 75000),
(19, 22, 10, 1, 1500000),
(20, 22, 11, 1, 1200000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `cateid` int(10) NOT NULL,
  `categoryName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`cateid`, `categoryName`) VALUES
(15, 'Chiến lược'),
(20, 'Cờ'),
(21, 'Nhập vai'),
(22, 'Nhóm bạn'),
(23, 'Gia đình'),
(24, 'May mắn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_products`
--

CREATE TABLE `tbl_products` (
  `pid` int(10) NOT NULL,
  `img` varchar(50) NOT NULL,
  `productName` varchar(50) NOT NULL,
  `price` varchar(20) NOT NULL,
  `detail` varchar(500) NOT NULL,
  `quantity` int(10) NOT NULL,
  `cid` int(10) NOT NULL,
  `oid` int(10) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_products`
--

INSERT INTO `tbl_products` (`pid`, `img`, `productName`, `price`, `detail`, `quantity`, `cid`, `oid`, `status`) VALUES
(9, 'alma mater 1tr750.webp', 'Alma Mater', '1750000', 'Alma Mater là một board game chiến thuật, phát hành năm 2020 bởi hãng Eggertspiele. Trong game, bạn làm hiệu trưởng trường đại học thời Phục Hưng, cố gắng xây dựng danh tiếng bằng cách tuyển sinh viên, thuê giáo sư và viết sách. Game nổi bật với lối chơi sâu sắc, chủ đề giáo dục thú vị và tương tác giữa người chơi.', 12, 15, 0, 0),
(10, 'doomtown 1tr500.webp', 'Doom Town', '1500000', ' Doomtown là game thẻ bài chiến thuật, phát hành lần đầu năm 1998 bởi Pinnacle Entertainment Group và tái phát hành năm 2014 bởi AEG. Game lấy bối cảnh miền Tây hoang dã pha yếu tố huyền bí, nơi người chơi xây dựng thị trấn, điều khiển nhân vật và đấu nhau bằng cơ chế giống chơi poker', 14, 15, 0, 0),
(11, 'fertility 1tr200.jpg', 'Fertility', '1200000', ' Fertility là một board game chiến thuật nhẹ, phát hành năm 2018 bởi Catch Up Games. Trong game, bạn đóng vai lãnh chúa Ai Cập, thu thập tài nguyên từ thung lũng sông Nile để xây dựng thành phố và đền thờ. Game nổi bật với lối chơi nhanh gọn, dễ học và mang tính chiến lược cao.', 7, 15, 0, 0),
(12, 'marrakech 450k.webp', 'Marrakech', '450000', 'Marrakech là một board game gia đình vui nhộn, phát hành năm 2007 bởi Gigamic. Trong game, bạn đóng vai người bán thảm ở chợ, cố gắng trải thảm khéo léo để chiếm chỗ và thu tiền từ người chơi khác. Game nổi bật với luật chơi đơn giản, dễ tiếp cận và thiết kế đẹp mắt.', 19, 15, 0, 0),
(13, 'ModernArt 350k.jpg', 'Modern Art', '350000', 'Modern Art là một board game đấu giá, phát hành lần đầu năm 1992, do Reiner Knizia thiết kế và nhiều nhà xuất bản phát hành, nổi bật là CMON. Trong game, bạn đóng vai người quản lý phòng tranh, mua và bán tranh để kiếm lời. Điểm đặc biệt của game là có nhiều kiểu đấu giá thú vị và cần chiến lược thông minh để thắng.', 14, 15, 0, 0),
(14, 'chess 100k.jpg', 'Cờ vua', '100000', 'Cờ vua là một trò chơi chiến lược dành cho 2 người, có nguồn gốc từ Ấn Độ cách đây hơn 1.500 năm. Trò chơi không có nhà sản xuất cụ thể, vì nó phát triển qua thời gian và được chơi rộng rãi trên toàn thế giới. Trong cờ vua, mỗi người điều khiển 16 quân cờ với mục tiêu chiếu hết vua đối phương. Game nổi bật với lối chơi sâu sắc, yêu cầu tư duy chiến thuật và lập kế hoạch.', 12, 20, 0, 0),
(16, 'co tuong 50k.jpg', 'Cờ tướng', '100000', 'Cờ tướng là một trò chơi chiến lược dành cho 2 người, phổ biến ở Trung Quốc và các nước Đông Á. Trò chơi không có nhà sản xuất cụ thể vì nó đã tồn tại từ lâu, được phát triển qua các thế kỷ. Trong cờ tướng, mỗi người điều khiển 16 quân cờ, với mục tiêu chiếu hết vua đối phương. Game yêu cầu tư duy chiến lược và khả năng lập kế hoạch kỹ lưỡng.', 10, 20, 0, 0),
(17, 'co ty phu 350k.webp', 'Cờ tỷ phú', '3500000', 'Cờ tỷ phú (Monopoly) là một trò chơi board game nổi tiếng, phát hành lần đầu năm 1935 bởi Parker Brothers (nay là Hasbro). Trong game, người chơi mua, bán và trao đổi bất động sản để kiếm tiền và phá sản đối thủ. Trò chơi mang tính chiến lược, yêu cầu sự quản lý tài chính và may mắn.', 13, 20, 0, 0),
(18, 'co vay-caro 190k.webp', 'Cờ vây', '190000', 'Cờ vây(Go) là một trò chơi chiến lược cổ điển, có nguồn gốc từ Trung Quốc cách đây hơn 2.500 năm. Trò chơi không có nhà sản xuất cụ thể vì nó đã tồn tại từ rất lâu. Trong cờ vây, hai người chơi thay phiên nhau đặt các quân đá (đen và trắng) lên bàn cờ với mục tiêu chiếm lĩnh lãnh thổ lớn hơn đối thủ. Game yêu cầu tư duy chiến lược sâu sắc và khả năng nhìn xa trông rộng.', 20, 20, 0, 0),
(22, 'bai con thỏ 175k.png', 'Bài con thỏ', '175000', 'Bài con thỏ (hay còn gọi là The Hare and the Tortoise) là một trò chơi thẻ dành cho trẻ em và gia đình, phát hành lần đầu năm 1973 bởi IDEAL. Trong game, người chơi điều khiển con thỏ hoặc con rùa để di chuyển trên đường đua, nhưng thỏ phải cẩn thận vì đôi khi nó bị chậm lại. Trò chơi mang tính may rủi và chiến lược nhẹ nhàng, phù hợp với mọi lứa tuổi.', 20, 23, 0, 0),
(23, 'boardgame Xếp Toán - Cộng Trừ 150k.jpg', 'Xếp toán', '150000', 'Xếp toán (hay còn gọi là Maths Bingo hoặc Maths Puzzle) là một trò chơi giáo dục, giúp người chơi luyện tập kỹ năng toán học thông qua các câu đố và bài tập. Trò chơi này không có một phiên bản cụ thể hay nhà sản xuất nổi bật, vì nhiều phiên bản được phát triển dưới các tên gọi khác nhau. Mục tiêu là giải các phép toán nhanh chóng để hoàn thành bảng số hoặc đạt điểm cao. Game này phổ biến trong việc giúp trẻ em cải thiện khả năng tính toán.', 24, 23, 0, 0),
(24, 'co co tich 350k.webp', 'Cờ cổ tích', '350000', 'Cờ cổ tích (Fairy Tale Chess) là một trò chơi cờ kết hợp với các nhân vật trong truyện cổ tích, được phát hành lần đầu vào 1995 bởi  Chessex. Trong game, các quân cờ có thể là các nhân vật như công chúa, phù thủy, hay các sinh vật huyền thoại, mang đến một cách chơi thú vị và sáng tạo. Trò chơi kết hợp chiến lược cờ vua với yếu tố tưởng tượng, dễ chơi và hấp dẫn cho cả trẻ em và người lớn.', 24, 23, 0, 0),
(25, 'hội phố 230k.jpg', 'Hội phố', '230000', 'Hội phố (hay Street Society) là một board game chiến lược, phát hành lần đầu năm 2013 bởi Tấm Cám Games**. Trong game, người chơi sẽ xây dựng và quản lý các cửa hàng, nhà ở trên các tuyến phố, cố gắng phát triển khu phố của mình và cạnh tranh với các đối thủ. Game yêu cầu tư duy chiến lược và quản lý tài nguyên để giành chiến thắng.', 20, 23, 0, 0),
(28, 'cuoc chien hoa qua 135k.jpg', 'Cuộc chiến hoa quả', '135000', '(Fruit War) là một trò chơi thẻ chiến lược, phát hành vào 2016 bởi Tấm Cám Games. Trong game, người chơi sử dụng các thẻ hoa quả để chiến đấu với nhau, kết hợp các chiến thuật và may mắn để giành chiến thắng. Trò chơi dễ chơi, nhanh gọn và thích hợp cho các buổi chơi giải trí cùng bạn bè và gia đình.', 10, 15, 0, 0),
(30, 'kham rang ca sau 65k.jpg', 'Khám răng cá sấu', '65000', 'Khám răng cá sấu (Crocodile Dentist) là một trò chơi giải trí dành cho trẻ em, phát hành vào 1990 bởi Goliath Games. Trong game, người chơi lần lượt ấn vào các răng của cá sấu, nhưng phải tránh ấn vào răng bị đau. Nếu ấn phải răng đau, cá sấu sẽ đóng miệng lại, và người chơi thua. Trò chơi vui nhộn, đơn giản và giúp trẻ em phát triển kỹ năng phản xạ.', 24, 24, 0, 0),
(31, 'pha bang chim canh cut 75k.jpg', 'Phá băng chim cánh cụt', '75000', 'Phá băng chim cánh cụt (Pengột trò chơi giải trí nhẹ nhàng, phát hành vào 2007 bởi Hasbro. Trong game, người chơi sử dụng các dụng cụ để phá băng, cố gắng không làm rơi chim cánh cụt xuống. Trò chơi dễ chơi, vui nhộn và thích hợp cho cả trẻ em và gia đình.', 27, 24, 0, 0),
(32, 'rùa pacman 70k.jpg', 'Rùa pacman', '70000', 'Rùa Pacman (Pac-Man Turtle) là một trò chơi giải trí, thường được biết đến trong các phiên bản game điện tử hoặc game trên ứng dụng di động. Trò chơi kết hợp giữa hình ảnh chú rùa và lối chơi tương tự như **Pac-Man**, nơi người chơi điều khiển rùa ăn các viên thức ăn trong một mê cung và tránh các kẻ thù. Thường không có một nhà sản xuất chính thức rõ ràng vì đây là một phiên bản tựa game mang tính giải trí.', 21, 24, 0, 0),
(33, 'thung hai tac 65k.jpg', 'Thùng hải tặc', '60000', 'Thùng hải tặc (Pirate Barrel) là một trò chơi giải trí cho trẻ em, phát hành vào 1991 bởi Tomy. Trong game, người chơi lần lượt cắm các thanh gỗ vào thùng hải tặc, cố gắng không để \"hải tặc\" bật ra. Trò chơi đơn giản, vui nhộn và giúp trẻ em phát triển sự khéo léo và kiên nhẫn.', 18, 24, 0, 0),
(34, 'avalon 160k.jpg', 'Avalon', '200000', 'Avalo là một trò chơi xã hội, phát hành vào 2012 bởi Libellud. Trong game, người chơi chia thành hai phe: phe thiện (hiệp sĩ) và phe ác (phản diện), cố gắng hoàn thành nhiệm vụ hoặc phá hoại chúng. Trò chơi đòi hỏi sự chiến lược, giao tiếp và khả năng thuyết phục, thích hợp cho nhóm người chơi lớn.', 19, 21, 0, 0),
(35, 'cluedo 350k.jpg', 'Cluedo', '350000', 'Cluedo(hay còn gọi là Clue ở Mỹ) là một trò chơi bí ẩn, phát hành lần đầu vào 1949 bởi Waddingtons (nay thuộc Hasbro). Trong game, người chơi phải giải quyết vụ án giết người bằng cách suy luận và loại trừ các manh mối, bao gồm hung thủ, vũ khí và địa điểm. Trò chơi đòi hỏi tư duy logic và khả năng phán đoán.', 22, 21, 0, 0),
(36, 'coup 120k.jpg', 'Coup', '120000', 'Coup là một trò chơi chiến lược xã hội, phát hành vào 2012 bởi **Indie Boards & Cards**. Trong game, người chơi sử dụng các thẻ nhân vật để lừa dối, loại bỏ đối thủ và giành quyền kiểm soát. Trò chơi yêu cầu khả năng suy luận, chiến lược và thuyết phục, thích hợp cho nhóm người chơi từ 2-6 người.', 23, 21, 0, 0),
(37, 'the resistance 150k.jpg', 'The resistance', '240000', 'The Resistance là một trò chơi xã hội, phát hành vào 2009 bởi Indie Boards & Cards. Trong game, người chơi chia thành hai phe: phe kháng chiến (Resistance) và phe mật vụ (Spy). Mục tiêu là hoàn thành các nhiệm vụ hoặc phá hoại chúng, tùy theo phe của bạn. Trò chơi đòi hỏi khả năng giao tiếp, lừa dối và phán đoán, phù hợp cho nhóm từ 5-10 người.', 25, 21, 0, 0),
(38, 'rick and morty 120k.jpg', 'Rick and Morty', '120000', 'Rick and Morty là một trò chơi thẻ chiến lược, lấy cảm hứng từ bộ phim hoạt hình nổi tiếng Rick and Morty. Phiên bản game được phát hành vào 2018 bởi Cryptozoic Entertainment. Trong game, người chơi sử dụng các thẻ để điều khiển các nhân vật và sự kiện trong vũ trụ của Rick và Morty, cạnh tranh với nhau để đạt được mục tiêu. Trò chơi mang phong cách hài hước, dễ chơi và phù hợp với những người hâm mộ series.', 29, 21, 0, 0),
(40, 'lầy 90k.webp', 'Lầy', '90000', 'Lầy là một trò chơi thẻ hài hước, phát hành vào 2019 bởi GameBox. Trong game, người chơi sẽ rút thẻ và thực hiện các hành động hoặc trả lời câu hỏi một cách hài hước, đôi khi \"lầy lội\". Mục tiêu là khiến người khác cười hoặc thực hiện nhiệm vụ một cách vui nhộn. Trò chơi dễ chơi, phù hợp cho nhóm bạn bè hoặc gia đình.', 16, 22, 0, 0),
(41, 'lên 90k.webp', 'Lên', '90000', 'Lên là một trò chơi thẻ chiến lược, phát hành vào 2020 bởi Tấm Cám Games. Trong game, người chơi sẽ thực hiện các hành động để leo lên các cấp độ và đạt được điểm cao nhất. Trò chơi đòi hỏi sự tính toán chiến lược và may mắn, phù hợp cho nhóm bạn bè và gia đình.', 12, 22, 0, 0),
(42, 'mõm 89k.jpg', 'Mõm ', '80000', 'Mõm là một trò chơi thẻ vui nhộn, phát hành vào 2019 bởi Tấm Cám Games. Trong game, người chơi sẽ rút thẻ và thực hiện các nhiệm vụ hoặc phản ứng một cách hài hước, nhằm gây cười hoặc tạo ra những tình huống \"lầy lội\". Trò chơi dễ chơi, thích hợp cho nhóm bạn bè và gia đình.', 12, 22, 0, 0),
(43, 'jamaica 420k.webp', 'Jamaica', '420000', 'Jamaica là một trò chơi board game chiến lược, phát hành lần đầu vào 2007 bởi Argentum Verlag. Trong game, người chơi điều khiển các tàu cướp biển đua thuyền quanh đảo Jamaica, thu thập tài nguyên và chiến đấu để giành chiến thắng. Trò chơi kết hợp giữa đua thuyền và quản lý tài nguyên, phù hợp cho nhóm bạn bè hoặc gia đình.', 19, 15, 0, 0),
(44, 'small world 550k.webp', 'Small world', '550000', 'Small World là một trò chơi chiến lược, phát hành lần đầu vào 2009 bởi Days of Wonder. Trong game, người chơi kiểm soát các chủng tộc khác nhau, chiếm đất và chiến đấu để mở rộng lãnh thổ. Trò chơi kết hợp giữa chiến thuật, chiến đấu và quản lý tài nguyên, phù hợp cho nhóm bạn bè hoặc gia đình.', 29, 15, 0, 0),
(46, 'co tam quoc 500k.jpeg', 'Cờ tam quốc', '500000', 'Cờ Tam Quốc là một trò chơi chiến lược thẻ, phát hành lần đầu vào 2009 bởi VNG. Game lấy cảm hứng từ câu chuyện **Tam Quốc** nổi tiếng của Trung Quốc, nơi người chơi sẽ điều khiển các tướng lĩnh và quân đội để chiến đấu và chiếm lĩnh các vùng đất. Trò chơi đòi hỏi sự tính toán chiến lược và khả năng quan sát đối thủ.', 25, 20, 0, 0),
(47, 'co dan gian 75k.jpg', 'Cờ dân gian', '90000', 'Cờ Dân Gian là một trò chơi chiến lược truyền thống của Việt Nam, với nhiều biến thể khác nhau như Cờ người, Cờ tướng hoặc Cờ carom. Trò chơi không có một phiên bản chính thức hay nhà sản xuất duy nhất, vì nó phát triển qua nhiều thế hệ và có mặt trong nhiều cộng đồng. Cờ dân gian thường được chơi trên bàn cờ đơn giản, yêu cầu người chơi tư duy chiến lược và khả năng phán đoán đối thủ.', 18, 20, 0, 0),
(48, 'co ca ngua 50k.webp', 'Cờ cá ngựa', '80000', 'Cờ cá ngựa là một trò chơi board game dân gian, phổ biến ở Việt Nam, có nguồn gốc từ các trò chơi truyền thống phương Đông. Game không có nhà sản xuất cụ thể vì nó đã được chơi từ lâu đời. Trong game, mỗi người chơi điều khiển 4 quân cá ngựa di chuyển trên bàn cờ theo các quy tắc và sử dụng may mắn từ việc đổ xúc xắc. Mục tiêu là đưa các quân cá ngựa của mình về đích trước đối thủ.', 19, 20, 0, 0),
(49, 'coup reformation 99k.jpg', 'Coup reformation', '120000', 'Coup: Reformation là một phiên bản mở rộng của trò chơi Coup, phát hành vào 2016 bởi Indie Boards & Cards. Trong game, người chơi tiếp tục sử dụng các thẻ nhân vật để lừa dối và loại bỏ đối thủ, nhưng với các quy tắc và thẻ nhân vật mới. Phiên bản này bổ sung yếu tố mới là phe **Cải cáchvà Đế chế, tạo thêm chiến lược và sự cạnh tranh. Trò chơi vẫn giữ tính lừa dối và chiến thuật như phiên bản gốc, phù hợp cho nhóm từ 4-10 người.', 21, 21, 0, 0),
(50, 'quest 190k.jpg', 'Quest', '175000', 'Quest là một trò chơi thẻ nhập vai, phát hành vào 2019 bởi The Game Crafter. Trong game, người chơi sẽ thực hiện các nhiệm vụ (quests), thu thập tài nguyên và đối mặt với thử thách để hoàn thành mục tiêu. Trò chơi mang tính chiến lược và phiêu lưu, nơi người chơi có thể phát triển nhân vật và mở rộng câu chuyện.', 21, 21, 0, 0),
(51, 'khurungkimcuong.jpg', 'Khu rừng kim cương', '285000', 'Khu rừng kim cương(Diamond Club) là một trò chơi board game chiến lược, phát hành vào 2019 bởi Tấm Cám Games. Trong game, người chơi sẽ thu thập kim cương trong khu rừng, đồng thời phải đối phó với các thử thách và cạm bẫy. Trò chơi yêu cầu tư duy chiến lược và khả năng quản lý tài nguyên, thích hợp cho nhóm bạn bè hoặc gia đình.', 15, 21, 0, 0),
(52, 'Starwar.png', 'Star war', '550000', 'Star Wars là một loạt game dựa trên thương hiệu nổi tiếng Star Wars, với nhiều phiên bản và thể loại khác nhau, từ chiến thuật, hành động đến nhập vai. Một trong những game nổi bật là Star Wars: Knights of the Old Republic, phát hành vào 2003 bởi BioWare và LucasArts. Trong game, người chơi nhập vai vào các nhân vật trong vũ trụ Star Wars, tham gia các cuộc phiêu lưu và chiến đấu giữa phe Ánh sáng và Bóng tối.', 10, 21, 0, 0),
(53, 'bomlac.png', 'Bom lắc', '125000', 'Bom Lắc là một trò chơi giải trí, phát hành lần đầu vào 2016 bởi GameBox. Trong game, người chơi sẽ thực hiện các nhiệm vụ hoặc thử thách và phải tránh bị \"bom lắc\" phát nổ khi đến lượt. Trò chơi đơn giản, vui nhộn và thích hợp cho những buổi chơi giải trí cùng bạn bè hoặc gia đình.', 12, 22, 0, 0),
(54, 'MooncakeMaster.png', 'Mooncake master', '260000', 'Mooncake Master là một trò chơi board game chiến lược, phát hành vào 2020 bởi GameBox. Trong game, người chơi vào vai người làm bánh trung thu, cố gắng thu thập nguyên liệu và hoàn thành các chiếc bánh trung thu đẹp mắt để giành chiến thắng. Trò chơi đòi hỏi sự tính toán và chiến lược, thích hợp cho nhóm bạn bè hoặc gia đình.', 11, 22, 0, 0),
(55, 'vuahaitac.png', 'Vua hải tặc', '340000', 'Vua Hải Tặc (One Piece: Pirate King) là một trò chơi board game chiến lược, phát hành vào **2020** bởi **GameBox**. Trong game, người chơi nhập vai các nhân vật cướp biển nổi tiếng trong bộ truyện One Piece, chiến đấu và thu thập tài nguyên để xây dựng đội tàu, tìm kiếm kho báu và tranh giành quyền lực. Trò chơi yêu cầu chiến lược và khả năng quản lý tài nguyên, phù hợp cho nhóm bạn bè hoặc gia đình.', 11, 22, 0, 0),
(56, 'doraemon.png', 'Doraemon', '540000', 'Doraemon là một loạt trò chơi video và board game dựa trên bộ manga và anime nổi tiếng Doraemon. Một trong những phiên bản nổi bật là Doraemon: Story of Seasons, phát hành vào 2019 bởi Bandai Namco Entertainment. Trong game, người chơi sẽ giúp Doraemon và các nhân vật khác tham gia vào các hoạt động nông trại như trồng trọt, chăm sóc động vật và khám phá. Trò chơi mang tính giải trí, dễ chơi và phù hợp cho mọi lứa tuổi.', 20, 22, 0, 0),
(57, 'wolfoo.png', 'Worfoo', '650000', 'Worfoo là một trò chơi chiến lược, phát hành vào 2019 bởi GameBox. Trong game, người chơi sẽ xây dựng và phát triển các con vật kỳ lạ gọi là Worfoo bằng cách thu thập tài nguyên và chiến đấu để giành chiến thắng. Trò chơi yêu cầu tư duy chiến lược và khả năng quản lý, phù hợp cho nhóm bạn bè hoặc gia đình.', 21, 22, 0, 0),
(58, 'living forest 365k.jpg', 'Living forest', '950000', 'Living Forest là một trò chơi board game chiến lược, phát hành vào 2021 bởi Luma Arcade. Trong game, người chơi vào vai các thủ lĩnh rừng, chiến đấu với thiên nhiên để bảo vệ và phát triển rừng cây của mình. Trò chơi kết hợp giữa thu thập tài nguyên, phát triển chiến lược và đối đầu với các thử thách từ môi trường, phù hợp cho nhóm từ 2-4 người chơi.', 19, 23, 0, 0),
(59, 'codaquy.png', 'Cờ đá quý', '850000', 'Cờ Đá Quý là một trò chơi board game chiến lược, phát hành vào 2019 bởi GameBox. Trong game, người chơi sẽ thu thập và sắp xếp các viên đá quý trên bàn cờ để tạo ra các kết hợp có giá trị và giành chiến thắng. Trò chơi yêu cầu sự tính toán, chiến lược và khả năng quan sát đối thủ, thích hợp cho nhóm bạn bè hoặc gia đình.', 28, 23, 0, 0),
(60, 'meow.png', 'Meow', '440000', 'Meow là một trò chơi board game vui nhộn, phát hành vào 2020 bởi GameBox. Trong game, người chơi sẽ điều khiển những chú mèo và thực hiện các hành động hoặc nhiệm vụ để thu thập tài nguyên và điểm. Trò chơi có lối chơi đơn giản, hài hước và thích hợp cho nhóm bạn bè hoặc gia đình.', 27, 23, 0, 0),
(61, 'red7.png', 'Red7', '450000', 'Red7 là một trò chơi thẻ chiến lược, phát hành vào 2014 bởi Asmodee. Trong game, người chơi phải sắp xếp các thẻ theo các quy tắc thay đổi liên tục để giành chiến thắng. Mục tiêu là duy trì lợi thế trong từng vòng chơi, yêu cầu tư duy nhanh nhạy và khả năng thích ứng với thay đổi. Trò chơi phù hợp cho nhóm bạn bè hoặc gia đình.', 22, 23, 0, 0),
(62, 'touchit.png', 'Touch it', '455000', 'Touch It là một trò chơi thẻ vui nhộn, phát hành vào 2020 bởi GameBox. Trong game, người chơi sẽ lần lượt rút thẻ và thực hiện các nhiệm vụ hoặc hành động bất ngờ theo yêu cầu của thẻ. Trò chơi có lối chơi đơn giản, vui vẻ và thích hợp cho nhóm bạn bè hoặc gia đình, đặc biệt là trong các buổi tụ tập giải trí.', 21, 23, 0, 0),
(63, 'cho giu xuong 150k.jpg', 'Chó giữ xương', '120000', 'Chó giữ xương (Guard the Bone) là một trò chơi thẻ vui nhộn, phát hành vào 2019 bởi GameBox. Trong game, người chơi sẽ cố gắng giữ cho chú chó của mình không bị mất xương, đồng thời ngăn cản đối thủ lấy mất xương của mình. Trò chơi đơn giản, vui nhộn và thích hợp cho nhóm bạn bè hoặc gia đình.', 24, 24, 0, 0),
(64, 'pop up 90k.jpg', 'Pop up', '250000', 'Pop Up là một trò chơi xếp hình giải trí, phát hành vào 2017 bởi GameBox. Trong game, người chơi sẽ xếp các mảnh ghép theo đúng cách để tạo ra một mô hình 3D, và khi hoàn thành, mô hình sẽ \"nhảy\" lên. Trò chơi đơn giản, vui nhộn và giúp phát triển khả năng tư duy không gian.', 24, 24, 0, 0),
(65, 'uno.png', 'Uno', '250000', 'Uno là một trò chơi thẻ rất phổ biến, phát hành lần đầu vào 1971 bởi Mattel. Trong game, người chơi sẽ lần lượt đánh thẻ theo màu sắc hoặc số, với mục tiêu là trở thành người đầu tiên hết thẻ. Game đơn giản, nhanh gọn và dễ chơi, thích hợp cho mọi lứa tuổi.', 24, 24, 0, 0),
(66, 'Bomlac2.png', 'Bom lắc 2', '230000', 'Bom Lắc 2 là một trò chơi giải trí nhẹ nhàng, phát hành vào 2016 bởi **GameBox**. Trong game, người chơi sẽ thực hiện các nhiệm vụ, giải đố và tránh bom trong khi di chuyển để hoàn thành màn chơi. Trò chơi có lối chơi nhanh, đơn giản và vui nhộn, thích hợp cho những phút giây giải trí.', 17, 24, 0, 0),
(69, 'domino 75k.jpg', 'Domino', '240000', 'Domino là một trò chơi xếp thẻ phổ biến, có nguồn gốc từ Trung Quốc và phát triển rộng rãi vào thế kỷ 18. Trò chơi không có nhà sản xuất cụ thể vì nó đã tồn tại lâu đời. Trong game, người chơi lần lượt đặt các quân domino lên bàn sao cho các số trên các đầu quân nối với nhau. Đây là trò chơi đơn giản nhưng yêu cầu chiến thuật và sự chú ý.', 20, 20, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(10) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `street` varchar(100) NOT NULL,
  `ward` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `phonenumber` int(20) NOT NULL,
  `role` int(10) NOT NULL DEFAULT 0,
  `action` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `password`, `email`, `street`, `ward`, `district`, `city`, `phonenumber`, `role`, `action`) VALUES
(20, 'vanminh', 'vanminh815', 'haha123@gmail.com', '', '', '', '', 899517129, 0, 0),
(23, 'minh', '$2y$10$Zg4c1ucLVmJ8lG24PdZEae5//mM4RgwIqqa7Yvvs3Zg97DZGBnDGi', 'hoangainhan1989@gmail.com', 'asdfsdf', 'asdfsdf', 'asdfsdf', 'asdfdsf', 898261388, 1, 0),
(25, 'hnathuw', '$2y$10$KUFdohFVmlutnWg2hL5aPO2JjD8VjZHGcAy1XPQBGvWqjfOpAqv/m', 'haha@gmail.com', 'sadfsdf', 'asdfdsfdsf', 'asdfsdadsf', 'asdfsdadsf', 898261388, 1, 1),
(26, 'minh815', '$2y$10$gfUkAPoGx1zX6HDdt5plX.PmjpypPOnxQ.0sYKyDWbI28Jj82/VBO', 'haha@gmail.com', 'sadfsdf', '8', 'gò vấp', 'tp hcm', 898261388, 0, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`IDorders`),
  ADD KEY `fk_oders_users` (`id`);

--
-- Chỉ mục cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`idDetail`),
  ADD KEY `fk_products_details` (`pid`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`cateid`);

--
-- Chỉ mục cho bảng `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `fk_products_category` (`cid`);

--
-- Chỉ mục cho bảng `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `IDorders` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `idDetail` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `cateid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_oders_users` FOREIGN KEY (`id`) REFERENCES `tbl_users` (`id`);

--
-- Các ràng buộc cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD CONSTRAINT `fk_products_details` FOREIGN KEY (`pid`) REFERENCES `tbl_products` (`pid`);

--
-- Các ràng buộc cho bảng `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD CONSTRAINT `fk_products_category` FOREIGN KEY (`cid`) REFERENCES `tbl_category` (`cateid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
