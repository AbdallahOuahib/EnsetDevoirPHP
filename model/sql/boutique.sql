-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 21 fév. 2021 à 19:55
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `boutique`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` varchar(80) COLLATE utf8_bin NOT NULL,
  `name` varchar(80) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `name`) VALUES
('pcmcat312300050015', 'Connected Home & Housewares'),
('pcmcat248700050021', 'Housewares'),
('pcmcat303600050001', 'Household Batteries'),
('abcat0208002', 'Alkaline Batteries'),
('pcmcat113100050015', 'Carfi Instore Only'),
('abcat0208006', 'Specialty Batteries'),
('abcat0300000', 'Car Electronics & GPS'),
('pcmcat165900050023', 'Car Installation Parts & Accessories'),
('pcmcat331600050007', 'Car Audio Installation Parts'),
('pcmcat165900050031', 'Deck Installation Parts'),
('pcmcat165900050033', 'Dash Installation Kits'),
('pcmcat165900050034', 'Deck Harnesses'),
('pcmcat165900050032', 'Antennas & Adapters'),
('pcmcat298100050010', 'In-Store Only'),
('abcat0802000', 'Telephones & Communication'),
('abcat0811011', 'Telephone Accessories'),
('abcat0811012', 'Cordless Phone Batteries'),
('abcat0302000', 'Car Audio'),
('abcat0302034', 'Car Subwoofers & Enclosures'),
('abcat0302037', 'Car Subwoofers'),
('abcat0207000', 'Musical Instruments'),
('pcmcat152100050020', 'Recording Equipment'),
('pcmcat152100050026', 'Sound Recording Software'),
('pcmcat252700050006', 'Toys, Games & Drones'),
('pcmcat244200050008', 'TV, Movie & Character Toys'),
('pcmcat313400050000', 'Music Memorabilia'),
('abcat0208024', 'Musical Instrument Accessories'),
('pcmcat151600050042', 'Keyboard Accessories'),
('pcmcat287400050019', 'More Pop Culture Merchandise'),
('pcmcat152100050035', 'Microphones & Live Sound'),
('pcmcat152200050008', 'Live Sound Speakers'),
('pcmcat152200050009', 'Speaker Monitors'),
('pcmcat152100050022', 'Audio Interfaces'),
('pcmcat157700050041', 'Other Musical Instrument Accessories'),
('pcmcat151600050037', 'Keyboards'),
('pcmcat151600050039', 'Midi Keyboards & Controllers'),
('pcmcat251600050003', 'Microphones & Accessories'),
('pcmcat152100050038', 'Microphones'),
('pcmcat152100050033', 'DJ Equipment Accessories'),
('pcmcat205700050037', 'Recording Furniture & Stands'),
('pcmcat251600050005', 'Recording & Music Stands'),
('pcmcat221400050014', 'Dynamic'),
('pcmcat152100050027', 'DJ & Lighting Equipment'),
('pcmcat152100050031', 'DJ Console Systems'),
('pcmcat274200050008', 'Games, Puzzles & Cards'),
('pcmcat274200050009', 'Puzzles'),
('pcmcat152200050014', 'Sheet Music & DVDs'),
('pcmcat202800050013', 'Sheet Music'),
('abcat0700000', 'Video Games'),
('abcat0706000', 'Wii'),
('abcat0706002', 'Wii Games'),
('abcat0400000', 'Cameras & Camcorders'),
('abcat0401000', 'Digital Cameras'),
('abcat0401005', 'Digital SLR Cameras'),
('pcmcat180400050000', 'DSLR Body & Lens'),
('abcat0701000', 'Xbox 360'),
('abcat0701002', 'Xbox 360 Games'),
('abcat0410022', 'Camcorder Accessories'),
('pcmcat329700050009', 'Action Camcorder Accessories'),
('pcmcat240500050057', 'Action Camcorder Mounts'),
('pcmcat329700050020', 'Handlebar/Seatpost Mounts'),
('pcmcat329700050017', 'Chest Mounts'),
('pcmcat152100050032', 'DJ Lighting & Effects'),
('abcat0207005', 'Karaoke'),
('pcmcat251600050000', 'Karaoke Machines');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `ID` int(11) NOT NULL,
  `ref_product` varchar(80) COLLATE utf8_bin NOT NULL,
  `id_category` varchar(80) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`ID`, `ref_product`, `id_category`) VALUES
(351, '43900', 'pcmcat312300050015'),
(352, '43900', 'pcmcat248700050021'),
(353, '43900', 'pcmcat303600050001'),
(354, '43900', 'abcat0208002'),
(355, '48530', 'pcmcat312300050015'),
(356, '48530', 'pcmcat248700050021'),
(357, '48530', 'pcmcat303600050001'),
(358, '48530', 'abcat0208002'),
(359, '127687', 'pcmcat312300050015'),
(360, '127687', 'pcmcat248700050021'),
(361, '127687', 'pcmcat303600050001'),
(362, '127687', 'abcat0208002'),
(363, '150115', 'pcmcat312300050015'),
(364, '150115', 'pcmcat248700050021'),
(365, '150115', 'pcmcat303600050001'),
(366, '150115', 'abcat0208002'),
(367, '185230', 'pcmcat312300050015'),
(368, '185230', 'pcmcat248700050021'),
(369, '185230', 'pcmcat303600050001'),
(370, '185230', 'abcat0208002'),
(371, '185267', 'pcmcat312300050015'),
(372, '185267', 'pcmcat248700050021'),
(373, '185267', 'pcmcat303600050001'),
(374, '185267', 'abcat0208002'),
(375, '312290', 'pcmcat312300050015'),
(376, '312290', 'pcmcat248700050021'),
(377, '312290', 'pcmcat303600050001'),
(378, '312290', 'abcat0208002'),
(379, '324884', 'pcmcat113100050015'),
(380, '333179', 'pcmcat312300050015'),
(381, '333179', 'pcmcat248700050021'),
(382, '333179', 'pcmcat303600050001'),
(383, '333179', 'abcat0208006'),
(384, '346575', 'abcat0300000'),
(385, '346575', 'pcmcat165900050023'),
(386, '346575', 'pcmcat331600050007'),
(387, '346575', 'pcmcat165900050031'),
(388, '346575', 'pcmcat165900050033'),
(389, '346646', 'abcat0300000'),
(390, '346646', 'pcmcat165900050023'),
(391, '346646', 'pcmcat331600050007'),
(392, '346646', 'pcmcat165900050031'),
(393, '346646', 'pcmcat165900050033'),
(394, '347137', 'abcat0300000'),
(395, '347137', 'pcmcat165900050023'),
(396, '347137', 'pcmcat331600050007'),
(397, '347137', 'pcmcat165900050031'),
(398, '347137', 'pcmcat165900050034'),
(399, '347146', 'abcat0300000'),
(400, '347146', 'pcmcat165900050023'),
(401, '347146', 'pcmcat331600050007'),
(402, '347146', 'pcmcat165900050031'),
(403, '347146', 'pcmcat165900050034'),
(404, '347155', 'abcat0300000'),
(405, '347155', 'pcmcat165900050023'),
(406, '347155', 'pcmcat331600050007'),
(407, '347155', 'pcmcat165900050031'),
(408, '347155', 'pcmcat165900050034'),
(409, '347333', 'abcat0300000'),
(410, '347333', 'pcmcat165900050023'),
(411, '347333', 'pcmcat331600050007'),
(412, '347333', 'pcmcat165900050031'),
(413, '347333', 'pcmcat165900050032'),
(414, '349572', 'pcmcat298100050010'),
(415, '373642', 'pcmcat312300050015'),
(416, '373642', 'abcat0802000'),
(417, '373642', 'abcat0811011'),
(418, '373642', 'abcat0811012'),
(419, '478398', 'abcat0300000'),
(420, '478398', 'pcmcat165900050023'),
(421, '478398', 'pcmcat331600050007'),
(422, '478398', 'pcmcat165900050031'),
(423, '478398', 'pcmcat165900050033'),
(424, '612732', 'abcat0300000'),
(425, '612732', 'pcmcat165900050023'),
(426, '612732', 'pcmcat331600050007'),
(427, '612732', 'pcmcat165900050031'),
(428, '612732', 'pcmcat165900050033'),
(429, '643600', 'abcat0300000'),
(430, '643600', 'pcmcat165900050023'),
(431, '643600', 'pcmcat331600050007'),
(432, '643600', 'pcmcat165900050031'),
(433, '643600', 'pcmcat165900050034'),
(434, '643628', 'abcat0300000'),
(435, '643628', 'pcmcat165900050023'),
(436, '643628', 'pcmcat331600050007'),
(437, '643628', 'pcmcat165900050031'),
(438, '643628', 'pcmcat165900050034'),
(439, '643691', 'abcat0300000'),
(440, '643691', 'pcmcat165900050023'),
(441, '643691', 'pcmcat331600050007'),
(442, '643691', 'pcmcat165900050031'),
(443, '643691', 'pcmcat165900050034'),
(444, '643717', 'abcat0300000'),
(445, '643717', 'pcmcat165900050023'),
(446, '643717', 'pcmcat331600050007'),
(447, '643717', 'pcmcat165900050031'),
(448, '643717', 'pcmcat165900050034'),
(449, '673890', 'abcat0300000'),
(450, '673890', 'pcmcat165900050023'),
(451, '673890', 'pcmcat331600050007'),
(452, '673890', 'pcmcat165900050031'),
(453, '673890', 'pcmcat165900050033'),
(454, '677379', 'abcat0300000'),
(455, '677379', 'pcmcat165900050023'),
(456, '677379', 'pcmcat331600050007'),
(457, '677379', 'pcmcat165900050031'),
(458, '677379', 'pcmcat165900050034'),
(459, '1002651', 'abcat0300000'),
(460, '1002651', 'abcat0302000'),
(461, '1002651', 'abcat0302034'),
(462, '1002651', 'abcat0302037'),
(463, '1003003', 'abcat0207000'),
(464, '1003003', 'pcmcat152100050020'),
(465, '1003003', 'pcmcat152100050026'),
(466, '1003012', 'pcmcat252700050006'),
(467, '1003012', 'pcmcat244200050008'),
(468, '1003012', 'pcmcat313400050000'),
(469, '1003021', 'abcat0207000'),
(470, '1003021', 'abcat0208024'),
(471, '1003021', 'pcmcat151600050042'),
(472, '1003049', 'pcmcat252700050006'),
(473, '1003049', 'pcmcat244200050008'),
(474, '1003049', 'pcmcat287400050019'),
(475, '1003067', 'abcat0207000'),
(476, '1003067', 'pcmcat152100050020'),
(477, '1003067', 'pcmcat152100050026'),
(478, '1003076', 'abcat0207000'),
(479, '1003076', 'pcmcat152100050035'),
(480, '1003076', 'pcmcat152200050008'),
(481, '1003076', 'pcmcat152200050009'),
(482, '1003085', 'pcmcat252700050006'),
(483, '1003085', 'pcmcat244200050008'),
(484, '1003085', 'pcmcat287400050019'),
(485, '1003109', 'abcat0207000'),
(486, '1003109', 'pcmcat152100050020'),
(487, '1003109', 'pcmcat152100050022'),
(488, '1003127', 'abcat0207000'),
(489, '1003127', 'pcmcat152100050020'),
(490, '1003127', 'pcmcat152100050026'),
(491, '1003136', 'abcat0207000'),
(492, '1003136', 'pcmcat152100050020'),
(493, '1003136', 'pcmcat152100050026'),
(494, '1003145', 'abcat0207000'),
(495, '1003145', 'abcat0208024'),
(496, '1003145', 'pcmcat157700050041'),
(497, '1003163', 'abcat0207000'),
(498, '1003163', 'pcmcat152100050020'),
(499, '1003163', 'pcmcat152100050026'),
(500, '1003172', 'abcat0207000'),
(501, '1003172', 'pcmcat152100050020'),
(502, '1003172', 'pcmcat152100050022'),
(503, '1003214', 'abcat0207000'),
(504, '1003214', 'pcmcat152100050020'),
(505, '1003214', 'pcmcat152100050022'),
(506, '1003232', 'pcmcat252700050006'),
(507, '1003232', 'pcmcat244200050008'),
(508, '1003232', 'pcmcat287400050019'),
(509, '1003269', 'abcat0207000'),
(510, '1003269', 'pcmcat152100050020'),
(511, '1003269', 'pcmcat152100050026'),
(512, '1003278', 'abcat0207000'),
(513, '1003278', 'pcmcat152100050020'),
(514, '1003278', 'pcmcat152100050026'),
(515, '1003287', 'abcat0207000'),
(516, '1003287', 'pcmcat151600050037'),
(517, '1003287', 'pcmcat151600050039'),
(518, '1003296', 'abcat0207000'),
(519, '1003296', 'pcmcat152100050035'),
(520, '1003296', 'pcmcat251600050003'),
(521, '1003296', 'pcmcat152100050038'),
(522, '1003319', 'abcat0207000'),
(523, '1003319', 'abcat0208024'),
(524, '1003319', 'pcmcat152100050033'),
(525, '1003328', 'abcat0207000'),
(526, '1003328', 'pcmcat152100050020'),
(527, '1003328', 'pcmcat205700050037'),
(528, '1003328', 'pcmcat251600050005'),
(529, '1003337', 'abcat0207000'),
(530, '1003337', 'pcmcat152100050035'),
(531, '1003337', 'pcmcat251600050003'),
(532, '1003337', 'pcmcat152100050038'),
(533, '1003337', 'pcmcat221400050014'),
(534, '1003346', 'abcat0207000'),
(535, '1003346', 'pcmcat152100050020'),
(536, '1003346', 'pcmcat152100050026'),
(537, '1003364', 'abcat0207000'),
(538, '1003364', 'pcmcat152100050020'),
(539, '1003364', 'pcmcat205700050037'),
(540, '1003364', 'pcmcat251600050005'),
(541, '1003373', 'abcat0207000'),
(542, '1003373', 'pcmcat152100050020'),
(543, '1003373', 'pcmcat152100050026'),
(544, '1003415', 'pcmcat252700050006'),
(545, '1003415', 'pcmcat244200050008'),
(546, '1003415', 'pcmcat287400050019'),
(547, '1003424', 'pcmcat252700050006'),
(548, '1003424', 'pcmcat244200050008'),
(549, '1003424', 'pcmcat313400050000'),
(550, '1003433', 'abcat0207000'),
(551, '1003433', 'pcmcat152100050020'),
(552, '1003433', 'pcmcat152100050026'),
(553, '1003451', 'pcmcat252700050006'),
(554, '1003451', 'pcmcat244200050008'),
(555, '1003451', 'pcmcat313400050000'),
(556, '1003488', 'abcat0207000'),
(557, '1003488', 'pcmcat152100050027'),
(558, '1003488', 'pcmcat152100050031'),
(559, '1003497', 'pcmcat252700050006'),
(560, '1003497', 'pcmcat244200050008'),
(561, '1003497', 'pcmcat287400050019'),
(562, '1003531', 'pcmcat252700050006'),
(563, '1003531', 'pcmcat244200050008'),
(564, '1003531', 'pcmcat313400050000'),
(565, '1003568', 'pcmcat252700050006'),
(566, '1003568', 'pcmcat274200050008'),
(567, '1003568', 'pcmcat274200050009'),
(568, '1003604', 'abcat0207000'),
(569, '1003604', 'pcmcat152200050014'),
(570, '1003604', 'pcmcat202800050013'),
(571, '1003613', 'abcat0207000'),
(572, '1003613', 'pcmcat152100050020'),
(573, '1003613', 'pcmcat152100050026'),
(574, '1003622', 'pcmcat252700050006'),
(575, '1003622', 'pcmcat274200050008'),
(576, '1003622', 'pcmcat274200050009'),
(577, '1003631', 'abcat0207000'),
(578, '1003631', 'pcmcat152100050020'),
(579, '1003631', 'pcmcat152100050022'),
(580, '1003641', 'abcat0700000'),
(581, '1003641', 'abcat0706000'),
(582, '1003641', 'abcat0706002'),
(583, '1003659', 'abcat0207000'),
(584, '1003659', 'pcmcat151600050037'),
(585, '1003659', 'pcmcat151600050039'),
(586, '1003668', 'pcmcat252700050006'),
(587, '1003668', 'pcmcat274200050008'),
(588, '1003668', 'pcmcat274200050009'),
(589, '1004002', 'abcat0400000'),
(590, '1004002', 'abcat0401000'),
(591, '1004002', 'abcat0401005'),
(592, '1004002', 'pcmcat180400050000'),
(593, '1004622', 'abcat0700000'),
(594, '1004622', 'abcat0701000'),
(595, '1004622', 'abcat0701002'),
(596, '1004668', 'abcat0400000'),
(597, '1004668', 'abcat0410022'),
(598, '1004668', 'pcmcat329700050009'),
(599, '1004668', 'pcmcat240500050057'),
(600, '1004695', 'abcat0400000'),
(601, '1004695', 'abcat0410022'),
(602, '1004695', 'pcmcat329700050009'),
(603, '1004695', 'pcmcat240500050057'),
(604, '1004695', 'pcmcat329700050020'),
(605, '1004804', 'abcat0400000'),
(606, '1004804', 'abcat0410022'),
(607, '1004804', 'pcmcat329700050009'),
(608, '1004804', 'pcmcat240500050057'),
(609, '1004804', 'pcmcat329700050017'),
(610, '1004831', 'abcat0400000'),
(611, '1004831', 'abcat0410022'),
(612, '1004831', 'pcmcat329700050009'),
(613, '1004831', 'pcmcat240500050057'),
(614, '1004831', 'pcmcat329700050020'),
(615, '1005118', 'abcat0207000'),
(616, '1005118', 'pcmcat152100050020'),
(617, '1005118', 'pcmcat205700050037'),
(618, '1005118', 'pcmcat251600050005'),
(619, '1005181', 'abcat0207000'),
(620, '1005181', 'pcmcat152100050027'),
(621, '1005181', 'pcmcat152100050032'),
(622, '1005215', 'abcat0207000'),
(623, '1005215', 'pcmcat152100050027'),
(624, '1005215', 'pcmcat152100050032'),
(625, '1005288', 'abcat0207000'),
(626, '1005288', 'pcmcat152100050027'),
(627, '1005288', 'pcmcat152100050032'),
(628, '1005297', 'abcat0207000'),
(629, '1005297', 'pcmcat152100050027'),
(630, '1005297', 'pcmcat152100050032'),
(631, '1005312', 'abcat0207000'),
(632, '1005312', 'pcmcat152100050020'),
(633, '1005312', 'pcmcat205700050037'),
(634, '1005312', 'pcmcat251600050005'),
(635, '1005358', 'abcat0207000'),
(636, '1005358', 'pcmcat152100050027'),
(637, '1005358', 'pcmcat152100050032'),
(638, '1005409', 'abcat0207000'),
(639, '1005409', 'pcmcat152100050027'),
(640, '1005409', 'pcmcat152100050032'),
(641, '1005454', 'abcat0207000'),
(642, '1005454', 'pcmcat152100050027'),
(643, '1005454', 'pcmcat152100050032'),
(644, '1005515', 'abcat0207000'),
(645, '1005515', 'pcmcat152100050027'),
(646, '1005515', 'pcmcat152100050032'),
(647, '1005542', 'abcat0207000'),
(648, '1005542', 'pcmcat152100050027'),
(649, '1005542', 'pcmcat152100050032'),
(650, '1005667', 'abcat0207000'),
(651, '1005667', 'pcmcat152100050027'),
(652, '1005667', 'pcmcat152100050032'),
(653, '1005694', 'abcat0207000'),
(654, '1005694', 'pcmcat152100050027'),
(655, '1005694', 'pcmcat152100050032'),
(656, '1005721', 'abcat0207000'),
(657, '1005721', 'abcat0208024'),
(658, '1005721', 'pcmcat152100050033'),
(659, '1005758', 'abcat0207000'),
(660, '1005758', 'pcmcat152100050027'),
(661, '1005758', 'pcmcat152100050032'),
(662, '1005794', 'abcat0207000'),
(663, '1005794', 'pcmcat152100050027'),
(664, '1005794', 'pcmcat152100050032'),
(665, '1005803', 'abcat0207000'),
(666, '1005803', 'abcat0208024'),
(667, '1005803', 'pcmcat152100050033'),
(668, '1005849', 'abcat0207000'),
(669, '1005849', 'abcat0208024'),
(670, '1005849', 'pcmcat152100050033'),
(671, '1005867', 'abcat0207000'),
(672, '1005867', 'abcat0208024'),
(673, '1005867', 'pcmcat152100050033'),
(674, '1005885', 'abcat0207000'),
(675, '1005885', 'pcmcat152100050027'),
(676, '1005885', 'pcmcat152100050032'),
(677, '1005894', 'abcat0207000'),
(678, '1005894', 'pcmcat152100050027'),
(679, '1005894', 'pcmcat152100050032'),
(680, '1005903', 'abcat0207000'),
(681, '1005903', 'pcmcat152100050027'),
(682, '1005903', 'pcmcat152100050032'),
(683, '1005912', 'abcat0207000'),
(684, '1005912', 'pcmcat152100050027'),
(685, '1005912', 'pcmcat152100050032'),
(686, '1005985', 'abcat0207000'),
(687, '1005985', 'pcmcat152100050027'),
(688, '1005985', 'pcmcat152100050032'),
(689, '1006029', 'abcat0207000'),
(690, '1006029', 'pcmcat152100050027'),
(691, '1006029', 'pcmcat152100050032'),
(692, '1006038', 'abcat0207000'),
(693, '1006038', 'abcat0208024'),
(694, '1006038', 'pcmcat152100050033'),
(695, '1006046', 'abcat0207000'),
(696, '1006046', 'abcat0207005'),
(697, '1006046', 'pcmcat251600050000'),
(698, '1006065', 'abcat0207000'),
(699, '1006065', 'pcmcat152100050027'),
(700, '1006065', 'pcmcat152100050032');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `user_id` int(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id`, `user_id`) VALUES
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3);

