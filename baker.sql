-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 28, 2014 at 05:53 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `baker`
--
CREATE DATABASE IF NOT EXISTS `baker` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `baker`;

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 Class; 2 Article; 3 Products',
  `title` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `class_category_id` int(10) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `type`, `title`, `slug`, `description`, `content`, `image`, `is_active`, `is_featured`, `class_category_id`, `date_created`, `date_updated`) VALUES
(44, 3, 'Chocolate Truffle', 'chocolate-truffle', '', 'Description<br>', 'product-product-1.jpg', 1, 0, NULL, '2014-04-22 01:00:54', '2014-04-26 11:06:10'),
(45, 1, 'Dough-Re-Mi', 'dough-re-mi', '', '26 April 2014', 'class-dough-re-mi.jpg', 0, 0, 3, '0000-00-00 00:00:00', '2014-04-26 01:08:51'),
(46, 2, 'Ilustrado Restaurant’s ‘Breaking Bread with our Heroes’ at The Maya Kitchen', 'ilustrado-restaurants-breaking-bread-with-our-heroes-at-the-maya-kitchen', '', '<p><strong>Ilustrado</strong>, the home of heritage Filipino–Spanish \r\ncuisine shares well loved dishes from our heroes’ hometowns at The Maya \r\nKitchen, 9am–1pm on October 26, Saturday with Boni Pimentel, Ilustrado \r\npresident and his chefs taking center stage.</p>\r\n<p>Recipes include Umbuyan, tinapa flakes sauteed in olive oil and \r\nwrapped in pechay leaves has its origins in Manila where Andres \r\nBonifacio was born.</p>\r\n<p><strong>Bagnet with KBL</strong> Sauce is an Ilocano version of \r\nlechon kawali with kamatis, bagoong and lasuna as sauce. Juan Luna and \r\nAntonio Luna are the proud sons of Ilocos Norte.</p>\r\n<p><strong>Manok ng mga Bayani</strong>, chicken simmered in bold \r\ntextures of dill, kamias, ground peanuts and toasted rice is inspired by\r\n no less than President Manuel Luis Quezon who hailed from Baler, \r\nAurora.</p>\r\n<p>National hero Jose Rizal from Binan, Laguna inspired <strong>Jaleang Bayabas</strong>, very ripe guavas peeled and mashed in milk and sugar.</p>\r\n<p>Rounding off the recipe line–up is <strong>Paella Ilustrado</strong>,\r\n Spanish rice dish with pork, chicken, seafood, chorizo bilbao, peppers \r\nand peas which is a consistent bestseller in the restaurant menu.</p>\r\n<p>Ilustrado, located at 744 General Luna Street, Intramuros, Manila \r\nopened its doors in 1989. Through the years it has expanded all over the\r\n metro and has also made a name in catering for clients such as \r\nMalacanang Palace and other government agencies, foreign embassies, \r\nmultinational corporations, local businesses and prominent \r\npersonalities. It is also a favorite wedding reception venue due in part\r\n to its proximity to some of Manila’s historic churches.</p>', 'article-ilustrado-restaurants-breaking-bread-with-our-heroes-at-the-maya-kitchen.jpg', 0, 0, NULL, '2014-04-26 10:52:32', '2014-04-26 12:48:19'),
(49, 2, 'Farm to Table — Organic Gourmet Cuisines', 'farm-to-table-organic-gourmet-cuisines', '', '<p>COn September 28, Saturday, 9am–1pm, Chef Robby Goco, the man behind \r\nthe Cyma Greek Taverna restaurant chain will again launch a new dining \r\nconcept as he visits The Maya Kitchen for a cooking demonstration.</p>\r\n<p>Chef Robby will share dishes inspired by Green Pastures, his latest \r\nrestaurant that features a unique farm to table cuisine featuring dishes\r\n that are created from all organic, local, original, with no \r\nantibiotics, vine ripened, unprocessed whole ingredients.</p>\r\n<p>The philosophy behind Green Pastures is to have the taste of the food\r\n as the main focus. It is to offer food the way it is supposed to be.</p>\r\n<p>The food is not your usual bland, lackluster organic kitchen \r\nofferings but rather food of exceptional taste presented in the most \r\ncreative ways. It is like gourmet organic with the restaurant offering \r\nduck, roast beef, chicken cooked slow for as long as six hours. The chef\r\n uses lardon and has rillette on his menu. He pulls his own cheese and \r\nwhat he cannot produce on his own, he sources from reliable suppliers.</p>\r\n<p>Chef Robby is a graduate of the California Culinary Academy. He owns \r\nand operates a total of eight Cyma Greek Taverna restaurants in \r\nGreenbelt 2, Shangri-la Plaza Mall, Trinoma, Eastwood Mall, Robinsons \r\nPlace Ermita, Robinsons Magnolia, Ayala Mall Cebu and D-Mall Boracay. \r\nHis latest venture, Green Pastures is on Level 4, East Wing, Shangri–la \r\nPlaza Mall.</p>', 'article-farm-to-table-organic-gourmet-cuisines.jpg', 1, 0, NULL, '2014-04-26 11:03:31', '2014-04-26 12:47:06'),
(50, 2, 'Chef Fern Aracama Recreates Childhood Media Noche', 'chef-fern-aracama-recreates-childhood-media-noche', '', '<p>Well known Chef Fernando “Fern” Aracama recalls fond memories of \r\nChristmas past in his cooking class at The Maya Kitchen on November 23, \r\nSaturday from 9am–1pm.</p>\r\n<p>A very young boy walking home from midnight mass with his family is \r\nsomething Chef Fern remembers to this day. He took inspiration from the \r\ntraditional Media Noche meal that awaited them but this time he shares \r\nrecipes of dishes that are not the usual but delightful nonetheless.</p>\r\n<p>To warm you up is <strong>Patatas Riojana</strong>, a very simple yet hearty and delicious potato and chorizo soup Chef Fern revisited on his recent trip to Spain.</p>\r\n<p>To fill you up is <strong>Grilled Ensaimada</strong> Media Noche style. Hot and crusty butter grilled ensaimada stuffed with Chinese ham and queso de bola.</p>\r\n<p><strong>Insalata Uvato</strong> goes with the Grilled Ensaimada. This\r\n is his signature salad with honey balsamico vinaigrette, toasted pine \r\nnuts, green and red grapes and kesong puti. Malunggay and Mozzarella dip\r\n is nutritious greens in a creamy, cheesy brûleé best served with crispy\r\n crostini. This is a signature appetizer in Aracama Filipino Cuisine, \r\none of Chef Fern’s restaurants.</p>\r\n<p>And because it is Christmas there has to be <strong>Bunuelos and Warm Chocolate Dip</strong>.\r\n These are the recipes of Chef Fern’s dear Abuelita of deep fried choux \r\npastries served with a thick and smooth milk chocolate dip.</p>\r\n<p>Chef Fern hails from Bacolod and is a graduate of the University of \r\nthe Philippines with a degree in Hotel and Restaurant Administration. He\r\n took further studies at The New England Culinary Institute in \r\nMontpelier, Vermont USA and was a 2003 Cochran Fellowship Program \r\nAwardee at the Hilton College, University Of Houston, Texas, USA.</p>\r\n<p>Chef Fern has a long list of bars and restaurants to his name like \r\nAracama Filipino Cuisine, Opus, Republiq &amp; Café Republiq, MYTHAI \r\nKitchen, Lucky Niku Café, The ChopHouse, The Tides Hotel Boracay as well\r\n as previous spots Restaurant UVA, Encore/Embassy &amp; Member’s Only \r\nand CANTEEN simple+good food. He is also active in World Association of \r\nChef Societies (WACS), Les Toques Blances Philippines, Council of Chefs,\r\n United States of America’s Department of Agriculture and is a Chef \r\nConsultant with Philippine Airlines.</p>', 'article-chef-fern-aracama-recreates-childhood-media-noche.jpg', 1, 1, NULL, '2014-04-26 11:05:17', '2014-04-26 12:47:12'),
(51, 1, 'Basic Culinary', 'basic-culinary', '', 'May 13 to 16<br>', 'class-basic-culinary.jpg', 1, 0, 2, '2014-04-26 12:30:33', '2014-04-26 12:31:15'),
(52, 1, 'Mother’s Day Baking Class', 'mothers-day-baking-class', '', 'May 10<br>', 'class-mothers-day-baking-class.jpg', 1, 0, 2, '2014-04-26 12:31:08', '2014-04-26 12:31:08'),
(53, 4, 'Measuring Ingredients', 'measuring-ingredients', 'One of the keys to successful baking is the correct measurement of ingredients. One should not only follow the amounts stated in a recipe but also measure them in the right way. Dry and liquid ingredients are measured differently.', 'Dry ingredients like flour and sugar are measured in nested measuring \r\ncups which come in a set of 4 (1 cup, 1/2 cup, 1/3 cup and 1/4 cup). \r\nSugar and all-purpose flour are measured by dipping the cups into the \r\ningredient until filled then leveling it off with a spatula. For cake \r\nflour and confectioners’ sugar, ingredients are spooned onto the cup \r\nthen leveled off.<br><br>Liquid ingredients are poured into spouted glass measuring cups. Placed \r\non a flat surface. Measurement is read at eye level.<br><br>Small quantities of dry and liquid ingredients are measured using spoons\r\n measuring 1 tablespoon, 1 teaspoon, 1/2 teaspoon or 1/4 teaspoon. Dry \r\ningredients are leveled off with a spatula.<br><br>Shortening is measured by pressing down firmly into the measuring cup to\r\n make sure there are no air spaces. Brown sugar is also packed firmly to\r\n ensure proper measurement. When the cup is inverted the measured sugar \r\nshould retain the shape of the cup.<br><br>Butter need not be measured in cups. One bar of butter is already 1 cup \r\nof if you need ½ cup just divide the bar into 2 for 1/3 into 3, and so \r\non.<br><br><em>Source: Complete Guide to Baking</em>', 'blog-measuring-ingredients.jpg', 1, 0, NULL, '2014-04-28 05:04:13', '2014-04-28 05:04:27'),
(54, 4, 'Introduction to Baking', 'introduction-to-baking', 'Baking refers to cooking by dry heat especially in an oven where the temperature is uniform as hot air circulates to cook a cake, pie, cookie or bread.', '<strong>Basic Ingredients</strong><br>Flour is the basic ingredient in cakes, pastries, breads and scores of \r\nother baked products. It provides the structure or framework of the \r\nfood. Different types of flour are used for baking although the most \r\ncommonly used is the all-purpose flour since it can be used for all \r\nkinds of baked goods. For cakes, it is best to use cake flour because of\r\n its lightness and low protein content while bread flour is the most \r\nsuitable for breads due to its high protein content. Other flours used \r\nin baking include whole wheat flour, pastry flour, etc.<br><br>Sugar functions not only as sweetener. It is also responsible for making\r\n the cake tender because it hinders in the hydration of flour which is \r\nnecessary in the development of gluten. Sugar also provides the golden \r\nbrown color of cakes or breads. Most used is the refined white sugar or \r\ngranulated sugar although some recipes call for brown sugar and even \r\nconfectioners’ sugar.<br><br>Fat is also needed for baking because it makes the baked products \r\ntender, moist and rich. Butter or margarine is usually preferred because\r\n of their flavor and for additional color. Shortening is also often used\r\n while others specify oil. Butter can either be creamed or melted \r\ndepending on its use.<br><br>To make cakes rise, leavening agents are added. These produce carbon \r\ndioxide largely responsible for the rising of the cake or its volume. \r\nThey also make the cake light and porous. Baking powder, baking soda and\r\n yeast are examples of leaveners used in baking. The first 2 are used \r\nfor cakes and pastries while yeast is used for breads.<br><br>To hold the batter of dough together and to blend all the ingredients, \r\nliquid is added. Liquid can be in the form of water, milk or juices. \r\nMilk refers to whole cow’s milk. To substitute with canned evaporated \r\nmilk; dilute it in a 1:1 proportion. Powdered full-cream milk can also \r\nbe used as substitute, simply dissolve it in water before using.<br><br>For additional structure, richness and nutrition eggs are added- either \r\nwhole, just egg yolks or just egg whites. The important thing is to use \r\neggs of the same size.<br><br>Lastly, to make cakes flavorful and more interesting, add nuts, dried \r\nfruits, flavoring, spices and even fresh fruits.<br><br>High Altitude Baking:<br>At 3,000 feet above sea level there is less air \r\npressure and water boils at a lower temperature. Because of this rising \r\nof cakes is affected. The volume of gas produced by leaveners is more so\r\n there is a need to lessen the baking powder by 1/8 teaspoon for every \r\nteaspoon used. Sugar is also reduced by 1 tablespoon per cup used and \r\nthe liquid increased by 1-2 tablespoons per cup used. As a rule, the \r\nbaking temperature is increased by 25°F.<br><br><em>Source: The Complete Guide to Baking</em>', 'blog-introduction-to-baking.jpg', 1, 0, NULL, '2014-04-28 05:06:10', '2014-04-28 05:06:10'),
(55, 4, '7 Ways to Show Mum She''s the Best', '7-ways-to-show-mum-shes-the-best', 'Mums: the only people who can fix grazed knees, give the soundest advice and multitask like a ninja. Let your mum know how special she is this Mother''s Day on Sunday 30 March 2014 with a personalised gift, family celebration or special treat. We''ve got spoiling mum rotten, covered.', '<h3>Give her a proper lie-in</h3>\r\n\r\nPresents don''t get much better than this, especially when you''re usually\r\n the first one up! Keep the noise down when the sun comes up on Mother''s\r\n Day and let her snooze through a long, relaxing lie-in while you tick a\r\n chore off her usual to-do list.\r\n\r\n\r\n<h3>Mmmm, breakfast in bed</h3>\r\n\r\nPamper her with a delicious homemade breakfast spread. Make it extra \r\nspecial with these heart-shaped breakfast ideas or scatter chocolates \r\nand flowers on her breakfast tray. Just don''t knock on the door too \r\nearly!\r\n\r\n\r\n<h3>Turn the bathroom into a spa</h3>\r\n\r\nShe''ll love you just for cleaning the bathroom, but let her really relax\r\n with some home spa touches. Scented candles and a basket of rolled \r\ntowels will transform your bathroom into an oasis of calm where she can \r\nunwind and recharge.\r\n\r\n\r\n<h3>Say it with cake</h3>\r\n\r\nNothing says â€˜I love youâ€™ like a homemade cake. If you''re feeling \r\nadventurous, try making a chocolate cake, or decorate a shop-bought cake\r\n with a heartfelt, iced message.\r\n\r\n\r\n<h3>Chocolates with a personal touch</h3>\r\n\r\nSpoil her with her favourite chocolates, wrapped up in a pretty gift box\r\n she can keep and use. Ditch the original packaging and layer the \r\nchocolates between colourful tissue paper in something like an Antique \r\nGrey Jewellery Box.\r\n\r\n\r\n<h3>Baked bites</h3>\r\n\r\nSpell out a special Mother''s Day message with these homemade iced \r\nbiscuits. Great for making with kids, they''ll be ready in less than an \r\nhour. For something with a hint of Parisian flair, try a batch of \r\npastel-coloured macaroons. Pop in a pretty gift box tied with ribbon to \r\nfinish.\r\n\r\n\r\n<h3>Serve up vintage afternoon tea</h3>\r\n\r\nLet mum relax while everyone else clubs together to lay on a \r\nvintage-inspired afternoon tea. Dress the table with mismatched \r\ncrockery, pretty posies and a floral tablecloth, then serve up tempting \r\ncakes, sandwiches and jam-laden scones. This sumptuous spread will get \r\nmumâ€™s vote, especially if everyone else does the washing-up!\r\n\r\n\r\n\r\n- Condensed from Sainsbury''s Inspiration', 'blog-7-ways-to-show-mum-shes-the-best.jpg', 1, 0, NULL, '2014-04-28 05:06:56', '2014-04-28 05:06:56'),
(56, 4, 'Kyle Imao: Junior Masterchef', 'kyle-imao-junior-masterchef', 'Kyle Adrian Palacios-Imao is a 14-year old kid from Marikina City. He is now happily tasting life, two years after being crowned Grand Champion of ABS-CBN''s 2012 Junior MasterChef Pinoy Edition, a cooking show which features young cooks aged 8 to 12.', 'Kyle comes from a family of distinguished visual artists. His \r\ngrandfather and uncles are well-known in the fields of painting and \r\nsculpture. He manifests the artistic gene through his cooking and \r\nspecially, his plating and food presentation. He loves playing with his \r\nfood. And while for some, that may be a bad thing, for Kyle, that is \r\nwhen he is inspired to make different dishes. The kitchen is his \r\ncreative playground.<br><br>Kyle was the Philippines'' First Ever Junior MasterChef.<br><br>From his Pancit Luglog with Malay Vietnamese Twist cooked at the very \r\nfirst episode of Junior MasterChef Pinoy Edition to his Asian Fusion \r\nShrimps and Scallops cooked at the finale, Kyle has consistently shone \r\nin the culinary challenges given to him.<br><br>After months of intense culinary challenges and the live final cook-off,\r\n Kyle emerged as the grand winner with his amazing dishes Oyster Ravioli\r\n and Asian Fusion Shrimp and Scallops. The chef-judges including JP \r\nAnglo, Fern Aracama, Rolando Laudico, host Judy Anne Santos as well as \r\nguest judge Glenda Barreto and a hundred other guest-judges gave Kyle an\r\n overall 91.8 points.\r\n<br><br>Aside from cooking, Kyle loves assembling model kits and taking care of \r\nhis pet rabbits. Last time we checked, he has around 8 of them and \r\ncounting.... :-)<br><br>This summer, Kyle hosts "Kids'' Kitchen Adventure," a series of cooking \r\nand baking classes at The Maya Kitchen, which takes 6 to 12 years old \r\ninto a culinary and educational experience of a lifetime.<br><br>Kyle has a unique way of combining his love for cooking and studying by \r\nteaching recipes corresponding to school subjects. For math and science:\r\n rainbow layer cake, apple pi and strawberries dipped in popping \r\nchocolate. For history: Filipino fried chicken, Filipino style barbecue \r\nand Ginataang Halo-halo. Other recipes include Burritos, Kani sandwiches\r\n and Chocolate Eclairs.<br><br>Its first batch is on April 8, 10 and 11, (Tuesday, Thursday and \r\nFriday), 9:00AM-2:00PM.  The second batch is on May 6 to 9, (Tuesday to \r\nFriday) 9:00AM to 12:00 NN.<br><br>The class fee of Php 6,000 includes apron and toque, handouts, \r\ningredients, snacks and lunch. Each student will receive a certificate.<br><br>To find out more about Kyle''s Kitchen Adventure class or other \r\nofferings, log on to <a href="http://www.newgenbaker.com/www.themayakitchen.com" target="new">www.themayakitchen.com</a> or e-mail <a href="mailto:contactus@themayakitchen.com">contactus@themayakitchen.com</a>\r\n You may also visit The Maya Kitchen Culinary Center every Tuesday to \r\nSaturday at 8F  Liberty Building, 835 A. Arnaiz Avenue (Pasay Road), \r\nMakati City or call 8921185 / 892-5011 local 108 / Mobile No. +63947 835\r\n 2290.', 'blog-kyle-imao-junior-masterchef.jpg', 1, 1, NULL, '2014-04-28 05:08:31', '2014-04-28 05:08:31');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 Recipe; 2 Class',
  `name` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `type`, `name`, `description`) VALUES
