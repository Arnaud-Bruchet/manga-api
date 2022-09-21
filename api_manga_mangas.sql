-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: api_manga
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mangas`
--

DROP TABLE IF EXISTS `mangas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mangas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `resume` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `nb_tomes` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8271C42F5E237E06` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mangas`
--

LOCK TABLES `mangas` WRITE;
/*!40000 ALTER TABLE `mangas` DISABLE KEYS */;
INSERT INTO `mangas` VALUES (1,'Demon Slayer','Shonen','Koyoharu Gotouge','Panini Manga','2016-02-15 00:00:00','Le combat acharné entre les pourfendeurs de démons et Muzan Kibutsuji, l’ancêtre et créateur de tous les démons, touche à sa fin. Les quatre sérums que Tamayo a inoculé à Muzan l’ont affaibli au point qu’il semble enfin vulnérable… Mais il n’y a rien de plus dangereux qu’un prédateur dos au mur et Muzan, prêt à tout pour survivre, n’a pas dit son dernier mot. Quel sort réserve le destin à Tanjiro, Nezuko et aux autres pourfendeurs de démons ? Vous allez assister à la conclusion spectaculaire d’une guerre millénaire contre...',23,'https://cdn1.booknode.com/book_cover/1242/full/demon-slayer-tome-1-1241605.jpg'),(2,'Death Note','Shonen','Tsugumi Ohba','Kana Eds','2007-01-01 00:00:00','Light Yagami ramasse un étrange carnet oublié dans la cour de son lycée. Selon les instructions du carnet, la personne dont le nom est écrit dans les pages du Death Note mourra dans les 40 secondes !! Quelques jours plus tard, Light fait la connaissance de l\'ancien propriétaire du carnet : Ryûk, un dieu de la mort ! Poussé par l\'ennui, il a fait entrer le carnet sur terre. Ryûk découvre alors que Light a déjà commencé à remplir son carnet...',13,'https://static.fnac-static.com/multimedia/Images/FR/NR/74/2a/1d/1911412/1507-1/tsp20220703102019/Death-Note.jpg'),(3,'Rooster Fighter','Shonen','Shu Sakuratani','Mangetsu','2022-05-04 00:00:00','Pour obtenir justice, il se battra bec et griffes ! Cocori-K.-O. !\n\nDans un Japon ravagé par les kijû, des monstres gigantesques et assoiffés de sang, les humains, complètement démunis face à cette menace sans précédent, vivent chaque jour avec la crainte que celui-ci soit le dernier. Seul un être trouve encore le courage de faire face à ces mystérieuses créatures : un coq, à la détermination sans faille et au cri surpuissant. Son but, retrouver celui qui lui a enlevé la prunelle de ses yeux !\n\nÉcrit et dessiné par Shu Sakuratani, Rooster Fighter est un manga qui a su conquérir le coeur des lecteurs de nombreux pays. Action, parodie et humour sont au centre de ce récit survitaminé.',4,'https://static.fnac-static.com/multimedia/Images/FR/NR/5d/50/d6/14045277/1507-1/tsp20220708072903/Rooster-Fighter-Coq-de-Baston.jpg'),(4,'One piece','Shonen','Eiichiro Oda','Glénat','2013-07-03 00:00:00','Le roi des pirates, ce sera lui !\n\nNous sommes à l\'ère des pirates. Luffy, un garçon espiègle, rêve de devenir le roi des pirates en trouvant le “One Piece”, un fabuleux trésor. Seulement, Luffy a avalé un fruit du démon qui l\'a transformé en homme élastique. Depuis, il est capable de contorsionner son corps dans tous les sens, mais il a perdu la faculté de nager. Avec l\'aide de ses précieux amis, il va devoir affronter de redoutables pirates dans des aventures toujours plus rocambolesques.\nÉgalement adapté en dessin animé pour la télévision et le cinéma, One Piece remporte un formidable succès à travers le monde. Les aventures de Luffy au chapeau de paille ont désormais gagné tous les lecteurs, qui se passionnent chaque trimestre pour les aventures exceptionnelles de leurs héros.',103,'https://static.fnac-static.com/multimedia/Images/FR/NR/a0/e1/4c/5038496/1507-1/tsp20220625073744/One-Piece-Edition-originale.jpg'),(5,'Solo Leveling','Manhwa','Chugong','kbooks','2021-04-07 00:00:00','Lorsque d\'étranges portails sont apparus aux quatre coins du monde, l\'humanité a dû trouver une parade pour ne pas finir massacrée entre les griffes des monstres qu\'ils ont apportés avec eux. Dans le même temps, certaines personnes ont développé des capacités permettant de chasser. Ces combattants intrépides n\'hésitent pas à foncer au coeur des donjons pour combattre les créatures qu\'ils abritent.',9,'https://static.fnac-static.com/multimedia/Images/FR/NR/e4/41/c9/13189604/1507-1/tsp20210206070417/Solo-Leveling.jpg'),(6,'My hero academia','Shonen','Kohei Horikoshi','Ki-oon','2016-04-14 00:00:00','La nouvelle génération de super-héros du Shonen Jump débarque enfin !\n\nDans un monde où 80 % de la population possède un super-pouvoir appelé alter, les héros font partie de la vie quotidienne. Et les super-vilains aussi ! Face à eux se dresse l\'invincible All Might, le plus puissant des héros ! Le jeune Izuku Midoriya en est un fan absolu. Il n\'a qu\'un rêve : entrer à la Hero Academia pour suivre les traces de son idole.\n\nLe problème, c\'est qu\'il fait partie des 20 % qui n\'ont aucun pouvoir...\nSon destin est bouleversé le jour où sa route croise celle d\'All Might en personne ! Ce dernier lui offre une chance inespérée de voir son rêve se réaliser. Pour Izuku, le parcours du combattant ne fait que commencer !',35,'https://static.fnac-static.com/multimedia/Images/FR/NR/a6/b1/75/7713190/1507-1/tsp20220713071214/My-Hero-Academia.jpg'),(7,'Dragon Ball','Shonen','Akira Toriyama','Glénat','1993-05-01 00:00:00','Les dragon balls sont des boules de cristal magiques. Celui qui les réunit invoque un dragon qui réalisera ses voeux. Sangoku, Dendé, Végéta et tous les protagonistes de cette grande saga tentent de trouver les sept dragon balls qui, une fois le voeu exaucé, s\'éparpilleront à nouveau dans l\'univers.\n\nDevenue un véritable phénomène de mode dès sa parution, cette série connaît un succès mondial auprès de toute une génération.',42,'https://static.fnac-static.com/multimedia/Images/FR/NR/a8/dd/03/253352/1507-1/tsp20220716063415/Dragon-Ball-sens-francais.jpg'),(8,'Dragon Ball Z','Shonen','Akira Toriyama','Glénat','2008-04-16 00:00:00','Songoku a bien grandi. Après avoir vaincu Piccolo Junior lors du Tenkaichi Budokai, le célèbre tournoi d’arts martiaux, il était parti épouser Chichi pour lui donner un fils, Songohan. Père et fils vivent dans l’harmonie et le bonheur, jusqu’au jour où débarque un extraterrestre du nom de Raditz. Possédant une queue de singe, il se présente à Songoku comme son frère aîné, et lui demande de le suivre pour l’aider à envahir d’autres planètes et accomplir son destin. Mais Songoku refuse, ce qui provoque la colère de Raditz : pour le forcer à se rallier à lui, il kidnappe Songohan et menace de le tuer. Devant la force de cet adversaire, Songoku n’a d’autre choix que de faire équipe avec son ennemi juré, Piccolo… Cette collection propose un photomontage des scènes clefs des différents épisodes de cette série, mis en pages comme une véritable bande dessinée. Une occasion de revivre scène par scène les célèbres épisodes de cette série culte !',39,'https://static.fnac-static.com/multimedia/images_produits/ZoomPE/7/9/8/9782723457897/tsp20130828172756/Dragon-Ball-Z-anime-comic-couleur.jpg');
/*!40000 ALTER TABLE `mangas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-21 11:41:34
