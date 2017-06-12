/*
SQLyog Ultimate v11.2 (64 bit)
MySQL - 5.6.20 : Database - db_ttaportal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_ttaportal` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_ttaportal`;

/*Table structure for table `app_access` */

DROP TABLE IF EXISTS `app_access`;

CREATE TABLE `app_access` (
  `refAppAccess` int(11) NOT NULL AUTO_INCREMENT,
  `refApplicationId` int(11) DEFAULT NULL,
  `refDepartmentId` int(11) DEFAULT NULL,
  `refAppAccessActive` enum('1','0') DEFAULT '1',
  PRIMARY KEY (`refAppAccess`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=latin1;

/*Data for the table `app_access` */

insert  into `app_access`(`refAppAccess`,`refApplicationId`,`refDepartmentId`,`refAppAccessActive`) values (49,20,1,'1'),(50,20,3,'1'),(51,20,4,'1'),(59,23,3,'1'),(60,23,4,'1'),(61,22,6,'1'),(62,21,6,'1'),(63,23,6,'1'),(64,21,43,'1'),(65,21,44,'1'),(67,21,45,'1'),(68,21,46,'1'),(69,21,47,'1'),(70,21,48,'1'),(71,21,52,'1'),(72,21,53,'1'),(73,21,54,'1'),(74,21,55,'1'),(75,21,56,'1'),(76,21,57,'1'),(77,21,58,'1'),(78,21,59,'1'),(79,21,60,'1'),(80,21,61,'1'),(81,21,62,'1'),(82,21,63,'1'),(83,21,64,'1'),(84,21,65,'1'),(85,21,66,'1'),(86,21,68,'1'),(87,21,69,'1'),(88,21,70,'1'),(89,21,71,'1'),(90,21,72,'1'),(91,21,73,'1'),(92,21,74,'1'),(93,21,75,'1'),(94,21,76,'1'),(95,21,77,'1'),(96,21,78,'1'),(97,21,79,'1'),(98,21,80,'1'),(99,21,81,'1'),(100,21,82,'1'),(101,21,83,'1'),(102,21,84,'1'),(103,21,85,'1'),(104,21,86,'1'),(105,21,87,'1'),(106,21,88,'1'),(107,21,89,'1'),(108,21,90,'1'),(109,21,91,'1'),(110,21,92,'1'),(111,21,93,'1'),(112,21,94,'1'),(113,21,95,'1'),(114,21,96,'1'),(115,21,97,'1'),(116,21,98,'1'),(117,21,99,'1'),(118,21,100,'1'),(119,21,101,'1'),(120,21,102,'1'),(121,21,103,'1'),(122,21,104,'1'),(123,21,105,'1'),(124,21,106,'1'),(125,21,140,'1');

/*Table structure for table `cms_about` */

DROP TABLE IF EXISTS `cms_about`;

CREATE TABLE `cms_about` (
  `cmsAboutId` int(11) NOT NULL AUTO_INCREMENT,
  `cmsAboutTitle` varchar(50) DEFAULT NULL,
  `cmsAboutDesc` text,
  `cmsAboutPic` varchar(40) DEFAULT NULL,
  `cmsAboutActive` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`cmsAboutId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `cms_about` */

insert  into `cms_about`(`cmsAboutId`,`cmsAboutTitle`,`cmsAboutDesc`,`cmsAboutPic`,`cmsAboutActive`) values (1,'News','Menyediakan informasi mengenai berita terupdate tentang perusahaan','05185353_Penguins.jpg','1'),(2,'Manajemen Aplikasi','Menyediakan katalog aplikasi internal guna kebutuhan operasional sehari-hari',NULL,'1'),(3,'Blog','Portal artikel terupdate seputar internal perusahaan',NULL,'1'),(4,'Forum','Sebagai sarana internal karyawan untuk interaksi dengan topik-topik pembahasan seputar internal perusahaan',NULL,'1');

/*Table structure for table `cms_article` */

DROP TABLE IF EXISTS `cms_article`;

CREATE TABLE `cms_article` (
  `cmsArticleId` int(11) NOT NULL AUTO_INCREMENT,
  `refCategoryArticleId` int(11) NOT NULL,
  `cmsArticleName` varchar(250) NOT NULL,
  `cmsArticleHighlight` text,
  `cmsArticleDesc` text NOT NULL,
  `cmsArticlePic` varchar(40) DEFAULT NULL,
  `cmsArticleUrl` varchar(50) DEFAULT NULL,
  `cmsArticleActive` enum('1','0') DEFAULT '1',
  `cmsArticleCreatedDate` datetime DEFAULT NULL,
  `coreUserId` int(11) DEFAULT NULL,
  `refCompanyId` int(11) DEFAULT NULL,
  `refDepartmentId` int(11) DEFAULT NULL,
  `refTagId` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsArticleId`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `cms_article` */

insert  into `cms_article`(`cmsArticleId`,`refCategoryArticleId`,`cmsArticleName`,`cmsArticleHighlight`,`cmsArticleDesc`,`cmsArticlePic`,`cmsArticleUrl`,`cmsArticleActive`,`cmsArticleCreatedDate`,`coreUserId`,`refCompanyId`,`refDepartmentId`,`refTagId`) values (11,1,'Adapt or Die','Baru-baru ini kita lumayan dibuat terkejut dengan berita bagaimana Pemda DKI melakukan kontrol budget dengan cara yang terbuka, transparan, dan memanfaatkan teknologi digital sehingga kontrol mudah dilakukan baik secara internal maupun eksternal. Kita melihat bahwa banyak organisasi juga sedang berpacu untuk melakukan automasi dalam proses bisnisnya. Ada yang sudah bisa memberi pelayanan yang begitu cepat dibanding pelayanan manual di era sebelumnya, tetapi juga ada yang masih belum sempurna. Teknologi ini begitu menggoda karena menawarkan kecepatan, kemudahan, dan pengawasan yang ketat terhadap beragam kebocoran yang zaman dulu kerap terjadi dan hanya bisa dimaklumi. Dengan aplikasi teknologi digital pada segenap ranah kehidupan manusia, tentunya juga pasti akan mengubah perilaku manusia yang terlibat di dalamnya. Mulai dari pelanggan yang tiba-tiba menjadi semakin kritis kepada produsen dan penyedia jasa karena mereka dengan mudah dapat membandingkan servis yang satu dengan yang lainnya.','<p>Baru-baru ini kita lumayan dibuat terkejut dengan berita bagaimana Pemda DKI melakukan kontrol budget dengan cara yang terbuka, transparan, dan memanfaatkan teknologi digital sehingga kontrol mudah dilakukan baik secara internal maupun eksternal. Kita melihat bahwa banyak organisasi juga sedang berpacu untuk melakukan automasi dalam proses bisnisnya. Ada yang sudah bisa memberi pelayanan yang begitu cepat dibanding pelayanan manual di era sebelumnya, tetapi juga ada yang masih belum sempurna. Teknologi ini begitu menggoda karena menawarkan kecepatan, kemudahan, dan pengawasan yang ketat terhadap beragam kebocoran yang zaman dulu kerap terjadi dan hanya bisa dimaklumi. Dengan aplikasi teknologi digital pada segenap ranah kehidupan manusia, tentunya juga pasti akan mengubah perilaku manusia yang terlibat di dalamnya. Mulai dari pelanggan yang tiba-tiba menjadi semakin kritis kepada produsen dan penyedia jasa karena mereka dengan mudah dapat membandingkan servis yang satu dengan yang lainnya.</p>\r\n\r\n<p>Masyarakat sekarang dapat dengan cepat menyampaikan keluhanya kepada pemerintah DKI melalui aplikasi Qlue-nya hingga para penyapu jalan yang harus fasih menggunakan fitur-fitur di ponsel pintarnya mengingat mereka harus berfoto sebagai bukti pelaporan hasil kerjanya. Pimpinan juga harus mampu melihat lebih jauh lagi ke depan, memiliki imajinasi yang lebih luas mengenai masa depan untuk dapat mendorong inovasi-inovasi di organisasinya. Di lain pihak, dengan digitalisasi, akan banyak sumber daya manusia yang kemudian tidak diperlukan lagi sehingga yang bertahan adalah mereka yang memang mampu menunggangi perubahan ini. Ini adalah suatu dampak yang nyata dari era disruptif ini.</p>\r\n\r\n<p><img alt=\"Source : shutterstock\" src=\"/ckfinder/userfiles/images/24987660-Adapt-or-Die-typed-on-a-piece-of-lined-paper-and-pinned-to-a-cork-notice-board-A-concept-for-change--Stock-Photo.jpg\" style=\"height:333px; width:700px\" /></p>\r\n\r\n<p><strong>Stop mengenang masa lalu</strong></p>\r\n\r\n<p>Masih ingat teori evolusi Darwin? Hal yang kita bisa pelajari dari teori ini adalah bahwa makhluk yang sudah berkembang tidak bisa kembali ke asalnya lagi. Evolusi yang sudah terjadi harus diterima sebagai suatu kenyataan yang cukup keras. Bisnis dan dunia kerja memang sudah berubah. Kita bisa mengenang saat kita masih bertelepon menggunakan telepon umum koin. Saat kita masih harus menunggu dengan penuh harap balasan surat yang dibawa oleh tukang pos selama berbulan-bulan. Kenyataannya beragam media sosial, ponsel, dan internet membuat perolehan informasi begitu real time sehingga sudah bukan zamannya lagi pengambilan keputusan harus menunggu waktu berbulan-bulan.</p>\r\n\r\n<p>Dunia sudah dikuasai oleh para &ldquo;digerati&rdquo;, para elite digitalisasi, media sosial, pemasaran melalui konten, industri komputer dan komunitas-komunitas online. Tengok betapa perusahaan taksi berarmada ribuan dilibas oleh perusahaan yang bermodal minim di mana perkembangannya sulit dideteksi. Ini termasuk para opinion leaders yang tidak membutuhkan media lagi untuk mengungkapkan pendapat mereka. Para kreatif yang sudah menyebar di luar Silicon Valley, dan membentuk subkultur-subkultur baru, juga sangat memengaruhi situasi bisnis sekarang. Nah, mampukah kita untuk setiap bangun tidur bersiap untuk berada di depan segala macam inovasi yang diciptakan oleh kawan maupun lawan?</p>\r\n\r\n<p><strong>Globalisasi</strong></p>\r\n\r\n<p>Dengan pendeknya jarak dan begitu mudah tembusnya dinding pemisah informasi antarpulau, benua dan negara, kita saat ini benar-benar bisa berselancar, berbelanja ke mana saja. Toko online lokal harus bersaing dengan toko online internasional. Persaingan yang berat membuat harga semakin turun.</p>\r\n\r\n<p>Negara-negara mulai berkolaborasi dan membebaskan pajak impor mereka. Tiba-tiba ada era new economy yang global dan cepat. Baru pada 1980 konsep globalisasi mulai dibicarakan para pemikir. Namun, sekarang kita melihat manusia di desa terpencil pun tiba-tiba bisa menjadi manusia kosmopolitan dalam bisnis dan kesamaan prinsip humanitas. Pilihannya tinggal mau belajar dan beradaptasi atau tidak.</p>\r\n\r\n<p><strong>Selangkah di depan dengan inovasi</strong></p>\r\n\r\n<p>Evolusi artificial intelligence, mobil tanpa pengemudi, drone, robot di tempat kerja, membuat orang yang kritis langsung bertanya-tanya apa yang akan terjadi pada masa depan. Kita memang mau tidak mau harus beradaptasi. Kita perlu membaca apa yang terjadi di kehidupan dunia, perlu selalu menyimak apa yang dikatakan pelanggan dan karyawan. Inovasi bukanlah selalu menemukan hal baru yang orisinal. Melakukan hal-hal lama dengan cara yang baru dan efisien pun sudah bisa digolongkan pada inovasi. Yang jelas, kita tidak mungkin berinovasi kalau tidak berkotor tangan. Kita tidak bisa hanya membahas teknologi baru, hanya membuat wacana-wacana tanpa menerjunkan diri di dalamnya.</p>\r\n\r\n<p>Kita perlu menelaahnya, memainkannya, sampai bisa menguasainya. Tengok Nordstorm yang terpukul oleh Amazon dengan penjualan online&ndash;nya. Peningkatan customer engagement melalui transparansi shopping experience dan supply chain membuat pelanggan nyaman dan menyukai Nordstorm kembali. Perusahaan-perusahaan raksasa, seperti GE, menggunakan digitalisasi sebagai pembungkus produknya sehingga pelanggan mendapatkan banyak kemudahan ketika menggunakan mesin-mesinnya.</p>\r\n\r\n<p>Untuk inovasi, kita bahkan harus berada selangkah di depan pelanggan kita. Seperti yang dikatakan oleh Steve Jobs, &ldquo;You can&rsquo;t just ask customers what they want and then try to give that to them. By the time you get it built, they&rsquo;ll want something new&ldquo;. Betapa banyaknya perusahaan yang sudah menginvestasikan teknologi sebagai upaya pembaruan, tetapi ternyata kalah cepat dengan harapan pelanggan yang sudah lebih canggih daripada penyedia produknya sendiri.</p>\r\n\r\n<p>Bila tidak berhati-hati, perubahan yang dilakukan oleh perusahaan, apalagi perusahaan besar yang sering kali membutuhkan banyak jalur birokrasi dalam mencanangkan suatu perubahan, bisa saja tertinggal dari evolusi pasar yang bergerak begitu cepat tanpa ada yang bisa menahannya. Memberikan sesuatu yang mereka bahkan belum tahu bahwa mereka menginginkannya adalah kunci untuk menjadi pemenang.</p>\r\n\r\n<p><strong>Eileen Rachman &amp; Emilia Jakob</strong><br />\r\nEXPERD<br />\r\nCHARACTER BUILDING ASSESSMENT &amp; TRAINING</p>\r\n\r\n<p>Artikel ini terbit di Harian Kompas edisi 29 April 2017</p>\r\n\r\n<p>Source :&nbsp;<a href=\"https://karier.kompas.id/2017/04/30/adapt-or-die/\">https://karier.kompas.id/2017/04/30/adapt-or-die/</a></p>\r\n','10422852_iStock_000012497023Small.jpg',NULL,'1','2017-05-30 14:12:54',2,2,4,NULL),(12,1,'Beleid Baru Terkait Pemanfaatan Batu Bara Untuk Pembangkit Listrik','Pemerintah kembali merilis regulasi terkait pemanfaatan batu bara sebagai sumber energi khusus di listrik. Kementerian Energi dan Sumber Daya Mineral (ESDM) telah menerbitkan Peraturan Menteri (Permen) ESDM No.19 Tahun 2017 tentang Pemanfaatan Batubara untuk Pembangkit Listrik dan Pembelian Kelebihan Tenaga Listrik (Excess Power).','<p>Pemerintah kembali merilis regulasi terkait pemanfaatan batu bara sebagai sumber energi khusus di listrik. Kementerian Energi dan Sumber Daya Mineral (ESDM) telah menerbitkan Peraturan Menteri (Permen) ESDM No.19 Tahun 2017 tentang Pemanfaatan Batubara untuk Pembangkit Listrik dan Pembelian Kelebihan Tenaga Listrik (Excess Power).</p>\r\n\r\n<p>Dalam Coffee Moring, Direktur Jenderal Ketenagalistrikan Jarman menjelaskan beleid baru ini mengatur tentang pola harga patokan tertinggi dan mekanisme pengadaan pembangkit listrik berbahan bakar batubara serta pembelian kelebihan tenaga listrik (excess power).</p>\r\n\r\n<p>&ldquo;Permen ini diharapkan dapat menjaga Biaya Pokok Penyediaan (BPP) Pembangkitan Tenaga Listrik setempat agar lebih efektif dan efisien, sehingga tarif tenaga listrik dapat lebih kompetitif,&rdquo; jelas Jarman, di Kantor Dirjen Ketenagalistrikan, Jakarta (3/3).</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/ttaportal/plugins/ckfinder/userfiles/images/Batubara-680x400.jpg\" /></p>\r\n\r\n<p>Beleid ini berisi tentang acuan harga pembelian listrik PLTU Mulut Tambang di mana jika BPP Pembangkitan setempat lebih rendah dari BPP Pembangkitan Nasional, maka harga patokan tertinggi mengacu pada 75% BPP Pembangkitan setempat.</p>\r\n\r\n<p>Sebaliknya jika BPP Pembangkitan setempat lebih tinggi dari BPP Pembangkitan Nasional, maka harga patokan tertinggi mengacu pada 75% BPP Pembangkitan nasional. &ldquo;Harga pembelian tenaga listrik ditetapkan dengan asumsi faktor kapasitas pembangkit sebesar 80%,&rdquo; jelasnya.</p>\r\n\r\n<p>Kemudian untuk Harga Pembelian Listrik PLTU Non Mulut Tambang dengan kapasitas lebih besar dari 100 MW yaitu jika BPP Pembangkitan setempat lebih rendah dari BPP Pembangkitan Nasional, maka harga patokan tertinggi mengacu pada BPP Pembangkitan setempat. Sedangkan jika BPP Pembangkitan setempat lebih tinggi dari BPP Pembangkitan Nasional, maka harga patokan tertinggi mengacu pada BPP Pembangkitan nasional.</p>\r\n\r\n<p>Jika PLTU Mulut tambang dengan kapasitas lebih kecil atau sama dengan 100 MW maka jika BPP Pembangkitan setempat lebih rendah dari BPP Pembangkitan Nasional, maka harga patokan tertinggi mengacu pada BPP Pembangkitan setempat. Tetapi kalau BPP Pembangkitan setempat lebih tinggi dari BPP Pembangkitan Nasional, maka harga berdasarkan lelang atau mekanisme B to B (business to business).</p>\r\n\r\n<p>Beleid ini juga mengatur tentang kelebihan tenaga listrik. Harga pembelian kelebihan tenaga listrik paling tinggi, ditetapkan sebesar 90% dari BPP pembangkitan di sistem ketenagalistrikan setempat. Ini dilakukan agar dapat meningkatkan peran swasembada pengelolaan listrik dalam menjaga ketersediaan daya listrik pada sistem ketenagalistrikan setempat.</p>\r\n\r\n<p>Penggunaan listrik Excess Power untuk memperkuat sistem kelistrikan setempat dapat dilakukan apabila pasokan daya kurang atau untuk menurunkan BPP Pembangkit di sistem ketenagalistrikan setempat. Harga pembelian kelebihan tenaga listrik (excess power) paling tinggi sebesar 90% (sembilan puluh persen) dari BPP Pembangkitan di sistem ketenagalistrikan setempat. Sehingga dapat meningkatkan peran Captive Power dalam menjaga ketersediaan daya listrik pada sistem ketenagalistrikan setempat.</p>\r\n\r\n<hr />\r\n<p><strong>Penulis</strong>&nbsp;: Egenius Soda<br />\r\n(floreskoe@yahoo.com)</p>\r\n\r\n<p>Source :&nbsp;<a href=\"https://www.tambang.co.id/beleid-baru-terkait-pemanfaatan-batu-bara-untuk-pembangkit-listrik-14818/\">https://www.tambang.co.id/beleid-baru-terkait-pemanfaatan-batu-bara-untuk-pembangkit-listrik-14818/</a></p>\r\n','09495132_Batubara-680x400.jpg',NULL,'1','2017-05-30 14:12:57',2,2,4,0),(13,1,'7 Management Practices That Can Improve Employee Productivity','All companies want to improve employee productivity, but how often do they examine their own management practices  as a means of attaining it?  Studies consistently show that a disturbingly high number of non-management employees are disengaged, not working at full productive capacity.  Following are 7 practical suggestions - steps management can take to improve productivity by putting employees in a more productive mindset.','<p>All companies want to improve employee productivity, but how often do they examine their own management practices &nbsp;as a means of attaining it? &nbsp;Studies consistently show that a disturbingly high number of non-management employees are disengaged, not working at full productive capacity. &nbsp;Following are 7 practical suggestions - steps management can take to improve productivity by putting employees in a more productive mindset.</p>\r\n\r\n<p><strong>Design economic incentives so employees at all levels of an organization can benefit from them</strong>. &nbsp;There&#39;s a natural tendency for management to focus most heavily on senior-level economic incentives. While this is completely understandable, it&#39;s best not to neglect substantive incentives for lower-level employees... that is, if you expect them to be vigorously committed to an enterprise&#39;s success. &nbsp;To the argument that this will be unduly costly, a program has to be carefully structured, of course, so additional payouts reflect clearly defined revenue and/or earnings targets.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/ttaportal/plugins/ckfinder/userfiles/images/640x0.jpg\" style=\"height:444px; width:640px\" /></p>\r\n\r\n<p><br />\r\n<strong>Provide meaningful feedback in a constructive manner on a regular basis.</strong> Feedback is a foundational management skill; the ability to provide regular, helpful feedback to employees in a manner that encourages, not discourages, is a cornerstone of effective management. &nbsp;That&#39;s not to say feedback is always positive - that wouldn&#39;t be management at all - but that the communication is done thoughtfully... whether the occasion is encouragement for a job well done, or that course correction is needed.</p>\r\n\r\n<p><strong>Respect employees as individuals, in addition to the job they do.</strong> Respect can be a simple but powerful motivator, just as its unpleasant twin, lack of respect, has the opposite effect. &nbsp;When employees feel genuinely respected (always assuming it&#39;s warranted), they&#39;re much more likely &quot;to go the extra mile&quot; to help a company succeed.</p>\r\n\r\n<p><strong>Be sure management at all levels of an organization receives adequate training.</strong> There&#39;s a tendency for companies to invest heavily in &quot;leadership training&quot; while focusing far less on supervisors and middle managers. &nbsp;I can readily speak from experience on this one, having received considerably more training and development opportunities in the latter stages of my career than in the early formative stages, when I most needed it.</p>\r\n\r\n<p>To help boost productivity, employee engagement matters. &nbsp;Ultimately, most employees would much rather be part of a team they&#39;re committed to, not just a member of an organization. &nbsp;Developing and maintaining a consistent management approach that engenders esprit de corps is a key link in the productivity process.</p>\r\n\r\n<p>Such management - balancing appropriate levels of results-orientation with understanding of employee needs - is neither easy nor unattainable.</p>\r\n\r\n<p>It&#39;s also the thread from which the cloth of day-to-day productivity gains are made.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Management questions and comments are always welcome...</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Victor Lipman is an executive coach and author of The Type B Manager.</p>\r\n\r\n<hr />\r\n<p>Source :&nbsp;</p>\r\n\r\n<p>https://www.forbes.com/sites/victorlipman/2013/06/17/7-management-practices-that-can-improve-employee-productivity/#5eed7df9484c</p>\r\n\r\n<p>&nbsp;</p>\r\n','11211562_640x0.jpg',NULL,'1','2017-05-04 14:13:13',2,2,4,0),(21,1,'Test new feature part 3','Baru-baru ini kita lumayan dibuat terkejut dengan berita bagaimana Pemda DKI melakukan kontrol budget dengan cara yang terbuka, transparan, dan memanfaatkan teknologi digital sehingga kontrol mudah dilakukan baik secara internal maupun eksternal. Kita melihat bahwa banyak organisasi juga sedang berpacu untuk melakukan automasi dalam proses bisnisnya. Ada yang sudah bisa memberi pelayanan yang begitu cepat dibanding pelayanan manual di era sebelumnya, tetapi juga ada yang masih belum sempurna. Teknologi ini begitu menggoda karena menawarkan kecepatan, kemudahan, dan pengawasan yang ketat terhadap beragam kebocoran yang zaman dulu kerap terjadi dan hanya bisa dimaklumi. Dengan aplikasi teknologi digital pada segenap ranah kehidupan manusia, tentunya juga pasti akan mengubah perilaku manusia yang terlibat di dalamnya. Mulai dari pelanggan yang tiba-tiba menjadi semakin kritis kepada produsen dan penyedia jasa karena mereka dengan mudah dapat membandingkan servis yang satu dengan yang lainnya.','<p>Baru-baru ini kita lumayan dibuat terkejut dengan berita bagaimana Pemda DKI melakukan kontrol budget dengan cara yang terbuka, transparan, dan memanfaatkan teknologi digital sehingga kontrol mudah dilakukan baik secara internal maupun eksternal. Kita melihat bahwa banyak organisasi juga sedang berpacu untuk melakukan automasi dalam proses bisnisnya. Ada yang sudah bisa memberi pelayanan yang begitu cepat dibanding pelayanan manual di era sebelumnya, tetapi juga ada yang masih belum sempurna. Teknologi ini begitu menggoda karena menawarkan kecepatan, kemudahan, dan pengawasan yang ketat terhadap beragam kebocoran yang zaman dulu kerap terjadi dan hanya bisa dimaklumi. Dengan aplikasi teknologi digital pada segenap ranah kehidupan manusia, tentunya juga pasti akan mengubah perilaku manusia yang terlibat di dalamnya. Mulai dari pelanggan yang tiba-tiba menjadi semakin kritis kepada produsen dan penyedia jasa karena mereka dengan mudah dapat membandingkan servis yang satu dengan yang lainnya.</p>\r\n','13435789_crushing.jpg',NULL,'0','2017-05-29 14:13:18',2,2,4,NULL),(22,1,'Test New Feature Part 3','Baru-baru ini kita lumayan dibuat terkejut dengan berita bagaimana Pemda DKI melakukan kontrol budget dengan cara yang terbuka, transparan, dan memanfaatkan teknologi digital sehingga kontrol mudah dilakukan baik secara internal maupun eksternal. Kita melihat bahwa banyak organisasi juga sedang berpacu untuk melakukan automasi dalam proses bisnisnya. Ada yang sudah bisa memberi pelayanan yang begitu cepat dibanding pelayanan manual di era sebelumnya, tetapi juga ada yang masih belum sempurna. Teknologi ini begitu menggoda karena menawarkan kecepatan, kemudahan, dan pengawasan yang ketat terhadap beragam kebocoran yang zaman dulu kerap terjadi dan hanya bisa dimaklumi. Dengan aplikasi teknologi digital pada segenap ranah kehidupan manusia, tentunya juga pasti akan mengubah perilaku manusia yang terlibat di dalamnya. Mulai dari pelanggan yang tiba-tiba menjadi semakin kritis kepada produsen dan penyedia jasa karena mereka dengan mudah dapat membandingkan servis yang satu dengan yang lainnya.','<p>Baru-baru ini kita lumayan dibuat terkejut dengan berita bagaimana Pemda DKI melakukan kontrol budget dengan cara yang terbuka, transparan, dan memanfaatkan teknologi digital sehingga kontrol mudah dilakukan baik secara internal maupun eksternal. Kita melihat bahwa banyak organisasi juga sedang berpacu untuk melakukan automasi dalam proses bisnisnya. Ada yang sudah bisa memberi pelayanan yang begitu cepat dibanding pelayanan manual di era sebelumnya, tetapi juga ada yang masih belum sempurna. Teknologi ini begitu menggoda karena menawarkan kecepatan, kemudahan, dan pengawasan yang ketat terhadap beragam kebocoran yang zaman dulu kerap terjadi dan hanya bisa dimaklumi. Dengan aplikasi teknologi digital pada segenap ranah kehidupan manusia, tentunya juga pasti akan mengubah perilaku manusia yang terlibat di dalamnya. Mulai dari pelanggan yang tiba-tiba menjadi semakin kritis kepada produsen dan penyedia jasa karena mereka dengan mudah dapat membandingkan servis yang satu dengan yang lainnya.</p>\r\n','14223681__IMK7391OK.jpg',NULL,'0','2017-05-28 14:13:23',3,2,4,NULL),(23,1,'Test New Feature Part 4','Baru-baru ini kita lumayan dibuat terkejut dengan berita bagaimana Pemda DKI melakukan kontrol budget dengan cara yang terbuka, transparan, dan memanfaatkan teknologi digital sehingga kontrol mudah dilakukan baik secara internal maupun eksternal. Kita melihat bahwa banyak organisasi juga sedang berpacu untuk melakukan automasi dalam proses bisnisnya. Ada yang sudah bisa memberi pelayanan yang begitu cepat dibanding pelayanan manual di era sebelumnya, tetapi juga ada yang masih belum sempurna. Teknologi ini begitu menggoda karena menawarkan kecepatan, kemudahan, dan pengawasan yang ketat terhadap beragam kebocoran yang zaman dulu kerap terjadi dan hanya bisa dimaklumi. Dengan aplikasi teknologi digital pada segenap ranah kehidupan manusia, tentunya juga pasti akan mengubah perilaku manusia yang terlibat di dalamnya. Mulai dari pelanggan yang tiba-tiba menjadi semakin kritis kepada produsen dan penyedia jasa karena mereka dengan mudah dapat membandingkan servis yang satu dengan yang lainnya.','<p>article test new &nbsp;article test new &nbsp;article test new &nbsp;article test new &nbsp;article test new &nbsp;article test new &nbsp;article test new article test new &nbsp;article test new &nbsp;article test new &nbsp;article test new &nbsp;article test new &nbsp;article test new &nbsp;article test new &nbsp;article test new &nbsp;article test new &nbsp;article test new &nbsp;article test new &nbsp;article test new &nbsp;article test new &nbsp;article test new&nbsp;</p>\r\n','18590260_IPPA.jpg',NULL,'0','2017-05-19 14:13:29',2,2,57,NULL);

/*Table structure for table `cms_comment_article` */

DROP TABLE IF EXISTS `cms_comment_article`;

CREATE TABLE `cms_comment_article` (
  `cmsCommentArticleId` int(11) NOT NULL AUTO_INCREMENT,
  `cmsArticleId` int(11) DEFAULT NULL,
  `coreUserId` int(11) DEFAULT NULL,
  `cmsCommentArticleText` text,
  `cmsCommentArticleCreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`cmsCommentArticleId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `cms_comment_article` */

insert  into `cms_comment_article`(`cmsCommentArticleId`,`cmsArticleId`,`coreUserId`,`cmsCommentArticleText`,`cmsCommentArticleCreatedDate`) values (5,6,2,'Test','2017-04-03 06:52:33'),(6,6,2,'test','2017-04-03 06:53:16'),(7,6,2,'test','2017-04-05 08:36:50'),(8,8,2,'test','2017-04-10 09:41:49'),(9,NULL,2,'Test comment','2017-05-02 08:50:53'),(10,8,2,'test\r\n','2017-05-02 08:51:56'),(11,NULL,2,'test','2017-05-02 08:53:10'),(12,10,2,'test','2017-05-02 08:53:59'),(13,13,2,'test','2017-05-31 14:45:53');

/*Table structure for table `cms_cps` */

DROP TABLE IF EXISTS `cms_cps`;

CREATE TABLE `cms_cps` (
  `cmsCpsId` int(11) DEFAULT NULL,
  `cmsCpsName` varchar(50) DEFAULT NULL,
  `cmsCpsDesc` text,
  `cmsCpsActive` enum('1','2') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cms_cps` */

/*Table structure for table `cms_quotes` */

DROP TABLE IF EXISTS `cms_quotes`;

CREATE TABLE `cms_quotes` (
  `cmsQuotesId` int(11) NOT NULL AUTO_INCREMENT,
  `coreUserId` int(11) DEFAULT NULL,
  `cmsQuotesText` text,
  `cmsQuotesCreatedDate` date DEFAULT NULL,
  `cmsQuotesActive` enum('1','2') DEFAULT '1',
  PRIMARY KEY (`cmsQuotesId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `cms_quotes` */

insert  into `cms_quotes`(`cmsQuotesId`,`coreUserId`,`cmsQuotesText`,`cmsQuotesCreatedDate`,`cmsQuotesActive`) values (1,2,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget risus porta, tincidunt turpis at, interdum tortor. Suspendisse potenti. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce ante tellus, convallis non consectetur sed, pharetra nec ex. Aliquam et tortor nisi. Duis mollis diam nec elit volutpat suscipit.','2017-04-06','1'),(2,2,'Synergy Is Better Than My Way Or Your Way. It\'s Our Way','2017-04-06','1'),(3,2,'test','2017-04-06',''),(4,3,'Test baru','2017-04-26','');

/*Table structure for table `cms_slider` */

DROP TABLE IF EXISTS `cms_slider`;

CREATE TABLE `cms_slider` (
  `cmsSliderId` int(11) NOT NULL AUTO_INCREMENT,
  `cmsSliderName` varchar(50) DEFAULT NULL,
  `cmsSliderDesc` text,
  `cmsSliderPic` varchar(40) DEFAULT NULL,
  `cmsSliderActive` enum('1','0') DEFAULT '1',
  PRIMARY KEY (`cmsSliderId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `cms_slider` */

insert  into `cms_slider`(`cmsSliderId`,`cmsSliderName`,`cmsSliderDesc`,`cmsSliderPic`,`cmsSliderActive`) values (6,'Slider 1','Slider 1','07583093_3.jpg','1'),(7,'Slider 2','Slider 2','05444558_4.jpg','1'),(8,'Slider 3','Slider 3','03123446__IMK7391OK.jpg','1'),(9,'Slider 4','Slider 4','03125313__IMK7419OK.jpg','1'),(10,'Slider 5','Slider 5','03134843__IMK7819OK.jpg','1');

/*Table structure for table `core_group` */

DROP TABLE IF EXISTS `core_group`;

CREATE TABLE `core_group` (
  `coreGroupId` int(11) NOT NULL AUTO_INCREMENT,
  `coreGroupName` varchar(30) NOT NULL,
  PRIMARY KEY (`coreGroupId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `core_group` */

insert  into `core_group`(`coreGroupId`,`coreGroupName`) values (1,'Admin'),(6,'Admin Company'),(7,'Admin Department'),(8,'User');

/*Table structure for table `core_menu` */

DROP TABLE IF EXISTS `core_menu`;

CREATE TABLE `core_menu` (
  `coreMenuId` int(11) NOT NULL AUTO_INCREMENT,
  `coreMenuName` varchar(50) NOT NULL,
  `coreMenuUrl` varchar(250) NOT NULL DEFAULT '#',
  `coreParentId` int(11) NOT NULL DEFAULT '0',
  `coreMenuIcon` varchar(50) DEFAULT NULL,
  `coreMenuTitle` varchar(30) DEFAULT NULL,
  `coreMenuSort` int(11) NOT NULL,
  PRIMARY KEY (`coreMenuId`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

/*Data for the table `core_menu` */

insert  into `core_menu`(`coreMenuId`,`coreMenuName`,`coreMenuUrl`,`coreParentId`,`coreMenuIcon`,`coreMenuTitle`,`coreMenuSort`) values (1,'Dashboard','dashboard',0,'fa-dashboard','Dashboard',1),(2,'Access Control','#',0,'fa-cog','Access Control',2),(3,'Management User','management_user',2,'fa-user','Management User',5),(4,'Management Group','management_group',2,'fa-group','Management Group',3),(5,'Management Menu','management_module',2,'fa-bars','Management Menu',2),(6,'Department','ref_department',8,'fa fa-university','Department',6),(7,'Company','ref_company',8,'fa fa-building','Company',7),(8,'Master Data','#',0,'fa fa-database','Master Data',4),(9,'Management Article','#',0,'fa fa-book','Management Article',9),(10,'Application','ref_application',8,'fa fa-qrcode','Application',10),(11,'Management Forum','maintenance',0,'fa fa-comments-o','Management Forum',11),(12,'Tag Artikel','ref_tag',8,'fa fa-tag','Tag Artikel',11),(13,'CMS','#',0,'fa fa-list-alt','CMS',13),(14,'About','cms_about',13,'fa fa-info-circle','About',14),(15,'Application','adm_application',0,' fa-qrcode','Application',15),(16,'Landing Page','#',0,'fa fa-desktop','Landing Page',0),(17,'Slider','cms_slider',13,'fa fa-file-image-o','Slider',0),(18,'Quotes','cms_quotes',13,'fa fa-comment-o','Quotes',0),(19,'CSR','cms_csr',13,'fa fa-flag','CSR',0),(20,'Coal Product Specs','cms_cps',13,'fa fa-table','Coal Product Specs',0),(21,'BOD','ref_bod',8,'fa fa-user','BOD',0),(22,'SHE','cms_she',13,'fa  fa-heartbeat','SHE',0),(23,'Application','dpt_application',0,'fa fa-qrcode','Application',0),(24,'Home','lp_home',16,'fa-home','Home',0),(25,'About','lp_about',16,'fa-th-list','About',0),(26,'Company','lp_company',16,'fa-building','Company',0),(27,'Application','lp_application',16,'fa-qrcode','Application',0),(28,'Blog','lp_blog',16,'fa-comment','Blog',0),(29,'Forum','lp_forum',16,'fa-comments-o','Forum',0),(30,'Profile','lp_profile',16,'fa fa-file-text-o','Profile',0),(31,'Category Article','ref_category_article',8,'fa fa-th-list','Category Article',0),(32,'Logout','auth/logout',0,'fa fa-sign-out','Logout',0),(33,'Article','cms_article',9,'fa fa-newspaper-o','Article',0),(34,'Popular Article','ref_popular_article',9,'fa fa-star','Popular Article',0);

/*Table structure for table `core_role` */

DROP TABLE IF EXISTS `core_role`;

CREATE TABLE `core_role` (
  `coreRoleId` int(11) NOT NULL AUTO_INCREMENT,
  `coreRoleGroup` int(11) NOT NULL,
  `coreRoleMenu` int(11) NOT NULL,
  `coreRoleActive` enum('1','0') NOT NULL DEFAULT '0',
  PRIMARY KEY (`coreRoleId`),
  KEY `pbRoleGroup` (`coreRoleGroup`),
  KEY `pbRoleMenu` (`coreRoleMenu`),
  CONSTRAINT `core_role_ibfk_1` FOREIGN KEY (`coreRoleGroup`) REFERENCES `core_group` (`coreGroupId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `core_role_ibfk_2` FOREIGN KEY (`coreRoleMenu`) REFERENCES `core_menu` (`coreMenuId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

/*Data for the table `core_role` */

insert  into `core_role`(`coreRoleId`,`coreRoleGroup`,`coreRoleMenu`,`coreRoleActive`) values (2,1,1,'1'),(3,1,2,'1'),(4,1,3,'1'),(5,1,4,'1'),(13,1,5,'1'),(14,1,6,'1'),(15,1,7,'1'),(16,1,8,'1'),(17,1,9,'1'),(18,1,10,'1'),(19,1,11,'1'),(20,1,12,'1'),(21,1,13,'1'),(22,1,14,'1'),(23,6,13,'1'),(24,6,14,'1'),(25,6,15,'1'),(26,1,15,'0'),(27,6,1,'1'),(28,6,9,'1'),(29,6,11,'1'),(30,1,16,'1'),(31,1,17,'1'),(32,1,18,'1'),(33,1,19,'1'),(34,1,20,'0'),(35,1,21,'1'),(36,1,22,'1'),(37,1,23,'0'),(38,7,16,'0'),(39,7,23,'1'),(40,7,1,'1'),(41,7,9,'1'),(42,7,11,'1'),(43,1,24,'1'),(44,1,25,'1'),(45,1,26,'1'),(46,1,27,'1'),(47,1,28,'1'),(48,1,29,'1'),(49,6,28,'1'),(50,6,17,'1'),(51,6,18,'1'),(52,6,19,'1'),(53,6,20,'0'),(54,6,22,'1'),(55,1,30,'1'),(56,1,31,'1'),(57,6,24,'1'),(58,6,25,'1'),(59,6,26,'1'),(60,6,27,'1'),(61,6,29,'1'),(62,7,24,'1'),(63,7,25,'1'),(64,7,26,'1'),(65,7,27,'1'),(66,7,28,'1'),(67,7,29,'1'),(68,8,16,'1'),(69,8,24,'1'),(70,8,25,'1'),(71,8,26,'1'),(72,8,27,'1'),(73,8,28,'1'),(74,8,29,'1'),(75,8,30,'0'),(76,6,30,'1'),(77,1,32,'0'),(78,1,33,'1'),(79,1,34,'1');

/*Table structure for table `core_user` */

DROP TABLE IF EXISTS `core_user`;

CREATE TABLE `core_user` (
  `coreUserId` int(11) NOT NULL AUTO_INCREMENT,
  `coreUserRealName` varchar(50) NOT NULL,
  `coreNRP` int(11) DEFAULT NULL,
  `coreUsername` varchar(30) NOT NULL,
  `corePassword` varchar(250) NOT NULL,
  `coreUserGroup` int(11) NOT NULL,
  `coreUserEmail` varchar(80) DEFAULT NULL,
  `coreUserPic` varchar(40) DEFAULT NULL,
  `coreUserCreatedDate` datetime DEFAULT NULL,
  `coreUserCreatedBy` int(11) DEFAULT NULL,
  `coreUserLastLogin` datetime DEFAULT NULL,
  `coreUserActive` enum('1','0') NOT NULL DEFAULT '1',
  `coreUserCompanyId` int(11) DEFAULT NULL,
  `coreUserDepartmentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`coreUserId`),
  KEY `pbUserGroup` (`coreUserGroup`),
  CONSTRAINT `core_user_ibfk_1` FOREIGN KEY (`coreUserGroup`) REFERENCES `core_group` (`coreGroupId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=497 DEFAULT CHARSET=latin1;

/*Data for the table `core_user` */

insert  into `core_user`(`coreUserId`,`coreUserRealName`,`coreNRP`,`coreUsername`,`corePassword`,`coreUserGroup`,`coreUserEmail`,`coreUserPic`,`coreUserCreatedDate`,`coreUserCreatedBy`,`coreUserLastLogin`,`coreUserActive`,`coreUserCompanyId`,`coreUserDepartmentId`) values (2,'admin',90117071,'admin','21232f297a57a5a743894a0e4a801fc3',1,'septiandj@turanggaresources.com','16001897_avatar5.png',NULL,NULL,'2017-06-06 07:55:13','1',2,57),(3,'Septian',NULL,'Septian','827ccb0eea8a706c4c34a16891f84e7b',6,'septiandwijoko@gmail.com','02080118_avatar04.png','2017-03-16 02:08:01',2,'2017-06-05 10:22:26','1',2,57),(4,'User',NULL,'User','827ccb0eea8a706c4c34a16891f84e7b',7,'septiandwijoko@gmail.com','02151622_avatar04.png','2017-03-16 02:15:16',2,'2017-06-04 19:55:22','1',2,57),(367,'Benny Esar Malau',101101,'Benny Esar Malau','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,75),(368,'Didik Prasetyo',103006,'Didik Prasetyo','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,44),(369,'Nehemia Hotmauli P Pardede',105034,'Nehemia Hotmauli P Pardede','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,75),(370,'Prasetyo Hadi',190127,'Prasetyo Hadi','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,77),(371,'Hartati',194024,'Hartati','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,78),(372,'Suwanto',195105,'Suwanto','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,79),(373,'Edianto Rahardja',199041,'Edianto Rahardja','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,77),(374,'Misyono',2390004,'Misyono','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,48),(375,'Siti Hajar Haironi',5007019,'Siti Hajar Haironi','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,46),(376,'Riska Puspitasari',5007047,'Riska Puspitasari','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,49),(377,'Riafli Taufik',5007050,'Riafli Taufik','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,139),(378,'Dimas Aditya Kurniawan',5008001,'Dimas Aditya Kurniawan','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,50),(379,'Robby Gunawan',5008002,'Robby Gunawan','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,48),(380,'Dony Ramdani',5008021,'Dony Ramdani','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,43),(381,'Leonita Kadaryanti',5009002,'Leonita Kadaryanti','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,43),(382,'Mhd Mukli M I Pulungan',5009006,'Mhd Mukli M I Pulungan','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,51),(383,'Mokmin Suwandi',5009008,'Mokmin Suwandi','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,53),(384,'Indra Wawan',5009010,'Indra Wawan','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,48),(385,'Rusdiyanto',5010001,'Rusdiyanto','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-23 13:14:22','1',2,52),(386,'Arwin Fajar Putra',5010002,'Arwin Fajar Putra','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',8,115),(387,'Ilham Riedfi',5010103,'Ilham Riedfi','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,50),(388,'Fitri Darman',5011001,'Fitri Darman','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,46),(389,'Suhendrik',5011004,'Suhendrik','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,52),(390,'Siswanto',5011005,'Siswanto','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,54),(391,'Depta Windri Asmoko',5011006,'Depta Windri Asmoko','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,85),(392,'Mochamad Septian Nugroho',5011008,'Mochamad Septian Nugroho','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,55),(393,'Ika Sasmita Aji',5011010,'Ika Sasmita Aji','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,52),(394,'Siska T',5012001,'Siska T','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,43),(395,'Susanti',5012002,'Susanti','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,56),(396,'Indah Putri Agus Triani',5012003,'Indah Putri Agus Triani','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,46),(397,'Muhamad Harun',5012004,'Muhamad Harun','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-23 13:16:09','1',2,57),(398,'Andhito Hardiansyah',5012005,'Andhito Hardiansyah','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,139),(399,'Elsa Putri Yesy',5012006,'Elsa Putri Yesy','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,43),(400,'Triyono',5013001,'Triyono','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,58),(401,'Dicky Ardhian Prasetya',5013002,'Dicky Ardhian Prasetya','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,58),(402,'M Danang Sholichin',5013003,'M Danang Sholichin','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,91),(403,'Muhammad Fadhil Parmato Irsyal',5013006,'Muhammad Fadhil Parmato Irsyal','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,60),(404,'Taufik Kurniawan',5013007,'Taufik Kurniawan','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,43),(405,'Fauzan Fajar',5014001,'Fauzan Fajar','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,56),(406,'Denny Arpiannor',5107016,'Denny Arpiannor','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,139),(407,'Gina Adriana',5107031,'Gina Adriana','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,46),(408,'Ali Mahput',5107036,'Ali Mahput','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,51),(409,'Megawati Sitorus',5108001,'Megawati Sitorus','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,61),(410,'Yusmanadi Wardana',5108003,'Yusmanadi Wardana','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,53),(411,'Wira Perkasa',5108004,'Wira Perkasa','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,48),(412,'Vidi Afrianor',5108006,'Vidi Afrianor','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,48),(413,'Hariyono',5108008,'Hariyono','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,48),(414,'Muhammad Aminullah',5108009,'Muhammad Aminullah','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,53),(415,'Muhammad Rizki',5109001,'Muhammad Rizki','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,53),(416,'Mohreza Agusandrie',5109003,'Mohreza Agusandrie','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,53),(417,'Mahendra Eka Prasetia',5110004,'Mahendra Eka Prasetia','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,51),(418,'Moh Nur Akbar',5110009,'Moh Nur Akbar','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,53),(419,'Ikhwan Hafizy',5110010,'Ikhwan Hafizy','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,53),(420,'Mutia Ulfah',5110014,'Mutia Ulfah','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',8,141),(421,'Syafrina Rahmanita',5110016,'Syafrina Rahmanita','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',8,110),(422,'Sony Irianto',5110017,'Sony Irianto','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,139),(423,'Mulkan',5111001,'Mulkan','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',8,112),(424,'Yuliani Nurpratiwi',5111004,'Yuliani Nurpratiwi','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',8,110),(425,'Agus Budiyanto',5111005,'Agus Budiyanto','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',8,112),(426,'Ilhamsyah',5111012,'Ilhamsyah','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',8,115),(427,'Hutdy Samodra',5111013,'Hutdy Samodra','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',8,115),(428,'Sali Ashar',5112001,'Sali Ashar','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',8,112),(429,'Khairi Riadhi Mahfuz',5112003,'Khairi Riadhi Mahfuz','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,54),(430,'Sugiono',5112004,'Sugiono','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,139),(431,'Johny Dwi Setiawan',5112005,'Johny Dwi Setiawan','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',8,112),(432,'Gusti Fahmi Adliansyah',5112006,'Gusti Fahmi Adliansyah','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,51),(433,'Agus Suprianto',5112007,'Agus Suprianto','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,83),(434,'Awin Fauzi',5113001,'Awin Fauzi','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,48),(435,'Agata Ambar Ratna Ning Tyas',6101088,'Agata Ambar Ratna Ning Tyas','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,43),(436,'Haris Patriawan',6103072,'Haris Patriawan','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,94),(437,'Yayan Rudianto',6104018,'Yayan Rudianto','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,77),(438,'Bambang Winanto',6104019,'Bambang Winanto','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,46),(439,'Tiska Mardana',6104490,'Tiska Mardana','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,43),(440,'Ivan Eduardo Hutapea',6106619,'Ivan Eduardo Hutapea','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,55),(441,'Zuhal Abdillah',6112876,'Zuhal Abdillah','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,139),(442,'Rizky Cahya Putra',6113826,'Rizky Cahya Putra','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,95),(443,'Lucky Tribudi Decyanto Sipahutar',6192168,'Lucky Tribudi Decyanto Sipahut','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,43),(444,'Budhi Karyadi Pribadi',6196146,'Budhi Karyadi Pribadi','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,64),(445,'Muslikin',8409020,'Muslikin','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,53),(446,'Gatot Ruswibowo',9108007,'Gatot Ruswibowo','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,94),(447,'Taufik Ganjar Nugroho',9109002,'Taufik Ganjar Nugroho','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,43),(448,'Agung Widada',9109004,'Agung Widada','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,97),(449,'Ferryanto Diresma Jacob Alis',9109005,'Ferryanto Diresma Jacob Alis','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,95),(450,'Budhi Utomo',9109010,'Budhi Utomo','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,97),(451,'Bambang Herlambang',9110006,'Bambang Herlambang','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,98),(452,'Windu Gilang Prabowo',9110008,'Windu Gilang Prabowo','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,95),(453,'Arief Adi Pradana',9110009,'Arief Adi Pradana','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,99),(454,'Oktavian Jhonson Keus Hutapea',9110012,'Oktavian Jhonson Keus Hutapea','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,46),(455,'Andre Halasson Tambunan',9110013,'Andre Halasson Tambunan','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,68),(456,'Rakhmat Dody Sudjatmiko',9111004,'Rakhmat Dody Sudjatmiko','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,60),(457,'Kurniawan Eko Ariyanto Lusi Tirto',9111006,'Kurniawan Eko Ariyanto Lusi Ti','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,94),(458,'Amar Abdilah',9111010,'Amar Abdilah','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,101),(459,'Anna Apriliana Andaria Putri',9111011,'Anna Apriliana Andaria Putri','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,78),(460,'Venri Erviyanto',9111019,'Venri Erviyanto','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,95),(461,'Aditya Maulana Yusuf',9111022,'Aditya Maulana Yusuf','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,95),(462,'Minat Leksono',9111025,'Minat Leksono','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,79),(463,'Agung Robert Setiawan',9111027,'Agung Robert Setiawan','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,102),(464,'Annas Aji Sufindra',9112002,'Annas Aji Sufindra','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,103),(465,'Tri Wibowo',9112006,'Tri Wibowo','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,97),(466,'Yoanna Kurnia Astuti',9112015,'Yoanna Kurnia Astuti','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,75),(467,'Fahmi',9112028,'Fahmi','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,94),(468,'Randy Febrianto',9112031,'Randy Febrianto','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,75),(469,'Indra Setiawan',9112048,'Indra Setiawan','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,97),(470,'Bagus Aji Prasojo',9112050,'Bagus Aji Prasojo','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,95),(471,'Eko Feri Efendi',9112066,'Eko Feri Efendi','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,94),(472,'Randy Wiryaputra',9112068,'Randy Wiryaputra','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,75),(473,'Alfred Saputro Budi Asworo',9112084,'Alfred Saputro Budi Asworo','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,97),(474,'Haryono',9112098,'Haryono','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,104),(475,'Rodo Diondy Faith S',9112102,'Rodo Diondy Faith S','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,68),(476,'Yogi Danizar',9113003,'Yogi Danizar','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,95),(477,'Adi Prasetio',9113020,'Adi Prasetio','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,97),(478,'Agung Kurniawan',9113023,'Agung Kurniawan','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,78),(479,'Fransiskus Parapean',9113034,'Fransiskus Parapean','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,101),(480,'Tommi Jufitra',9114002,'Tommi Jufitra','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,97),(481,'Bambang Cahyo Widiyanto',9114008,'Bambang Cahyo Widiyanto','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,103),(482,'Lukman Hakim Sujatmo',9117001,'Lukman Hakim Sujatmo','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,103),(483,'Ghaffary Ghany Anshory',9117002,'Ghaffary Ghany Anshory','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,105),(484,'Musel',9208008,'Musel','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,101),(485,'Denda Hilmansyah',9210003,'Denda Hilmansyah','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,52),(486,'M. Rudy Rizani',9210004,'M. Rudy Rizani','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,52),(487,'Iwan Gunawan',9213003,'Iwan Gunawan','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,52),(488,'Edwin Cornelius Sebastian Situmea',61102316,'Edwin Cornelius Sebastian Situ','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',2,64),(489,'Hendri Ramadhon',61122818,'Hendri Ramadhon','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-31 14:27:47','1',2,121),(490,'Budi Darma',1,'Budi Darma','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,91),(491,'Daent Pradipta',9117004,'Daent Pradipta','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,103),(492,'Dedik Agil Kurniawan',9117005,'Dedik Agil Kurniawan','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,105),(493,'Muhammad Fariz',9117008,'Muhammad Fariz','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,95),(494,'Rany Rakitta Dewi',9117009,'Rany Rakitta Dewi','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,95),(495,'Abdul Azis Murdiana',9117010,'Abdul Azis Murdiana','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,95),(496,'Dedi Darwanto',9117011,'Dedi Darwanto','827ccb0eea8a706c4c34a16891f84e7b',8,'','12500637_avatar5.png',NULL,NULL,'2017-05-21 20:02:55','1',4,106);

/*Table structure for table `ref_application` */

DROP TABLE IF EXISTS `ref_application`;

CREATE TABLE `ref_application` (
  `refApplicationId` int(11) NOT NULL AUTO_INCREMENT,
  `refApplicationName` varchar(50) DEFAULT NULL,
  `refApplicationDesc` text,
  `refApplicationPic` varchar(40) DEFAULT NULL,
  `refApplicationUrl` varchar(100) DEFAULT NULL,
  `refApplicationActive` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`refApplicationId`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `ref_application` */

insert  into `ref_application`(`refApplicationId`,`refApplicationName`,`refApplicationDesc`,`refApplicationPic`,`refApplicationUrl`,`refApplicationActive`) values (21,'IPPA ','IPPA Application','11253025_IPPA.jpg','test','1'),(22,'HCIS','HCIS App','11262656_HCIS.jpg','test','1'),(23,'DocTrack','DocTrack App','11372526_DOCTRACK.jpg','test','1');

/*Table structure for table `ref_bod` */

DROP TABLE IF EXISTS `ref_bod`;

CREATE TABLE `ref_bod` (
  `refBodId` int(11) NOT NULL AUTO_INCREMENT,
  `refBodName` varchar(50) DEFAULT NULL,
  `refBodDesc` text,
  `refBodPic` varchar(40) DEFAULT NULL,
  `refBodActive` enum('1','0') DEFAULT '1',
  PRIMARY KEY (`refBodId`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

/*Data for the table `ref_bod` */

insert  into `ref_bod`(`refBodId`,`refBodName`,`refBodDesc`,`refBodPic`,`refBodActive`) values (25,'Nico Tahir',NULL,'Nico.jpg','1'),(26,'Edianto Rahardja \r\n',NULL,'Edianto.jpg','1'),(27,'Arianto Sasono \r\n',NULL,'Arianto.jpg','1'),(28,'Gidion Hasan\r\n',NULL,'sample.jpg','1'),(29,'Dadi Sukarso Yuwono ',NULL,'sample.jpg','1'),(30,'F.X.L. Kesuma \r\n',NULL,'sample.jpg','1'),(31,'Dwi Priyadi ',NULL,'sample.jpg','1'),(32,'Ignatius Stanley Hendarto\r\n',NULL,'sample.jpg','1'),(33,'Wahyu Widaryanto\r\n',NULL,'sample.jpg','1'),(34,'Yayan Rudianto\r\n',NULL,'Yayan.jpg','1'),(35,'Sunny\r\n',NULL,'sample.jpg','1'),(36,'Lina\r\n',NULL,'sample.jpg','1'),(37,'Junichi Tateishi\r\n',NULL,'sample.jpg','1'),(38,'Chinthya Theresa\r\n',NULL,'sample.jpg','1'),(39,'Yoshihiko Ogura\r\n',NULL,'sample.jpg','1'),(40,'Wicaksana Lukito\r\n',NULL,'sample.jpg','1'),(41,'Goh Khoon Teen Paul\r\n',NULL,'sample.jpg','1');

/*Table structure for table `ref_bod_company` */

DROP TABLE IF EXISTS `ref_bod_company`;

CREATE TABLE `ref_bod_company` (
  `refBodCompId` int(11) NOT NULL AUTO_INCREMENT,
  `refCompanyId` int(11) DEFAULT NULL,
  `refBodId` int(11) DEFAULT NULL,
  PRIMARY KEY (`refBodCompId`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

/*Data for the table `ref_bod_company` */

insert  into `ref_bod_company`(`refBodCompId`,`refCompanyId`,`refBodId`) values (1,5,1),(2,5,2),(3,5,3),(4,5,4),(5,5,5),(6,5,6),(7,5,7),(8,5,8),(9,2,3),(10,2,4),(11,2,10),(12,2,5),(13,2,7),(14,2,6),(15,2,11),(16,4,12),(18,4,13),(19,4,5),(21,4,14),(23,7,6),(24,7,15),(25,7,7),(26,7,14),(27,7,16),(28,4,19),(29,4,6),(30,7,20),(31,7,17),(32,2,18),(33,2,22),(34,7,23),(35,4,22),(36,5,22),(37,5,24);

/*Table structure for table `ref_bod_function` */

DROP TABLE IF EXISTS `ref_bod_function`;

CREATE TABLE `ref_bod_function` (
  `refBodFunctionId` int(11) NOT NULL AUTO_INCREMENT,
  `refBodFunctionName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`refBodFunctionId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `ref_bod_function` */

insert  into `ref_bod_function`(`refBodFunctionId`,`refBodFunctionName`) values (1,'Komisaris'),(2,'Direksi');

/*Table structure for table `ref_bod_group` */

DROP TABLE IF EXISTS `ref_bod_group`;

CREATE TABLE `ref_bod_group` (
  `refBodGroupId` int(11) NOT NULL AUTO_INCREMENT,
  `refBodId` int(11) DEFAULT NULL,
  `refCompanyId` int(11) DEFAULT NULL,
  `refBodFunctionId` int(11) DEFAULT NULL,
  `refBodPositionId` int(11) DEFAULT NULL,
  PRIMARY KEY (`refBodGroupId`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

/*Data for the table `ref_bod_group` */

insert  into `ref_bod_group`(`refBodGroupId`,`refBodId`,`refCompanyId`,`refBodFunctionId`,`refBodPositionId`) values (1,25,5,2,3),(2,26,5,2,4),(3,27,5,2,4),(4,28,5,1,1),(5,29,5,1,2),(6,30,5,1,2),(7,31,5,1,2),(8,27,8,2,3),(9,26,8,2,4),(10,30,8,1,1),(11,25,8,1,2),(12,25,2,2,3),(13,26,2,2,4),(14,32,2,2,4),(15,30,2,1,1),(16,29,2,1,2),(17,33,2,1,2),(18,25,4,2,3),(19,26,4,2,4),(20,34,4,2,4),(21,30,4,1,1),(22,27,4,1,2),(23,27,7,2,6),(24,34,7,2,4),(25,35,7,2,4),(26,25,7,1,5),(27,26,7,1,2),(28,36,7,1,2);

/*Table structure for table `ref_bod_position` */

DROP TABLE IF EXISTS `ref_bod_position`;

CREATE TABLE `ref_bod_position` (
  `refBodPositionId` int(11) NOT NULL AUTO_INCREMENT,
  `refBodPositionName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`refBodPositionId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `ref_bod_position` */

insert  into `ref_bod_position`(`refBodPositionId`,`refBodPositionName`) values (1,'Presiden Komisaris'),(2,'Komisaris'),(3,'Presiden Direktur'),(4,'Direktur'),(5,'Komisaris Utama'),(6,'Direktur Utama');

/*Table structure for table `ref_bookmark` */

DROP TABLE IF EXISTS `ref_bookmark`;

CREATE TABLE `ref_bookmark` (
  `refBookmarkId` int(11) NOT NULL AUTO_INCREMENT,
  `coreUserId` int(11) DEFAULT NULL,
  `cmsArticleId` int(11) DEFAULT NULL,
  `refBookmarkCreatedDate` datetime DEFAULT NULL,
  `refBookmarkActive` enum('1','0') DEFAULT '1',
  PRIMARY KEY (`refBookmarkId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `ref_bookmark` */

insert  into `ref_bookmark`(`refBookmarkId`,`coreUserId`,`cmsArticleId`,`refBookmarkCreatedDate`,`refBookmarkActive`) values (6,3,13,'2017-06-05 10:29:15','1');

/*Table structure for table `ref_category_article` */

DROP TABLE IF EXISTS `ref_category_article`;

CREATE TABLE `ref_category_article` (
  `refCategoryArticleId` int(11) NOT NULL AUTO_INCREMENT,
  `refCategoryArticleName` varchar(250) DEFAULT NULL,
  `refCategoryArticleActive` enum('1','0') DEFAULT '1',
  PRIMARY KEY (`refCategoryArticleId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `ref_category_article` */

insert  into `ref_category_article`(`refCategoryArticleId`,`refCategoryArticleName`,`refCategoryArticleActive`) values (1,'Management','1'),(2,'Technology','1'),(3,'Finance & Goverment Regulation','1'),(4,'Motivation','1'),(5,'Safety & CSR','1'),(6,'Others','1'),(7,'Test new','0');

/*Table structure for table `ref_company` */

DROP TABLE IF EXISTS `ref_company`;

CREATE TABLE `ref_company` (
  `refCompanyId` int(11) NOT NULL AUTO_INCREMENT,
  `refCompanyName` varchar(50) DEFAULT NULL,
  `refCompanyAlias` varchar(5) DEFAULT NULL,
  `refCompanyProfile` text,
  `refCompanyProfilePrev` text,
  `refCompanyVision` text,
  `refCompanyMission` text,
  `refBodId` int(11) DEFAULT NULL,
  `refCompanyStructure` varchar(40) DEFAULT NULL,
  `refCompanyPic` text,
  `refCompanyLogo` varchar(40) DEFAULT NULL,
  `refCompanyActive` enum('1','0') DEFAULT '1',
  `refDistrictCode` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`refCompanyId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `ref_company` */

insert  into `ref_company`(`refCompanyId`,`refCompanyName`,`refCompanyAlias`,`refCompanyProfile`,`refCompanyProfilePrev`,`refCompanyVision`,`refCompanyMission`,`refBodId`,`refCompanyStructure`,`refCompanyPic`,`refCompanyLogo`,`refCompanyActive`,`refDistrictCode`) values (2,'PT. Prima Multi Mineral','PMM','<p class=\"text-color-dark\">PT Prima Multi Mineral didirikan pada tahun 2004, bergerak dibidang jual beli batubara dengan ijin yang dimiliki yaitu IUP Operasi Produksi Khusus Pengangkutan dan Penjualan. Seiring perjalanan waktu pada tanggal 1 September 2014, PMM resmi menjadi anak perusahaan PT Tuah Turangga Agung (TTA) dengan komposisi saham 99,83 % dimiliki&nbsp; oleh PT TTA dan sisanya dimiliki sebesar&nbsp; 0,17%&nbsp; oleh PT United Tractors Pandu Engineering (UTPE).&nbsp; Jumlah karyawan PMM sebanyak tujuh puluh dua orang tersebar di Head Office Jakarta serta di Branch PMBO Banjarmasin.</p>\r\n\r\n<p class=\"text-color-dark\">Proses bisnis PMM dimulai dari kajian terkait kebutuhan pasar setiap segmen dan secara paralel dilakukan pencarian supplier yang memilki spesifikasi yang sesuai. Berdasarkan data-data yang dimiliki, team Marketing mulai mencari customer dan melakukan kesepakatan yang dituangkan dalam kontrak jual beli.&nbsp;</p>\r\n\r\n<p class=\"text-color-dark\">Sedangkan untuk memastikan jumlah dan waktu pengiriman, PMM melakukan supervisi dilapangan terhadap para pemasoknya. Saat ini terdapat dua area utama source PMM yaitu Cluster 1 Kalimantan Selatan (own and other source) dan Cluster 2 Kalimantan Tengah (own source). Fasilitas pelabuhan yang digunakan di Cluster 1 adalah Port Sungai Puting yang dikelola oleh KPP serta Port Sungai Danau. Sedangkan Cluster 2 menggunakan Port Paring Lahung dan&nbsp; Intermediate Teluk Timbau yang dikelola oleh PAMA.&nbsp;</p>\r\n','PT Prima Multi Mineral didirikan pada tahun 2004, bergerak dibidang jual beli batubara dengan ijin yang dimiliki yaitu IUP Operasi Produksi Khusus Pengangkutan dan Penjualan. Seiring perjalanan waktu pada tanggal 1 September 2014, PMM resmi menjadi anak perusahaan PT Tuah Turangga Agung (TTA) dengan komposisi saham 99,83 % dimiliki&nbsp; oleh PT TTA dan sisanya dimiliki sebesar&nbsp; 0,17%&nbsp; oleh PT United Tractors Pandu Engineering (UTPE).&nbsp; Jumlah karyawan PMM sebanyak tujuh puluh dua orang tersebar di Head Office Jakarta serta di Branch PMBO Banjarmasin.&nbsp;\r\n','<p>Menjadi penyedia batubara berorientasi pasar yang handal di kawasan Asia &ndash; Pacific</p>\r\n','<p><p class=\"mb-lg\">Menjadi perusahaan yang</p>\r\n<ul class=\"list list-icons list-primary list-side-borders mt-xlg\">\r\n<li \"pt-sm=\"\" pb-sm=\"\" appear-animation\"=\"\" data-appear-animation=\"fadeInUp\" data-appear-animation-delay=\"0\" class=\"appear-animation animated fadeInUp appear-animation-visible\"><i class=\"fa fa-check\"></i>Kami memberikan nilai tambah dan manfaat kepada seluruh stakeholder melalui komitmen kami untuk mengelola sumber daya secara efektif dan efisien, serta untuk melakukan perbaikan terus &ndash; menerus di SDM dan proses.</li>\r\n<li \"pt-sm=\"\" pb-sm=\"\" appear-animation\"=\"\" data-appear-animation=\"fadeInUp\" data-appear-animation-delay=\"0\" class=\"appear-animation animated fadeInUp appear-animation-visible\"><i class=\"fa fa-check\"></i>Kami berkomitmen untuk memenuhi kebutuhan end user melalui pengetahuan yang mendalam mengenai bidang industrinya, dan juga memenuhi kualitas yang sesuai dan tepat waktu.</li>\r\n</ul></p>\r\n',NULL,NULL,'pmm.jpg','Logo PMM.png','1','PMHO'),(3,'Superadmin','ADM','<p>Akses untuk superadmin</p>\r\n','','','',NULL,NULL,NULL,NULL,'0',NULL),(4,'PT. Telen Orbit Prima','TOP','<p class=\"text-color-dark\">PT Telen Orbit Prima (TOP) didirikan pada tahun 1999 berdasarkan Akta Pendirian No. 13 tertanggal 21 Oktober 1999 dibuat di hadapan Herlien, S.H. dan telah memperoleh pengesahan sebagai badan hukum berdasarkan Surat Keputusan Menteri Hukum dan Perundang-undangan RI No. C-16090 HT.01.01.Th.2000 tertanggal 2 Agustus 2000</p>\r\n\r\n<p class=\"text-color-dark\">TOP merupakan suatu perseroan terbatas yang bergerak di bidang usaha pertambangan batubara. Berdasarkan &nbsp;Izin Usaha Pertambangan Operasi Produksi yang dikeluarkan oleh Bupati Kapuas sesuai Surat Keputusannya No. 531/ DISTAMBEN TAHUN 2009, TOP diberikan masa konsesi atas kegiatan usaha pertambangannya dengan jangka waktu kegiatan hingga 20 (dua puluh) tahun. Wilayah pertambangan TOP sendiri berlokasi di Desa Buhut Jaya, Kecamatan Kapuas Tengah, Kabupaten Kapuas, Kalimantan Tengah dengan luas 4.897 Ha</p>\r\n\r\n<p class=\"text-color-dark\">Adapun 99,99% saham TOP dimiliki oleh PT Tuah Turangga Agung (TTA), suatu perusahaan perdagangan batubara di Indonesia yang berada di bawah kepemilikan saham dari PT Pamapersada Nusantara dan PT United Tractors Tbk. Dalam melaksanakan kegiatan usaha pertambangannya, TOP menjalin kerjasama dengan kontraktor pertambangan yaitu PT Pamapersada Nusantara dan PT Kalimantan Prima Persada. Kerjasama yang dijalin adalah dalam rangka penyediaan jasa pengupasan tanah penutup (over burden removal), pengangkutan (hauling) dan bongkar muat batubara, termasuk jasa pengelolaan pelabuhan dan intermediate stockpile serta penyewaan alat berat. Untuk menunjang bisnis proses pertambangannya, TOP telah memiliki dan mengelola sendiri pelabuhan atau terminal khusus batubara yang berlokasi di Paring Lahung &ndash; Barito Utara dan Teluk Timbau &ndash; Barito Selatan sejak tahun 2010.&nbsp;</p>\r\n\r\n<p class=\"text-color-dark\">Sebagian besar wilayah pertambangan TOP berada dalam kawasan hutan produksi. Oleh karenanya, izin pinjam pakai kawasan hutan dari pemerintah menjadi syarat agar perusahaan tambang dapat melakukan kegiatan eksploitasi pertambangan di wilayahnya, dan saat ini atas lebih dari 2.000 Ha wilayah pertambangan TOP yang berada dalam kawasan hutan produksi telah mendapatkan izin pinjam pakai kawasan hutan tersebut</p>\r\n','PT. Telen Orbit Prima merupakan suatu perseroan terbatas yang bergerak di bidang usaha pertambangan batubara. Berdasarkan Izin Usaha Pertambangan Operasi Produksi yang dikeluarkan oleh Bupati Kapuas sesuai Surat Keputusannya No. 531/ DISTAMBEN TAHUN 2009, TOP diberikan masa konsesi atas kegiatan usaha pertambangannya dengan jangka waktu kegiatan hingga 20 (dua puluh) tahun. Wilayah pertambangan TOP sendiri berlokasi di Desa Buhut Jaya, Kecamatan Kapuas Tengah, Kabupaten Kapuas, Kalimantan Tengah dengan luas 4.897 Ha\r\n','<p>Menjadi Perusahaan Batubara Major di Indonesia dan Global Trader di Dunia</p>','<p><p class=\"mb-lg\">Menjadi perusahaan yang</p>\r\n<ul class=\"list list-icons list-primary list-side-borders mt-xlg\">\r\n<li \"pt-sm=\"\" pb-sm=\"\" appear-animation\"=\"\" data-appear-animation=\"fadeInUp\" data-appear-animation-delay=\"0\" class=\"appear-animation animated fadeInUp appear-animation-visible\"><i class=\"fa fa-check\"></i>Berkontribusi positif bagi negara dan masyarakat.</li>\r\n<li \"pt-sm=\"\" pb-sm=\"\" appear-animation\"=\"\" data-appear-animation=\"fadeInUp\" data-appear-animation-delay=\"0\" class=\"appear-animation animated fadeInUp appear-animation-visible\"><i class=\"fa fa-check\"></i> Memberi nilai tambah bagi pemegang saham</li>\r\n<li \"pt-sm=\"\" pb-sm=\"\" appear-animation\"=\"\" data-appear-animation=\"fadeInUp\" data-appear-animation-delay=\"0\" class=\"appear-animation animated fadeInUp appear-animation-visible\"><i class=\"fa fa-check\"></i> Menghasilkan produk dan pelayanan yang unggul serta sesuai kebutuhan pelanggan</li>\r\n<li \"pt-sm=\"\" pb-sm=\"\" appear-animation\"=\"\" data-appear-animation=\"fadeInUp\" data-appear-animation-delay=\"0\" class=\"appear-animation animated fadeInUp appear-animation-visible\"><i class=\"fa fa-check\"></i> Menciptakan lingkungan kerja sehat dan dinamis yang dapat meningkatkan kompetensi kerja karyawan</li>\r\n<li \"pt-sm=\"\" pb-sm=\"\" appear-animation\"=\"\" data-appear-animation=\"fadeInUp\" data-appear-animation-delay=\"0\" class=\"appear-animation animated\"><i class=\"fa fa-check\"></i> Pengendalian lingkungan, keselamatan dan kesehatan yang berkelanjutan</li>\r\n</ul></p>',NULL,NULL,'top.jpg','Logo TOP.png','1','TOPH'),(5,'PT. Tuah Turangga Agung','TTA','<p>PT Tuah Turangga Agung didirikan pada tahun 2006 sebelum diakusisi sebagai salah satu anak perusahaan United Tractors Group pada tahun 2008, bergerak dibidang jual beli batubara dengan ijin yang dimiliki yaitu IUP-OP Khusus Pengangkutan dan Penjualan. Seiring berjalannya waktu, tepatnya pada tanggal 1 September 2014 diumumkan bahwa Turangga Resources Group resmi menjadi anak perusahaan dari PT Pamapersada Nusantara (PAMA) dengan komposisi saham 60 % dimiliki oleh PAMA dan sisanya dimiliki sebesar 40 % oleh United Tractors (UT).</p>\r\n','<p>PT Tuah Turangga Agung (Turangga Resources) adalah anak perusahaan dari PT Pamapersada Nusantara dan PT United Tractors Tbk yang fokus untuk mengelola aset tambang batu bara dari Astra Heavy Equipment, Mining and Energy (AHEME) Group. Turangga Resources Group menjalankan dua bisnis yang dikelola oleh anak perusahaannya yaitu Coal Concession Owner dan Coal Trading. Coal Concession Owner bergerak dalam bidang produksi batubara dimana perusahaan-perusahaan memiliki ijin IUP (Ijin Usaha Pertambangan) ataupun PKP2B (Perjanjian Karya Pengusahaan Pertambangan Batubara).</p>\r\n','<p>Menjadi Perusahaan Batubara Major di Indonesia dan Global Trader di Dunia</p>\r\n','<p class=\"mb-lg\">Menjadi perusahaan yang</p>\r\n											<ul class=\"list list-icons list-primary list-side-borders mt-xlg\">\r\n												<li \"pt-sm pb-sm\"><i class=\"fa fa-check\"></i>Berkontribusi positif bagi negara dan masyarakat.</li>\r\n												<li \"pt-sm pb-sm\"><i class=\"fa fa-check\"></i> Memberi nilai tambah bagi pemegang saham</li>\r\n												<li \"pt-sm pb-sm\"><i class=\"fa fa-check\"></i> Menghasilkan produk dan pelayanan yang unggul serta sesuai kebutuhan pelanggan</li>\r\n												<li \"pt-sm pb-sm\"><i class=\"fa fa-check\"></i> Menciptakan lingkungan kerja sehat dan dinamis yang dapat meningkatkan kompetensi kerja karyawan</li>\r\n												<li \"pt-sm pb-sm\"><i class=\"fa fa-check\"></i> Pengendalian lingkungan, keselamatan dan kesehatan yang berkelanjutan</li>\r\n											</ul>',NULL,NULL,'tta.jpg','Logo TTA.png','0',NULL),(7,'PT. Duta Nurcahya','DN','<p class=\"text-color-dark\">PT Duta Nurcahya merupakan suatu perseroan terbatas yang didirikan pada tahun 2005 dan bergerak di bidang usaha pertambangan batubara dengan wilayah pertambangan seluas 4.999 Ha berlokasi di Desa Hurung, Juju Baru, Muara Bakah dan Luwe Hilir, Kecamatan Lahei, Kabupaten Barito Utara, Kalimantan Tengah dan telah menjadi bagian dari grup PT Tuah Turangga Agung pasca proses akuisi yang terjadi di bulan April tahun 2012.</p>\r\n\r\n<p class=\"text-color-dark\">PT Duta Nurcahya sebagai perusahaan pertambangan batubara telah memperoleh Izin Usaha Pertambangan Operasi Produksi berdasarkan Keputusan Bupati Barito Utara No. 188.45/454/2009 tentang Penyesuaian Izin Kuasa Pertambangan Eksploitasi menjadi Izin Usaha Pertambangan Operasi Produksi atas nama PT Duta Nurcahya tertanggal 17 Desember 2009 dan berhasil mencatatkan kegiatan produksi perdana di tahun 2013.</p>\r\n\r\n<p class=\"text-color-dark\">Paska akuisisi, prioritas kerja PT Duta Nutrcahya dititikberatkan pada penyiapan organisasi dan infrastruktur sebagai dasar utama untuk melancarkan proses operasional dari <em>pit</em> ke <em>port</em>. Penjualan batubara perdana pun dicatatkan bersamaan dengan tahun perdana produksi batubara yaitu tahun 2013.&nbsp;</p>\r\n','PT Duta Nurcahya merupakan suatu perseroan terbatas yang didirikan pada tahun 2005 dan bergerak di bidang usaha pertambangan batubara dengan wilayah pertambangan seluas 4.999 Ha berlokasi di Desa Hurung, Juju Baru, Muara Bakah dan Luwe Hilir, Kecamatan Lahei, Kabupaten Barito Utara, Kalimantan Tengah dan telah menjadi bagian dari grup PT Tuah Turangga Agung pasca proses akuisi yang terjadi di bulan April tahun 2012.\r\n','<p>Menjadi Perusahaan Batubara Major di Indonesia dan Global Trader di Dunia</p>','<p><p class=\"mb-lg\">Menjadi perusahaan yang</p>\r\n<ul class=\"list list-icons list-primary list-side-borders mt-xlg\">\r\n<li \"pt-sm=\"\" pb-sm=\"\" appear-animation\"=\"\" data-appear-animation=\"fadeInUp\" data-appear-animation-delay=\"0\" class=\"appear-animation animated fadeInUp appear-animation-visible\"><i class=\"fa fa-check\"></i>Berkontribusi positif bagi negara dan masyarakat.</li>\r\n<li \"pt-sm=\"\" pb-sm=\"\" appear-animation\"=\"\" data-appear-animation=\"fadeInUp\" data-appear-animation-delay=\"0\" class=\"appear-animation animated fadeInUp appear-animation-visible\"><i class=\"fa fa-check\"></i> Memberi nilai tambah bagi pemegang saham</li>\r\n<li \"pt-sm=\"\" pb-sm=\"\" appear-animation\"=\"\" data-appear-animation=\"fadeInUp\" data-appear-animation-delay=\"0\" class=\"appear-animation animated fadeInUp appear-animation-visible\"><i class=\"fa fa-check\"></i> Menghasilkan produk dan pelayanan yang unggul serta sesuai kebutuhan pelanggan</li>\r\n<li \"pt-sm=\"\" pb-sm=\"\" appear-animation\"=\"\" data-appear-animation=\"fadeInUp\" data-appear-animation-delay=\"0\" class=\"appear-animation animated fadeInUp appear-animation-visible\"><i class=\"fa fa-check\"></i> Menciptakan lingkungan kerja sehat dan dinamis yang dapat meningkatkan kompetensi kerja karyawan</li>\r\n<li \"pt-sm=\"\" pb-sm=\"\" appear-animation\"=\"\" data-appear-animation=\"fadeInUp\" data-appear-animation-delay=\"0\" class=\"appear-animation animated\"><i class=\"fa fa-check\"></i> Pengendalian lingkungan, keselamatan dan kesehatan yang berkelanjutan</li>\r\n</ul></p>',NULL,NULL,'dn.jpg','Logo DN.png','1',NULL),(8,'PT. Kadya Caraka Mulia','KCM','<p class=\"text-color-dark\">PT Kadya Caraka Mulia (selanjutnya akan disebut KCM) merupakan suatu perseroan terbatas dengan wilayah perjanjian PKP2B diperoleh sejak tanggal 31 Mei 1999 dengan luas sebesar 10.630 Ha, secara administratif terletak di Kecamatan Simpang Empat, Pengaron dan Mataraman, Kabupaten Banjar, Provinsi Kalimantan Selatan yang berjarak &plusmn; 71 km dari Banjarmasin. Saham KCM saat ini dimiliki 100% oleh PT Tuah Turangga Agung (TTA). Secara umum metode penambangan yang digunakan adalah penambangan terbuka, dibagi menjadi dua pit memanjang dari utara ke selatan. Pengelolaan kegiatan Safety, Health, &amp; Environment (SHE) berjalan dengan baik melalui sosialisasi, pembekalan, pelatihan serta pengawasan sehingga tercapai No Fatality. Selain itu program CSR terus diilakukan melalui program kepedulian dengan masyarakat sekitar tambang menjalankan 6 (enam) program terpadu meliputi :</p>\r\n\r\n<ul>\r\n	<li>Pengembangan Dan Peningkatan Ekonomi Masyarakat</li>\r\n	<li>Peningkatan Kesehatan Dan Gizi Masyarakat,&nbsp;</li>\r\n	<li>Manejemen Pengelolaan Lingkungan, Pendidikan, Peningkatan Ketrampilan Dan Kursus,&nbsp; Sosial, Budaya, Agama Dan Sarana Sosial, Hubungan Dengan Pemerintah Dan Pengamanan Perusahaan</li>\r\n</ul>\r\n','<p>PT Kadya Caraka Mulia (selanjutnya akan disebut KCM) merupakan suatu perseroan terbatas dengan wilayah perjanjian PKP2B diperoleh sejak tanggal 31 Mei 1999 dengan luas sebesar 10.630 Ha, secara administratif terletak di Kecamatan Simpang Empat, Pengaron dan Mataraman, Kabupaten Banjar, Provinsi Kalimantan Selatan yang berjarak &plusmn; 71 km dari Banjarmasin. Saham KCM saat ini dimiliki 100% oleh PT Tuah Turangga Agung (TTA). Secara umum metode penambangan yang digunakan adalah penambangan terbuka, dibagi menjadi dua pit memanjang dari utara ke selatan.</p>\r\n','<p>Menjadi Perusahaan Batubara Major di Indonesia dan Global Trader di Dunia</p>','<p><p class=\"mb-lg\">Menjadi perusahaan yang</p>\r\n<ul class=\"list list-icons list-primary list-side-borders mt-xlg\">\r\n<li \"pt-sm=\"\" pb-sm=\"\" appear-animation\"=\"\" data-appear-animation=\"fadeInUp\" data-appear-animation-delay=\"0\" class=\"appear-animation animated fadeInUp appear-animation-visible\"><i class=\"fa fa-check\"></i>Berkontribusi positif bagi negara dan masyarakat.</li>\r\n<li \"pt-sm=\"\" pb-sm=\"\" appear-animation\"=\"\" data-appear-animation=\"fadeInUp\" data-appear-animation-delay=\"0\" class=\"appear-animation animated fadeInUp appear-animation-visible\"><i class=\"fa fa-check\"></i> Memberi nilai tambah bagi pemegang saham</li>\r\n<li \"pt-sm=\"\" pb-sm=\"\" appear-animation\"=\"\" data-appear-animation=\"fadeInUp\" data-appear-animation-delay=\"0\" class=\"appear-animation animated fadeInUp appear-animation-visible\"><i class=\"fa fa-check\"></i> Menghasilkan produk dan pelayanan yang unggul serta sesuai kebutuhan pelanggan</li>\r\n<li \"pt-sm=\"\" pb-sm=\"\" appear-animation\"=\"\" data-appear-animation=\"fadeInUp\" data-appear-animation-delay=\"0\" class=\"appear-animation animated fadeInUp appear-animation-visible\"><i class=\"fa fa-check\"></i> Menciptakan lingkungan kerja sehat dan dinamis yang dapat meningkatkan kompetensi kerja karyawan</li>\r\n<li \"pt-sm=\"\" pb-sm=\"\" appear-animation\"=\"\" data-appear-animation=\"fadeInUp\" data-appear-animation-delay=\"0\" class=\"appear-animation animated\"><i class=\"fa fa-check\"></i> Pengendalian lingkungan, keselamatan dan kesehatan yang berkelanjutan</li>\r\n</ul></p>',NULL,NULL,'kcm.jpg','Logo KCM.png','1','KCHO');

/*Table structure for table `ref_csr` */

DROP TABLE IF EXISTS `ref_csr`;

CREATE TABLE `ref_csr` (
  `refCsrId` int(11) NOT NULL AUTO_INCREMENT,
  `refCsrName` varchar(50) DEFAULT NULL,
  `refCsrDesc` text,
  `refCsrPic` varchar(40) DEFAULT NULL,
  `refCsrActive` enum('1','0') DEFAULT '1',
  `refCompanyId` int(11) DEFAULT NULL,
  PRIMARY KEY (`refCsrId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `ref_csr` */

insert  into `ref_csr`(`refCsrId`,`refCsrName`,`refCsrDesc`,`refCsrPic`,`refCsrActive`,`refCompanyId`) values (1,'Program Pengembangan Pupuk Organik  Cair Swadaya','Program Pengembangan Pupuk Organik  Cair Swadaya','08581283_pict_8.jpg','1',2),(2,'Program Pelatihan Mekanik Sepeda Motor','Program Pelatihan Mekanik Sepeda Motor','09001571_Pict_6.jpg','1',2),(3,'Pembentukan Koperasi Banua PrimaPersada ','Pembentukan Koperasi Banua PrimaPersada ','09020428_11.jpg','1',2),(4,'Pmbangunan Majid & Santuan Anak Yatim(Desa Pulau P','Pmbangunan Majid & Santuan Anak Yatim(Desa Pulau Pinang Utara)','09031996_28.jpg','1',2),(5,' Program Tebar Hewan Qurban pada Hari Raya Idul Ad','Program rutin ini sudah dimulai dari Tahun 2012 dengan nama Program Tebar Hewan Qurban pada Hari Raya Idul Adha yang dilaksanakan secara rutin setiap tahun. ','09294952_7.jpg','1',4);

/*Table structure for table `ref_department` */

DROP TABLE IF EXISTS `ref_department`;

CREATE TABLE `ref_department` (
  `refDepartmentId` int(11) NOT NULL AUTO_INCREMENT,
  `refCompanyId` int(11) DEFAULT NULL,
  `refDepartmentName` varchar(50) DEFAULT NULL,
  `refDepartmentCode` varchar(5) DEFAULT NULL,
  `refDepartmentDesc` text,
  `refDepartmentActive` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`refDepartmentId`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=latin1;

/*Data for the table `ref_department` */

insert  into `ref_department`(`refDepartmentId`,`refCompanyId`,`refDepartmentName`,`refDepartmentCode`,`refDepartmentDesc`,`refDepartmentActive`) values (5,5,'Superadmin',NULL,'Akses Untuk Superadmin','1'),(6,5,'Corporate Service',NULL,'Corporate Service','1'),(43,2,'Finance, Accounting & Tax','','Finance, Accounting & Tax','1'),(44,2,'Marketing & Sales I','','Marketing & Sales I','1'),(45,2,'Board Of Director','','Board Of Director','1'),(46,2,'Human Capital & General Services','','Human Capital & General Services','1'),(47,2,'Comdev,  Ext Rel, License & Security','','Comdev,  Ext Rel, License & Security','1'),(48,2,'Site Quality & Supply Mgt','','Site Quality & Supply Mgt','1'),(49,2,'Finance & Budgeting','','Finance & Budgeting','1'),(50,2,'Marketing & Sales (Domestic)','','Marketing & Sales (Domestic)','1'),(51,2,'Site Engineering, Prod & Quality PMM KCM','','Site Engineering, Prod & Quality PMM KCM','1'),(52,2,'Site Shipping PMM KCM','','Site Shipping PMM KCM','1'),(53,2,'Site Engineering & Production PMM KCM','','Site Engineering & Production PMM KCM','1'),(54,2,'Site Safety, Health & Environment','','Site Safety, Health & Environment','1'),(55,2,'Supply Management','','Supply Management','1'),(56,2,'Accounting & Tax','','Accounting & Tax','1'),(57,2,'CPMD & ICT','','CPMD & ICT','1'),(58,2,'Marketing & Sales (Overseas)','','Marketing & Sales (Overseas)','1'),(59,2,'Engineering & Operation TOP','','Engineering & Operation TOP','1'),(60,2,'Coal Source','','Coal Source','1'),(61,2,'Site Operation','','Site Operation','1'),(62,2,'Mine Operation TOP','','Mine Operation TOP','1'),(63,2,'Engineering & Research Development','','Engineering & Research Development','1'),(64,2,'Corporate Planning & Mgt. Dev.','','Corporate Planning & Mgt. Dev.','1'),(65,2,'ISP TTB & Quality TOP','','ISP TTB & Quality TOP','1'),(66,2,'Mine Development','','Mine Development','1'),(67,2,'Safety, Health & Environment','','Safety, Health & Environment','1'),(68,2,'Barge & Transhipment','','Barge & Transhipment','1'),(69,2,'Operation Support TOP','','Operation Support TOP','1'),(70,2,'Coal Processing Plant TOP','','Coal Processing Plant TOP','1'),(71,2,'Safety, Health & Env TOP','','Safety, Health & Env TOP','1'),(72,2,'Legal','','Legal','1'),(73,2,'Support & Administration TOP','','Support & Administration TOP','1'),(74,2,'BBM Project','','BBM Project','1'),(75,4,'Finance, Accounting & Tax','','Finance, Accounting & Tax','1'),(76,4,'Marketing & Sales I','','Marketing & Sales I','1'),(77,4,'Board Of Director','','Board Of Director','1'),(78,4,'Human Capital & General Services','','Human Capital & General Services','1'),(79,4,'Comdev,  Ext Rel, License & Security','','Comdev,  Ext Rel, License & Security','1'),(80,4,'Site Quality & Supply Mgt','','Site Quality & Supply Mgt','1'),(81,4,'Finance & Budgeting','','Finance & Budgeting','1'),(82,4,'Marketing & Sales (Domestic)','','Marketing & Sales (Domestic)','1'),(83,4,'Site Engineering, Prod & Quality PMM KCM','','Site Engineering, Prod & Quality PMM KCM','1'),(84,4,'Site Shipping PMM KCM','','Site Shipping PMM KCM','1'),(85,4,'Site Engineering & Production PMM KCM','','Site Engineering & Production PMM KCM','1'),(86,4,'Site Safety, Health & Environment','','Site Safety, Health & Environment','1'),(87,4,'Supply Management','','Supply Management','1'),(88,4,'Accounting & Tax','','Accounting & Tax','1'),(89,4,'CPMD & ICT','','CPMD & ICT','1'),(90,4,'Marketing & Sales (Overseas)','','Marketing & Sales (Overseas)','1'),(91,4,'Engineering & Operation TOP','','Engineering & Operation TOP','1'),(92,4,'Coal Source','','Coal Source','1'),(93,4,'Site Operation','','Site Operation','1'),(94,4,'Mine Operation TOP','','Mine Operation TOP','1'),(95,4,'Engineering & Research Development','','Engineering & Research Development','1'),(96,4,'Corporate Planning & Mgt. Dev.','','Corporate Planning & Mgt. Dev.','1'),(97,4,'ISP TTB & Quality TOP','','ISP TTB & Quality TOP','1'),(98,4,'Mine Development','','Mine Development','1'),(99,4,'Safety, Health & Environment','','Safety, Health & Environment','1'),(100,4,'Barge & Transhipment','','Barge & Transhipment','1'),(101,4,'Operation Support TOP','','Operation Support TOP','1'),(102,4,'Coal Processing Plant TOP','','Coal Processing Plant TOP','1'),(103,4,'Safety, Health & Env TOP','','Safety, Health & Env TOP','1'),(104,4,'Legal','','Legal','1'),(105,4,'Support & Administration TOP','','Support & Administration TOP','1'),(106,4,'BBM Project','','BBM Project','1'),(107,8,'Finance, Accounting & Tax','','Finance, Accounting & Tax','1'),(108,8,'Marketing & Sales I','','Marketing & Sales I','1'),(109,8,'Board Of Director','','Board Of Director','1'),(110,8,'Human Capital & General Services','','Human Capital & General Services','1'),(111,8,'Comdev,  Ext Rel, License & Security','','Comdev,  Ext Rel, License & Security','1'),(112,8,'Site Quality & Supply Mgt','','Site Quality & Supply Mgt','1'),(113,8,'Finance & Budgeting','','Finance & Budgeting','1'),(114,8,'Marketing & Sales (Domestic)','','Marketing & Sales (Domestic)','1'),(115,8,'Site Engineering, Prod & Quality PMM KCM','','Site Engineering, Prod & Quality PMM KCM','1'),(116,8,'Site Shipping PMM KCM','','Site Shipping PMM KCM','1'),(117,8,'Site Engineering & Production PMM KCM','','Site Engineering & Production PMM KCM','1'),(118,8,'Site Safety, Health & Environment','','Site Safety, Health & Environment','1'),(119,8,'Supply Management','','Supply Management','1'),(120,8,'Accounting & Tax','','Accounting & Tax','1'),(121,8,'CPMD & ICT','','CPMD & ICT','1'),(122,8,'Marketing & Sales (Overseas)','','Marketing & Sales (Overseas)','1'),(123,8,'Engineering & Operation TOP','','Engineering & Operation TOP','1'),(124,8,'Coal Source','','Coal Source','1'),(125,8,'Site Operation','','Site Operation','1'),(126,8,'Mine Operation TOP','','Mine Operation TOP','1'),(127,8,'Engineering & Research Development','','Engineering & Research Development','1'),(128,8,'Corporate Planning & Mgt. Dev.','','Corporate Planning & Mgt. Dev.','1'),(129,8,'ISP TTB & Quality TOP','','ISP TTB & Quality TOP','1'),(130,8,'Mine Development','','Mine Development','1'),(131,8,'Safety, Health & Environment','','Safety, Health & Environment','1'),(132,8,'Barge & Transhipment','','Barge & Transhipment','1'),(133,8,'Operation Support TOP','','Operation Support TOP','1'),(134,8,'Coal Processing Plant TOP','','Coal Processing Plant TOP','1'),(135,8,'Safety, Health & Env TOP','','Safety, Health & Env TOP','1'),(136,8,'Legal','','Legal','1'),(137,8,'Support & Administration TOP','','Support & Administration TOP','1'),(138,8,'BBM Project','','BBM Project','1'),(139,2,'Site Human Capital & Admin PMM KCM ',NULL,'Site Human Capital & Admin PMM KCM ','1'),(140,4,'Site Human Capital & Admin PMM KCM ',NULL,'Site Human Capital & Admin PMM KCM ','1'),(141,8,'Site Human Capital & Admin PMM KCM ',NULL,'Site Human Capital & Admin PMM KCM ','1');

/*Table structure for table `ref_like` */

DROP TABLE IF EXISTS `ref_like`;

CREATE TABLE `ref_like` (
  `refLikeId` int(11) NOT NULL AUTO_INCREMENT,
  `coreUserId` int(11) DEFAULT NULL,
  `cmsArticleId` int(11) DEFAULT NULL,
  `refLikeCreatedDate` datetime DEFAULT NULL,
  `refLikeActive` enum('1','0') DEFAULT '1',
  PRIMARY KEY (`refLikeId`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `ref_like` */

insert  into `ref_like`(`refLikeId`,`coreUserId`,`cmsArticleId`,`refLikeCreatedDate`,`refLikeActive`) values (22,3,13,'2017-06-05 10:29:10','1'),(23,2,13,'2017-06-05 10:32:16','1');

/*Table structure for table `ref_popular_article` */

DROP TABLE IF EXISTS `ref_popular_article`;

CREATE TABLE `ref_popular_article` (
  `refPopularArticleId` int(11) NOT NULL AUTO_INCREMENT,
  `cmsArticleId` int(11) DEFAULT NULL,
  `refPopularArticleSort` int(11) DEFAULT NULL,
  `refPopularArticleActive` enum('1','0') DEFAULT '1',
  PRIMARY KEY (`refPopularArticleId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `ref_popular_article` */

insert  into `ref_popular_article`(`refPopularArticleId`,`cmsArticleId`,`refPopularArticleSort`,`refPopularArticleActive`) values (2,12,1,'1');

/*Table structure for table `ref_position` */

DROP TABLE IF EXISTS `ref_position`;

CREATE TABLE `ref_position` (
  `refPositionId` int(11) NOT NULL AUTO_INCREMENT,
  `refPositionName` varchar(100) DEFAULT NULL,
  `refPositionActive` enum('1','0') DEFAULT '1',
  PRIMARY KEY (`refPositionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ref_position` */

/*Table structure for table `ref_she` */

DROP TABLE IF EXISTS `ref_she`;

CREATE TABLE `ref_she` (
  `refSheId` int(11) NOT NULL AUTO_INCREMENT,
  `refSheName` varchar(50) DEFAULT NULL,
  `refSheDesc` text,
  `refShePic` varchar(40) DEFAULT NULL,
  `refSheActive` enum('1','0') DEFAULT '1',
  `refCompanyId` int(11) DEFAULT NULL,
  PRIMARY KEY (`refSheId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ref_she` */

/*Table structure for table `ref_sub_application` */

DROP TABLE IF EXISTS `ref_sub_application`;

CREATE TABLE `ref_sub_application` (
  `refSubApplicationId` int(11) NOT NULL AUTO_INCREMENT,
  `refApplicationId` int(11) DEFAULT NULL,
  `refSubApplicationName` varchar(50) DEFAULT NULL,
  `refSubApplicationDesc` text,
  `refSubApplicationUrl` varchar(80) DEFAULT NULL,
  `refSubApplicationPic` varchar(40) DEFAULT NULL,
  `refSubApplicationActive` enum('1','0') DEFAULT '1',
  PRIMARY KEY (`refSubApplicationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ref_sub_application` */

/*Table structure for table `ref_tag` */

DROP TABLE IF EXISTS `ref_tag`;

CREATE TABLE `ref_tag` (
  `refTagId` int(11) NOT NULL AUTO_INCREMENT,
  `refTagName` varchar(50) DEFAULT NULL,
  `refTagActive` enum('1','0') DEFAULT '1',
  PRIMARY KEY (`refTagId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `ref_tag` */

insert  into `ref_tag`(`refTagId`,`refTagName`,`refTagActive`) values (3,'Others','1'),(4,'Safety','1'),(5,'Motivation','1'),(6,'Finance','1'),(8,'Management','1'),(9,'Goverment','1'),(10,'Regulation','1'),(11,'Coal','1'),(12,'Mining','1'),(13,'Source','1');

/*Table structure for table `temp_tag_article` */

DROP TABLE IF EXISTS `temp_tag_article`;

CREATE TABLE `temp_tag_article` (
  `tempTagArticle` int(11) NOT NULL AUTO_INCREMENT,
  `cmsArticleId` int(11) DEFAULT NULL,
  `refTagId` int(11) DEFAULT NULL,
  PRIMARY KEY (`tempTagArticle`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `temp_tag_article` */

insert  into `temp_tag_article`(`tempTagArticle`,`cmsArticleId`,`refTagId`) values (10,20,4),(11,20,5),(12,21,5),(13,21,4),(14,12,2),(15,12,5),(16,22,5),(17,23,8);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
