-- 
-- Table structure for table `images`
-- 
 
CREATE TABLE `images` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `desc` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;
 
-- 
-- Dumping data for table `images`
-- 
 
INSERT INTO `images` VALUES (1, 'HTML to PDF', 'How to Convert HTML to PDF in PHP with fpdf', '1.png', '2014-01-23 06:53:13');
INSERT INTO `images` VALUES (2, 'Bootstrap Contact Form', 'How to create Contact Form using Bootstrap', '2.png', '2014-01-23 06:53:13');
INSERT INTO `images` VALUES (3, 'Facebook Style Scroll Bar', 'How to create Facebook style scroll bar with jQuery and CSS.', '3.png', '2014-01-23 06:54:40');
INSERT INTO `images` VALUES (4, 'Instagram OAuth', 'How to login with Instagram OAuth using PHP', '4.png', '2014-01-23 06:54:40');
INSERT INTO `images` VALUES (5, 'PDO database connection in PHP', 'How to use PDO database connection in PHP', '5.png', '2014-01-23 06:56:49');
INSERT INTO `images` VALUES (6, 'Tweet on Twitter', 'How to post tweet on Twitter with PHP', '6.png', '2014-01-23 06:56:49');