(1, 2, 'Lifestyle Courses', ''),
(2, 2, 'Short Courses', '');
(4, 1, 'Filipino', ''),
(5, 1, 'International', '');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE IF NOT EXISTS `recipe` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `recipe_category_id` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `recipe_category_id` (`recipe_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`id`, `title`, `slug`, `description`, `recipe_category_id`, `image`, `is_active`, `is_featured`, `date_created`, `date_updated`) VALUES
(26, 'Crema de Mango', 'crema-de-mango', 'A tasty treat to beat the heat!', 5, 'recipe-crema-de-mango.jpg', 1, 1, '2014-04-28 04:30:59', '2014-04-28 04:30:59'),
(27, 'Puto Pao', 'puto-pao', 'Now you can make your version of this famous Filipino delicacy!', 4, 'recipe-puto-pao.jpg', 1, 0, '2014-04-28 04:34:26', '2014-04-28 04:34:26'),
(28, 'Easy Chocolate Mousse', 'easy-chocolate-mousse', 'A crowd favorite made simple!', 5, 'recipe-easy-chocolate-mousse.jpg', 1, 0, '2014-04-28 04:35:35', '2014-04-28 04:35:35'),
(29, 'Maja Blanca', 'maja-blanca', 'Maja Blanca with an ube twist!', 4, 'recipe-maja-blanca.jpg', 1, 0, '2014-04-28 04:36:24', '2014-04-28 04:36:24'),
(30, 'Tiramisu Parfait', 'tiramisu-parfait', 'A trusty coffee-based dessert for lasy afternoons!', 5, 'recipe-tiramisu-parfait.jpg', 1, 0, '2014-04-28 04:38:23', '2014-04-28 04:38:23');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_contents`
--

CREATE TABLE IF NOT EXISTS `recipe_contents` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `recipe_id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `recipe_id` (`recipe_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=87 ;

--
-- Dumping data for table `recipe_contents`
--

INSERT INTO `recipe_contents` (`id`, `recipe_id`, `title`, `content`, `is_active`) VALUES
(67, 26, 'ingredient', '<ul><li>4 tablespoons butter</li><li>2 medium eggs</li><li>1/2 cup water</li><li>1 pack MAYA Oven Toaster Butter Cake Mix 200g</li><li>1 cup whipped cream</li><li>1 cup thinly sliced ripe mangoes</li><li>1 45–gram unflavored gelatin</li></ul>', 1),
(68, 26, 'procedure', '<ol><li>Brush the bottom of a 9”x5” rectangular aluminum baking pan with oil or shortening then line it with wax paper.</li><li>Cream the butter in a bowl until soft. Blend\r\n in the eggs and water. Add the cake mix and beat with a wooden spoon \r\nuntil smooth. Pour mixture into the prepared pan and spread evenly. \r\nCover loosely with aluminum foil and lightly seal at the edges. Remove \r\noven toaster tray. Place the baking pan directly on the oven rack.</li><li>Bake in the oven toaster for 10 minutes. Turn the pan sideways and bake for 6 minutes more until done. Cool.</li><li>Spread cream on top of cake. Arrange mango slices. Set aside.</li><li>Prepare gelatin according to package direction. Slightly cool, and then pour on top of mango cream layer. Chill.</li></ol>', 1),
(69, 26, 'yield', '', 1),
(70, 26, 'notes', '<br>', 1),
(71, 27, 'ingredient', '<ul><li>1 pack MAYA Quick &amp; Easy Complete Hotcake Mix 200g</li><li>3/4 cup water</li><li>cheese cubes/slices</li><li>slices of salted egg (red egg)</li></ul>', 1),
(72, 27, 'procedure', '<ol><li>Slightly oil mini muffin tins.</li><li>Preheat electric steamer as per appliance direction.</li><li>Combine hotcake mix and water in a bowl.</li><li>Stir batter until blended.</li><li>Fill up muffin holes about 3/4 full with batter mixture.</li><li>Top each hole with cheese cubes and slice of salted egg or quantity as desired.</li><li>Place muffin tins in the steamer and steam puto until cooked (approximately 10â€“15 minutes).</li><li>Serve.</li></ol>', 1),
(73, 27, 'yield', '', 1),
(74, 27, 'notes', '<br>', 1),
(75, 28, 'ingredient', 'Cake:\r\n                    <ul><li>1 pack MAYA Chocolate Hotcake Mix 200g</li><li>1 piece egg</li><li>2 tablespoons oil</li><li>1/2 cup water</li></ul>\r\n                    Mousse:\r\n                    <ul><li>2 tablespoons cold water</li><li>1 tablespoon unflavored gelatin</li><li>2 tablespoons cold water</li><li>4 tablespoons hot water</li><li>100 grams bitter sweet or semi sweet chocolate chips</li><li>250 ml all–purpose cream</li></ul>\r\n                    Garnish:\r\n                    <ul><li>Choco Curls/Cherries</li></ul>', 1),
(76, 28, 'procedure', '<ol><li>Grease an 8–inch round pan. Preheat oven to 350 degrees F. </li><li>In a bowl, slightly beat egg. Add in oil, \r\nwater and MAYA Chocolate hotcake mix. Blend batter mixture until smooth.\r\n Pour into prepared pan. Place cake pan on oven tray and bake in the \r\npreheated oven for 30 minutes or until done. Cool down. Crumble cake to \r\nform coarse crumbs. Press unto bottom of container dish or clear plastic\r\n cups or any desired container. Set aside.</li><li>Prepare mousse, put cold water in a small \r\nbowl. Sprinkle gelatin. Let stand for 1 minute to soften. Add hot water.\r\n Stir until gelatin is completely dissolved and mixture is clear. Set \r\naside.</li><li>In the steamer bowl, melt chocolate until \r\nthoroughly melted. Add gelatin mixture. Slightly cool. In a mixing bowl,\r\n whip cream until double in volume. Fold in the melted chocolate \r\nmixture. Pour unto prepared containers. Chill until ready to serve. \r\nDecorate; top with chocolate curls and cherries if desired.</li></ol>', 1),
(77, 28, 'yield', '', 1),
(78, 28, 'notes', '<br>', 1),
(79, 29, 'ingredient', '<ul><li>1/2 cup MAYA Cornstarch</li><li>2 packs coconut powder 50g</li><li>40 grams ube powder</li><li>3 cups water</li><li>1/2 cup whole kernel corn</li><li>1/2 teaspoon ube flavoring</li><li>prepared macapuno (optional) </li></ul>', 1),
(80, 29, 'procedure', '<ol><li>In a bowl, dissolve cornstarch, coconut \r\npowder and ube powder in water until well blended. Add in the rest of \r\nthe ingredients, but leave some whole kernel corn for garnishing.</li><li>Cook over low heat, stirring constantly until thick.</li><li>Pour in a desired mold pan.</li><li>Cool and top with macapuno and whole kernel corn before serving.</li></ol>', 1),
(81, 29, 'yield', '', 1),
(82, 29, 'notes', '<br>', 1),
(83, 30, 'ingredient', '<ul><li>4 tablespoons butter</li><li>2 pieces egg</li><li>1/2 cup water</li><li>1 pack MAYA Oven Toaster Butter Cake Mix 200g</li><li>Filling:</li><li>2/3 cup cream cheese</li><li>2 tablespoons corn syrup</li><li>1/2 teaspoon brandy</li><li>6 tablespoons confectioners’ sugar</li><li>1 egg yolk</li><li>3/4 cup all–purpose cream</li></ul>\r\n                    Syrup:\r\n                    <ul><li>3/4 cup water</li><li>2 tablespoons coffee liqueur</li><li>2 tablespoons coffee powder</li></ul>', 1),
(84, 30, 'procedure', '<ol><li>Preheat oven to 350 degrees F. Brush bottom of an 8 x 3 inch loaf pan \r\nwith oil or shortening then line it with wax paper. </li><li>Cream butter in a \r\nbowl until soft. </li><li>Blend in the eggs and water. </li><li>Add the cake mix and beat \r\nuntil smooth. </li><li>Pour mixture into the prepared pan and spread evenly. </li><li>Bake\r\n for 35 to 40 minutes or until done. </li><li>Set aside.\r\n\r\n</li></ol><strong><br>Prepare Filling:</strong>\r\n<br><ol><li>Beat together the cream cheese, syrup, brandy, sugar and egg yolk. </li><li>Whip \r\nthe cream separately then fold into cream cheese mixture. </li><li>Set aside.\r\n\r\n</li></ol><strong><br>Prepare Syrup:</strong>\r\n<br><ol><li>Combine the ingredients for the syrup and stir until dissolved.\r\n\r\n</li></ol><strong><br>To Assemble:</strong>\r\n<br><ol><li>Place a slice of cake in bottom of parfait glass or wine goblets, \r\ntearing and pressing butter cake to fit. </li><li>Drizzle syrup. </li><li>Spread 1/3 cup \r\nfilling over each. </li><li>Repeat layering with remaining butter cake, syrup and\r\n filling. </li><li>Sift unsweetened cocoa generously over parfait. </li><li>Cover and \r\nrefrigerate overnight.</li></ol>', 1),
(85, 30, 'yield', '', 1),
(86, 30, 'notes', '<br>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `static_pages`
--

CREATE TABLE IF NOT EXISTS `static_pages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` tinyint(10) NOT NULL COMMENT '1 Contact; 2 Terms; 3 Policy; 4 banner;',
  `content` text NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `static_pages`
--

INSERT INTO `static_pages` (`id`, `type`, `content`, `date_updated`) VALUES
(1, 1, '<article>\r\n            <div class="details"><article>\r\n            <div class="details"><article>\r\n            <div class="details"><article>\r\n                    <div class="details">\r\n                        <h4 align="center">Maya Kitchen Culinary Arts Center</h4>\r\n                        <p align="center">8th Floor, Liberty Building</p>\r\n                        <p align="center">835 A. Arnaiz Avenue</p>\r\n                        <p align="center">Legazpi Village, Makati City</p>\r\n                        <p align="center"><span class="icon iconphone"></span> 892-5011 loc. 108</p>\r\n                        <p align="center"><span class="icon iconprint"></span> 892-1185 (fax)</p>\r\n                    </div>\r\n                </article></div>\r\n        </article></div>\r\n        </article></div>\r\n        </article>', '2014-04-28 05:49:50'),
(2, 2, '<h4 align="center">Terms of Use<br></h4>', '2014-04-26 11:07:31'),
(3, 3, '<h4 align="center">Privacy Policy<br></h4>', '2014-04-26 11:07:45'),
(4, 4, '<h1 align="center">Welcome to the Maya Kitchen</h1>\r\n            <h5 align="center">Take a look at the classes we offer, try out our recipes, or catch up with our latest news!</h5>\r\n                                                <div align="center"><img src="http://themayakitchen.com/wp-content/uploads/2014/03/familymatters_main.jpg"></div>', '2014-04-26 12:04:19'),
(5, 5, 'Visit us on <a href="https://www.facebook.com/newgenbaker">Facebook</a> and ask your questions about baking.<br> The best answers will get featured on this site!', '2014-04-28 05:49:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1398134374, 1, 'Admin', 'istrator', 'ADMIN', '0'),
(2, '0.0.0.0', 'jd fajardo', '$2y$08$pYtR012239ZTjw1J6EgroOAc23rvnddNHW1DVoVuoSyCfcEOOQJ4e', NULL, 'jd@admin.com', NULL, NULL, NULL, NULL, 1396191704, 1398657692, 1, 'Jan', 'Dean', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `recipe`
--
ALTER TABLE `recipe`
  ADD CONSTRAINT `recipe_ibfk_1` FOREIGN KEY (`recipe_category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `recipe_contents`
--
ALTER TABLE `recipe_contents`
  ADD CONSTRAINT `recipe_contents_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`);

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
