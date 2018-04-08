-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 08, 2018 at 03:24 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

DROP TABLE IF EXISTS `tbl_genre`;
CREATE TABLE IF NOT EXISTS `tbl_genre` (
  `genre_id` tinyint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(150) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'comedy');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

DROP TABLE IF EXISTS `tbl_movies`;
CREATE TABLE IF NOT EXISTS `tbl_movies` (
  `movies_id` mediumint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_cover` varchar(90) CHARACTER SET utf8 NOT NULL,
  `movies_title` varchar(150) CHARACTER SET utf8 NOT NULL,
  `movies_year` varchar(4) CHARACTER SET utf8 NOT NULL,
  `movies_runtime` varchar(20) CHARACTER SET utf8 NOT NULL,
  `movies_storyline` text CHARACTER SET utf8 NOT NULL,
  `movies_trailer` varchar(90) CHARACTER SET utf8 NOT NULL,
  `movies_release` varchar(110) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`movies_id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`, `movies_trailer`, `movies_release`) VALUES
(8, 'ex1.jpg', 'The Expendables', '2010', '1:43', 'Barney Ross leads the \"Expendables\", a band of highly skilled mercenaries including knife enthusiast Lee Christmas, martial arts expert Yin Yang, heavy weapons specialist Hale Caesar, demolitionist Toll Road and loose-cannon sniper Gunner Jensen. When the group is commissioned by the mysterious Mr. Church to assassinate the merciless dictator of a small South American island, Barney and Lee head to the remote locale to scout out their opposition. Once there, they meet with local rebel Sandra and discover the true nature of the conflict engulfing the city. When they escape the island and Sandra stays behind, Ross must choose to either walk away and save his own life', 'ex1.mp4', '2010'),
(9, 'ex2.jpg', 'The Expendables 2', '2012', '1:43', 'Barney Ross is approached by CIA man Church, who wants him and his guns for hire to go to the former Soviet Union to retrieve something that was on a plane that crashed. Church doesn\'t tell him what he is getting. And Church sends a woman, Maggie with him to make sure he gets it. They find the plane and get the thing but some men take one of Barney\'s people hostage and the leader tells him to give him what they got or he\'ll kill his hostage. They give it to him but he kills his hostage anyway. Barney asks Maggie what was so important about that thing. She says that it showed the location of a Russian plutonium storage mine. Barney decides to track the man down and deal with him. They track them down and discover that the man they seek is Vilain who leads a group known as The Sangs and that they have taken all the men from the surrounding villages to work the mine.', 'ex2.mp4', '2010'),
(10, 'ex3.jpg', 'The Expendables 3', '2014', '2:06', 'Barney (Stallone), Christmas (Statham) and the rest of the team comes face-to-face with Conrad Stonebanks (Gibson), who years ago co-founded The Expendables with Barney. Stonebanks subsequently became a ruthless arms trader and someone who Barney was forced to kill... or so he thought. Stonebanks, who eluded death once before, now is making it his mission to end The Expendables -- but Barney has other plans. Barney decides that he has to fight old blood with new blood, and brings in a new era of Expendables team members, recruiting individuals who are younger, faster and more tech-savvy. The latest mission becomes a clash of classic old-school style versus high-tech expertise in the Expendables\' most personal battle yet.', 'ex3.mp4', '2014'),
(11, 'ff1.jpg', 'The Fast and the Furious', '2001', '1:46', 'Los Angeles street racer Dominic Toretto falls under the suspicion of the LAPD as a string of high-speed electronics truck robberies rocks the area. Brian O\'Connor, an officer of the LAPD, joins the ranks of Toretto\'s highly skilled racing crew undercover to convict Toretto. However, O\'Connor finds himself both enamored with this new world and in love with Toretto\'s sister, Mia.', 'ff1.mp4', '2001'),
(12, 'ff2.jpg', '2 Fast 2 Furious', '2003', '1:47', 'EX LAPD cop Brian O\'Conner (Paul Walker) teams up with his ex-con friend Roman Pearce (Tyrese Gibson) and works with undercover U.S. Customs Service agent Monica Fuentes (Eva Mendes) to bring Miami-based drug lord Carter Verone (Cole Hauser) down.', 'ff2.mp4', '2003'),
(13, 'ff3.jpg', 'The Fast and the Furious: Tokyo Drift', '2006', '1:44', 'An American teenager named Sean Boswell is a loner in school, however he challenges his rival for an illegal street racing, and he totals his car in the end of the race. To avoid time in prison he is sent to Tokyo to live with his father who is in the military. As soon as he arrives he discovers a new, fun but dangerous way of street racing in the underworld of the streets of Tokyo, Japan. ', 'ff3.mp4', '2006'),
(14, 'ff4.jpg', 'Fast & Furious', '2009', '1:47', 'Heading back to the streets where it all began, two men rejoin two women to blast muscle, tuner and exotic cars across Los Angeles and floor through the Mexican desert. When a crime brings them back to L.A., fugitive ex-con Dom Toretto reignites his feud with agent Brian O\'Connor. But as they are forced to confront a shared enemy, Dom and Brian must give in to an uncertain new trust if they hope to outmaneuver him. And from convoy heists to precision tunnel crawls across international lines, two men will find the best way to get revenge: push the limits of what\'s possible behind the wheel.', 'ff4.mp4', '2009'),
(15, 'ff5.jpg', 'Fast Five', '2011', '2:10', 'Former cop Brian O\'Conner partners with ex-con Dom Toretto on the opposite side of the law. Since Brian and Mia Toretto broke Dom out of custody, they\'ve blown across many borders to elude authorities. Now backed into a corner in Rio de Janeiro, they must pull one last job in order to gain their freedom. As they assemble their elite team of top racers, the unlikely allies know their only shot of getting out for good means confronting the corrupt businessman who wants them dead. But he\'s not the only one on their tail. Hard-nosed federal agent Luke Hobbs never misses his target. When he is assigned to track down Dom and Brian, he and his strike team launch an all-out assault to capture them. But as his men tear through Brazil, Hobbs learns he can\'t separate the good guys from the bad. Now, he must rely on his instincts to corner his prey... before someone else runs them down first.', 'ff5.mp4', '2011'),
(16, 'ff6.jpg', 'Fast & Furious 6', '2013', '2:10', 'Since Dom (Diesel) and Brian\'s (Walker) Rio heist toppled a kingpin\'s empire and left their crew with $100 million, our heroes have scattered across the globe. But their inability to return home and living forever on the lam have left their lives incomplete. Meanwhile, Hobbs (Johnson) has been tracking an organization of lethally skilled mercenary drivers across 12 countries, whose mastermind (Evans) is aided by a ruthless second-in-command revealed to be the love Dom thought was dead, Letty (Rodriguez). The only way to stop the criminal outfit is to outmatch them at street level, so Hobbs asks Dom to assemble his elite team in London. Payment?', 'ff6.mp4', '2013'),
(17, 'ff7.jpg', 'Furious 7', '2015', '2:17', 'Dominic and his crew thought they\'d left the criminal mercenary life behind. They\'d defeated international terrorist Owen Shaw and went their separate ways. But now, Shaw\'s brother, Deckard Shaw, is out killing the crew one by one for revenge. Worse, a Somalian terrorist called Jakarde and a shady government official called \"Mr. Nobody\" are both competing to steal a computer terrorism program called \"God\'s Eye,\" that can turn any technological device into a weapon. Torretto must reconvene with his team to stop Shaw and retrieve the God\'s Eye program while caught in a power struggle between the terrorist and the United States government.', 'ff7.mp4', '2015'),
(18, 'ff8.jpg', 'The Fate of the Furious', '2017', '2:16', 'Now that Dom and Letty are on their honeymoon and Brian and Mia have retired from the game-and the rest of the crew has been exonerated-the globetrotting team has found a semblance of a normal life. But when a mysterious woman seduces Dom into the world of crime he can\'t seem to escape and a betrayal of those closest to him, they will face trials that will test them as never before. From the shores of Cuba and the streets of New York City to the icy plains off the arctic Barents Sea, the elite force will crisscross the globe to stop an anarchist from unleashing chaos on the world\'s stage... and to bring home the man who made them a family. ', 'ff8.mp4', '2017'),
(19, 'ip1.jpg', 'Ip Man', '2008', '1:46', 'In 1935 in Foshan, south China, there are martial arts schools on every street corner. Ip Man is the undisputed martial arts champion, yet he has not devoted himself to teaching. Despite this, it seems that all the kung fu masters of the city are eager to fight him to improve their reputation.', 'ip1.mp4', '2008'),
(20, 'ip2.jpg', 'Ip Man 2', '2010', '1:48', 'Ip Man 2 is a 2010 Hong Kong biographical martial arts film loosely based on the life of Ip Man, a grandmaster of the martial art Wing Chun. A sequel to the 2008 film Ip Man, the film was directed by Wilson Yip, and stars Donnie Yen, who reprises the leading role. Continuing after the events of the earlier film, the sequel centers on Ip\'s movements in Hong Kong, which is under British colonial rule. He attempts to propagate his discipline of Wing Chun, but faces rivalry from other practitioners, including the local master of Hung Ga martial arts.', 'ip2.mp4', '2010'),
(21, 'ip3.jpg', 'Ip Man 3', '2015', '1:45', 'The year is 1959, where Ip Man lives in Hong Kong with his wife and his younger son. Trouble arises when a corrupt property developer and his thugs terrorize the school where Ip Man\'s son goes to. Ip Man and his disciples have to help the police guard the school day and night. On the other hand, Ip Man has to deal with his wife\'s terminal sickness, and at the same time faces a challenge from another Wing Chun fighter who ambitiously seeks to claim the Wing Chun Grandmaster title', 'ip3.mp4', '2015'),
(22, 'je1.jpg', 'Johnny English', '2003', '1:27', 'Rowan plays the eponymous lead character in a spoof spy thriller. During the course of the story we follow our hero as he attempts to single-handedly save the country from falling into the hands of a despot.', 'je1.mp4', '2003'),
(23, 'je2.jpg', 'Johnny English Reborn', '2011', '1:41', 'Rowan Atkinson returns to the role of the accidental secret agent who doesn\'t know fear or danger in the comedy spy-thriller Johnny English Reborn. In his latest adventure, the most unlikely intelligence officer in Her Majesty\'s Secret Service must stop a group of international assassins before they eliminate a world leader and cause global chaos. In the years since MI-7\'s top spy vanished off the grid, he has been honing his unique skills in a remote region of Asia. But when his agency superiors learn of an attempt against the Chinese premier\'s life, they must hunt down the highly unorthodox agent. Now that the world needs him once again, Johnny English is back in action.', 'je2.mp4', '2011'),
(24, 'je3.jpg', 'Johnny English Strikes Again', '2018', 'not avialable', 'After a cyber-attack reveals the identity of all of the active undercover agents in Britain, Johnny English is forced to come out of retirement to find the mastermind hacker.', 'je3.mp4', '2018'),
(25, 'nfs.jpg', 'Need for Speed', '2014', '2:12', 'Fresh from prison, a street racer who was framed by a wealthy business associate joins a cross country race with revenge in mind. His ex-partner, learning of the plan, places a massive bounty on his head as the race begins.\r\n', 'nfs.mp4', '2014'),
(26, 'se.jpg', 'San Andreas', '2015', '1:54', 'In the aftermath of a massive earthquake in California, a rescue-chopper pilot makes a dangerous journey with his ex-wife across the state in order to rescue his daughter.\r\n', 'se.mp4', '2015'),
(27, 'sf.jpg', 'Skyfall', '2012', '2:23', 'Bond\'s loyalty to M is tested when her past comes back to haunt her. When MI6 comes under attack, 007 must track down and destroy the threat, no matter how personal the cost.\r\n', 'sf.mp4', '2012'),
(28, 'sp.jpg', 'Spectre ', '2015', '2:23', 'A cryptic message from Bond\'s past, sends him on a trail to uncover a sinister organization. While M battles political forces to keep the Secret Service alive, Bond peels back the layers of deceit to reveal the terrible truth behind S.P.E.C.T.R.E.\r\n', 'sp.mp4', '2015'),
(29, 'sped.jpg', 'Speed ', '1994', '1:56', 'A young police officer must prevent a bomb exploding aboard a city bus by keeping its speed above 50 mph.\r\n', 'sped.mp4', '1994'),
(30, 'ter1.jpg', 'The Terminator', '1984', '1:47', 'A seemingly indestructible Android is sent from 2029 to 1984 to assassinate a waitress, whose unborn son will lead humanity in a war against the machines, while a soldier from that war is sent to protect her at all cost\r\n', 'ter1.mp4', '1984'),
(31, 'ter2.jpg', 'Terminator 2', '1991', '2:17', 'A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her teenage son, John Connor, from a more advanced and powerful cyborg.\r\n', 'ter2.mp4', '1991'),
(32, 'ter3.jpg', 'Terminator 3: Rise of the Machines', '2003', '1:49', 'A cybernetic warrior from a post-apocalyptic future travels back in time to protect a 25-year old drifter and his future wife from a most advanced robotic assassin and to ensure they both survive a nuclear attack.\r\n', 'ter3.mp4', '2003');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

DROP TABLE IF EXISTS `tbl_mov_genre`;
CREATE TABLE IF NOT EXISTS `tbl_mov_genre` (
  `mov_genres_id` mediumint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(10) NOT NULL,
  `genre_id` mediumint(10) NOT NULL,
  PRIMARY KEY (`mov_genres_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` mediumint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(200) CHARACTER SET utf8 NOT NULL,
  `last_name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `password` varchar(200) CHARACTER SET utf8 NOT NULL,
  `user_email` varchar(200) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `username`, `last_name`, `password`, `user_email`) VALUES
(1, 'h', 'h', 'h', 'h');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
