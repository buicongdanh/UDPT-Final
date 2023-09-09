SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `albumdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE IF NOT EXISTS `album` (
  `AlbumID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  `ReleaseDate` datetime NOT NULL,
  `ArtistID` int(11) NOT NULL,
  `CoverPath` varchar(400) NOT NULL,
  PRIMARY KEY (`AlbumID`),
  KEY `FK_ALBUM_ARTIST` (`ArtistID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`AlbumID`, `Title`, `ReleaseDate`, `ArtistID`, `CoverPath`) VALUES
(6, 'Red', '2010-04-27 00:00:00', 38, 'images/album/album-red.jpg'),
(7, 'We Are Never Ever Getting Back Together', '2010-08-14 00:00:00', 38, 'images/album/album-we are never ever getting back together.jpg'),
(8, 'Fearless', '2010-06-30 00:00:00', 38, 'images/album/album-fearless.jpg'),
(9, 'The Hunger Games: Songs from District 12 and Beyond', '2010-12-07 00:00:00', 38, 'images/album/album-the hunger games: songs from district 12 and beyond.jpg'),
(10, 'Speak Now', '2010-12-08 00:00:00', 38, 'images/album/album-speak now.jpg'),
(11, 'Mine', '2010-12-16 00:00:00', 38, 'images/album/album-mine.jpg'),
(12, 'Taylor Swift', '2010-01-07 00:00:00', 38, 'images/album/album-taylor swift.jpg'),
(13, 'Skyfall (Single)', '2010-08-26 00:00:00', 15, 'images/album/album-skyfall (single).jpg'),
(14, 'The Best Of Adele', '2010-05-05 00:00:00', 15, 'images/album/album-the best of adele.jpg'),
(15, 'Cold Shoulder - EP', '2010-01-24 00:00:00', 15, 'images/album/album-cold shoulder - ep.jpg'),
(16, 'Set Fire To The Rain (Promo CDS)', '2010-05-08 00:00:00', 15, 'images/album/album-set fire to the rain (promo cds).jpg'),
(17, 'Shadows', '2010-01-29 00:00:00', 30, 'images/album/album-shadows.jpg'),
(18, 'Two', '2010-07-04 00:00:00', 30, 'images/album/album-two.jpg'),
(19, 'Lenka ', '2010-10-25 00:00:00', 30, 'images/album/album-lenka .jpg'),
(20, 'Obsession', '2010-03-10 00:00:00', 24, 'images/album/album-obsession.jpg'),
(21, 'Breathless', '2010-07-08 00:00:00', 24, 'images/album/album-breathless.jpg'),
(22, 'Shayne Ward', '2010-11-22 00:00:00', 24, 'images/album/album-shayne ward.jpg'),
(23, 'One More Night', '2010-02-11 00:00:00', 84, 'images/album/album-one more night.jpg'),
(24, 'Overexposed', '2010-06-08 00:00:00', 84, 'images/album/album-overexposed.jpg'),
(25, 'The Best Of Maroon 5 ', '2010-03-01 00:00:00', 84, 'images/album/album-the best of maroon 5 .jpg'),
(26, 'Live From Le Cabare', '2010-02-23 00:00:00', 84, 'images/album/album-live from le cabare.jpg'),
(27, 'Live From SoHo - EP', '2010-10-28 00:00:00', 84, 'images/album/album-live from soho - ep.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `album_details`
--

CREATE TABLE IF NOT EXISTS `album_details` (
  `DetailID` int(11) NOT NULL AUTO_INCREMENT,
  `AlbumID` int(11) NOT NULL,
  `SongID` int(11) NOT NULL,
  PRIMARY KEY (`DetailID`),
  KEY `FK_ALBUMDETAILS_ALBUM` (`AlbumID`),
  KEY `FK_ALBUMDETAILS_SONG` (`SongID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `album_details`
--

INSERT INTO `album_details` (`DetailID`, `AlbumID`, `SongID`) VALUES
(3, 6, 87),
(4, 6, 89);

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE IF NOT EXISTS `artist` (
  `ArtistID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(40) NOT NULL,
  `DOB` datetime NOT NULL,
  `Country` varchar(40) NOT NULL,
  `ImagePath` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`ArtistID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=91 ;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`ArtistID`, `Name`, `DOB`, `Country`, `ImagePath`) VALUES
(1, 'WESTLIFE', '1982-02-05 00:00:00', 'England', 'images/artist/1-westlife.jpg'),
(2, 'RICHARD MARX', '1977-02-19 00:00:00', 'United States', 'images/artist/2-richard marx.jpg'),
(3, 'BOYZONE', '1977-11-25 00:00:00', 'United States', 'images/artist/3-boyzone.jpg'),
(4, 'DAN BYRD', '1983-12-17 00:00:00', 'England', 'images/artist/4-dan byrd.jpg'),
(5, 'RONAN KEATING', '1980-09-30 00:00:00', 'England', 'images/artist/5-ronan keating.jpg'),
(6, 'DIANA ROSS', '1980-03-01 00:00:00', 'United States', 'images/artist/6-diana ross.jpg'),
(7, 'TOKYO SQUARE', '1977-08-20 00:00:00', 'United States', 'images/artist/7-tokyo square.jpg'),
(8, 'MICHAEL LEARNS TO ROCK', '1980-09-14 00:00:00', 'England', 'images/artist/8-michael learns to rock.jpg'),
(9, 'BRYAN ADAMS', '1986-12-03 00:00:00', 'England', 'images/artist/9-bryan adams.jpg'),
(10, 'BARBRA STREISAND', '1983-05-24 00:00:00', 'United States', 'images/artist/10-barbra streisand.jpg'),
(11, 'SAVAGE GARDEN', '1983-03-14 00:00:00', 'United States', 'images/artist/11-savage garden.jpg'),
(12, 'VANESSA WILLIAMS', '1977-01-24 00:00:00', 'United States', 'images/artist/12-vanessa williams.jpg'),
(13, 'REDNEX', '1981-10-24 00:00:00', 'United States', 'images/artist/13-rednex.jpg'),
(14, 'SPICE GIRLS', '1977-12-02 00:00:00', 'United States', 'images/artist/14-spice girls.jpg'),
(15, 'ADELE', '1977-06-29 00:00:00', 'England', 'images/artist/15-adele.jpg'),
(16, 'MARIAH CAREY', '1985-09-15 00:00:00', 'United States', 'images/artist/16-mariah carey.jpg'),
(17, 'SUPER JUNIOR', '1978-12-14 00:00:00', 'United States', 'images/artist/17-super junior.jpg'),
(18, 'DANIEL BEDINGFIELD', '1980-03-20 00:00:00', 'England', 'images/artist/18-daniel bedingfield.jpg'),
(19, 'LIONEL RICHIE', '1986-05-28 00:00:00', 'England', 'images/artist/19-lionel richie.jpg'),
(20, 'TRISHA YEARWOOD', '1981-12-10 00:00:00', 'England', 'images/artist/20-trisha yearwood.jpg'),
(21, 'A1', '1983-10-05 00:00:00', 'England', 'images/artist/21-a1.jpg'),
(22, 'FERGIE', '1980-07-10 00:00:00', 'England', 'images/artist/22-fergie.jpg'),
(23, 'FIONA FUNG', '1981-10-01 00:00:00', 'England', 'images/artist/23-fiona fung.jpg'),
(24, 'SHAYNE WARD', '1982-04-06 00:00:00', 'England', 'images/artist/24-shayne ward.jpg'),
(25, 'M2M', '1978-11-27 00:00:00', 'United States', 'images/artist/25-m2m.jpg'),
(26, 'DEUTSCHLAND SUCHT DEN SUPERSTAR', '1985-01-30 00:00:00', 'England', 'images/artist/26-deutschland sucht den superstar.jpg'),
(27, 'MICHAEL JACKSON', '1979-02-28 00:00:00', 'England', 'images/artist/27-michael jackson.jpg'),
(28, 'ABBA', '1981-03-13 00:00:00', 'United States', 'images/artist/28-abba.jpg'),
(29, 'DANIEL POWTER', '1978-06-15 00:00:00', 'United States', 'images/artist/29-daniel powter.jpg'),
(30, 'LENKA', '1977-09-13 00:00:00', 'United States', 'images/artist/30-lenka.jpg'),
(31, 'SHONTELLE', '1982-03-23 00:00:00', 'United States', 'images/artist/31-shontelle.jpg'),
(32, 'JESSE MCCARTNEY', '1977-10-03 00:00:00', 'United States', 'images/artist/32-jesse mccartney.jpg'),
(33, 'PH?M QU?NH ANH', '1986-06-15 00:00:00', 'United States', 'images/artist/33-ph?m qu?nh anh.jpg'),
(34, 'BACKSTREET BOYS', '1986-07-11 00:00:00', 'United States', 'images/artist/34-backstreet boys.jpg'),
(35, 'CELINE DION', '1984-03-12 00:00:00', 'England', 'images/artist/35-celine dion.jpg'),
(36, 'BRITNEY SPEARS', '1986-05-20 00:00:00', 'United States', 'images/artist/36-britney spears.jpg'),
(37, 'S CLUB 7', '1981-02-22 00:00:00', 'England', 'images/artist/37-s club 7.jpg'),
(38, 'TAYLOR SWIFT', '1980-08-14 00:00:00', 'United States', 'images/artist/38-taylor swift.jpg'),
(39, 'THE BROTHERS FOUR / DREAMTALE', '1977-12-23 00:00:00', 'England', 'images/artist/39-the brothers four dreamtale.jpg'),
(40, 'LADY ANTEBELLUM', '1978-07-08 00:00:00', 'England', 'images/artist/40-lady antebellum.jpg'),
(41, 'TIM MCGRAW', '1985-11-17 00:00:00', 'United States', 'images/artist/41-tim mcgraw.jpg'),
(42, 'ALAN JACKSON', '1982-01-07 00:00:00', 'United States', 'images/artist/42-alan jackson.jpg'),
(43, 'THE BAND PERRY', '1977-01-31 00:00:00', 'England', 'images/artist/43-the band perry.jpg'),
(44, 'FAITH HILL', '1980-06-22 00:00:00', 'England', 'images/artist/44-faith hill.jpg'),
(45, 'CARRIE UNDERWOOD', '1985-02-13 00:00:00', 'England', 'images/artist/45-carrie underwood.jpg'),
(46, 'CHARICE', '1986-02-09 00:00:00', 'United States', 'images/artist/46-charice.jpg'),
(47, 'SIMON & GARFUNKEL', '1982-09-18 00:00:00', 'England', 'images/artist/47-simon garfunkel.jpg'),
(48, 'ANNE MURRAY', '1986-09-19 00:00:00', 'England', 'images/artist/48-anne murray.jpg'),
(49, 'DAN BALAN', '1979-03-25 00:00:00', 'United States', 'images/artist/49-dan balan.jpg'),
(50, 'BIG BANG', '1982-12-03 00:00:00', 'England', 'images/artist/50-big bang.jpg'),
(51, 'LADY GAGA', '1983-01-17 00:00:00', 'United States', 'images/artist/51-lady gaga.jpg'),
(52, 'ENRIQUE IGLESIAS', '1984-06-20 00:00:00', 'England', 'images/artist/52-enrique iglesias.jpg'),
(53, 'SNSD (GIRLS'' GENERATION)', '1983-02-08 00:00:00', 'United States', 'images/artist/53-snsd girls generation .jpg'),
(54, 'ANN WINSBORN', '1980-03-08 00:00:00', 'United States', 'images/artist/54-ann winsborn.jpg'),
(55, 'LUCKY TWICE', '1985-09-04 00:00:00', 'United States', 'images/artist/55-lucky twice.jpg'),
(56, 'MODERN TALKING', '1982-12-01 00:00:00', 'England', 'images/artist/56-modern talking.jpg'),
(57, 'INEZ', '1978-08-31 00:00:00', 'United States', 'images/artist/57-inez.jpg'),
(58, 'SURISAN', '1981-06-24 00:00:00', 'United States', 'images/artist/58-surisan.jpg'),
(59, 'KE$HA', '1978-07-05 00:00:00', 'United States', 'images/artist/59-ke$ha.jpg'),
(60, 'JENNIFER LOPEZ', '1981-12-28 00:00:00', 'United States', 'images/artist/60-jennifer lopez.jpg'),
(61, 'T-ARA', '1980-08-03 00:00:00', 'England', 'images/artist/61-t-ara.jpg'),
(62, 'DEGAUSS', '1985-05-25 00:00:00', 'England', 'images/artist/62-degauss.jpg'),
(63, 'AQUA', '1979-06-29 00:00:00', 'United States', 'images/artist/63-aqua.jpg'),
(64, 'SELENA GOMEZ', '1981-05-24 00:00:00', 'England', 'images/artist/64-selena gomez.jpg'),
(65, 'NELLY FURTADO', '1980-08-18 00:00:00', 'England', 'images/artist/65-nelly furtado.jpg'),
(66, 'TOY BOX', '1981-09-24 00:00:00', 'England', 'images/artist/66-toy box.jpg'),
(67, 'CRAIG DAVID', '1986-05-17 00:00:00', 'England', 'images/artist/67-craig david.jpg'),
(68, 'GROOVE COVERAGE', '1986-08-19 00:00:00', 'England', 'images/artist/68-groove coverage.jpg'),
(69, 'ASHLEE SIMPSON', '1980-04-30 00:00:00', 'United States', 'images/artist/69-ashlee simpson.jpg'),
(70, 'DBSK', '1980-10-01 00:00:00', 'United States', 'images/artist/70-dbsk.jpg'),
(71, 'HELLOWEEN', '1986-11-17 00:00:00', 'United States', 'images/artist/71-helloween.jpg'),
(72, 'STRATOVARIOUS', '1981-01-02 00:00:00', 'England', 'images/artist/72-stratovarious.jpg'),
(73, 'LINKIN PARK', '1978-06-30 00:00:00', 'United States', 'images/artist/73-linkin park.jpg'),
(74, 'VERTICAL HORIZON', '1983-04-07 00:00:00', 'United States', 'images/artist/74-vertical horizon.jpg'),
(75, 'AVRIL LAVIGNE', '1981-03-14 00:00:00', 'United States', 'images/artist/75-avril lavigne.jpg'),
(76, 'SIMPLE PLAN', '1982-09-10 00:00:00', 'United States', 'images/artist/76-simple plan.jpg'),
(77, 'SAVATAGE', '1977-11-02 00:00:00', 'United States', 'images/artist/77-savatage.jpg'),
(78, 'ADAM LAMBERT', '1986-08-30 00:00:00', 'England', 'images/artist/78-adam lambert.jpg'),
(79, 'STRATOVARIUS', '1981-08-13 00:00:00', 'England', 'images/artist/79-stratovarius.jpg'),
(80, 'NIGHTWISH', '1984-01-25 00:00:00', 'United States', 'images/artist/80-nightwish.jpg'),
(81, 'GUNS N'' ROSES', '1977-10-08 00:00:00', 'England', 'images/artist/81-guns n roses.jpg'),
(82, 'GREEN DAY', '1978-10-11 00:00:00', 'United States', 'images/artist/82-green day.jpg'),
(83, 'DAUGHTRY', '1984-08-19 00:00:00', 'United States', 'images/artist/83-daughtry.jpg'),
(84, 'MAROON 5', '1981-01-07 00:00:00', 'United States', 'images/artist/84-maroon 5.jpg'),
(85, 'T.A.T.U', '1978-07-27 00:00:00', 'United States', 'images/artist/85-t.a.t.u.jpg'),
(86, 'SKID ROW', '1980-06-24 00:00:00', 'England', 'images/artist/86-skid row.jpg'),
(87, 'FIVE', '1981-11-16 00:00:00', 'England', 'images/artist/87-five.jpg'),
(88, 'ASHLEY TISDALE', '1981-03-06 00:00:00', 'England', 'images/artist/88-ashley tisdale.jpg'),
(89, 'SONATA ARCTICA', '1981-03-12 00:00:00', 'England', 'images/artist/89-sonata arctica.jpg'),
(90, 'STATUS QUO', '1985-04-05 00:00:00', 'England', 'images/artist/90-status quo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE IF NOT EXISTS `genre` (
  `GenreID` int(11) NOT NULL AUTO_INCREMENT,
  `GenreName` varchar(40) NOT NULL,
  PRIMARY KEY (`GenreID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`GenreID`, `GenreName`) VALUES
(1, 'Ballad'),
(2, 'Pop'),
(3, 'Country'),
(4, 'Dance'),
(5, 'Rock'),
(6, 'Death - Black Metal'),
(7, 'Heavy - Power Metal'),
(8, 'Thrash - Death Metal'),
(9, 'Urban - R&B'),
(10, 'HipHop - Rap'),
(11, 'Rock Ballad');

-- --------------------------------------------------------

--
-- Table structure for table `lyric`
--

CREATE TABLE IF NOT EXISTS `lyric` (
  `LyricID` int(11) NOT NULL AUTO_INCREMENT,
  `SongID` int(11) NOT NULL,
  `Lyric` varchar(3000) NOT NULL,
  `UserID` int(11) NOT NULL,
  PRIMARY KEY (`LyricID`),
  KEY `FK_LYRIC_USER` (`UserID`),
  KEY `FK_LYRIC_SONG` (`SongID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `song`
--

CREATE TABLE IF NOT EXISTS `song` (
  `SongID` int(11) NOT NULL AUTO_INCREMENT,
  `TitleID` int(11) NOT NULL,
  `ReleaseDate` datetime NOT NULL,
  `ArtistID` int(11) NOT NULL,
  `Length` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Path` varchar(400) NOT NULL,
  PRIMARY KEY (`SongID`),
  KEY `FK_SONG_ARTIST` (`ArtistID`),
  KEY `FK_SONG_USER` (`UserID`),
  KEY `FK_SONG_TITLE` (`TitleID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=151 ;

--
-- Dumping data for table `song`
--

INSERT INTO `song` (`SongID`, `TitleID`, `ReleaseDate`, `ArtistID`, `Length`, `UserID`, `Path`) VALUES
(1, 1, '2009-09-19 00:00:00', 1, 292, 3, 'songs/1-soledad-westlife.mp3'),
(2, 2, '2006-09-12 00:00:00', 1, 269, 5, 'songs/2-my love-westlife.mp3'),
(3, 3, '2009-10-26 00:00:00', 2, 280, 3, 'songs/3-right here waiting for you-richard marx.mp3'),
(4, 4, '2008-04-11 00:00:00', 3, 243, 1, 'songs/4-everyday i love you-boyzone.mp3'),
(5, 5, '2008-08-24 00:00:00', 4, 218, 5, 'songs/5-boulevard-dan byrd.mp3'),
(6, 6, '2002-04-20 00:00:00', 5, 287, 1, 'songs/6-when you say nothing at all-ronan keating.mp3'),
(7, 7, '2000-06-26 00:00:00', 6, 310, 3, 'songs/7-if we hold on together-diana ross.mp3'),
(8, 8, '2006-08-11 00:00:00', 7, 298, 1, 'songs/8-that is love-tokyo square.mp3'),
(9, 9, '2007-07-10 00:00:00', 8, 238, 2, 'songs/9-blue night-michael learns to rock.mp3'),
(10, 10, '2006-08-31 00:00:00', 7, 235, 4, 'songs/10-say you will-tokyo square.mp3'),
(11, 11, '2000-05-08 00:00:00', 9, 309, 2, 'songs/11-everything i do i do it for you-bryan adams.mp3'),
(12, 12, '2005-04-24 00:00:00', 8, 269, 2, 'songs/12-you took my heart away-michael learns to rock.mp3'),
(13, 13, '2005-02-24 00:00:00', 3, 316, 1, 'songs/13-no matter what-boyzone.mp3'),
(14, 14, '2008-12-02 00:00:00', 10, 278, 1, 'songs/14-woman in love-barbra streisand.mp3'),
(15, 15, '2000-02-15 00:00:00', 11, 320, 4, 'songs/15-i knew i loved you-savage garden.mp3'),
(16, 16, '2004-07-16 00:00:00', 12, 274, 3, 'songs/16-colors of the wind-vanessa williams.mp3'),
(17, 17, '2004-12-08 00:00:00', 13, 211, 3, 'songs/17-hold me for a while-rednex.mp3'),
(18, 18, '2008-01-16 00:00:00', 14, 200, 4, 'songs/18-viva forever-spice girls.mp3'),
(19, 19, '2009-11-18 00:00:00', 15, 311, 4, 'songs/19-someone like you-adele.mp3'),
(20, 20, '2003-03-15 00:00:00', 5, 298, 1, 'songs/20-if tomorrow never comes-ronan keating.mp3'),
(21, 21, '2006-08-27 00:00:00', 6, 312, 4, 'songs/21-endless love ft. lionel richie-diana ross.mp3'),
(22, 22, '2006-06-24 00:00:00', 16, 292, 2, 'songs/22-i still believe-mariah carey.mp3'),
(23, 23, '2007-03-26 00:00:00', 17, 305, 4, 'songs/23-7 years of love kyuhyun-super junior.mp3'),
(24, 24, '2003-01-28 00:00:00', 18, 288, 3, 'songs/24-if youre not the one-daniel bedingfield.mp3'),
(25, 25, '2007-07-11 00:00:00', 8, 292, 1, 'songs/25-complicated heart-michael learns to rock.mp3'),
(26, 26, '2007-01-09 00:00:00', 19, 291, 5, 'songs/26-say you say me-lionel richie.mp3'),
(27, 27, '2003-12-26 00:00:00', 20, 305, 3, 'songs/27-how do i live-trisha yearwood.mp3'),
(28, 28, '2009-03-26 00:00:00', 21, 284, 1, 'songs/28-walking in the rain-a1.mp3'),
(29, 29, '2005-01-28 00:00:00', 22, 252, 1, 'songs/29-big girls dont cry-fergie.mp3'),
(30, 30, '2008-02-06 00:00:00', 16, 249, 2, 'songs/30-bye bye-mariah carey.mp3'),
(31, 31, '2005-05-02 00:00:00', 8, 263, 5, 'songs/31-take me to your heart-michael learns to rock.mp3'),
(32, 32, '2005-04-22 00:00:00', 23, 235, 5, 'songs/32-a little love-fiona fung.mp3'),
(33, 33, '2004-07-30 00:00:00', 24, 249, 4, 'songs/33-no promises-shayne ward.mp3'),
(34, 34, '2000-10-19 00:00:00', 25, 319, 5, 'songs/34-the day you went away-m2m.mp3'),
(35, 35, '2002-04-07 00:00:00', 26, 238, 5, 'songs/35-cry on my shoulder-deutschland sucht den superstar.mp3'),
(36, 36, '2007-09-24 00:00:00', 27, 222, 2, 'songs/36-heal the world-michael jackson.mp3'),
(37, 37, '2009-02-19 00:00:00', 28, 297, 3, 'songs/37-happy new year-abba.mp3'),
(38, 38, '2000-11-10 00:00:00', 1, 222, 1, 'songs/38-miss you-westlife.mp3'),
(39, 39, '2005-04-01 00:00:00', 29, 224, 2, 'songs/39-bad day-daniel powter.mp3'),
(40, 40, '2007-11-21 00:00:00', 24, 290, 3, 'songs/40-until you-shayne ward.mp3'),
(41, 41, '2001-10-24 00:00:00', 30, 286, 5, 'songs/41-trouble is a friend-lenka.mp3'),
(42, 42, '2002-09-16 00:00:00', 23, 298, 1, 'songs/42-proud of you-fiona fung.mp3'),
(43, 43, '2002-02-18 00:00:00', 24, 232, 3, 'songs/43-breathless-shayne ward.mp3'),
(44, 44, '2001-06-30 00:00:00', 1, 310, 2, 'songs/44-you raise me up-westlife.mp3'),
(45, 45, '2008-05-17 00:00:00', 27, 250, 3, 'songs/45-you are not alone-michael jackson.mp3'),
(46, 46, '2006-06-08 00:00:00', 30, 208, 2, 'songs/46-the show-lenka.mp3'),
(47, 47, '2005-01-01 00:00:00', 25, 282, 3, 'songs/47-pretty boy-m2m.mp3'),
(48, 48, '2005-04-08 00:00:00', 31, 269, 1, 'songs/48-impossible-shontelle.mp3'),
(49, 49, '2000-03-15 00:00:00', 32, 290, 1, 'songs/49-because you live-jesse mccartney.mp3'),
(50, 50, '2006-12-03 00:00:00', 33, 238, 3, 'songs/50-hello vietnam-ph?m qu?nh anh.mp3'),
(51, 51, '2009-12-25 00:00:00', 24, 244, 3, 'songs/51-i cry-shayne ward.mp3'),
(52, 52, '2006-08-03 00:00:00', 8, 218, 1, 'songs/52-thats why you go away-michael learns to rock.mp3'),
(53, 53, '2008-05-11 00:00:00', 24, 311, 2, 'songs/53-stand by me-shayne ward.mp3'),
(54, 54, '2009-11-15 00:00:00', 16, 237, 4, 'songs/54-when you believe-mariah carey.mp3'),
(55, 55, '2006-09-24 00:00:00', 1, 266, 5, 'songs/55-seasons in the sun-westlife.mp3'),
(56, 56, '2007-08-02 00:00:00', 34, 257, 4, 'songs/56-show me the meaning of being lonely-backstreet boys.mp3'),
(57, 57, '2002-09-22 00:00:00', 35, 246, 4, 'songs/57-because you loved me-celine dion.mp3'),
(58, 58, '2009-08-22 00:00:00', 36, 285, 1, 'songs/58-baby one more time-britney spears.mp3'),
(59, 59, '2006-09-30 00:00:00', 37, 267, 4, 'songs/59-never had a dream come true-s club 7.mp3'),
(60, 60, '2000-01-20 00:00:00', 27, 226, 3, 'songs/60-earth song-michael jackson.mp3'),
(61, 61, '2002-03-12 00:00:00', 38, 285, 2, 'songs/61-you belong with me-taylor swift.mp3'),
(62, 62, '2004-08-21 00:00:00', 38, 236, 1, 'songs/62-teardrops on my guitar-taylor swift.mp3'),
(63, 63, '2000-10-12 00:00:00', 39, 238, 5, 'songs/63-green fields-the brothers four dreamtale.mp3'),
(64, 64, '2008-05-24 00:00:00', 38, 267, 1, 'songs/64-crazier-taylor swift.mp3'),
(65, 65, '2005-01-28 00:00:00', 38, 315, 3, 'songs/65-safe and sound ost the hunger games - ft. the civil wars-taylor swift.mp3'),
(66, 66, '2001-05-06 00:00:00', 38, 255, 2, 'songs/66-invisible-taylor swift.mp3'),
(67, 67, '2006-05-29 00:00:00', 6, 307, 5, 'songs/67-missing you-diana ross.mp3'),
(68, 68, '2003-10-31 00:00:00', 40, 222, 5, 'songs/68-need you now-lady antebellum.mp3'),
(69, 69, '2000-01-11 00:00:00', 38, 243, 3, 'songs/69-speak now-taylor swift.mp3'),
(70, 70, '2000-06-01 00:00:00', 41, 226, 5, 'songs/70-i need you ft. faith hill-tim mcgraw.mp3'),
(71, 71, '2000-11-17 00:00:00', 38, 258, 4, 'songs/71-back to december-taylor swift.mp3'),
(72, 72, '2003-03-30 00:00:00', 38, 246, 1, 'songs/72-youre not sorry-taylor swift.mp3'),
(73, 73, '2009-02-04 00:00:00', 42, 235, 3, 'songs/73-remember when-alan jackson.mp3'),
(74, 74, '2000-01-24 00:00:00', 43, 244, 3, 'songs/74-if i die young-the band perry.mp3'),
(75, 75, '2004-09-01 00:00:00', 44, 237, 1, 'songs/75-there youll be-faith hill.mp3'),
(76, 76, '2004-03-30 00:00:00', 45, 247, 2, 'songs/76-dont forget to remember me-carrie underwood.mp3'),
(77, 77, '2005-03-13 00:00:00', 38, 202, 5, 'songs/77-mine-taylor swift.mp3'),
(78, 78, '2003-05-28 00:00:00', 38, 261, 3, 'songs/78-our song-taylor swift.mp3'),
(79, 79, '2000-11-04 00:00:00', 38, 283, 1, 'songs/79-white horse-taylor swift.mp3'),
(80, 80, '2004-01-22 00:00:00', 38, 316, 5, 'songs/80-mean-taylor swift.mp3'),
(81, 81, '2007-12-13 00:00:00', 38, 294, 2, 'songs/81-fifteen-taylor swift.mp3'),
(82, 82, '2008-11-28 00:00:00', 46, 262, 2, 'songs/82-pyramid ft. iyaz-charice.mp3'),
(83, 83, '2005-09-24 00:00:00', 47, 230, 3, 'songs/83-scarborough fair-simon & garfunkel.mp3'),
(84, 84, '2004-05-11 00:00:00', 38, 218, 5, 'songs/84-fearless-taylor swift.mp3'),
(85, 85, '2001-10-10 00:00:00', 48, 265, 3, 'songs/85-you needed me-anne murray.mp3'),
(86, 86, '2009-11-08 00:00:00', 38, 214, 3, 'songs/86-we are never ever getting back together-taylor swift.mp3'),
(87, 87, '2001-07-02 00:00:00', 38, 206, 2, 'songs/87-i knew you were trouble.-taylor swift.mp3'),
(88, 88, '2001-04-07 00:00:00', 38, 283, 5, 'songs/88-the way i loved you-taylor swift.mp3'),
(89, 89, '2004-12-30 00:00:00', 38, 314, 3, 'songs/89-sparks fly-taylor swift.mp3'),
(90, 90, '2007-01-03 00:00:00', 38, 232, 2, 'songs/90-baby dont you break my heart slow-taylor swift.mp3'),
(91, 91, '2005-08-28 00:00:00', 49, 292, 3, 'songs/91-mm-ma-ma - crazy loop-dan balan.mp3'),
(92, 92, '2002-08-14 00:00:00', 50, 259, 1, 'songs/92-heartbreaker g-dragon-big bang.mp3'),
(93, 93, '2000-06-17 00:00:00', 51, 294, 2, 'songs/93-bad romance-lady gaga.mp3'),
(94, 94, '2002-07-10 00:00:00', 52, 226, 2, 'songs/94-hero-enrique iglesias.mp3'),
(95, 95, '2007-04-17 00:00:00', 53, 259, 5, 'songs/95-tell me your wish genie-snsd girls generation.mp3'),
(96, 96, '2003-09-09 00:00:00', 54, 206, 3, 'songs/96-la la love on my mind-ann winsborn.mp3'),
(97, 97, '2006-07-22 00:00:00', 51, 232, 3, 'songs/97-telephone-lady gaga.mp3'),
(98, 98, '2005-06-09 00:00:00', 55, 245, 1, 'songs/98-lucky-lucky twice.mp3'),
(99, 99, '2006-04-28 00:00:00', 56, 236, 5, 'songs/99-after your love is gone-modern talking.mp3'),
(100, 100, '2003-06-20 00:00:00', 57, 253, 3, 'songs/100-stronger-inez.mp3'),
(101, 101, '2007-10-27 00:00:00', 58, 250, 3, 'songs/101-where have you gone-surisan.mp3'),
(102, 102, '2000-05-07 00:00:00', 3, 221, 4, 'songs/102-all that i need-boyzone.mp3'),
(103, 103, '2003-10-11 00:00:00', 59, 202, 1, 'songs/103-tik tok-ke$ha.mp3'),
(104, 104, '2008-01-15 00:00:00', 60, 227, 3, 'songs/104-on the floor ft. pitbull-jennifer lopez.mp3'),
(105, 105, '2000-09-18 00:00:00', 36, 275, 3, 'songs/105-3-britney spears.mp3'),
(106, 106, '2004-05-27 00:00:00', 51, 307, 3, 'songs/106-poker face-lady gaga.mp3'),
(107, 107, '2008-09-28 00:00:00', 61, 289, 5, 'songs/107-lies dance version-t-ara.mp3'),
(108, 108, '2002-02-02 00:00:00', 62, 274, 1, 'songs/108-walking in the sun-degauss.mp3'),
(109, 109, '2004-12-01 00:00:00', 52, 301, 1, 'songs/109-takin back my love ft. ciara-enrique iglesias.mp3'),
(110, 110, '2007-03-24 00:00:00', 52, 208, 3, 'songs/110-bailamos-enrique iglesias.mp3'),
(111, 111, '2004-02-04 00:00:00', 59, 266, 3, 'songs/111-run devil run-ke$ha.mp3'),
(112, 112, '2008-08-06 00:00:00', 63, 256, 5, 'songs/112-my oh my-aqua.mp3'),
(113, 113, '2002-01-30 00:00:00', 64, 290, 3, 'songs/113-naturally-selena gomez.mp3'),
(114, 114, '2006-01-21 00:00:00', 65, 222, 3, 'songs/114-all good things come to an end-nelly furtado.mp3'),
(115, 115, '2003-04-23 00:00:00', 66, 294, 4, 'songs/115-bestfriend-toy box.mp3'),
(116, 116, '2002-06-23 00:00:00', 67, 206, 2, 'songs/116-insomnia-craig david.mp3'),
(117, 117, '2003-02-14 00:00:00', 56, 271, 3, 'songs/117-atlantis is calling-modern talking.mp3'),
(118, 118, '2002-05-31 00:00:00', 68, 281, 2, 'songs/118-7 years and 50 days-groove coverage.mp3'),
(119, 119, '2002-06-29 00:00:00', 69, 236, 3, 'songs/119-outta my head ay ya ya-ashlee simpson.mp3'),
(120, 120, '2000-12-26 00:00:00', 70, 253, 3, 'songs/120-wrong number-dbsk.mp3'),
(121, 121, '2004-08-23 00:00:00', 71, 236, 2, 'songs/121-forever and one-helloween.mp3'),
(122, 122, '2005-04-17 00:00:00', 72, 200, 5, 'songs/122-forever-stratovarious.mp3'),
(123, 123, '2003-04-19 00:00:00', 73, 214, 5, 'songs/123-in the end-linkin park.mp3'),
(124, 124, '2002-04-16 00:00:00', 74, 306, 2, '124-when you cry-vertical horizon.mp3'),
(125, 125, '2006-01-20 00:00:00', 75, 285, 3, '125-alone-avril lavigne.mp3'),
(126, 126, '2003-06-03 00:00:00', 76, 246, 3, '126-your love is a lie-simple plan.mp3'),
(127, 127, '2005-01-22 00:00:00', 77, 308, 4, '127-believe-savatage.mp3'),
(128, 128, '2003-07-26 00:00:00', 78, 246, 5, '128-whataya want from me-adam lambert.mp3'),
(129, 129, '2004-12-28 00:00:00', 73, 248, 2, '129-what ive done-linkin park.mp3'),
(130, 130, '2001-02-08 00:00:00', 79, 320, 2, '130-coming home-stratovarius.mp3'),
(131, 131, '2008-11-27 00:00:00', 80, 285, 1, '131-while your lips are still red-nightwish.mp3'),
(132, 132, '2000-04-30 00:00:00', 81, 235, 3, '132-november rain-guns n roses.mp3'),
(133, 133, '2009-12-26 00:00:00', 82, 307, 2, '133-wake me up when september ends-green day.mp3'),
(134, 134, '2009-05-04 00:00:00', 83, 224, 3, '134-what about now-daughtry.mp3'),
(135, 135, '2002-01-20 00:00:00', 75, 233, 3, '135-wish you were here-avril lavigne.mp3'),
(136, 136, '2009-06-16 00:00:00', 84, 212, 4, '136-one more night-maroon 5.mp3'),
(137, 137, '2006-05-02 00:00:00', 85, 249, 3, '137-30 minutes-t.a.t.u.mp3'),
(138, 138, '2007-11-04 00:00:00', 84, 204, 5, '138-payphone ft. wiz khalifa-maroon 5.mp3'),
(139, 139, '2005-07-25 00:00:00', 86, 286, 1, '139-18 and life-skid row.mp3'),
(140, 140, '2008-06-25 00:00:00', 75, 218, 2, '140-my happy ending-avril lavigne.mp3'),
(141, 141, '2007-04-29 00:00:00', 73, 239, 2, '141-a place for my head-linkin park.mp3'),
(142, 142, '2004-11-03 00:00:00', 87, 309, 3, '142-we will rock you-five.mp3'),
(143, 143, '2006-04-11 00:00:00', 73, 262, 4, '143-from the inside-linkin park.mp3'),
(144, 144, '2003-06-26 00:00:00', 75, 293, 5, '144-smile-avril lavigne.mp3'),
(145, 145, '2004-03-16 00:00:00', 73, 221, 4, '145-shadow of the day-linkin park.mp3'),
(146, 146, '2000-08-09 00:00:00', 88, 205, 4, '146-a night to remember hsm3-ashley tisdale.mp3'),
(147, 147, '2007-07-06 00:00:00', 89, 270, 1, '147-the misery-sonata arctica.mp3'),
(148, 148, '2000-09-25 00:00:00', 34, 230, 1, '148-incomplete-backstreet boys.mp3'),
(149, 149, '2004-01-01 00:00:00', 90, 211, 2, '149-in the army now-status quo.mp3'),
(150, 150, '2007-12-22 00:00:00', 76, 289, 2, '150-save you-simple plan.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE IF NOT EXISTS `title` (
  `TitleID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  `Year` int(11) NOT NULL,
  `GenreID` int(11) NOT NULL,
  `Country` varchar(40) NOT NULL,
  PRIMARY KEY (`TitleID`),
  KEY `FK_TITLE_GENRE` (`GenreID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=151 ;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`TitleID`, `Title`, `Year`, `GenreID`, `Country`) VALUES
(1, 'Soledad', 1994, 1, 'Country'),
(2, 'My Love', 2000, 1, 'United States'),
(3, 'Right Here Waiting For You', 2004, 1, 'United States'),
(4, 'Everyday I Love You', 1995, 1, 'England'),
(5, 'Boulevard', 1992, 1, 'United States'),
(6, 'When You Say Nothing At All', 2012, 1, 'England'),
(7, 'If We Hold On Together', 2001, 1, 'England'),
(8, 'That Is Love', 2002, 1, 'England'),
(9, 'Blue Night', 2006, 1, 'England'),
(10, 'Say You Will', 2005, 1, 'United States'),
(11, 'Everything I Do (I Do It For You)', 2010, 1, 'United States'),
(12, 'You Took My Heart Away', 1998, 1, 'England'),
(13, 'No Matter What', 2005, 1, 'England'),
(14, 'Woman In Love', 2009, 1, 'United States'),
(15, 'I Knew I Loved You', 2011, 1, 'United States'),
(16, 'Colors Of The Wind', 2009, 1, 'England'),
(17, 'Hold Me For A While', 2009, 1, 'England'),
(18, 'Viva Forever', 1997, 1, 'England'),
(19, 'Someone Like You', 2008, 1, 'United States'),
(20, 'If Tomorrow Never Comes', 2012, 1, 'United States'),
(21, 'Endless Love (ft. Lionel Richie)', 2000, 1, 'England'),
(22, 'I Still Believe', 1991, 1, 'United States'),
(23, '7 Years Of Love (Kyuhyun)', 1993, 1, 'United States'),
(24, 'If You''re Not The One', 2005, 1, 'England'),
(25, 'Complicated Heart', 2005, 1, 'England'),
(26, 'Say You Say Me', 1990, 1, 'England'),
(27, 'How Do I live', 2008, 1, 'United States'),
(28, 'Walking In The Rain', 2009, 1, 'England'),
(29, 'Big Girls Don''t Cry', 1990, 1, 'England'),
(30, 'Bye Bye', 2007, 1, 'England'),
(31, 'Take Me To Your Heart', 1997, 2, 'United States'),
(32, 'A Little Love', 2005, 2, 'England'),
(33, 'No Promises', 2005, 2, 'England'),
(34, 'The Day You Went Away', 2003, 2, 'England'),
(35, 'Cry On My Shoulder', 2001, 2, 'England'),
(36, 'Heal The World', 2007, 2, 'United States'),
(37, 'Happy New Year', 1993, 2, 'England'),
(38, 'Miss You', 2009, 2, 'England'),
(39, 'Bad Day', 1993, 2, 'England'),
(40, 'Until You', 1993, 2, 'England'),
(41, 'Trouble Is A Friend', 1996, 2, 'United States'),
(42, 'Proud Of You', 1995, 2, 'England'),
(43, 'Breathless', 1994, 2, 'England'),
(44, 'You Raise Me Up', 1992, 2, 'United States'),
(45, 'You Are Not Alone', 2003, 2, 'United States'),
(46, 'The Show', 2010, 2, 'England'),
(47, 'Pretty Boy', 2011, 2, 'England'),
(48, 'Impossible', 1996, 2, 'United States'),
(49, 'Because You Live', 2000, 2, 'United States'),
(50, 'Hello VietNam', 2005, 2, 'United States'),
(51, 'I Cry', 2000, 2, 'United States'),
(52, 'That''s Why (you go away)', 1997, 2, 'England'),
(53, 'Stand By Me', 1998, 2, 'England'),
(54, 'When You Believe', 2003, 2, 'United States'),
(55, 'Seasons In The Sun', 1994, 2, 'England'),
(56, 'Show Me The Meaning Of Being Lonely', 1995, 2, 'England'),
(57, 'Because You Loved Me', 2005, 2, 'United States'),
(58, 'Baby One More Time', 2003, 2, 'United States'),
(59, 'Never Had A Dream Come True', 2004, 2, 'England'),
(60, 'Earth Song', 2003, 2, 'England'),
(61, 'You Belong With Me', 2008, 3, 'United States'),
(62, 'Teardrops On My Guitar', 1998, 3, 'England'),
(63, 'Green Fields', 1997, 3, 'United States'),
(64, 'Crazier', 2008, 3, 'United States'),
(65, 'Safe And Sound (OST The Hunger Games) - Ft. The Civil Wars', 2006, 3, 'England'),
(66, 'Invisible', 2009, 3, 'United States'),
(67, 'Missing You', 1994, 3, 'United States'),
(68, 'Need You Now', 1994, 3, 'United States'),
(69, 'Speak Now', 1999, 3, 'England'),
(70, 'I Need You (ft. Faith Hill)', 2000, 3, 'United States'),
(71, 'Back To December', 2001, 3, 'United States'),
(72, 'You''re Not Sorry', 2010, 3, 'United States'),
(73, 'Remember When', 2011, 3, 'United States'),
(74, 'If I Die Young', 2000, 3, 'United States'),
(75, 'There you''ll be', 1996, 3, 'United States'),
(76, 'Don''t Forget To Remember Me', 2007, 3, 'England'),
(77, 'Mine', 1996, 3, 'England'),
(78, 'Our Song', 1995, 3, 'England'),
(79, 'White Horse', 2006, 3, 'England'),
(80, 'Mean', 2000, 3, 'United States'),
(81, 'Fifteen', 1998, 3, 'England'),
(82, 'Pyramid (ft. Iyaz)', 1994, 3, 'United States'),
(83, 'Scarborough Fair', 2006, 3, 'England'),
(84, 'Fearless', 2000, 3, 'United States'),
(85, 'You Needed Me', 1991, 3, 'United States'),
(86, 'We Are Never Ever Getting Back Together', 2010, 3, 'England'),
(87, 'I Knew You Were Trouble.', 2002, 3, 'United States'),
(88, 'The Way I Loved You', 1994, 3, 'England'),
(89, 'Sparks Fly', 1997, 3, 'United States'),
(90, 'Baby Don''t You Break My Heart Slow', 1997, 3, 'England'),
(91, 'Mm-ma-ma - Crazy Loop', 2008, 4, 'England'),
(92, 'Heartbreaker (G-Dragon)', 1990, 4, 'England'),
(93, 'Bad Romance', 1990, 4, 'United States'),
(94, 'Hero', 1997, 4, 'England'),
(95, 'Tell Me Your Wish (Genie)', 1996, 4, 'England'),
(96, 'La La Love On My Mind', 1998, 4, 'England'),
(97, 'Telephone', 1999, 4, 'England'),
(98, 'Lucky', 2005, 4, 'United States'),
(99, 'After Your Love Is Gone', 2006, 4, 'England'),
(100, 'Stronger', 2010, 4, 'England'),
(101, 'Where Have You Gone', 1997, 4, 'United States'),
(102, 'All That I Need', 2012, 4, 'United States'),
(103, 'Tik Tok', 2002, 4, 'England'),
(104, 'On The Floor (ft. Pitbull)', 2005, 4, 'England'),
(105, '3', 2008, 4, 'United States'),
(106, 'Poker Face', 1990, 4, 'United States'),
(107, 'Lies (Dance Version)', 2000, 4, 'England'),
(108, 'Walking In The Sun', 1998, 4, 'United States'),
(109, 'Takin'' Back My Love (ft. Ciara)', 1997, 4, 'United States'),
(110, 'Bailamos', 2010, 4, 'United States'),
(111, 'Run Devil Run', 2008, 4, 'United States'),
(112, 'My Oh My', 1991, 4, 'England'),
(113, 'Naturally', 2009, 4, 'United States'),
(114, 'All Good Things (Come To An End)', 2010, 4, 'United States'),
(115, 'Bestfriend', 2008, 4, 'United States'),
(116, 'Insomnia', 1997, 4, 'England'),
(117, 'Atlantis Is Calling', 1996, 4, 'England'),
(118, '7 Years and 50 Days', 1999, 4, 'United States'),
(119, 'Outta My Head (Ay Ya Ya)', 2010, 4, 'England'),
(120, 'Wrong Number', 2006, 4, 'England'),
(121, 'Forever And One', 1997, 5, 'United States'),
(122, 'Forever', 2007, 5, 'United States'),
(123, 'In The End', 1994, 5, 'England'),
(124, 'When You Cry', 2009, 5, 'England'),
(125, 'Alone', 1995, 5, 'England'),
(126, 'Your Love Is A Lie', 1997, 5, 'England'),
(127, 'Believe', 1993, 5, 'United States'),
(128, 'Whataya Want From Me', 2001, 5, 'England'),
(129, 'What I''ve Done', 1993, 5, 'United States'),
(130, 'Coming Home', 2010, 5, 'United States'),
(131, 'While Your Lips Are Still Red', 2000, 5, 'United States'),
(132, 'November Rain', 1999, 5, 'United States'),
(133, 'Wake Me Up When September Ends', 2005, 5, 'England'),
(134, 'What About Now', 1991, 5, 'United States'),
(135, 'Wish You Were Here', 1993, 5, 'United States'),
(136, 'One More Night', 2009, 5, 'England'),
(137, '30 Minutes', 1995, 5, 'England'),
(138, 'Payphone (ft. Wiz Khalifa)', 2011, 5, 'England'),
(139, '18 And Life', 2008, 5, 'England'),
(140, 'My Happy Ending', 1991, 5, 'United States'),
(141, 'A Place For My Head', 2006, 5, 'United States'),
(142, 'We will rock you', 2000, 5, 'United States'),
(143, 'From The Inside', 2011, 5, 'United States'),
(144, 'Smile', 2001, 5, 'England'),
(145, 'Shadow of The Day', 2004, 5, 'United States'),
(146, 'A Night To Remember (HSM3)', 2004, 5, 'England'),
(147, 'The Misery', 2005, 5, 'England'),
(148, 'Incomplete', 2012, 5, 'England'),
(149, 'In The Army Now', 2004, 5, 'England'),
(150, 'Save you', 1995, 5, 'England');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `UserID` int(11) NOT NULL,
  `UserName` varchar(40) NOT NULL,
  `PassWord` varchar(255) NOT NULL,
  `Status` int(11) NOT NULL,
  `AvatarPath` varchar(400) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `UserName`, `PassWord`, `Status`, `AvatarPath`) VALUES
(1, 'admin', '12345', 1, 'images/user/admin.jpg'),
(2, 'user1', '12345', 1, 'images/user/user1.jpg'),
(3, 'user2', '12345', 1, 'images/user/user2.jpg'),
(4, 'user3', '12345', 1, 'images/user/user3.jpg'),
(5, 'user4', '12345', 1, 'images/user/user4.jpg');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `FK_ALBUM_ARTIST` FOREIGN KEY (`ArtistID`) REFERENCES `artist` (`ArtistID`);

--
-- Constraints for table `album_details`
--
ALTER TABLE `album_details`
  ADD CONSTRAINT `FK_ALBUMDETAILS_ALBUM` FOREIGN KEY (`AlbumID`) REFERENCES `album` (`AlbumID`),
  ADD CONSTRAINT `FK_ALBUMDETAILS_SONG` FOREIGN KEY (`SongID`) REFERENCES `song` (`SongID`);

--
-- Constraints for table `lyric`
--
ALTER TABLE `lyric`
  ADD CONSTRAINT `FK_LYRIC_SONG` FOREIGN KEY (`SongID`) REFERENCES `song` (`SongID`),
  ADD CONSTRAINT `FK_LYRIC_USER` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`);

--
-- Constraints for table `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `FK_SONG_ARTIST` FOREIGN KEY (`ArtistID`) REFERENCES `artist` (`ArtistID`),
  ADD CONSTRAINT `FK_SONG_TITLE` FOREIGN KEY (`TitleID`) REFERENCES `title` (`TitleID`),
  ADD CONSTRAINT `FK_SONG_USER` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`);

--
-- Constraints for table `title`
--
ALTER TABLE `title`
  ADD CONSTRAINT `FK_TITLE_GENRE` FOREIGN KEY (`GenreID`) REFERENCES `genre` (`GenreID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