-- --------------------------------------------------------

--
-- Structure de la table `commandeproductassoc`
--

CREATE TABLE `commandeproductassoc` (
  `id` int(80) NOT NULL,
  `Id_Commande` int(80) NOT NULL,
  `ref_product` varchar(80) COLLATE utf8_bin NOT NULL,
  `Qte` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `commandeproductassoc`
--

INSERT INTO `commandeproductassoc` (`id`, `Id_Commande`, `ref_product`, `Qte`) VALUES
(1, 30, '1003451', 1),
(2, 36, '1003451', 1),
(3, 36, '1003232', 1),
(4, 37, '1003085', 1),
(5, 37, '333179', 2),
(6, 37, '48530', 4);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `ref` int(20) NOT NULL,
  `name` varchar(80) COLLATE utf8_bin NOT NULL,
  `type` varchar(80) COLLATE utf8_bin NOT NULL,
  `price` double NOT NULL,
  `shipping` double NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `manufacturer` varchar(80) COLLATE utf8_bin NOT NULL,
  `Image` varchar(250) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`ref`, `name`, `type`, `price`, `shipping`, `description`, `manufacturer`, `Image`) VALUES
(43900, 'Duracell - AAA Batteries (4-Pack)', 'HardGood', 5.49, 5.49, 'Compatible with select electronic devices; AAA size; DURALOCK Power Preserve technology; 4-pack', 'Duracell', 'http://img.bbystatic.com/BestBuy_US/images/products/4390/43900_sa.jpg'),
(48530, 'Duracell - AA 1.5V CopperTop Batteries (4-Pack)', 'HardGood', 5.49, 5.49, 'Long-lasting energy; DURALOCK Power Preserve technology; for toys, clocks, radios, games, remotes, PDAs and more', 'Duracell', 'http://img.bbystatic.com/BestBuy_US/images/products/4853/48530_sa.jpg'),
(127687, 'Duracell - AA Batteries (8-Pack)', 'HardGood', 7.49, 5.49, 'Compatible with select electronic devices; AA size; DURALOCK Power Preserve technology; 8-pack', 'Duracell', 'http://img.bbystatic.com/BestBuy_US/images/products/1276/127687_sa.jpg'),
(150115, 'Energizer - MAX Batteries AA (4-Pack)', 'HardGood', 4.99, 5.49, '4-pack AA alkaline batteries; battery tester included', 'Energizer', 'http://img.bbystatic.com/BestBuy_US/images/products/1501/150115_sa.jpg'),
(185230, 'Duracell - C Batteries (4-Pack)', 'HardGood', 8.99, 5.49, 'Compatible with select electronic devices; C size; DURALOCK Power Preserve technology; 4-pack', 'Duracell', 'http://img.bbystatic.com/BestBuy_US/images/products/1852/185230_sa.jpg'),
(185267, 'Duracell - D Batteries (4-Pack)', 'HardGood', 9.99, 5.99, 'Compatible with select electronic devices; D size; DURALOCK Power Preserve technology; 4-pack', 'Duracell', 'http://img.bbystatic.com/BestBuy_US/images/products/1852/185267_sa.jpg'),
(312290, 'Duracell - 9V Batteries (2-Pack)', 'HardGood', 7.99, 5.49, 'Compatible with select electronic devices; alkaline chemistry; 9V size; DURALOCK Power Preserve technology; 2-pack', 'Duracell', 'http://img.bbystatic.com/BestBuy_US/images/products/3122/312290_sa.jpg'),
(324884, 'Directed Electronics - Viper Audio Glass Break Sensor', 'HardGood', 39.99, 0, 'From our expanded online assortment; compatible with Directed Electronics alarm systems; microphone and microprocessor detect and analyze intrusions; detects quiet glass breaks', 'Directed Electronics', 'http://img.bbystatic.com/BestBuy_US/images/products/3248/324884_rc.jpg'),
(333179, 'Energizer - N Cell E90 Batteries (2-Pack)', 'HardGood', 5.99, 5.49, 'Alkaline batteries; 1.5V', 'Energizer', 'http://img.bbystatic.com/BestBuy_US/images/products/3331/333179_sa.jpg'),
(346575, 'Metra - Radio Installation Dash Kit for Most 1989-2000 Ford, Lincoln & Mercury V', 'HardGood', 16.99, 0, 'From our expanded online assortment; compatible with most 1989-2000 Ford, Lincoln and Mercury vehicles; snap-in TurboKit offers fast installation; spacer/trim ring; rear support bracket', 'Metra', 'http://img.bbystatic.com/BestBuy_US/images/products/3465/346575_rc.jpg'),
(346646, 'Metra - Radio Dash Multikit for Select GM Vehicles - Black', 'HardGood', 16.99, 0, 'From our expanded online assortment; compatible with select GM vehicles; plastic material', 'Metra', 'http://img.bbystatic.com/BestBuy_US/images/products/3466/346646_rc.jpg'),
(347137, 'Metra - Wiring Harness for Select 1998-2008 Ford Vehicles - Multicolored', 'HardGood', 16.99, 0, 'Compatible with select 1998-2008 Ford vehicles; connects an aftermarket radio to a vehicle\'s harness', 'Metra', 'http://img.bbystatic.com/BestBuy_US/images/products/9852/9852688_sa.jpg'),
(347146, 'Metra - Turbo Wire Aftermarket Radio Wire Harness Adapter for Select Vehicles', 'HardGood', 16.99, 0, 'Compatible with Honda and Acura vehicles; connects an aftermarket radio to your car\'s harness', 'Metra', 'http://img.bbystatic.com/BestBuy_US/images/products/3471/347146_rc.jpg'),
(347155, 'Metra - Wiring Harness for Most 1986-1998 Honda Acura Vehicles - Multicolored', 'HardGood', 16.99, 0, 'Compatible with most 1986-1998 Honda Acura vehicles; connects an aftermarket radio to a vehicle\'s harness', 'Metra', 'http://img.bbystatic.com/BestBuy_US/images/products/3471/347155_rc.jpg'),
(347333, 'METRA - Antenna Cable Adapter - Black', 'HardGood', 13.99, 0, 'Compatible with select 1988-2005 vehicles; adapts an aftermarket antenna to OEM radios; flat plug', 'METRA', 'http://img.bbystatic.com/BestBuy_US/images/products/3473/347333_sa.jpg'),
(349572, 'INSTALL - PORTABLE RADAR DETECTOR INST', 'HardGood', 29.99, 0, 'PORTABLE RADAR DETECTOR INST', 'INSTALL', 'http://img.bbystatic.com/BestBuy_US/images/products/nonsku/default_hardlines_m.gif'),
(373642, 'Jensen - 3.6V NiCad Battery for 900MHz Phones', 'HardGood', 19.99, 5.49, 'Rechargeable 3.6V 300 mAh NiCad battery for GE 2-9614 model cordless phones', 'Jensen', 'http://img.bbystatic.com/BestBuy_US/images/products/3736/373642_rc.jpg'),
(478398, 'Metra - Radio Installation Dash Kit for Select Ford, Mazda and Mercury Vehicles ', 'HardGood', 16.99, 0, 'From our expanded online assortment; compatible with select Ford, Mazda and Mercury vehicles; allows the installation of an aftermarket radio into the factory dash location; high-grade ABS plastic material', 'Metra', 'http://img.bbystatic.com/BestBuy_US/images/products/4783/478398_rc.jpg'),
(612732, 'Metra - 1/4\" DIN Trim Ring for Most Vehicles', 'HardGood', 10.99, 0, 'Compatible with most vehicles; designed for the installation of an aftermarket radio', 'Metra', 'http://img.bbystatic.com/BestBuy_US/images/products/6127/612732_sa.jpg'),
(643600, 'Metra - Turbowire Radio Harness Adapter for Select Jeep Vehicles', 'HardGood', 16.99, 0, 'Compatible with select Jeep vehicles; ABS and vinyl construction; colored-coded wires', 'Metra', 'http://img.bbystatic.com/BestBuy_US/images/products/6436/643600_rc.jpg'),
(643628, 'Metra - Speaker Connector for Select Volkswagen Vehicles', 'HardGood', 16.99, 0, 'Compatible with select Volkswagen vehicles; connects a speaker to the vehicle\'s stereo; easy installation', 'Metra', 'http://img.bbystatic.com/BestBuy_US/images/products/6436/643628_rc.jpg'),
(643691, 'Metra - Speaker Connector for Select Mitsubishi and Chrysler Vehicles', 'HardGood', 19.99, 0, 'From our expanded online assortment; compatible with 1987 - 1993 Mitsubishi and Chrysler vehicles; color-coded wires', 'Metra', 'http://img.bbystatic.com/BestBuy_US/images/products/6436/643691_rc.jpg'),
(643717, 'Metra - Wiring Harness for Most 1990-2001 Mazda Vehicles - Multicolored', 'HardGood', 16.99, 0, 'Compatible with most 1990-2001 Mazda vehicles; connects an aftermarket radio to a vehicle\'s harness', 'Metra', 'http://img.bbystatic.com/BestBuy_US/images/products/6437/643717_rc.jpg'),
(673890, 'Metra - Professional Installer Series TurboKit', 'HardGood', 16.99, 0, 'From our expanded online assortment; compatible with select Chevrolet, Geo and Suzuki vehicles; allows installation of an aftermarket radio; provision for a 1/4\" or 1/2\" DIN equalizer; mounts precisely to OEM radio mounting positions', 'Metra', 'http://img.bbystatic.com/BestBuy_US/images/products/9852/9852688_sa.jpg'),
(677379, 'Metra - Wiring Harness for Most 1987 and Later Toyota Scion Vehicles - Multicolo', 'HardGood', 16.99, 0, 'Compatible with most 1987 and later Toyota Scion vehicles; connects an aftermarket radio to a vehicle\'s harness', 'Metra', 'http://img.bbystatic.com/BestBuy_US/images/products/6773/677379_rc.jpg'),
(1002651, 'Polk Audio - 12\" Single-Voice-Coil 4-Ohm Subwoofer - Black', 'HardGood', 99.99, 0, '720W peak power handling; Klippel-optimized driver components; polymer woofer cone; butyl rubber surround', 'Polk Audio', 'http://img.bbystatic.com/BestBuy_US/images/products/1002/1002651_sa.jpg'),
(1003003, 'Hard Rock TrackPak - Mac', 'Software', 29.99, 5.49, 'HAL LEONARD Hard Rock TrackPak: Features 12 hard rock and metal Apple Loops; compatible with GarageBand; includes guitars, bass, drums and synth parts', 'Hal Leonard', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003003_sa.jpg'),
(1003012, 'Aquarius - Fender Playing Cards Gift Tin - Red/Black', 'HardGood', 13.99, 5.49, 'AQUARIUS Fender Playing Cards Gift Tin: 2 decks; hinged gift tin; 52 different images per deck', 'Aquarius', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003012_sa.jpg'),
(1003021, 'LoDuca Bros Inc - Deluxe Keyboard Bench - Black', 'HardGood', 79.99, 0, 'LODUCA BROS. INC. Deluxe Keyboard Bench: Metal base; 13\" x 24\" padded seat; cross brace for support; adjusts to 3 different heights; can fit up to 2 people; folding design', 'LoDuca Bros Inc', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003021_sa.jpg'),
(1003049, 'Trumpet Multimedia - Trumpets That Work 2015 Calendar - Black', 'HardGood', 23.95, 5.49, 'TRUMPET MULTIMEDIA Trumpets That Work 2015 Calendar: 2015 calendar; Trumpets That Work design', 'Trumpet Multimedia', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003049_sa.jpg'),
(1003067, 'Pro Tools Tier 1 Audio Plug-In for PC and Mac Activation Card - Windows|Mac', 'Software', 99, 0, 'AVID Pro Tools Tier 1 Audio Plug-In for PC and Mac Activation Card: Compatible with PC and Mac; redeemable for a (TL) Aggro, Bruno/Reso, Cosmonaut Voice, DINR, (TL) Drum Rehab, (TL) EveryPhase, Reel Tape Saturation or other Avid Tier 1-level plug-in', 'Avid', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003067_sa.jpg'),
(1003076, 'M-Audio - BX8 D2 Studio Monitors (Pair) - Black', 'HardGood', 599.95, 0, 'M-AUDIO BX8 D2 Studio Monitors (Pair): Custom Class AB analog amplifiers; woven low-frequency driver; waveguide-loaded silk-dome tweeter; XLR and 1/4\" inputs', 'M-Audio', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003076_sa.jpg'),
(1003085, 'Aquarius - Grateful Dead Skull Logo Chunky Magnet - Red/White/Blue', 'HardGood', 5.99, 5.49, 'AQUARIUS Grateful Dead Skull Logo Chunky Magnet: Features the iconic Grateful Dead skull logo; magnet; chunky design', 'Aquarius', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003085_sa.jpg'),
(1003109, 'Alesis - AcousticLink Guitar Recording Pack - White', 'HardGood', 79, 0, 'ALESIS AcousticLink Guitar Recording Pack: Compatible with most guitars with a 1/4\" connector; built-in analog-to-digital conversion; includes a 16.5\' GuitarLink 1/4\"-to-USB cable, no-drill acoustic guitar pickup and Cubase LE recording software', 'Alesis', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003109_sa.jpg'),
(1003127, 'Modern Rock TrackPak - Mac', 'Software', 29.95, 5.49, 'HAL LEONARD Modern Rock TrackPak: Features 12 modern rock Apple Loops; compatible with GarageBand; includes complete songs, plus individual loops, beats, grooves and riffs for each song\'s instruments', 'Hal Leonard', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003127_sa.jpg'),
(1003136, '1970s Rock TrackPak - Mac', 'Software', 29.99, 5.49, 'HAL LEONARD 1970s Rock TrackPak: Features 12 classic rock songs; compatible with GarageBand; includes loops for each instrument', 'Hal Leonard', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003136_sa.jpg'),
(1003145, 'LoDuca Bros Inc - Professional Digital Photo Studio Kit - Black/White/Blue', 'HardGood', 49.99, 0, 'LODUCA BROS INC Professional Digital Photo Studio Kit: Lets you take professional-quality photos; includes 2 high-output tabletop lights, a 16\" cubed soft-lighting frame and an adjustable mini tabletop tripod; multicompartment, padded carrying case', 'LoDuca Bros Inc', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003145_rc.jpg'),
(1003163, 'Groovy Shapes Volume 1 - Windows|Mac', 'Software', 69.95, 0, 'SIBELIUS Groovy Shapes Volume 1: Teaches the basics of sound, rhythm, pitch and composition; guides students through progressive exercises; lets students create original music; for ages 5 to 7 years', 'Sibelius', 'http://img.bbystatic.com/BestBuy_US/images/pac/products/1312/1312451498/1312451498_sa.jpg'),
(1003172, 'PreSonus - AudioBox iTwo Recording System - Blue/Gray', 'HardGood', 159.99, 0, 'PRESONUS AudioBox iTwo Recording System: Compatible with Apple iPad, Windows and Mac recording software; 2 combo microphone/line/instrument inputs; Class A microphone preamplifier; balanced TRS monitor output; MIDI I/O; 24-bit/96kHz converters', 'PreSonus', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003172_sa.jpg'),
(1003214, 'PreSonus - AudioBox iOne Recording System - Blue/Gray', 'HardGood', 159.95, 0, 'PRESONUS AudioBox iOne Recording System: Compatible with Apple iPad, Windows and Mac recording software; instrument and microphone inputs; Class A microphone preamplifier; balanced TRS monitor output; 24-bit/96kHz converters', 'PreSonus', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003214_sa.jpg'),
(1003232, 'Aquarius - Grateful Dead Bear Logo Chunky Magnet - Green/Yellow/Blue/Purple/Red/', 'HardGood', 5.99, 5.49, 'AQUARIUS Grateful Dead Bear Logo Chunky Magnet: Tie-dyed Grateful Dead bear logo; chunky design', 'Aquarius', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003232_sa.jpg'),
(1003269, 'Addictive Keys: Studio Collection - Mac|Windows', 'Software', 179, 0, 'XLN AUDIO Addictive Keys: Studio Collection: Ideal for music producers and musicians; features virtual keyboard instruments; compatible with newer major hosts and DAWs', 'XLN Audio', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003269_sa.jpg'),
(1003278, 'Pro Tools Tier 2 Audio Plug-In for PC and Mac Activation Card - Windows|Mac', 'Software', 299, 0, 'AVID Pro Tools Tier 2 Audio Plug-In for PC and Mac Activation Card: Compatible with PC and Mac; redeemable for a Classic Compressors Bundle, Focusrite d2/d3, Impact, JOEMEEK Bundle, Moogerfooger Bundle or other Avid Tier 2-level plug-in', 'Avid', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003278_sa.jpg'),
(1003287, 'Korg - nanoKey2 25-Key USB MIDI Controller - White/Gray', 'HardGood', 49.99, 0, 'KORG nanoKey2 25-Key USB MIDI Controller: USB MIDI connectivity; 25 velocity-sensitive keys; compatible with the Korg microKEY; PC and Mac compatible', 'Korg', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003287_sa.jpg'),
(1003296, 'M-Audio - Nova Condenser Microphone - Silver', 'HardGood', 99.99, 0, 'M-AUDIO Nova Condenser Microphone: 1.1\" evaporated gold diaphragm; solid brass body and capsule; 20Hz - 18kHz frequency response; hard mount and soft case included', 'M-Audio', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003296_sa.jpg'),
(1003319, 'IK Multimedia - iRig Stomp - Black', 'HardGood', 59.99, 0, 'IK MULTIMEDIA iRig Stomp: Compatible with select Apple iPhone, iPad and iPod touch models, Android and Mac computers; allows use inline with other effects pedals and more; active battery-powered output circuit', 'IK Multimedia', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003319_sa.jpg'),
(1003328, 'IK Multimedia - iKlip Xpand Microphone Stand Mount - Black', 'HardGood', 49.99, 0, 'IK MULTIMEDIA iKlip Xpand Microphone Stand Mount: Compatible with most tablets from 7\" to 12.1\"; adjustable holder with 4 expandable grips; 2 sure-grip rubber gripping points; rubber padded base; ball joint; smart bracket design; iKlip Stage app', 'IK Multimedia', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003328_sa.jpg'),
(1003337, 'M-Audio - AM1 Cardioid Dynamic Microphone - Black/Gray', 'HardGood', 29.95, 5.99, 'M-AUDIO AM1 Cardioid Dynamic Microphone: For amplifying and recording vocals and instruments; dynamic design; cardioid pickup pattern; steel mesh, foam-lined head grille; die-cast, zinc-alloy housing', 'M-Audio', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003337_sa.jpg'),
(1003346, 'Elements Pack - Mac|Windows', 'Software', 174.99, 0, 'STEINBERG Elements Pack: Includes Cubase Elements 6 and WaveLab Elements 7 software; lets you produce music and edit audio on your Mac or PC', 'Steinberg', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003346_sa.jpg'),
(1003364, 'IK Multimedia - iKlip Xpand Mini Microphone Stand Mount - Black', 'HardGood', 39.99, 0, 'IK MULTIMEDIA iKlip Xpand Mini Microphone Stand Mount: Compatible with select Apple iPhone and iPod touch models and most smartphones with 3.5\" to 6\" screens; rubberized Gorilla Grip technology; adjustable clamp; ball joint', 'IK Multimedia', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003364_rc.jpg'),
(1003373, 'Acoustic Rock TrackPak - Mac', 'Software', 29.99, 5.49, 'HAL LEONARD Acoustic Rock TrackPak: 12 acoustic Apple Loops; compatible with GarageBand; includes guitars, bass, drums and keyboard parts', 'Hal Leonard', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003373_sa.jpg'),
(1003415, 'Aquarius - Elvis Heartthrob Chunky Magnet - Black/White', 'HardGood', 5.99, 5.49, 'AQUARIUS Elvis Heartthrob Chunky Magnet: Features a black-and-white photo of Elvis Presley; chunky design', 'Aquarius', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003415_sa.jpg'),
(1003424, 'Aquarius - Elvis Presley Jailhouse Rock 1,000-Piece Jigsaw Puzzle - Black/White/', 'HardGood', 15.99, 5.99, 'AQUARIUS Elvis Presley Jailhouse Rock 1,000-Piece Jigsaw Puzzle: 1,000 pieces; features Elvis on the set of the iconic film; measures 12\" x 36\" when completed', 'Aquarius', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003424_sa.jpg'),
(1003433, 'Pro Tools Tier 3 Audio Plug-In for PC and Mac Activation Card - Windows|Mac', 'Software', 499, 0, 'AVID Pro Tools Tier 3 Audio Plug-In for PC and Mac Activation Card: Compatible with PC and Mac; redeemable for an Eleven, ReVibe, (TL) Space (DSP + native) or X-Form Avid Tier 3-level plug-in', 'Avid', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003433_sa.jpg'),
(1003451, 'Aquarius - Genesis Playing Cards - Yellow/Purple/Black/Red', 'HardGood', 5.99, 5.49, 'AQUARIUS Genesis Playing Cards: 2.5\" x 3.5\" playing cards; linen-type finish', 'Aquarius', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003451_sa.jpg'),
(1003488, 'Korg - nanoKONTROL2 USB MIDI Controller - Black', 'HardGood', 59.99, 0, 'KORG nanoKONTROL2 USB MIDI Controller: 2 USB ports; compatible with Mac, PC, Apple iPad, Korg microKEY, most computer-based DAWs and most music production software', 'Korg', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003488_sa.jpg'),
(1003497, 'Aquarius - Rush Starman Chunky Magnet - Black/Red/White/Brown', 'HardGood', 5.99, 5.49, 'AQUARIUS Rush Starman Chunky Magnet: Features Rush\'s Starman logo; chunky design', 'Aquarius', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003497_sa.jpg'),
(1003531, 'Aquarius - Rush Playing Cards - Red/Black/White', 'HardGood', 5.99, 5.49, 'AQUARIUS Rush Playing Cards: 2.5\" x 3.5\" playing cards; linen-type finish', 'Aquarius', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003531_sa.jpg'),
(1003568, 'Aquarius - The Beatles Yellow Submarine 600-Piece Jigsaw Puzzle - Blue/Yellow/Re', 'HardGood', 15.99, 5.49, 'AQUARIUS The Beatles Yellow Submarine 600-Piece Jigsaw Puzzle: 600 pieces; features the artwork of The Beatles\' Yellow Submarine album; measures 20\" x 27\" when completed', 'Aquarius', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003568_sa.jpg'),
(1003604, 'Alfred - Katy Perry: Teenage Dream Sheet Music - Pink/Blue', 'HardGood', 17.99, 5.49, 'ALFRED Katy Perry: Teenage Dream Sheet Music: Piano, vocal and guitar sheet music for Katy Perry\'s Teenage Dream', 'Alfred', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003604_sa.jpg'),
(1003613, 'Classic Rock TrackPak - Mac', 'Software', 29.95, 5.49, 'HAL LEONARD Classic Rock TrackPak: Features 12 modern rock Apple Loops; compatible with GarageBand; includes complete songs, plus individual loops, beats, grooves and riffs for each song\'s instruments', 'Hal Leonard', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003613_sa.jpg'),
(1003622, 'Aquarius - Fender Stratocaster 1,000-Piece Jigsaw Puzzle - Black/Red/White/Yello', 'HardGood', 15.99, 5.99, 'AQUARIUS Fender Stratocaster 1,000-Piece Jigsaw Puzzle: 1,000 pieces; lets you show off your fandom for the guitar; measures 20\" x 27\" when completed', 'Aquarius', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003622_sa.jpg'),
(1003631, 'IK Multimedia - iRig MIDI 2 Audio Interface - Black', 'HardGood', 99.99, 0, 'IK MULTIMEDIA iRig MIDI 2 Audio Interface: Compatible with Mac, PC and select iOS devices; MIDI input, output and thru jacks; USB and Lightning interface', 'IK Multimedia', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003631_rc.jpg'),
(1003641, 'M. Night Shyamalan: The Last Airbender - Nintendo Wii', 'Game', 19.99, 3.99, 'Harness the power of Air and Fire as you join a quest for honor and power', 'THQ', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003641_500x500_sa.jpg'),
(1003659, 'M-Audio - Keystation Mini 32 II 32-Key USB MIDI Keyboard Controller - Black/Whit', 'HardGood', 99.95, 0, 'M-AUDIO Keystation Mini 32 II 32-Key USB MIDI Keyboard Controller: Ignite and Ableton Live Lite software; USB MIDI connectivity; pitch-bend, modulation and octave controls; 32 velocity-sensitive synth-action keys', 'M-Audio', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003659_sa.jpg'),
(1003668, 'Aquarius - The Beatles Street 1,000-Piece Jigsaw Puzzle - Black/White/Brown', 'HardGood', 15.99, 5.99, 'AQUARIUS The Beatles Street 1,000-Piece Jigsaw Puzzle: 1,000 pieces; features an image of The Beatles walking down the street; measures 20\" x 27\" when completed', 'Aquarius', 'http://img.bbystatic.com/BestBuy_US/images/products/1003/1003668_sa.jpg'),
(1004002, 'Canon - EOS Rebel T5 DSLR Camera with 18-55mm and 75-300mm Lenses - Black', 'HardGood', 749.99, 0, '18.0-megapixel APS-C CMOS sensorISO 100-6400, expandable to 12,800Shooting speeds up to 3 fpsFull high-definition movie mode', 'Canon', 'http://img.bbystatic.com/BestBuy_US/images/products/1004/1004002_sa.jpg'),
(1004622, 'Sniper: Ghost Warrior - Xbox 360', 'Game', 19.99, 3.99, 'Control the power of death as you ghost through the jungle', 'City Interactive', 'http://img.bbystatic.com/BestBuy_US/images/products/1004/1004622_sa.jpg'),
(1004668, 'GoPro - Camera Roll Bar Mount - Black', 'HardGood', 29.99, 5.49, 'Compatible with most GoPro cameras; clamps to tubes or frames ranging from 1.4-2.5\" in diameter; pivoting orientation arms', 'GoPro', 'http://img.bbystatic.com/BestBuy_US/images/products/1004/1004668_rc.jpg'),
(1004695, 'GoPro - Camera Mount Accessory Kit - Black', 'HardGood', 19.99, 5.49, 'Compatible with most GoPro cameras; includes a variety of camera mounting accessories', 'GoPro', 'http://img.bbystatic.com/BestBuy_US/images/products/1004/1004695_rc.jpg'),
(1004804, 'GoPro - Chest Mount Harness - Black', 'HardGood', 39.99, 0, 'Compatible with most GoPro cameras; one-size-fits-all adjustability', 'GoPro', 'http://img.bbystatic.com/BestBuy_US/images/products/1004/1004804_rc.jpg'),
(1004831, 'GoPro - Ride HERO Handlebar Seatpost Mount - Black', 'HardGood', 19.99, 5.49, 'Compatible with most GoPro cameras; clamps on tubes 3/4\" - 1-1/2\" in diameter; pivoting orientation arms with 3-way adjustability', 'GoPro', 'http://img.bbystatic.com/BestBuy_US/images/products/1004/1004831_rc.jpg'),
(1005118, 'American DJ - Dura Clamp', 'HardGood', 9.99, 5.49, 'From our expanded online assortment; designed for use with the Dura Truss system; supports lighting fixtures up to 20 lbs.; fits 1/2\" truss rods', 'American DJ', 'http://img.bbystatic.com/BestBuy_US/images/products/1005/1005118_sa.jpg'),
(1005181, 'American DJ - 20\" Glass Mirror Ball', 'HardGood', 89.99, 0, 'Compatible with M-101 and M-103 mirror ball motors; glass material', 'American DJ', 'http://img.bbystatic.com/BestBuy_US/images/products/1005/1005181_sa.jpg'),
(1005215, 'American DJ - Elation 4-Channel Chase Controller - Black', 'HardGood', 59.99, 0, 'From our expanded online assortment; instant sound-to-light chase; timed, audio and chase modes; built-in microphone', 'American DJ', 'http://img.bbystatic.com/BestBuy_US/images/products/1005/1005215_sa.jpg'),
(1005288, 'American DJ - Color Gel Filter (4-Pack)', 'HardGood', 12.99, 5.49, 'Designed for use with most Par-56 can gel frames; red, blue, yellow and green gel filters', 'American DJ', 'http://img.bbystatic.com/BestBuy_US/images/products/1005/1005288_sa.jpg'),
(1005297, 'American DJ - Crystal Bright Accent Strip CW LED Strip (4-Pack) - White', 'HardGood', 39.99, 0, 'From our expanded online assortment; 4 self-adhesive strips; cool white LEDs; AC adapter', 'American DJ', 'http://img.bbystatic.com/BestBuy_US/images/products/1005/1005297_sa.jpg'),
(1005312, 'American DJ - Tripod Stand - Black', 'HardGood', 44.99, 0, 'From our expanded online assortment; designed for use with most par cans, pin spots and lighting fixtures; extends up to 9\'; collapsible design', 'American DJ', 'http://img.bbystatic.com/BestBuy_US/images/products/1005/1005312_sa.jpg'),
(1005358, 'American DJ - DMX Dimmer Pack', 'HardGood', 199.99, 0, 'From our expanded online assortment; digital display; LED indicators; 16 built-in chases; reversible mounting brackets', 'American DJ', 'http://img.bbystatic.com/BestBuy_US/images/products/1005/1005358_sa.jpg'),
(1005409, 'American DJ - 16\" Glass Mirror Ball', 'HardGood', 54.99, 0, 'From our expanded online assortment; compatible with M-101 and M-103 mirror ball motors; glass material', 'American DJ', 'http://img.bbystatic.com/BestBuy_US/images/products/1005/1005409_sa.jpg'),
(1005454, 'American DJ - Bubble Blast Bubble Machine', 'HardGood', 299.99, 0, 'Compatible with most types of bubble liquid; dual-fan lift system; drainage valve system; top-load filling container; remote; on/off switch; wheels and dual handles', 'American DJ', 'http://img.bbystatic.com/BestBuy_US/images/products/1005/1005454_rc.jpg'),
(1005515, 'American DJ - 12\" Glass Mirror Ball', 'HardGood', 25.99, 8.49, 'From our expanded online assortment; glass material; portable', 'American DJ', 'http://img.bbystatic.com/BestBuy_US/images/products/1005/1005515_sa.jpg'),
(1005542, 'American DJ - Par 46 Can Kit - Black', 'HardGood', 44.99, 0, 'From our expanded online assortment; 200W lamp; 4 color gel filters; clamp; safety cable', 'American DJ', 'http://img.bbystatic.com/BestBuy_US/images/products/1005/1005542_sa.jpg'),
(1005667, 'American DJ - Elation Stage Pack', 'HardGood', 499.99, 0, 'From our expanded online assortment; 16-channel DMX controller; 2 XLR cables; two 4-channel dimmers', 'American DJ', 'http://img.bbystatic.com/BestBuy_US/images/products/1005/1005667_sa.jpg'),
(1005694, 'American DJ - DMX Mirror Ball Motor', 'HardGood', 129.99, 0, 'From our expanded online assortment; designed for use with most mirror balls up to 20\"; 2 DMX channels; circuit breaker protection', 'American DJ', 'http://img.bbystatic.com/BestBuy_US/images/products/1005/1005694_rc.jpg'),
(1005721, 'American DJ - 5\' CD Data Cable - Gray', 'HardGood', 13.99, 5.49, 'Compatible with most dual CD players with an 8-pin to 8-pin connection; replacement cable', 'American DJ', 'http://img.bbystatic.com/BestBuy_US/images/products/1005/1005721_sa.jpg'),
(1005758, 'American DJ - Dekker LED Effects Light - Black', 'HardGood', 169.99, 0, 'From our expanded online assortment; colored beams and 40 lenses; 3-button DMX LED menu; strobe effect; hanging bracket', 'American DJ', 'http://img.bbystatic.com/BestBuy_US/images/products/1005/1005758_sa.jpg'),
(1005794, 'American DJ - Par 56 Can Kit - Black', 'HardGood', 49.99, 0, 'From our expanded online assortment; 300W lamp; 4 color gel filters; clamp; safety cable', 'American DJ', 'http://img.bbystatic.com/BestBuy_US/images/products/1005/1005794_sa.jpg'),
(1005803, 'American DJ - Stage Tape - Black', 'HardGood', 15.99, 6.49, 'From our expanded online assortment; ideal for a variety of DJ applications; 2\" wide; no heavy residue', 'American DJ', 'http://img.bbystatic.com/BestBuy_US/images/products/1005/1005803_sa.jpg'),
(1005849, 'American DJ - 4\" Gaffers Tape - Black', 'HardGood', 34.99, 6.49, 'From our expanded online assortment; 4\" wide; 135\' of tape; cloth-like structure', 'American DJ', 'http://img.bbystatic.com/BestBuy_US/images/products/1005/1005849_sa.jpg'),
(1005867, 'American DJ - 2\" Gaffers Tape - White', 'HardGood', 20.99, 5.99, 'From our expanded online assortment; 2\" wide; 135\' of tape; cloth-like structure', 'American DJ', 'http://img.bbystatic.com/BestBuy_US/images/products/1005/1005867_sa.jpg'),
(1005885, 'American DJ - 15-1/2\' Flash Rope', 'HardGood', 79.99, 0, 'From our expanded online assortment; 12 flash capsules; rain-resistant; built-in hanging ring', 'American DJ', 'http://img.bbystatic.com/BestBuy_US/images/products/1005/1005885_sa.jpg'),
(1005894, 'American DJ - 3 RPM Mirror Ball Motor', 'HardGood', 14.99, 5.49, 'From our expanded online assortment; AC motor; 3 rpm; holds mirror balls up to 12\"', 'American DJ', 'http://img.bbystatic.com/BestBuy_US/images/products/1005/1005894_sa.jpg'),
(1005903, 'American DJ - LED Color Panel - Black', 'HardGood', 199.99, 0, 'From our expanded online assortment; 288 LEDs; 7 DMX channel modes; 4 operational modes; strobe and dimming effects', 'American DJ', 'http://img.bbystatic.com/BestBuy_US/images/pac/products/1306/1306786803/1306786803_sa.jpg'),
(1005912, 'American DJ - 1 RPM Mirror Ball Motor', 'HardGood', 14.99, 5.49, 'From our expanded online assortment; AC motor; 1 rpm; holds mirror balls up to 16\"', 'American DJ', 'http://img.bbystatic.com/BestBuy_US/images/products/1005/1005912_sa.jpg'),
(1005985, 'American DJ - Chase Controller Pack', 'HardGood', 99.99, 0, 'From our expanded online assortment; designed to chase LED and halogen par cans; 20 built-in programs; 7 preset scenes', 'American DJ', 'http://img.bbystatic.com/BestBuy_US/images/products/1005/1005985_rc.jpg'),
(1006029, 'American DJ - Par Can Kit - Black', 'HardGood', 54.99, 0, 'From our expanded online assortment; ideal for theaters, mobile entertainment and bands; 4 color gel filters; safety cable', 'American DJ', 'http://img.bbystatic.com/BestBuy_US/images/products/1006/1006029_sa.jpg'),
(1006038, 'American DJ - 8-Channel Switch Center', 'HardGood', 99.99, 0, 'From our expanded online assortment; built-in power supply; 8 channels', 'American DJ', 'http://img.bbystatic.com/BestBuy_US/images/products/1006/1006038_sa.jpg'),
(1006046, 'VocoPro - TabletOke Digital Karaoke Mixer - Black/Gray', 'HardGood', 149.99, 0, 'VOCOPRO TabletOke Digital Karaoke Mixer: Built-in Bluetooth music receiver; compatible with select smartphones, tablets and laptops with a 3.5mm (1/8\") jack; connects to karaoke player for CDG or DVD disc playback', 'VocoPro', 'http://img.bbystatic.com/BestBuy_US/images/products/1006/1006046_sa.jpg'),
(1006065, 'American DJ - 1 Gal. Bubble Juice', 'HardGood', 19.99, 9.99, 'From our expanded online assortment; designed for use in bubble machines; colorless; 1 gal.', 'American DJ', 'http://img.bbystatic.com/BestBuy_US/images/products/1006/1006065_sa.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `IdUser` int(80) NOT NULL,
  `pseudo` varchar(250) COLLATE utf8_bin NOT NULL,
  `password` varchar(250) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`IdUser`, `pseudo`, `password`) VALUES
(1, 'pseudo', '14e1b600b1fd579f47433b88e8d85291'),
(2, 'pseudo', '14e1b600b1fd579f47433b88e8d85291'),
(3, 'pseudo2', '14e1b600b1fd579f47433b88e8d85291'),
(4, 'pseudo2', '14e1b600b1fd579f47433b88e8d85291'),
(5, 'pseudo3', '14e1b600b1fd579f47433b88e8d85291'),
(6, 'pseudo3', '14e1b600b1fd579f47433b88e8d85291');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commandeproductassoc`
--
ALTER TABLE `commandeproductassoc`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ref`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`IdUser`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=701;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `commandeproductassoc`
--
ALTER TABLE `commandeproductassoc`
  MODIFY `id` int(80) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `IdUser` int(80) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
