-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 26 août 2023 à 17:12
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bddremy`
--

-- --------------------------------------------------------

--
-- Structure de la table `ap2`
--

CREATE TABLE `ap2` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `NOM` varchar(15) NOT NULL,
  `POST_NOM` varchar(15) NOT NULL,
  `PRENOM` varchar(15) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `LIEU_NAISSANCE` varchar(15) NOT NULL,
  `DATE_NAISSANCE` date NOT NULL,
  `ETAT_CIVIL` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `NATIONALITE` varchar(25) CHARACTER SET utf8mb4 NOT NULL,
  `ADRESSE` text NOT NULL,
  `TELEPHONE` int(15) NOT NULL,
  `FACULTE` varchar(30) NOT NULL,
  `PROMOTION` text NOT NULL,
  `USERNAME` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ap2`
--

INSERT INTO `ap2` (`ID`, `NOM`, `POST_NOM`, `PRENOM`, `EMAIL`, `LIEU_NAISSANCE`, `DATE_NAISSANCE`, `ETAT_CIVIL`, `NATIONALITE`, `ADRESSE`, `TELEPHONE`, `FACULTE`, `PROMOTION`, `USERNAME`) VALUES
(5, 'lukeba', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', 'ISIMTDllaG169'),
(6, '', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', 'ISIMTDllaG169'),
(7, 'FIRANCE', 'PEYOGO', 'Samuel', 'remytembo5@gmail.com', 'MATADI', '2023-07-01', 'Celibatair', 'CONGOLAISE', 'nsadisi', 8, 'Technique de Maintenance', 'G1', 'ISIMTDFPSG174');

-- --------------------------------------------------------

--
-- Structure de la table `bdd1`
--

CREATE TABLE `bdd1` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `NOM` varchar(15) NOT NULL,
  `POST_NOM` varchar(15) NOT NULL,
  `PRENOM` varchar(15) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `LIEU_NAISSANCE` varchar(15) NOT NULL,
  `DATE_NAISSANCE` date NOT NULL,
  `ETAT_CIVIL` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `NATIONALITE` varchar(25) CHARACTER SET utf8mb4 NOT NULL,
  `ADRESSE` text NOT NULL,
  `TELEPHONE` int(15) NOT NULL,
  `FACULTE` varchar(30) NOT NULL,
  `PROMOTION` text NOT NULL,
  `USERNAME` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `bdd1`
--

INSERT INTO `bdd1` (`ID`, `NOM`, `POST_NOM`, `PRENOM`, `EMAIL`, `LIEU_NAISSANCE`, `DATE_NAISSANCE`, `ETAT_CIVIL`, `NATIONALITE`, `ADRESSE`, `TELEPHONE`, `FACULTE`, `PROMOTION`, `USERNAME`) VALUES
(5, 'lukeba', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', 'ISIMTDllaG169'),
(6, '', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', 'ISIMTDllaG169'),
(7, 'FIRANCE', 'PEYOGO', 'Samuel', 'remytembo5@gmail.com', 'MATADI', '2023-07-01', 'Celibatair', 'CONGOLAISE', 'nsadisi', 8, 'Technique de Maintenance', 'G1', 'ISIMTDFPSG174');

-- --------------------------------------------------------

--
-- Structure de la table `bdd2`
--

CREATE TABLE `bdd2` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `NOM` varchar(15) NOT NULL,
  `POST_NOM` varchar(15) NOT NULL,
  `PRENOM` varchar(15) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `LIEU_NAISSANCE` varchar(15) NOT NULL,
  `DATE_NAISSANCE` date NOT NULL,
  `ETAT_CIVIL` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `NATIONALITE` varchar(25) CHARACTER SET utf8mb4 NOT NULL,
  `ADRESSE` text NOT NULL,
  `TELEPHONE` int(15) NOT NULL,
  `FACULTE` varchar(30) NOT NULL,
  `PROMOTION` text NOT NULL,
  `USERNAME` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `bdd2`
--

INSERT INTO `bdd2` (`ID`, `NOM`, `POST_NOM`, `PRENOM`, `EMAIL`, `LIEU_NAISSANCE`, `DATE_NAISSANCE`, `ETAT_CIVIL`, `NATIONALITE`, `ADRESSE`, `TELEPHONE`, `FACULTE`, `PROMOTION`, `USERNAME`) VALUES
(5, 'lukeba', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', 'ISIMTDllaG169'),
(6, '', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', 'ISIMTDllaG169'),
(7, 'FIRANCE', 'PEYOGO', 'Samuel', 'remytembo5@gmail.com', 'MATADI', '2023-07-01', 'Celibatair', 'CONGOLAISE', 'nsadisi', 8, 'Technique de Maintenance', 'G1', 'ISIMTDFPSG174');

-- --------------------------------------------------------

--
-- Structure de la table `bibliotheque`
--

CREATE TABLE `bibliotheque` (
  `id` int(11) NOT NULL,
  `titre` text NOT NULL,
  `auteur` text NOT NULL,
  `faculte` text NOT NULL,
  `jours` datetime NOT NULL DEFAULT current_timestamp(),
  `lien` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `bibliotheque`
--

INSERT INTO `bibliotheque` (`id`, `titre`, `auteur`, `faculte`, `jours`, `lien`) VALUES
(2, 'livre', 'tembo', 'GestionInfo', '2023-08-26 12:32:27', '../livres/KK.pdf');

-- --------------------------------------------------------

--
-- Structure de la table `connexion`
--

CREATE TABLE `connexion` (
  `ID` int(11) NOT NULL,
  `user` varchar(17) NOT NULL,
  `pass` text NOT NULL,
  `no_hash` varchar(25) NOT NULL,
  `niveau` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `connexion`
--

INSERT INTO `connexion` (`ID`, `user`, `pass`, `no_hash`, `niveau`) VALUES
(36, 'ISIMTDNBDG167', '796315', '', 'user'),
(37, 'ISIMTDpmcG168', '255916', '', 'user'),
(38, 'ISIMTDllaG169', '516297', '', 'user'),
(39, 'ISIMTDDSMG170', '324799', '', 'user'),
(40, 'ISIMTDRMHG171', '279969', '', 'user'),
(41, 'ISIMTDrBSG172', '806116', '', 'user'),
(42, 'ISIMTDnbrG173', '748923', '', 'user'),
(43, 'ISIMTDFPSG174', '614422', '', 'user'),
(44, 'ISIMTDvbaG175', '205806', '', 'user'),
(45, 'ISIMTDbbfG376', '691304', '', 'user'),
(46, 'ISIMTDTnsG277', '0', '', ''),
(47, 'ISIMTDBKZG278', '$2y$12$2HC', '', ''),
(49, 'ISIMTDMBNG379', '$2y$12$Mw0', '', ''),
(50, 'CAISSE', '1234', '', 'admincaisse'),
(51, 'section', '1234', '', 'adminsection'),
(52, 'departement', '1234', '', 'admindepart'),
(53, 'bookstore', '1234', '', 'adminstore');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `ID` int(11) NOT NULL,
  `NOM` varchar(15) NOT NULL,
  `POST_NOM` varchar(15) NOT NULL,
  `PRENOM` varchar(15) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `LIEU_NAISSANCE` varchar(15) NOT NULL,
  `DATE_NAISSANCE` date NOT NULL,
  `ETAT_CIVIL` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `NATIONALITE` varchar(25) CHARACTER SET utf8mb4 NOT NULL,
  `ADRESSE` text NOT NULL,
  `TELEPHONE` int(15) NOT NULL,
  `FACULTE` varchar(30) NOT NULL,
  `PROMOTION` text NOT NULL,
  `USERNAME` text NOT NULL,
  `OBSERVATION` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`ID`, `NOM`, `POST_NOM`, `PRENOM`, `EMAIL`, `LIEU_NAISSANCE`, `DATE_NAISSANCE`, `ETAT_CIVIL`, `NATIONALITE`, `ADRESSE`, `TELEPHONE`, `FACULTE`, `PROMOTION`, `USERNAME`, `OBSERVATION`) VALUES
(5, 'lukeba', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', 'ISIMTDllaG169', ''),
(6, '', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', 'ISIMTDllaG169', ''),
(7, 'FIRANCE', 'PEYOGO', 'Samuel', 'remytembo5@gmail.com', 'MATADI', '2023-07-01', 'Celibatair', 'CONGOLAISE', 'nsadisi', 8, 'Technique de Maintenance', 'G1', 'ISIMTDFPSG174', ''),
(8, 'vuma', 'bindele', 'alain', 'remytembo5@gmail.com', 'MATADI', '2023-06-29', 'Celibatair', 'CONGOLAISE', 'nsadisi', 10, 'TM', 'G1', 'ISIMTDvbaG175', ''),
(9, 'vuma', 'bindele', 'alain', 'remytembo5@gmail.com', 'MATADI', '2023-06-29', 'Celibatair', 'CONGOLAISE', 'nsadisi', 10, 'TM', 'G1', '', ''),
(10, 'vuma', 'bindele', 'alain', 'remytembo5@gmail.com', 'MATADI', '2023-06-29', 'Celibatair', 'CONGOLAISE', 'nsadisi', 10, 'TM', 'G1', '', ''),
(11, 'biyaka', 'buita', 'fortune', 'remytembo5@gmail.com', 'MATADI', '2023-07-01', 'Celibatair', 'congolaise', 'nsadisi', 10, 'GF', 'G3', 'ISIMTDbbfG376', ''),
(12, 'biyaka', 'buita', 'fortune', 'remytembo5@gmail.com', 'MATADI', '2023-07-01', 'Celibatair', 'congolaise', 'nsadisi', 10, 'GF', 'G3', 'ISIMTDbbfG376', ''),
(13, 'biyaka', 'buita', 'fortune', 'remytembo5@gmail.com', 'MATADI', '2023-07-01', 'Celibatair', 'congolaise', 'nsadisi', 10, 'GF', 'G3', 'ISIMTDbbfG376', ''),
(14, 'biyaka', 'buita', 'fortune', 'remytembo5@gmail.com', 'MATADI', '2023-07-01', 'Celibatair', 'congolaise', 'nsadisi', 10, 'GF', 'G3', 'ISIMTDbbfG376', ''),
(15, 'biyaka', 'buita', 'fortune', 'remytembo5@gmail.com', 'MATADI', '2023-07-01', 'Celibatair', 'congolaise', 'nsadisi', 10, 'GF', 'G3', '', ''),
(16, 'TEMBO', 'nguala', 'sedrick', 'remytembo5@gmail.com', 'MATADI', '2023-07-01', 'MariÃ©(e)', 'CONGOLAISE', 'nsadisi', 1, 'Douane', 'G2', 'ISIMTDTnsG277', ''),
(17, 'BITA', 'KUIRA', 'ZAMA', 'remytembo5@gmail.com', 'MATADI', '2023-07-08', 'MariÃ©(e)', 'CONGOLAISE', 'j', 5, 'IG', 'G2', 'ISIMTDBKZG278', ''),
(18, 'MAVUNGU', 'BINDA', 'NATHALIE', 'remytembot4@gmail.com', 'MATADI', '2023-07-07', 'Celibatair', 'CONGOLAISE', 'nsadisi', 7, 'GF', 'G3', 'ISIMTDMBNG379', '');

-- --------------------------------------------------------

--
-- Structure de la table `gf1`
--

CREATE TABLE `gf1` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `NOM` varchar(15) NOT NULL,
  `POST_NOM` varchar(15) NOT NULL,
  `PRENOM` varchar(15) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `LIEU_NAISSANCE` varchar(15) NOT NULL,
  `DATE_NAISSANCE` date NOT NULL,
  `ETAT_CIVIL` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `NATIONALITE` varchar(25) CHARACTER SET utf8mb4 NOT NULL,
  `ADRESSE` text NOT NULL,
  `TELEPHONE` int(15) NOT NULL,
  `FACULTE` varchar(30) NOT NULL,
  `PROMOTION` text NOT NULL,
  `USERNAME` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `gf1`
--

INSERT INTO `gf1` (`ID`, `NOM`, `POST_NOM`, `PRENOM`, `EMAIL`, `LIEU_NAISSANCE`, `DATE_NAISSANCE`, `ETAT_CIVIL`, `NATIONALITE`, `ADRESSE`, `TELEPHONE`, `FACULTE`, `PROMOTION`, `USERNAME`) VALUES
(5, 'lukeba', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', 'ISIMTDllaG169'),
(6, '', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', 'ISIMTDllaG169'),
(7, 'FIRANCE', 'PEYOGO', 'Samuel', 'remytembo5@gmail.com', 'MATADI', '2023-07-01', 'Celibatair', 'CONGOLAISE', 'nsadisi', 8, 'Technique de Maintenance', 'G1', 'ISIMTDFPSG174');

-- --------------------------------------------------------

--
-- Structure de la table `gf2`
--

CREATE TABLE `gf2` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `NOM` varchar(15) NOT NULL,
  `POST_NOM` varchar(15) NOT NULL,
  `PRENOM` varchar(15) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `LIEU_NAISSANCE` varchar(15) NOT NULL,
  `DATE_NAISSANCE` date NOT NULL,
  `ETAT_CIVIL` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `NATIONALITE` varchar(25) CHARACTER SET utf8mb4 NOT NULL,
  `ADRESSE` text NOT NULL,
  `TELEPHONE` int(15) NOT NULL,
  `FACULTE` varchar(30) NOT NULL,
  `PROMOTION` text NOT NULL,
  `USERNAME` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `gf2`
--

INSERT INTO `gf2` (`ID`, `NOM`, `POST_NOM`, `PRENOM`, `EMAIL`, `LIEU_NAISSANCE`, `DATE_NAISSANCE`, `ETAT_CIVIL`, `NATIONALITE`, `ADRESSE`, `TELEPHONE`, `FACULTE`, `PROMOTION`, `USERNAME`) VALUES
(5, 'lukeba', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', 'ISIMTDllaG169'),
(6, '', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', 'ISIMTDllaG169'),
(7, 'FIRANCE', 'PEYOGO', 'Samuel', 'remytembo5@gmail.com', 'MATADI', '2023-07-01', 'Celibatair', 'CONGOLAISE', 'nsadisi', 8, 'Technique de Maintenance', 'G1', 'ISIMTDFPSG174'),
(0, 'TEMBO', 'nguala', 'sedrick', 'remytembo5@gmail.com', 'MATADI', '2023-07-01', 'MariÃ©(e)', 'CONGOLAISE', 'nsadisi', 1, 'Douane', 'G2', 'ISIMTDTnsG277');

-- --------------------------------------------------------

--
-- Structure de la table `gf3`
--

CREATE TABLE `gf3` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `NOM` varchar(15) NOT NULL,
  `POST_NOM` varchar(15) NOT NULL,
  `PRENOM` varchar(15) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `LIEU_NAISSANCE` varchar(15) NOT NULL,
  `DATE_NAISSANCE` date NOT NULL,
  `ETAT_CIVIL` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `NATIONALITE` varchar(25) CHARACTER SET utf8mb4 NOT NULL,
  `ADRESSE` text NOT NULL,
  `TELEPHONE` int(15) NOT NULL,
  `FACULTE` varchar(30) NOT NULL,
  `PROMOTION` text NOT NULL,
  `USERNAME` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `gf3`
--

INSERT INTO `gf3` (`ID`, `NOM`, `POST_NOM`, `PRENOM`, `EMAIL`, `LIEU_NAISSANCE`, `DATE_NAISSANCE`, `ETAT_CIVIL`, `NATIONALITE`, `ADRESSE`, `TELEPHONE`, `FACULTE`, `PROMOTION`, `USERNAME`) VALUES
(5, 'lukeba', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', 'ISIMTDllaG169'),
(6, '', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', 'ISIMTDllaG169'),
(7, 'FIRANCE', 'PEYOGO', 'Samuel', 'remytembo5@gmail.com', 'MATADI', '2023-07-01', 'Celibatair', 'CONGOLAISE', 'nsadisi', 8, 'Technique de Maintenance', 'G1', 'ISIMTDFPSG174'),
(0, 'MAVUNGU', 'BINDA', 'NATHALIE', 'remytembot4@gmail.com', 'MATADI', '2023-07-07', 'Celibatair', 'CONGOLAISE', 'nsadisi', 7, 'GF', 'G3', 'ISIMTDMBNG379');

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE `inscription` (
  `Num_Form` int(4) NOT NULL,
  `iduser` varchar(17) NOT NULL,
  `NOM` varchar(15) NOT NULL,
  `POST_NOM` varchar(15) NOT NULL,
  `PRENOM` varchar(15) NOT NULL,
  `EMAIL` text NOT NULL,
  `LIEU_NAISSANCE` varchar(15) NOT NULL,
  `DATE_NAISSANCE` date NOT NULL,
  `ETAT_CIVIL` varchar(10) NOT NULL,
  `NATIONALITE` varchar(15) NOT NULL,
  `PERE` varchar(25) NOT NULL,
  `MERE` varchar(25) NOT NULL,
  `PROVINCE` varchar(10) NOT NULL,
  `DISTRICT` varchar(10) NOT NULL,
  `TERRITOIRE` varchar(10) NOT NULL,
  `ADRESSE` varchar(30) NOT NULL,
  `TELEPHONE` int(13) NOT NULL,
  `ECOLE` varchar(20) NOT NULL,
  `PROVINCE_ECOLE` varchar(10) NOT NULL,
  `TERRITOIRE_ECOLE` varchar(10) NOT NULL,
  `SECTION` varchar(15) NOT NULL,
  `CENTRE` varchar(15) NOT NULL,
  `ANNEE_DIPLOME` int(4) NOT NULL,
  `ACTIVITE` varchar(30) NOT NULL,
  `ANNEE_ACADEMIQUE` int(4) NOT NULL,
  `TITRE_ACADEMIQUE` varchar(15) NOT NULL,
  `ETABLISSEMENT` varchar(20) NOT NULL,
  `ANNEE_ETUDE` int(4) NOT NULL,
  `MENTION` varchar(15) NOT NULL,
  `CHOIX` varchar(25) NOT NULL,
  `PROMOTION` varchar(15) NOT NULL,
  `Date_Inscription` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`Num_Form`, `iduser`, `NOM`, `POST_NOM`, `PRENOM`, `EMAIL`, `LIEU_NAISSANCE`, `DATE_NAISSANCE`, `ETAT_CIVIL`, `NATIONALITE`, `PERE`, `MERE`, `PROVINCE`, `DISTRICT`, `TERRITOIRE`, `ADRESSE`, `TELEPHONE`, `ECOLE`, `PROVINCE_ECOLE`, `TERRITOIRE_ECOLE`, `SECTION`, `CENTRE`, `ANNEE_DIPLOME`, `ACTIVITE`, `ANNEE_ACADEMIQUE`, `TITRE_ACADEMIQUE`, `ETABLISSEMENT`, `ANNEE_ETUDE`, `MENTION`, `CHOIX`, `PROMOTION`, `Date_Inscription`) VALUES
(67, 'ISIMTDNBDG1', 'NGOMA', 'BINDA', 'DEBY', 'remytembo5@gmail.com', 'MATADI', '2023-06-01', 'Celibatair', 'CONGOLAISE', 'TEMBO', 'masisa', 'kinshasa', 'kinshasa', 'luozi', 'nsadisi', 6, 'MAKAYA', 'KONGO CENT', 'boma', 'LITTERAIRE', 'NTENTEMBUA', 6, '', 0, '', '', 0, '', 'Technique de Maintenance', 'G1', '2023-06-01'),
(68, 'ISIMTDpmcG1', 'puati', 'mbenza', 'cathy', 'remytembo4@gmail.com', 'MATADI', '2023-06-02', 'MariÃ©(e)', 'congolaise', 'TEMBO', 'L', 'kinshasa', 'cataracte', 'luozi', 'nsadisi', 6, 'MAKAYA', 'KONGO CENT', 'o', 'BIOCHIMIE', 'NTENTEMBUA', 4, '', 0, '', '', 0, '', 'Technique de Maintenance', 'G1', '2023-06-02'),
(69, 'ISIMTDllaG1', 'lukeba', 'lukeba', 'anael', 'remytembo5@gmail.com', 'MATADI', '2023-06-01', 'Celibatair', 'CONGOLAISE', 'TEMBO', 'masisa', 'kinshasa', 'cataracte', 'luozi', 'nsadisi', 8, 'MAKAYA', 'KONGO CENT', 'o', 'BIOCHIMIE', 'NTENTEMBUA', 7, '', 0, '', '', 0, '', 'Technique de Maintenance', 'G1', '2023-06-01'),
(70, 'ISIMTDDSMG1', 'DIVINE', 'SEPHORA', 'MOKO', 'remytembo5@gmail.com', 'MATADI', '2023-05-31', 'MariÃ©(e)', 'CONGOLAISE', 'TEMBO', 'masisa', 'kinshasa', 'cataracte', 'luozi', 'nsadisi', 7, 'MAKAYA', 'KONGO CENT', 'o', 'BIOCHIMIE', 'NTENTEMBUA', 11, '', 0, '', '', 0, '', 'Technique de Maintenance', 'G1', '2023-05-31'),
(71, 'ISIMTDRMHG1', 'RENEDO', 'MEDDY', 'HASH', 'remytembo5@gmail.com', 'MATADI', '2023-05-30', 'Celibatair', 'CONGOLAISE', 'TEMBO', 'masisa', 'kc', 'kinshasa', 'j', 'j', 8, 'MAKAYA', 'KONGO CENT', 'MATA', 'BIOCHIMIE', 'NTENTEMBUA', 6, '', 0, '', '', 0, '', 'Technique de Maintenance', 'G1', '2023-05-30'),
(72, 'ISIMTDrBSG1', 'remu', 'BINDA', 'Samuel', 'lorianenso32@gmail.com', 'MATADI', '2023-06-08', 'MariÃ©(e)', 'CONGOLAISE', 'l', 'L', 'kinshasa', 'cataracte', 'luozi', 'nsadisi', 8, 'LA BORNE', 'KONGO CENT', 'MATA', 'BIOCHIMIE', 'NTENTEMBUA', 3, '', 0, '', '', 0, '', 'Technique de Maintenance', 'G1', '2023-06-08'),
(73, 'ISIMTDnbrG1', 'ndunda', 'baudouin', 'richesse', 'remytembo5@gmail.com', 'MATADI', '2023-06-01', 'MariÃ©(e)', 'CONGOLAISE', 'TEMBO', 'masisa', 'kinshasa', 'kinshasa', 'luozi', 'j', 7, 'o', 'KONGO CENT', 'o', 'o', 'NTENTEMBUA', 13, '', 0, '', '', 0, '', 'Technique de Maintenance', 'G1', '2023-06-01'),
(74, 'ISIMTDFPSG1', 'FIRANCE', 'PEYOGO', 'Samuel', 'remytembo5@gmail.com', 'MATADI', '2023-07-01', 'Celibatair', 'CONGOLAISE', 'TEMBO', 'masisa', 'kinshasa', 'kinshasa', 'luozi', 'nsadisi', 8, 'MAKAYA', 'KONGO CENT', 'boma', 'LITTERAIRE', 'NTENTEMBUA', 9, '', 0, '', '', 0, '', 'Technique de Maintenance', 'G1', '2023-07-01'),
(75, 'ISIMTDvbaG1', 'vuma', 'bindele', 'alain', 'remytembo5@gmail.com', 'MATADI', '2023-06-29', 'Celibatair', 'CONGOLAISE', 'TEMBO', 'L', 'kinshasa', 'cataracte', 'luozi', 'nsadisi', 10, 'MAKAYA', 'KONGO CENT', 'MATA', 'BIOCHIMIE', 'NTENTEMBUA', 8, '', 0, '', '', 0, '', 'TM', 'G1', '2023-06-29'),
(76, 'ISIMTDbbfG3', 'biyaka', 'buita', 'fortune', 'remytembo5@gmail.com', 'MATADI', '2023-07-01', 'Celibatair', 'congolaise', 'TEMBO', 'masisa', 'kinshasa', 'cataracte', 'luozi', 'nsadisi', 10, 'MAKAYA', 'KONGO CENT', 'MATA', 'BIOCHIMIE', 'NTENTEMBUA', 12, '', 0, '', '', 0, '', 'GF', 'G3', '2023-07-01'),
(77, 'ISIMTDTnsG2', 'TEMBO', 'nguala', 'sedrick', 'remytembo5@gmail.com', 'MATADI', '2023-07-01', 'MariÃ©(e)', 'CONGOLAISE', 'TEMBO', 'masisa', 'kinshasa', 'cataracte', 'ndjili', 'nsadisi', 1, 'MAKAYA', 'KONGO CENT', 'MATA', 'BIOCHIMIE', 'o', 7, '', 0, '', '', 0, '', 'Douane', 'G2', '2023-07-01'),
(78, 'ISIMTDBKZG2', 'BITA', 'KUIRA', 'ZAMA', 'remytembo5@gmail.com', 'MATADI', '2023-07-08', 'MariÃ©(e)', 'CONGOLAISE', 'TEMBO', 'masisa', 'kinshasa', 'kinshasa', 'LUKALA', 'j', 5, 'MAKAYA', 'KONGO CENT', 'MATA', 'BIOCHIMIE', 'NTENTEMBUA', 5, '', 0, '', '', 0, '', 'IG', 'G2', '2023-07-08'),
(79, 'ISIMTDMBNG3', 'MAVUNGU', 'BINDA', 'NATHALIE', 'remytembot4@gmail.com', 'MATADI', '2023-07-07', 'Celibatair', 'CONGOLAISE', 'TEMBO', 'masisa', 'kinshasa', 'cataracte', 'luozi', 'nsadisi', 7, 'MAKAYA', 'KONGO CENT', 'MATA', 'BIOCHIMIE', 'NTENTEMBUA', 5, '', 0, '', '', 0, '', 'GF', 'G3', '2023-07-07');

-- --------------------------------------------------------

--
-- Structure de la table `p1`
--

CREATE TABLE `p1` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `NOM` varchar(15) NOT NULL,
  `POST_NOM` varchar(15) NOT NULL,
  `PRENOM` varchar(15) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `LIEU_NAISSANCE` varchar(15) NOT NULL,
  `DATE_NAISSANCE` date NOT NULL,
  `ETAT_CIVIL` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `NATIONALITE` varchar(25) CHARACTER SET utf8mb4 NOT NULL,
  `ADRESSE` text NOT NULL,
  `TELEPHONE` int(15) NOT NULL,
  `FACULTE` varchar(30) NOT NULL,
  `PROMOTION` text NOT NULL,
  `USERNAME` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `p1`
--

INSERT INTO `p1` (`ID`, `NOM`, `POST_NOM`, `PRENOM`, `EMAIL`, `LIEU_NAISSANCE`, `DATE_NAISSANCE`, `ETAT_CIVIL`, `NATIONALITE`, `ADRESSE`, `TELEPHONE`, `FACULTE`, `PROMOTION`, `USERNAME`) VALUES
(5, 'lukeba', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', 'ISIMTDllaG169'),
(6, '', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', 'ISIMTDllaG169'),
(7, 'FIRANCE', 'PEYOGO', 'Samuel', 'remytembo5@gmail.com', 'MATADI', '2023-07-01', 'Celibatair', 'CONGOLAISE', 'nsadisi', 8, 'Technique de Maintenance', 'G1', 'ISIMTDFPSG174');

-- --------------------------------------------------------

--
-- Structure de la table `p2`
--

CREATE TABLE `p2` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `NOM` varchar(15) NOT NULL,
  `POST_NOM` varchar(15) NOT NULL,
  `PRENOM` varchar(15) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `LIEU_NAISSANCE` varchar(15) NOT NULL,
  `DATE_NAISSANCE` date NOT NULL,
  `ETAT_CIVIL` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `NATIONALITE` varchar(25) CHARACTER SET utf8mb4 NOT NULL,
  `ADRESSE` text NOT NULL,
  `TELEPHONE` int(15) NOT NULL,
  `FACULTE` varchar(30) NOT NULL,
  `PROMOTION` text NOT NULL,
  `USERNAME` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `p2`
--

INSERT INTO `p2` (`ID`, `NOM`, `POST_NOM`, `PRENOM`, `EMAIL`, `LIEU_NAISSANCE`, `DATE_NAISSANCE`, `ETAT_CIVIL`, `NATIONALITE`, `ADRESSE`, `TELEPHONE`, `FACULTE`, `PROMOTION`, `USERNAME`) VALUES
(5, 'lukeba', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', 'ISIMTDllaG169'),
(6, '', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', 'ISIMTDllaG169'),
(7, 'FIRANCE', 'PEYOGO', 'Samuel', 'remytembo5@gmail.com', 'MATADI', '2023-07-01', 'Celibatair', 'CONGOLAISE', 'nsadisi', 8, 'Technique de Maintenance', 'G1', 'ISIMTDFPSG174'),
(0, 'BITA', 'KUIRA', 'ZAMA', 'remytembo5@gmail.com', 'MATADI', '2023-07-08', 'MariÃ©(e)', 'CONGOLAISE', 'j', 5, 'IG', 'G2', 'ISIMTDBKZG278');

-- --------------------------------------------------------

--
-- Structure de la table `password_recover`
--

CREATE TABLE `password_recover` (
  `id` int(11) NOT NULL,
  `token_user` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `date_recover` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `result_tm1`
--

CREATE TABLE `result_tm1` (
  `ID` int(4) NOT NULL,
  `NOM` varchar(25) NOT NULL,
  `POST_NOM` varchar(25) NOT NULL,
  `PRENOM` varchar(25) NOT NULL,
  `INFO` int(2) NOT NULL,
  `PHYSIQUE` int(2) NOT NULL,
  `ELECTRO_GEN` int(2) NOT NULL,
  `ANALYSE` int(2) NOT NULL,
  `SANTE` int(2) NOT NULL,
  `SE` int(2) NOT NULL,
  `SCHEMAS_ELEC` int(2) NOT NULL,
  `EDUCIT` int(2) NOT NULL,
  `ALGO` int(2) NOT NULL,
  `MATH` int(2) NOT NULL,
  `ANGLAIS` int(2) NOT NULL,
  `ELECTRO_DIGI` int(2) NOT NULL,
  `LEEO` int(2) NOT NULL,
  `MESURE` int(2) NOT NULL,
  `FRANCAIS` int(2) NOT NULL,
  `PROJET` int(2) NOT NULL,
  `TECHNO` int(2) NOT NULL,
  `PERCENT` int(2) NOT NULL,
  `MENTION` varchar(11) NOT NULL,
  `DATE_ADD` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `result_tm1`
--

INSERT INTO `result_tm1` (`ID`, `NOM`, `POST_NOM`, `PRENOM`, `INFO`, `PHYSIQUE`, `ELECTRO_GEN`, `ANALYSE`, `SANTE`, `SE`, `SCHEMAS_ELEC`, `EDUCIT`, `ALGO`, `MATH`, `ANGLAIS`, `ELECTRO_DIGI`, `LEEO`, `MESURE`, `FRANCAIS`, `PROJET`, `TECHNO`, `PERCENT`, `MENTION`, `DATE_ADD`) VALUES
(1, 'FIRANCE', 'PEYOGO', 'Samuel', 14, 13, 5, 3, 3, 3, 3, 11, 11, 13, 15, 3, 3, 3, 6, 7, 3, 45, 'SATISFACTIO', '0000-00-00 00:00:00'),
(2, 'FIRANCE', 'PEYOGO', 'Samuel', 14, 13, 5, 3, 3, 3, 3, 11, 11, 13, 15, 3, 3, 3, 6, 7, 3, 45, 'SATISFACTIO', '0000-00-00 00:00:00'),
(3, 'FIRANCE', 'PEYOGO', 'Samuel', 14, 13, 5, 3, 3, 3, 3, 11, 11, 13, 15, 3, 3, 3, 6, 7, 3, 45, 'SATISFACTIO', '2023-08-11 09:06:54');

-- --------------------------------------------------------

--
-- Structure de la table `result_tm2`
--

CREATE TABLE `result_tm2` (
  `ID` int(11) NOT NULL,
  `NOM` varchar(25) NOT NULL,
  `POST_NOM` varchar(25) NOT NULL,
  `PRENOM` varchar(25) NOT NULL,
  `SEXE` varchar(7) NOT NULL,
  `STRUC_ORDI` int(11) NOT NULL,
  `MACHINES_ELEC` int(11) NOT NULL,
  `CALCULATEUR` int(11) NOT NULL,
  `TELECOM` int(11) NOT NULL,
  `ALGO_II` int(11) NOT NULL,
  `DCI` int(11) NOT NULL,
  `SE_II` int(11) NOT NULL,
  `LABO_I` int(11) NOT NULL,
  `MATH_II` int(11) NOT NULL,
  `ELECTRMAGNE` int(11) NOT NULL,
  `ANALYSE_CIRCUIT` int(11) NOT NULL,
  `STAT` int(11) NOT NULL,
  `ANGLAIS_II` int(11) NOT NULL,
  `MRS` int(11) NOT NULL,
  `AUTO_I` int(11) NOT NULL,
  `RX_I` int(11) NOT NULL,
  `PROJET` int(11) NOT NULL,
  `POURCENTAGE` int(11) NOT NULL,
  `MENTION` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `tar1`
--

CREATE TABLE `tar1` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `NOM` varchar(15) NOT NULL,
  `POST_NOM` varchar(15) NOT NULL,
  `PRENOM` varchar(15) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `LIEU_NAISSANCE` varchar(15) NOT NULL,
  `DATE_NAISSANCE` date NOT NULL,
  `ETAT_CIVIL` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `NATIONALITE` varchar(25) CHARACTER SET utf8mb4 NOT NULL,
  `ADRESSE` text NOT NULL,
  `TELEPHONE` int(15) NOT NULL,
  `FACULTE` varchar(30) NOT NULL,
  `PROMOTION` text NOT NULL,
  `USERNAME` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tar1`
--

INSERT INTO `tar1` (`ID`, `NOM`, `POST_NOM`, `PRENOM`, `EMAIL`, `LIEU_NAISSANCE`, `DATE_NAISSANCE`, `ETAT_CIVIL`, `NATIONALITE`, `ADRESSE`, `TELEPHONE`, `FACULTE`, `PROMOTION`, `USERNAME`) VALUES
(5, 'lukeba', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', 'ISIMTDllaG169'),
(6, '', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', 'ISIMTDllaG169'),
(7, 'FIRANCE', 'PEYOGO', 'Samuel', 'remytembo5@gmail.com', 'MATADI', '2023-07-01', 'Celibatair', 'CONGOLAISE', 'nsadisi', 8, 'Technique de Maintenance', 'G1', 'ISIMTDFPSG174');

-- --------------------------------------------------------

--
-- Structure de la table `tar2`
--

CREATE TABLE `tar2` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `NOM` varchar(15) NOT NULL,
  `POST_NOM` varchar(15) NOT NULL,
  `PRENOM` varchar(15) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `LIEU_NAISSANCE` varchar(15) NOT NULL,
  `DATE_NAISSANCE` date NOT NULL,
  `ETAT_CIVIL` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `NATIONALITE` varchar(25) CHARACTER SET utf8mb4 NOT NULL,
  `ADRESSE` text NOT NULL,
  `TELEPHONE` int(15) NOT NULL,
  `FACULTE` varchar(30) NOT NULL,
  `PROMOTION` text NOT NULL,
  `USERNAME` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tar2`
--

INSERT INTO `tar2` (`ID`, `NOM`, `POST_NOM`, `PRENOM`, `EMAIL`, `LIEU_NAISSANCE`, `DATE_NAISSANCE`, `ETAT_CIVIL`, `NATIONALITE`, `ADRESSE`, `TELEPHONE`, `FACULTE`, `PROMOTION`, `USERNAME`) VALUES
(5, 'lukeba', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', 'ISIMTDllaG169'),
(6, '', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', 'ISIMTDllaG169'),
(7, 'FIRANCE', 'PEYOGO', 'Samuel', 'remytembo5@gmail.com', 'MATADI', '2023-07-01', 'Celibatair', 'CONGOLAISE', 'nsadisi', 8, 'Technique de Maintenance', 'G1', 'ISIMTDFPSG174');

-- --------------------------------------------------------

--
-- Structure de la table `tm1`
--

CREATE TABLE `tm1` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `NOM` varchar(15) NOT NULL,
  `POST_NOM` varchar(15) NOT NULL,
  `PRENOM` varchar(15) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `LIEU_NAISSANCE` varchar(15) NOT NULL,
  `DATE_NAISSANCE` date NOT NULL,
  `ETAT_CIVIL` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `NATIONALITE` varchar(25) CHARACTER SET utf8mb4 NOT NULL,
  `ADRESSE` text NOT NULL,
  `TELEPHONE` int(15) NOT NULL,
  `FACULTE` varchar(30) NOT NULL,
  `PROMOTION` text NOT NULL,
  `USERNAME` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tm1`
--

INSERT INTO `tm1` (`ID`, `NOM`, `POST_NOM`, `PRENOM`, `EMAIL`, `LIEU_NAISSANCE`, `DATE_NAISSANCE`, `ETAT_CIVIL`, `NATIONALITE`, `ADRESSE`, `TELEPHONE`, `FACULTE`, `PROMOTION`, `USERNAME`) VALUES
(5, 'lukeba', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', 'ISIMTDllaG169'),
(6, '', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', 'ISIMTDllaG169'),
(7, 'FIRANCE', 'PEYOGO', 'Samuel', 'remytembo5@gmail.com', 'MATADI', '2023-07-01', 'Celibatair', 'CONGOLAISE', 'nsadisi', 8, 'Technique de Maintenance', 'G1', 'ISIMTDFPSG174'),
(0, 'vuma', 'bindele', 'alain', 'remytembo5@gmail.com', 'MATADI', '2023-06-29', 'Celibatair', 'CONGOLAISE', 'nsadisi', 10, 'TM', 'G1', 'ISIMTDvbaG175'),
(0, 'vuma', 'bindele', 'alain', 'remytembo5@gmail.com', 'MATADI', '2023-06-29', 'Celibatair', 'CONGOLAISE', 'nsadisi', 10, 'TM', 'G1', ''),
(0, 'vuma', 'bindele', 'alain', 'remytembo5@gmail.com', 'MATADI', '2023-06-29', 'Celibatair', 'CONGOLAISE', 'nsadisi', 10, 'TM', 'G1', '');

-- --------------------------------------------------------

--
-- Structure de la table `tm2`
--

CREATE TABLE `tm2` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `NOM` varchar(15) NOT NULL,
  `POST_NOM` varchar(15) NOT NULL,
  `PRENOM` varchar(15) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `LIEU_NAISSANCE` varchar(15) NOT NULL,
  `DATE_NAISSANCE` date NOT NULL,
  `ETAT_CIVIL` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `NATIONALITE` varchar(25) CHARACTER SET utf8mb4 NOT NULL,
  `ADRESSE` text NOT NULL,
  `TELEPHONE` int(15) NOT NULL,
  `FACULTE` varchar(30) NOT NULL,
  `PROMOTION` text NOT NULL,
  `USERNAME` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tm2`
--

INSERT INTO `tm2` (`ID`, `NOM`, `POST_NOM`, `PRENOM`, `EMAIL`, `LIEU_NAISSANCE`, `DATE_NAISSANCE`, `ETAT_CIVIL`, `NATIONALITE`, `ADRESSE`, `TELEPHONE`, `FACULTE`, `PROMOTION`, `USERNAME`) VALUES
(5, 'lukeba', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', 'ISIMTDllaG169'),
(6, '', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', 'ISIMTDllaG169'),
(7, 'FIRANCE', 'PEYOGO', 'Samuel', 'remytembo5@gmail.com', 'MATADI', '2023-07-01', 'Celibatair', 'CONGOLAISE', 'nsadisi', 8, 'Technique de Maintenance', 'G1', 'ISIMTDFPSG174');

-- --------------------------------------------------------

--
-- Structure de la table `tm3`
--

CREATE TABLE `tm3` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `NOM` varchar(15) NOT NULL,
  `POST_NOM` varchar(15) NOT NULL,
  `PRENOM` varchar(15) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `LIEU_NAISSANCE` varchar(15) NOT NULL,
  `DATE_NAISSANCE` date NOT NULL,
  `ETAT_CIVIL` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `NATIONALITE` varchar(25) CHARACTER SET utf8mb4 NOT NULL,
  `ADRESSE` text NOT NULL,
  `TELEPHONE` int(15) NOT NULL,
  `FACULTE` varchar(30) NOT NULL,
  `PROMOTION` text NOT NULL,
  `USERNAME` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tm3`
--

INSERT INTO `tm3` (`ID`, `NOM`, `POST_NOM`, `PRENOM`, `EMAIL`, `LIEU_NAISSANCE`, `DATE_NAISSANCE`, `ETAT_CIVIL`, `NATIONALITE`, `ADRESSE`, `TELEPHONE`, `FACULTE`, `PROMOTION`, `USERNAME`) VALUES
(5, 'lukeba', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', 'ISIMTDllaG169'),
(6, '', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', 'ISIMTDllaG169'),
(7, 'FIRANCE', 'PEYOGO', 'Samuel', 'remytembo5@gmail.com', 'MATADI', '2023-07-01', 'Celibatair', 'CONGOLAISE', 'nsadisi', 8, 'Technique de Maintenance', 'G1', 'ISIMTDFPSG174');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bibliotheque`
--
ALTER TABLE `bibliotheque`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `connexion`
--
ALTER TABLE `connexion`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD PRIMARY KEY (`Num_Form`);

--
-- Index pour la table `password_recover`
--
ALTER TABLE `password_recover`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `result_tm1`
--
ALTER TABLE `result_tm1`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Index pour la table `result_tm2`
--
ALTER TABLE `result_tm2`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `bibliotheque`
--
ALTER TABLE `bibliotheque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `connexion`
--
ALTER TABLE `connexion`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `inscription`
--
ALTER TABLE `inscription`
  MODIFY `Num_Form` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT pour la table `password_recover`
--
ALTER TABLE `password_recover`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `result_tm1`
--
ALTER TABLE `result_tm1`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `result_tm2`
--
ALTER TABLE `result_tm2`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
