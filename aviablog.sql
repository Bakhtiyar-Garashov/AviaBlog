-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2019 at 10:55 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aviablog`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `Id` int(11) NOT NULL,
  `Title` text NOT NULL,
  `Author` text NOT NULL,
  `Content` text NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`Id`, `Title`, `Author`, `Content`, `Created_at`, `Image`) VALUES
(1, 'Boeing history', 'Bəxtiyar', '<p><strong>Boeing Company</strong>, American aerospace company&mdash;the world&rsquo;s largest&mdash;that is the foremost manufacturer of commercial jet transports. It is also a leading producer of military&nbsp;aircraft,&nbsp;helicopters, space vehicles, and&nbsp;missiles, a standing significantly&nbsp;enhanced&nbsp;with the company&rsquo;s acquisition of the aerospace and defense units of Rockwell International Corporation in 1996 and its merger with McDonnell Douglas Corporation in 1997. Formerly Boeing Airplane Company, the firm assumed its current name in 1961 to reflect its expansion into fields beyond aircraft manufacture. Headquarters were in&nbsp;Seattle&nbsp;until 2001, when Boeing relocated to&nbsp;Chicago.</p>\r\n\r\n<p>Boeing Company&rsquo;s&nbsp;<a href=\"https://www.merriam-webster.com/dictionary/constituent\">constituent</a>&nbsp;business units are organized around three main groups of products and services&mdash;commercial airplanes,&nbsp;<a href=\"https://www.britannica.com/technology/military-aircraft\">military aircraft</a>&nbsp;and missiles, and space and communications. Boeing manufactures seven distinct families of commercial aircraft, which are assembled in two facilities&mdash;Renton and Everett&mdash;in&nbsp;<a href=\"https://www.britannica.com/place/Washington-state\">Washington</a>&nbsp;state and one facility in&nbsp;<a href=\"https://www.britannica.com/place/California-state\">California</a>. The Renton plant builds the narrow-body Boeing 737 and formerly built the 757 aircraft (discontinued in 2004), while the wide-body Boeing 767 and 777 aircraft and a limited number of the largely discontinued 747s are assembled at the&nbsp;<a href=\"https://www.britannica.com/place/Everett-Washington\">Everett</a>&nbsp;plant. The 787 aircraft are assembled at the Everett plant and at a facility in North Charleston,&nbsp;<a href=\"https://www.britannica.com/place/South-Carolina\">South Carolina</a>. Boeing Business Jets, a&nbsp;<a href=\"https://www.britannica.com/topic/joint-venture\">joint venture</a>&nbsp;of Boeing and&nbsp;<a href=\"https://www.britannica.com/topic/General-Electric\">General Electric</a>&nbsp;Co., makes and markets business jets based on the 737-700 airliner as well as VIP versions of the 747, 777, and 787 airliners.</p>\r\n\r\n<p>The company&rsquo;s military-related activities are centred on the design, manufacture, and support of&nbsp;<a href=\"https://www.britannica.com/technology/fighter-aircraft\">fighter aircraft</a>,&nbsp;<a href=\"https://www.britannica.com/technology/bomber-aircraft\">bombers</a>, transports,&nbsp;<a href=\"https://www.britannica.com/technology/helicopter\">helicopters</a>, and&nbsp;<a href=\"https://www.britannica.com/technology/missile\">missiles</a>. Its products include, among others, the&nbsp;<a href=\"https://www.britannica.com/technology/F-15\">F-15</a>&nbsp;Eagle, F/A-18 Hornet and Super Hornet, and AV-8&nbsp;<a href=\"https://www.britannica.com/technology/Harrier-airplane\">Harrier</a>fighters; the C-17 Globemaster III airlifter; the AH-64 Apache series of attack helicopters; the CH-47 Chinook transport helicopter; and the&nbsp;<a href=\"https://www.britannica.com/technology/AWACS\">AWACS</a>&nbsp;(Airborne Warning and Control System) aircraft, based on the 767. Boeing contributes to the&nbsp;<a href=\"https://www.britannica.com/topic/Lockheed-Martin-Corporation\">Lockheed Martin</a>&nbsp;F-22 Raptor air-superiority stealth fighter and the&nbsp;<a href=\"https://www.britannica.com/topic/Northrop-Grumman-Corporation\">Northrop Grumman</a>&nbsp;B-2 Spirit stealth&nbsp;<a href=\"https://www.britannica.com/technology/bomber-aircraft\">bomber</a>. In partnership with Bell Helicopter&nbsp;<a href=\"https://www.britannica.com/topic/Textron-Inc\">Textron</a>, it builds the V-22 Osprey tilt-rotor aircraft, and, with&nbsp;<a href=\"https://www.britannica.com/topic/United-Technologies-Corporation\">United Technologies</a>&rsquo; Sikorsky division, it made the RAH-66 Comanche armed reconnaissance&nbsp;<a href=\"https://www.britannica.com/technology/helicopter\">helicopter</a>. The company also builds the Harpoon antiship missile, the air-launched Standoff Land Attack Missile (SLAM), and the air-launched&nbsp;<a href=\"https://www.britannica.com/technology/cruise-missile\">cruise missile</a>&nbsp;(ALCM).</p>\r\n', '2019-04-27 19:11:16', 'static\\images\\5ca5f0c798a7a.png'),
(2, 'An225 biggest plane in the world', 'Yusif Mammadov', '<p><cite>Kiev, Ukraine (CNN) &mdash;&nbsp;</cite>On the outskirts of Kiev, somewhere between the city&#39;s Nyvky and Sviatoshyn metro stations, sits a drab industrial building that you could drive past a thousand times without guessing it contains an extraordinary secret.</p>\r\n\r\n<p>Inside can be found the unfinished chapter of one of the greatest feats of Soviet aviation ever conceived. The only clue is the building&#39;s size. It&#39;s gargantuan.</p>\r\n\r\n<p>It needs to be. Because it contains something equally vast -- the largest airplane that was never completed.</p>\r\n\r\n<p>The aircraft is an Antonov An-225, conceived by Soviet engineers in the dying days of the Cold War as a gigantic, gravity-defying workhorse that would help communism&#39;s ongoing race into space and assert the East&#39;s dominance of the skies.Only one An-225 was ever built by the Kiev-based Antonov company, which came up with the design. Romantically named Mriya, (Ukranian for dream), it first took flight in 1988 and has been in service ever since, drawing crowds of admirers wherever it spreads its huge wings.</p>\r\n\r\n<p>Construction was begun on a second plane, a sister for this aerial leviathan. But while Mriya is breaking world records in the skies, her twin still lies in pieces, only able to dream about leaving the ground.</p>\r\n\r\n<p>The fate of Mriya&#39;s hidden sister is a fascinating story about big ambitions and even bigger frustrations caught up in the turbulent history of modern Ukraine after the collapse of the Soviet Union.</p>\r\n\r\n<p>The story isn&#39;t over though. Antonov remains optimistic it&#39;ll get the second An-225 off the ground.</p>\r\n\r\n<p>Reaching the unfinished An-225&#39;s hangar involves being escorted by car through the vast industrial landscape west of Kiev that Antonov occupies. Entering the building is like stepping into a cathedral of mechanics -- it&#39;s surprisingly calm and tranquil.</p>\r\n\r\n<p>The cavernous, endless space swallows up the machinery and airplane parts within. Workers can occasionally be glimpsed in the distance, but the sound of their activity is lost, absorbed by the giant metallic structure.</p>\r\n\r\n<p>Towering over everything is the massive fuselage of the unfinished An-225. It&#39;s a beast of a thing. If ever completed, it will have a length of 84 meters (276 feet) -- a whole 9 meters longer than the world&#39;s largest passenger aircraft, the Airbus A380 superjumbo.</p>\r\n\r\n<p>It&#39;s an impressive sight, although it is slightly depressing to see this potentially majestic airplane in pieces. The wings that would give it a span of 88.4 meters are unattached, stretching off to one side. The nose gear, a mechanism the size of a house, is also nearby.</p>\r\n\r\n<p>So how did it get here?</p>\r\n\r\n<p>The story of the An-225 begins back in the 1960 and &#39;70s when the Soviet Union was locked in a race into space with the United States.</p>\r\n\r\n<p>It recently granted&nbsp;<a href=\"https://www.cnn.com/travel\">CNN Travel</a>&nbsp;an exclusive tour of the half-built aircraft, an intriuging glimpse at the legacy of one of the marvels of the modern aviation world.</p>\r\n', '2019-04-27 19:19:48', 'static\\images\\3.jpg'),
(4, 'Boeing 787 Dreamliner', 'Elcin', '<p>Boeing-787-8&nbsp;Dreamliner is one of the most modern aircrafts in the world.</p>\r\n\r\n<p>Liner that combines the latest technical solutions allows flying longer distances. In light of the use of latest technologies aircraft has many advantages in operation, economical in fuel consumption and has a comfortable environment for passengers. This liner is different from other aircrafts as technical and operational parameters on. It weighs less than comparable airplanes.</p>\r\n\r\n<p>Despite this, the flight range and load capacity is even more than for comparable liners, though it consumes 20% less fuel. Wide body &laquo;Boeing-787-8&raquo; Dreamliner can take 210 passengers onboard. Aircraft has resources to perform 15-hour non-stop flight covering distance up to 15700 km. According to these indicators Dreamliner is a leader among modern passenger aircrafts.</p>\r\n\r\n<p>In the passenger cabin &quot;Dreamliner&quot; has three types of seats that correspond to the different classes of services. All aircraft navigation systems as well as audio/video inflight entertainment equipment are based on the latest technologies.</p>\r\n\r\n<p>In the CIS and among some Eastern countries Azerbaijan was first who received such type of the aircraft.</p>\r\n\r\n<p>Currently AZAL&rsquo;s fleet include 2 Boeing 787-8 Dreamliner aircraft.</p>\r\n\r\n<h3>Technical information</h3>\r\n\r\n<table border=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Flight crew</strong></td>\r\n			<td>2-4</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cabin crew</strong></td>\r\n			<td>2-13</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Capacity</strong></td>\r\n			<td>210 passengers</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Maximum take-off weight</strong></td>\r\n			<td>227&nbsp;930&nbsp;kg</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Range</strong></td>\r\n			<td>13 621 km</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cruise speed</strong></td>\r\n			<td>956 km/h</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Service ceiling</strong></td>\r\n			<td>13 100 m</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Length</strong></td>\r\n			<td>56.72&nbsp; m</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Wingspan</strong></td>\r\n			<td>60.12 m</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Altitude</strong></td>\r\n			<td>16.92 m</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2019-04-27 19:24:49', 'static\\images\\dreamliner2.jpg'),
(5, 'F-16 Fighting Falcon', 'Bəxtiyar', '<p>Advanced equipment being fitted on the current build of the F-16 includes Honeywell colour flat-panel liquid crystal multifunction displays, digital terrain system, modular mission computer, colour video camera to record the pilot&rsquo;s view of the head-up display (HUD), a colour triple-deck video recorder and an enhanced programmable display generator.</p>\r\n\r\n<p>Under the USAF project Sure Strike, the F-16 is equipped with an improved data modem (IDM), which automatically provides target data to the HUD using data transmitted by a ground observer.</p>\r\n\r\n<p>The seat-back angle of the aircraft has been increased from 13&deg; to 30&deg; to provide increased comfort for the pilot.</p>\r\n\r\n<p>&quot;USAF F-16 aircraft are scheduled to receive the Boeing joint helmet-mounted cueing system (JHMCS).&quot;</p>\r\n\r\n<p>A follow-on programme, project Gold Strike, integrates an upgraded IDM for the transmission of images to and from a range of sources, including ground units and unmanned aircraft. The system can transmit images from the LANTIRN targeting pod and display video imagery to the cockpit.</p>\r\n\r\n<p>The USAF F-16 aircraft receive the Boeing joint helmet-mounted cueing system (JHMCS), currently in full-rate production. Deliveries of production systems began in 2004, and the system was first deployed operationally during Operation Iraqi Freedom.</p>\r\n\r\n<h2>F-16 missiles and weapons</h2>\r\n\r\n<p>The aircraft has nine hardpoints for weapons payloads: one at each wing tip, three under each wing and one centreline under the fuselage. The ordnance is launched from Raytheon LAU-88 launchers, MAU-12 and Orgen bomb ejector racks. The port wing is fitted with a 20mm General Electric M61A1 multi-barrel cannon and the gunsight is interfaced to the cockpit HUD.</p>\r\n\r\n<p>Air-to-air missiles which have been carried on the F-16 include the Lockheed Martin / Raytheon AIM-9 Sidewinder, Raytheon AMRAAM, Raytheon Sparrow, MBDA (formerly Matra BAe Dynamics) Skyflash and ASRAAM, and the MBDA R550 Magic 2. In April 2004, the F-16 first fired the new-generation AIM-9X Sidewinder, which is in full-rate production for the USAF.</p>\r\n\r\n<p>Air-to-surface missiles carried on the F-16 include Maverick, HARM and Shrike missiles, manufactured by Raytheon, and anti-ship missiles include Boeing Harpoon and Kongsberg Penguin. Flight tests with the Lockheed Martin&nbsp;<a href=\"https://www.airforce-technology.com/projects/agm-158-jassm-standoff-missile/\" onclick=\"window.open(this.href);return false;\">joint air-to-surface stand-off missile</a>&nbsp;(JASSM) have been conducted from the F-16.</p>\r\n\r\n<p>The first guided launch of the new joint direct attack munition (JDAM) was successfully carried out from an F-16. The F-16 was the first USAF aircraft to be fitted with the joint stand-off weapon (JSOW) in April 2000.</p>\r\n\r\n<p>The F-16 can be fitted with Lockheed Martin wind-corrected munitions dispenser (WCMD), which provides precision guidance for CBU-87, -89, and 97 cluster munitions. The system corrects for launch transients, ballistic errors, and winds aloft.</p>\r\n\r\n<p>The F-16 is the first aircraft to use the USAF&rsquo;s new weapon rack, the Edo Corporation BRU-57. The BRU-57 is a vertical ejection rack which doubles the aircraft&rsquo;s capacity for precision-guided weapons such as the JDAM and WCMD.</p>\r\n\r\n<p>All-weather stand-off weapons such as the AGM-84E stand-off land-attack missile (SLAM) and the AGM-142 Popeye II are planned to be included in future upgrades to the aircraft. Other advanced weapons include MICA, IRIS-T, Python IV, Active Skyflash air-to-air missile, ALARM antiradiation missile, Apache multimission stand-off weapon, autonomous free-flight dispenser system and AS30L laser-guided missile.</p>\r\n', '2019-04-27 19:27:34', 'static\\images\\f16-2.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Email` text NOT NULL,
  `Username` text NOT NULL,
  `Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_id`, `Name`, `Email`, `Username`, `Password`) VALUES
(1, 'Bəxtiyar Qaraşov', 'qarashov787@gmail.com', 'Bəxtiyar', '$5$rounds=535000$uupmCD9NvBE5mt/Z$QFwr91vYZQertKFEihrJp82kXN/ATTXT4eE07jclXsC'),
(2, 'Elcin Agayev', 'elcin@gmail.com', 'Elcin', '$5$rounds=535000$v1f6Ik9kB3wk1BIE$fukKY5UggCCGYiAIsnSw.wBayPTlvxaAzJvpg1RSA0C'),
(3, 'Yusif Mammadov', 'yusifm@gmail.com', 'Yusif Mammadov', '$5$rounds=535000$PIXRWzyV9vv6MiPj$sHyfsuF/u5yH2RafONVDDtAF8X8iqQf/0Q2yKWUDDn/'),
(4, 'Leyla Qasimova', 'leylaq@gmail.com', 'Leyla', '$5$rounds=535000$xMALwLkMXPeWor7w$QlcYeed2jjOePnR1Ooo4rfeaKe8/W.8pxC5HvCykkz6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
