-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 26 Oca 2021, 20:07:18
-- Sunucu sürümü: 10.2.13-MariaDB-log
-- PHP Sürümü: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `qafias_HcHPWMV2`
--
CREATE DATABASE IF NOT EXISTS `qafias_HcHPWMV2` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `qafias_HcHPWMV2`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `banks`
--

DROP TABLE IF EXISTS `banks`;
CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `banks`
--

INSERT INTO `banks` (`id`, `name`) VALUES
(53, 'Alternatif Bank A.Ş.'),
(54, 'Arap Türk Bankası A.Ş.'),
(55, 'Bank of Tokyo-Mitsubishi UFJ Turkey A.Ş.'),
(56, 'Burgan Bank A.Ş.'),
(57, 'Citibank A.Ş.'),
(58, 'Denizbank A.Ş.'),
(59, 'Deutsche Bank A.Ş.'),
(60, 'Finans Bank A.Ş.'),
(61, 'HSBC A.Ş.'),
(62, 'ING Bank A.Ş.'),
(63, 'Odeabank A.Ş.'),
(64, 'Rabobank A.Ş.'),
(65, 'T-Bank A.Ş.'),
(66, 'Bank Mellat'),
(67, 'Habib Bank Limited'),
(68, 'Intesa Sanpaolo S.P.A'),
(69, 'JP Morgan Chase Bank N.A.'),
(70, 'Société Générale S.A.'),
(71, 'The Royal Bank of Scotland PLC.'),
(72, 'Adabank A.Ş.'),
(73, 'Akbank T.A.Ş.'),
(74, 'Aktif Bank'),
(75, 'Anadolubank A.Ş.'),
(76, 'Fibabanka A.Ş.'),
(77, 'Birleşik Fon Bankası A.Ş.'),
(78, 'Şekerbank T.A.Ş.'),
(79, 'Tekstilbank A.Ş.'),
(80, 'Turkish Bank A.Ş.'),
(81, 'Türk Ekonomi Bankası A.Ş.'),
(82, 'Türkiye Garanti Bankası A.Ş.'),
(83, 'Türkiye İş Bankası A.Ş.'),
(84, 'Yapı ve Kredi Bankası A.Ş.'),
(85, 'Albaraka Türk Katılım Bankası A.Ş.'),
(86, 'Bank Asya A.Ş.'),
(87, 'Kuveyt Türk Katılım Bankası A.Ş.'),
(88, 'Türkiye Finans Katılım Bankası A.Ş.'),
(89, 'Türkiye Cumhuriyeti Ziraat Bankası A.Ş.'),
(90, 'Türkiye Halk Bankası A.Ş.'),
(91, 'Türkiye Vakıflar Bankası T.A.O.'),
(92, 'BankPozitif Kredi ve Kalkınma Bankası A.Ş.'),
(93, 'Merrill Lynch Yatırım Bank A.Ş.'),
(94, 'Standard Chartered Yatırım Bankası Türk A.Ş.'),
(95, 'Aktif Yatırım Bankası A.Ş.'),
(96, 'Diler Yatırım Bankası A.Ş.'),
(97, 'GSD Yatırım Bankası A.Ş.'),
(98, 'İstanbul Takas ve Saklama Bankası A.Ş.'),
(99, 'Nurol Yatırım Bankası A.Ş.'),
(100, 'Taib Yatırım Bank A.Ş.'),
(101, 'Türkiye Sınai Kalkınma Bankası A.Ş.'),
(102, 'İller Bankası A.Ş.'),
(103, 'Türk Eximbank A.Ş.'),
(104, 'Türkiye Kalkınma Bankası A.Ş.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `basket`
--

DROP TABLE IF EXISTS `basket`;
CREATE TABLE `basket` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  `status` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `piece` int(11) NOT NULL,
  `cargo_name` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `cargo_tracking_no` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `customer_approval` int(11) NOT NULL,
  `havaleKodu` varchar(100) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `basket`
--

INSERT INTO `basket` (`id`, `product_id`, `shop_id`, `price`, `createDate`, `user_id`, `status`, `piece`, `cargo_name`, `cargo_tracking_no`, `customer_approval`, `havaleKodu`) VALUES
(5, 13, 4, '950.00', '2017-04-18 22:02:18', 4, 'Kargoya Verildi', 1, 'Sürat Kargo', 'a5f879d9540d', 1, '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `brand` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `brand_seo` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `store_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `brands`
--

INSERT INTO `brands` (`id`, `brand`, `brand_seo`, `store_id`, `status`) VALUES
(11, 'Prestige Mağaza', 'prestige-magaza', 4, 1),
(12, 'ADASEA', 'adasea', 4, 1),
(13, 'Gessi', 'gessi', 4, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cargo`
--

DROP TABLE IF EXISTS `cargo`;
CREATE TABLE `cargo` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `cargo`
--

INSERT INTO `cargo` (`id`, `name`) VALUES
(1, 'Yurtiçi Kargo'),
(2, 'Mng Kargo'),
(3, 'Ptt Kargo'),
(4, 'Aras Kargo'),
(5, 'Sürat Kargo');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `il`
--

DROP TABLE IF EXISTS `il`;
CREATE TABLE `il` (
  `id` bigint(20) NOT NULL,
  `il_adi` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `il`
--

INSERT INTO `il` (`id`, `il_adi`, `slug`) VALUES
(1, 'ADANA', 'adana'),
(2, 'ADIYAMAN', 'adiyaman'),
(3, 'AFYONKARAHİSAR', 'afyonkarahisar'),
(4, 'AĞRI', 'agri'),
(5, 'AMASYA', 'amasya'),
(6, 'ANKARA', 'ankara'),
(7, 'ANTALYA', 'antalya'),
(8, 'ARTVİN', 'artvin'),
(9, 'AYDIN', 'aydin'),
(10, 'BALIKESİR', 'balikesir'),
(11, 'BİLECİK', 'bilecik'),
(12, 'BİNGÖL', 'bingol'),
(13, 'BİTLİS', 'bitlis'),
(14, 'BOLU', 'bolu'),
(15, 'BURDUR', 'burdur'),
(16, 'BURSA', 'bursa'),
(17, 'ÇANAKKALE', 'canakkale'),
(18, 'ÇANKIRI', 'cankiri'),
(19, 'ÇORUM', 'corum'),
(20, 'DENİZLİ', 'denizli'),
(21, 'DİYARBAKIR', 'diyarbakir'),
(22, 'EDİRNE', 'edirne'),
(23, 'ELAZIĞ', 'elazig'),
(24, 'ERZİNCAN', 'erzincan'),
(25, 'ERZURUM', 'erzurum'),
(26, 'ESKİŞEHİR', 'eskisehir'),
(27, 'GAZİANTEP', 'gaziantep'),
(28, 'GİRESUN', 'giresun'),
(29, 'GÜMÜŞHANE', 'gumushane'),
(30, 'HAKKARİ', 'hakkari'),
(31, 'HATAY', 'hatay'),
(32, 'ISPARTA', 'isparta'),
(33, 'MERSİN', 'mersin'),
(34, 'İSTANBUL', 'istanbul'),
(35, 'İZMİR', 'izmir'),
(36, 'KARS', 'kars'),
(37, 'KASTAMONU', 'kastamonu'),
(38, 'KAYSERİ', 'kayseri'),
(39, 'KIRKLARELİ', 'kirklareli'),
(40, 'KIRŞEHİR', 'kirsehir'),
(41, 'KOCAELİ', 'kocaeli'),
(42, 'KONYA', 'konya'),
(43, 'KÜTAHYA', 'kutahya'),
(44, 'MALATYA', 'malatya'),
(45, 'MANİSA', 'manisa'),
(46, 'KAHRAMANMARAŞ', 'kahramanmaras'),
(47, 'MARDİN', 'mardin'),
(48, 'MUĞLA', 'mugla'),
(49, 'MUŞ', 'mus'),
(50, 'NEVŞEHİR', 'nevsehir'),
(51, 'NİĞDE', 'nigde'),
(52, 'ORDU', 'ordu'),
(53, 'RİZE', 'rize'),
(54, 'SAKARYA', 'sakarya'),
(55, 'SAMSUN', 'samsun'),
(56, 'SİİRT', 'siirt'),
(57, 'SİNOP', 'sinop'),
(58, 'SİVAS', 'sivas'),
(59, 'TEKİRDAĞ', 'tekirdag'),
(60, 'TOKAT', 'tokat'),
(61, 'TRABZON', 'trabzon'),
(62, 'TUNCELİ', 'tunceli'),
(63, 'ŞANLIURFA', 'sanliurfa'),
(64, 'UŞAK', 'usak'),
(65, 'VAN', 'van'),
(66, 'YOZGAT', 'yozgat'),
(67, 'ZONGULDAK', 'zonguldak'),
(68, 'AKSARAY', 'aksaray'),
(69, 'BAYBURT', 'bayburt'),
(70, 'KARAMAN', 'karaman'),
(71, 'KIRIKKALE', 'kirikkale'),
(72, 'BATMAN', 'batman'),
(73, 'ŞIRNAK', 'sirnak'),
(74, 'BARTIN', 'bartin'),
(75, 'ARDAHAN', 'ardahan'),
(76, 'IĞDIR', 'igdir'),
(77, 'YALOVA', 'yalova'),
(78, 'KARABÜK', 'karabuk'),
(79, 'KİLİS', 'kilis'),
(80, 'OSMANİYE', 'osmaniye'),
(81, 'DÜZCE', 'duzce');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ilce`
--

DROP TABLE IF EXISTS `ilce`;
CREATE TABLE `ilce` (
  `id` int(20) NOT NULL,
  `il_id` bigint(20) DEFAULT NULL,
  `ilce_adi` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `slug` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `ilce`
--

INSERT INTO `ilce` (`id`, `il_id`, `ilce_adi`, `slug`) VALUES
(1, 1, 'SEYHAN', 'seyhan'),
(2, 1, 'YÜREĞİR', 'yuregir'),
(3, 1, 'SARIÇAM', 'saricam'),
(4, 1, 'ÇUKUROVA', 'cukurova'),
(5, 1, 'ALADAĞ(KARSANTI)', 'aladagkarsanti'),
(6, 1, 'CEYHAN', 'ceyhan'),
(7, 1, 'FEKE', 'feke'),
(8, 1, 'İMAMOĞLU', 'imamoglu'),
(9, 1, 'KARAİSALI', 'karaisali'),
(10, 1, 'KARATAŞ', 'karatas'),
(11, 1, 'KOZAN', 'kozan'),
(12, 1, 'POZANTI', 'pozanti'),
(13, 1, 'SAİMBEYLİ', 'saimbeyli'),
(14, 1, 'TUFANBEYLİ', 'tufanbeyli'),
(15, 1, 'YUMURTALIK', 'yumurtalik'),
(16, 2, 'ADIYAMAN', 'adiyaman'),
(17, 2, 'BESNİ', 'besni'),
(18, 2, 'ÇELİKHAN', 'celikhan'),
(19, 2, 'GERGER', 'gerger'),
(20, 2, 'GÖLBAŞI', 'golbasi'),
(21, 2, 'KAHTA', 'kahta'),
(22, 2, 'SAMSAT', 'samsat'),
(23, 2, 'SİNCİK', 'sincik'),
(24, 2, 'TUT', 'tut'),
(25, 3, 'AFYONKARAHİSAR', 'afyonkarahisar'),
(26, 3, 'BAŞMAKÇI', 'basmakci'),
(27, 3, 'BAYAT', 'bayat'),
(28, 3, 'BOLVADİN', 'bolvadin'),
(29, 3, 'ÇAY', 'cay'),
(30, 3, 'ÇOBANLAR', 'cobanlar'),
(31, 3, 'DAZKIRI', 'dazkiri'),
(32, 3, 'DİNAR', 'dinar'),
(33, 3, 'EMİRDAĞ', 'emirdag'),
(34, 3, 'EVCİLER', 'evciler'),
(35, 3, 'HOCALAR', 'hocalar'),
(36, 3, 'İHSANİYE', 'ihsaniye'),
(37, 3, 'İSCEHİSAR', 'iscehisar'),
(38, 3, 'KIZILÖREN', 'kiziloren'),
(39, 3, 'SANDIKLI', 'sandikli'),
(40, 3, 'SİNCANLI(SİNANPAŞA)', 'sincanlisinanpasa'),
(41, 3, 'SULTANDAĞI', 'sultandagi'),
(42, 3, 'ŞUHUT', 'suhut'),
(43, 4, 'AĞRI', 'agri'),
(44, 4, 'DİYADİN', 'diyadin'),
(45, 4, 'DOĞUBEYAZIT', 'dogubeyazit'),
(46, 4, 'ELEŞKİRT', 'eleskirt'),
(47, 4, 'HAMUR', 'hamur'),
(48, 4, 'PATNOS', 'patnos'),
(49, 4, 'TAŞLIÇAY', 'taslicay'),
(50, 4, 'TUTAK', 'tutak'),
(51, 5, 'AMASYA', 'amasya'),
(52, 5, 'GÖYNÜCEK', 'goynucek'),
(53, 5, 'GÜMÜŞHACIKÖY', 'gumushacikoy'),
(54, 5, 'HAMAMÖZÜ', 'hamamozu'),
(55, 5, 'MERZİFON', 'merzifon'),
(56, 5, 'SULUOVA', 'suluova'),
(57, 5, 'TAŞOVA', 'tasova'),
(58, 6, 'ALTINDAĞ', 'altindag'),
(59, 6, 'ÇANKAYA', 'cankaya'),
(60, 6, 'ETİMESGUT', 'etimesgut'),
(61, 6, 'KEÇİÖREN', 'kecioren'),
(62, 6, 'MAMAK', 'mamak'),
(63, 6, 'SİNCAN', 'sincan'),
(64, 6, 'YENİMAHALLE', 'yenimahalle'),
(65, 6, 'GÖLBAŞI', 'golbasi'),
(66, 6, 'PURSAKLAR', 'pursaklar'),
(67, 6, 'AKYURT', 'akyurt'),
(68, 6, 'AYAŞ', 'ayas'),
(69, 6, 'BALA', 'bala'),
(70, 6, 'BEYPAZARI', 'beypazari'),
(71, 6, 'ÇAMLIDERE', 'camlidere'),
(72, 6, 'ÇUBUK', 'cubuk'),
(73, 6, 'ELMADAĞ', 'elmadag'),
(74, 6, 'EVREN', 'evren'),
(75, 6, 'GÜDÜL', 'gudul'),
(76, 6, 'HAYMANA', 'haymana'),
(77, 6, 'KALECİK', 'kalecik'),
(78, 6, 'KAZAN', 'kazan'),
(79, 6, 'KIZILCAHAMAM', 'kizilcahamam'),
(80, 6, 'NALLIHAN', 'nallihan'),
(81, 6, 'POLATLI', 'polatli'),
(82, 6, 'ŞEREFLİKOÇHİSAR', 'sereflikochisar'),
(83, 7, 'MURATPAŞA', 'muratpasa'),
(84, 7, 'KEPEZ', 'kepez'),
(85, 7, 'KONYAALTI', 'konyaalti'),
(86, 7, 'AKSU', 'aksu'),
(87, 7, 'DÖŞEMEALTI', 'dosemealti'),
(88, 7, 'AKSEKİ', 'akseki'),
(89, 7, 'ALANYA', 'alanya'),
(90, 7, 'ELMALI', 'elmali'),
(91, 7, 'FİNİKE', 'finike'),
(92, 7, 'GAZİPAŞA', 'gazipasa'),
(93, 7, 'GÜNDOĞMUŞ', 'gundogmus'),
(94, 7, 'İBRADI(AYDINKENT)', 'ibradiaydinkent'),
(95, 7, 'KALE(DEMRE)', 'kaledemre'),
(96, 7, 'KAŞ', 'kas'),
(97, 7, 'KEMER', 'kemer'),
(98, 7, 'KORKUTELİ', 'korkuteli'),
(99, 7, 'KUMLUCA', 'kumluca'),
(100, 7, 'MANAVGAT', 'manavgat'),
(101, 7, 'SERİK', 'serik'),
(102, 8, 'ARTVİN', 'artvin'),
(103, 8, 'ARDANUÇ', 'ardanuc'),
(104, 8, 'ARHAVİ', 'arhavi'),
(105, 8, 'BORÇKA', 'borcka'),
(106, 8, 'HOPA', 'hopa'),
(107, 8, 'MURGUL(GÖKTAŞ)', 'murgulgoktas'),
(108, 8, 'ŞAVŞAT', 'savsat'),
(109, 8, 'YUSUFELİ', 'yusufeli'),
(110, 9, 'AYDIN', 'aydin'),
(111, 9, 'BOZDOĞAN', 'bozdogan'),
(112, 9, 'BUHARKENT(ÇUBUKDAĞI)', 'buharkentcubukdagi'),
(113, 9, 'ÇİNE', 'cine'),
(114, 9, 'GERMENCİK', 'germencik'),
(115, 9, 'İNCİRLİOVA', 'incirliova'),
(116, 9, 'KARACASU', 'karacasu'),
(117, 9, 'KARPUZLU', 'karpuzlu'),
(118, 9, 'KOÇARLI', 'kocarli'),
(119, 9, 'KÖŞK', 'kosk'),
(120, 9, 'KUŞADASI', 'kusadasi'),
(121, 9, 'KUYUCAK', 'kuyucak'),
(122, 9, 'NAZİLLİ', 'nazilli'),
(123, 9, 'SÖKE', 'soke'),
(124, 9, 'SULTANHİSAR', 'sultanhisar'),
(125, 9, 'DİDİM', 'didimyenihisar'),
(126, 9, 'YENİPAZAR', 'yenipazar'),
(127, 10, 'BALIKESİR', 'balikesir'),
(128, 10, 'AYVALIK', 'ayvalik'),
(129, 10, 'BALYA', 'balya'),
(130, 10, 'BANDIRMA', 'bandirma'),
(131, 10, 'BİGADİÇ', 'bigadic'),
(132, 10, 'BURHANİYE', 'burhaniye'),
(133, 10, 'DURSUNBEY', 'dursunbey'),
(134, 10, 'EDREMİT', 'edremit'),
(135, 10, 'ERDEK', 'erdek'),
(136, 10, 'GÖMEÇ', 'gomec'),
(137, 10, 'GÖNEN', 'gonen'),
(138, 10, 'HAVRAN', 'havran'),
(139, 10, 'İVRİNDİ', 'ivrindi'),
(140, 10, 'KEPSUT', 'kepsut'),
(141, 10, 'MANYAS', 'manyas'),
(142, 10, 'MARMARA', 'marmara'),
(143, 10, 'SAVAŞTEPE', 'savastepe'),
(144, 10, 'SINDIRGI', 'sindirgi'),
(145, 10, 'SUSURLUK', 'susurluk'),
(146, 11, 'BİLECİK', 'bilecik'),
(147, 11, 'BOZÜYÜK', 'bozuyuk'),
(148, 11, 'GÖLPAZARI', 'golpazari'),
(149, 11, 'İNHİSAR', 'inhisar'),
(150, 11, 'OSMANELİ', 'osmaneli'),
(151, 11, 'PAZARYERİ', 'pazaryeri'),
(152, 11, 'SÖĞÜT', 'sogut'),
(153, 11, 'YENİPAZAR', 'yenipazar'),
(154, 12, 'BİNGÖL', 'bingol'),
(155, 12, 'ADAKLI', 'adakli'),
(156, 12, 'GENÇ', 'genc'),
(157, 12, 'KARLIOVA', 'karliova'),
(158, 12, 'KIĞI', 'kigi'),
(159, 12, 'SOLHAN', 'solhan'),
(160, 12, 'YAYLADERE', 'yayladere'),
(161, 12, 'YEDİSU', 'yedisu'),
(162, 13, 'BİTLİS', 'bitlis'),
(163, 13, 'ADİLCEVAZ', 'adilcevaz'),
(164, 13, 'AHLAT', 'ahlat'),
(165, 13, 'GÜROYMAK', 'guroymak'),
(166, 13, 'HİZAN', 'hizan'),
(167, 13, 'MUTKİ', 'mutki'),
(168, 13, 'TATVAN', 'tatvan'),
(169, 14, 'BOLU', 'bolu'),
(170, 14, 'DÖRTDİVAN', 'dortdivan'),
(171, 14, 'GEREDE', 'gerede'),
(172, 14, 'GÖYNÜK', 'goynuk'),
(173, 14, 'KIBRISCIK', 'kibriscik'),
(174, 14, 'MENGEN', 'mengen'),
(175, 14, 'MUDURNU', 'mudurnu'),
(176, 14, 'SEBEN', 'seben'),
(177, 14, 'YENİÇAĞA', 'yenicaga'),
(178, 15, 'BURDUR', 'burdur'),
(179, 15, 'AĞLASUN', 'aglasun'),
(180, 15, 'ALTINYAYLA(DİRMİL)', 'altinyayladirmil'),
(181, 15, 'BUCAK', 'bucak'),
(182, 15, 'ÇAVDIR', 'cavdir'),
(183, 15, 'ÇELTİKÇİ', 'celtikci'),
(184, 15, 'GÖLHİSAR', 'golhisar'),
(185, 15, 'KARAMANLI', 'karamanli'),
(186, 15, 'KEMER', 'kemer'),
(187, 15, 'TEFENNİ', 'tefenni'),
(188, 15, 'YEŞİLOVA', 'yesilova'),
(189, 16, 'NİLÜFER', 'nilufer'),
(190, 16, 'OSMANGAZİ', 'osmangazi'),
(191, 16, 'YILDIRIM', 'yildirim'),
(192, 16, 'BÜYÜKORHAN', 'buyukorhan'),
(193, 16, 'GEMLİK', 'gemlik'),
(194, 16, 'GÜRSU', 'gursu'),
(195, 16, 'HARMANCIK', 'harmancik'),
(196, 16, 'İNEGÖL', 'inegol'),
(197, 16, 'İZNİK', 'iznik'),
(198, 16, 'KARACABEY', 'karacabey'),
(199, 16, 'KELES', 'keles'),
(200, 16, 'KESTEL', 'kestel'),
(201, 16, 'MUDANYA', 'mudanya'),
(202, 16, 'MUSTAFAKEMALPAŞA', 'mustafakemalpasa'),
(203, 16, 'ORHANELİ', 'orhaneli'),
(204, 16, 'ORHANGAZİ', 'orhangazi'),
(205, 16, 'YENİŞEHİR', 'yenisehir'),
(206, 17, 'ÇANAKKALE', 'canakkale'),
(207, 17, 'AYVACIK-ASSOS', 'ayvacik-assos'),
(208, 17, 'BAYRAMİÇ', 'bayramic'),
(209, 17, 'BİGA', 'biga'),
(210, 17, 'BOZCAADA', 'bozcaada'),
(211, 17, 'ÇAN', 'can'),
(212, 17, 'ECEABAT', 'eceabat'),
(213, 17, 'EZİNE', 'ezine'),
(214, 17, 'GELİBOLU', 'gelibolu'),
(215, 17, 'GÖKÇEADA(İMROZ)', 'gokceadaimroz'),
(216, 17, 'LAPSEKİ', 'lapseki'),
(217, 17, 'YENİCE', 'yenice'),
(218, 18, 'ÇANKIRI', 'cankiri'),
(219, 18, 'ATKARACALAR', 'atkaracalar'),
(220, 18, 'BAYRAMÖREN', 'bayramoren'),
(221, 18, 'ÇERKEŞ', 'cerkes'),
(222, 18, 'ELDİVAN', 'eldivan'),
(223, 18, 'ILGAZ', 'ilgaz'),
(224, 18, 'KIZILIRMAK', 'kizilirmak'),
(225, 18, 'KORGUN', 'korgun'),
(226, 18, 'KURŞUNLU', 'kursunlu'),
(227, 18, 'ORTA', 'orta'),
(228, 18, 'ŞABANÖZÜ', 'sabanozu'),
(229, 18, 'YAPRAKLI', 'yaprakli'),
(230, 19, 'ÇORUM', 'corum'),
(231, 19, 'ALACA', 'alaca'),
(232, 19, 'BAYAT', 'bayat'),
(233, 19, 'BOĞAZKALE', 'bogazkale'),
(234, 19, 'DODURGA', 'dodurga'),
(235, 19, 'İSKİLİP', 'iskilip'),
(236, 19, 'KARGI', 'kargi'),
(237, 19, 'LAÇİN', 'lacin'),
(238, 19, 'MECİTÖZÜ', 'mecitozu'),
(239, 19, 'OĞUZLAR(KARAÖREN)', 'oguzlarkaraoren'),
(240, 19, 'ORTAKÖY', 'ortakoy'),
(241, 19, 'OSMANCIK', 'osmancik'),
(242, 19, 'SUNGURLU', 'sungurlu'),
(243, 19, 'UĞURLUDAĞ', 'ugurludag'),
(244, 20, 'DENİZLİ', 'denizli'),
(245, 20, 'ACIPAYAM', 'acipayam'),
(246, 20, 'AKKÖY', 'akkoy'),
(247, 20, 'BABADAĞ', 'babadag'),
(248, 20, 'BAKLAN', 'baklan'),
(249, 20, 'BEKİLLİ', 'bekilli'),
(250, 20, 'BEYAĞAÇ', 'beyagac'),
(251, 20, 'BOZKURT', 'bozkurt'),
(252, 20, 'BULDAN', 'buldan'),
(253, 20, 'ÇAL', 'cal'),
(254, 20, 'ÇAMELİ', 'cameli'),
(255, 20, 'ÇARDAK', 'cardak'),
(256, 20, 'ÇİVRİL', 'civril'),
(257, 20, 'GÜNEY', 'guney'),
(258, 20, 'HONAZ', 'honaz'),
(259, 20, 'KALE', 'kale'),
(260, 20, 'SARAYKÖY', 'saraykoy'),
(261, 20, 'SERİNHİSAR', 'serinhisar'),
(262, 20, 'TAVAS', 'tavas'),
(263, 21, 'SUR', 'sur'),
(264, 21, 'BAĞLAR', 'baglar'),
(265, 21, 'YENİŞEHİR', 'yenisehir'),
(266, 21, 'KAYAPINAR', 'kayapinar'),
(267, 21, 'BİSMİL', 'bismil'),
(268, 21, 'ÇERMİK', 'cermik'),
(269, 21, 'ÇINAR', 'cinar'),
(270, 21, 'ÇÜNGÜŞ', 'cungus'),
(271, 21, 'DİCLE', 'dicle'),
(272, 21, 'EĞİL', 'egil'),
(273, 21, 'ERGANİ', 'ergani'),
(274, 21, 'HANİ', 'hani'),
(275, 21, 'HAZRO', 'hazro'),
(276, 21, 'KOCAKÖY', 'kocakoy'),
(277, 21, 'KULP', 'kulp'),
(278, 21, 'LİCE', 'lice'),
(279, 21, 'SİLVAN', 'silvan'),
(280, 22, 'EDİRNE', 'edirne'),
(281, 22, 'ENEZ', 'enez'),
(282, 22, 'HAVSA', 'havsa'),
(283, 22, 'İPSALA', 'ipsala'),
(284, 22, 'KEŞAN', 'kesan'),
(285, 22, 'LALAPAŞA', 'lalapasa'),
(286, 22, 'MERİÇ', 'meric'),
(287, 22, 'SÜLEOĞLU(SÜLOĞLU)', 'suleoglusuloglu'),
(288, 22, 'UZUNKÖPRÜ', 'uzunkopru'),
(289, 23, 'ELAZIĞ', 'elazig'),
(290, 23, 'AĞIN', 'agin'),
(291, 23, 'ALACAKAYA', 'alacakaya'),
(292, 23, 'ARICAK', 'aricak'),
(293, 23, 'BASKİL', 'baskil'),
(294, 23, 'KARAKOÇAN', 'karakocan'),
(295, 23, 'KEBAN', 'keban'),
(296, 23, 'KOVANCILAR', 'kovancilar'),
(297, 23, 'MADEN', 'maden'),
(298, 23, 'PALU', 'palu'),
(299, 23, 'SİVRİCE', 'sivrice'),
(300, 24, 'ERZİNCAN', 'erzincan'),
(301, 24, 'ÇAYIRLI', 'cayirli'),
(302, 24, 'İLİÇ(ILIÇ)', 'ilicilic'),
(303, 24, 'KEMAH', 'kemah'),
(304, 24, 'KEMALİYE', 'kemaliye'),
(305, 24, 'OTLUKBELİ', 'otlukbeli'),
(306, 24, 'REFAHİYE', 'refahiye'),
(307, 24, 'TERCAN', 'tercan'),
(308, 24, 'ÜZÜMLÜ', 'uzumlu'),
(309, 25, 'PALANDÖKEN', 'palandoken'),
(310, 25, 'YAKUTİYE', 'yakutiye'),
(311, 25, 'AZİZİYE(ILICA)', 'aziziyeilica'),
(312, 25, 'AŞKALE', 'askale'),
(313, 25, 'ÇAT', 'cat'),
(314, 25, 'HINIS', 'hinis'),
(315, 25, 'HORASAN', 'horasan'),
(316, 25, 'İSPİR', 'ispir'),
(317, 25, 'KARAÇOBAN', 'karacoban'),
(318, 25, 'KARAYAZI', 'karayazi'),
(319, 25, 'KÖPRÜKÖY', 'koprukoy'),
(320, 25, 'NARMAN', 'narman'),
(321, 25, 'OLTU', 'oltu'),
(322, 25, 'OLUR', 'olur'),
(323, 25, 'PASİNLER', 'pasinler'),
(324, 25, 'PAZARYOLU', 'pazaryolu'),
(325, 25, 'ŞENKAYA', 'senkaya'),
(326, 25, 'TEKMAN', 'tekman'),
(327, 25, 'TORTUM', 'tortum'),
(328, 25, 'UZUNDERE', 'uzundere'),
(329, 26, 'ODUNPAZARI', 'odunpazari'),
(330, 26, 'TEPEBAŞI', 'tepebasi'),
(331, 26, 'ALPU', 'alpu'),
(332, 26, 'BEYLİKOVA', 'beylikova'),
(333, 26, 'ÇİFTELER', 'cifteler'),
(334, 26, 'GÜNYÜZÜ', 'gunyuzu'),
(335, 26, 'HAN', 'han'),
(336, 26, 'İNÖNÜ', 'inonu'),
(337, 26, 'MAHMUDİYE', 'mahmudiye'),
(338, 26, 'MİHALGAZİ', 'mihalgazi'),
(339, 26, 'MİHALIÇCIK', 'mihaliccik'),
(340, 26, 'SARICAKAYA', 'saricakaya'),
(341, 26, 'SEYİTGAZİ', 'seyitgazi'),
(342, 26, 'SİVRİHİSAR', 'sivrihisar'),
(343, 27, 'ŞAHİNBEY', 'sahinbey'),
(344, 27, 'ŞEHİTKAMİL', 'sehitkamil'),
(345, 27, 'OĞUZELİ', 'oguzeli'),
(346, 27, 'ARABAN', 'araban'),
(347, 27, 'İSLAHİYE', 'islahiye'),
(348, 27, 'KARKAMIŞ', 'karkamis'),
(349, 27, 'NİZİP', 'nizip'),
(350, 27, 'NURDAĞI', 'nurdagi'),
(351, 27, 'YAVUZELİ', 'yavuzeli'),
(352, 28, 'GİRESUN', 'giresun'),
(353, 28, 'ALUCRA', 'alucra'),
(354, 28, 'BULANCAK', 'bulancak'),
(355, 28, 'ÇAMOLUK', 'camoluk'),
(356, 28, 'ÇANAKÇI', 'canakci'),
(357, 28, 'DERELİ', 'dereli'),
(358, 28, 'DOĞANKENT', 'dogankent'),
(359, 28, 'ESPİYE', 'espiye'),
(360, 28, 'EYNESİL', 'eynesil'),
(361, 28, 'GÖRELE', 'gorele'),
(362, 28, 'GÜCE', 'guce'),
(363, 28, 'KEŞAP', 'kesap'),
(364, 28, 'PİRAZİZ', 'piraziz'),
(365, 28, 'ŞEBİNKARAHİSAR', 'sebinkarahisar'),
(366, 28, 'TİREBOLU', 'tirebolu'),
(367, 28, 'YAĞLIDERE', 'yaglidere'),
(368, 29, 'GÜMÜŞHANE', 'gumushane'),
(369, 29, 'KELKİT', 'kelkit'),
(370, 29, 'KÖSE', 'kose'),
(371, 29, 'KÜRTÜN', 'kurtun'),
(372, 29, 'ŞİRAN', 'siran'),
(373, 29, 'TORUL', 'torul'),
(374, 30, 'HAKKARİ', 'hakkari'),
(375, 30, 'ÇUKURCA', 'cukurca'),
(376, 30, 'ŞEMDİNLİ', 'semdinli'),
(377, 30, 'YÜKSEKOVA', 'yuksekova'),
(378, 31, 'ANTAKYA', 'antakya'),
(379, 31, 'ALTINÖZÜ', 'altinozu'),
(380, 31, 'BELEN', 'belen'),
(381, 31, 'DÖRTYOL', 'dortyol'),
(382, 31, 'ERZİN', 'erzin'),
(383, 31, 'HASSA', 'hassa'),
(384, 31, 'İSKENDERUN', 'iskenderun'),
(385, 31, 'KIRIKHAN', 'kirikhan'),
(386, 31, 'KUMLU', 'kumlu'),
(387, 31, 'REYHANLI', 'reyhanli'),
(388, 31, 'SAMANDAĞ', 'samandag'),
(389, 31, 'YAYLADAĞI', 'yayladagi'),
(390, 32, 'ISPARTA', 'isparta'),
(391, 32, 'AKSU', 'aksu'),
(392, 32, 'ATABEY', 'atabey'),
(393, 32, 'EĞRİDİR(EĞİRDİR)', 'egridiregirdir'),
(394, 32, 'GELENDOST', 'gelendost'),
(395, 32, 'GÖNEN', 'gonen'),
(396, 32, 'KEÇİBORLU', 'keciborlu'),
(397, 32, 'SENİRKENT', 'senirkent'),
(398, 32, 'SÜTÇÜLER', 'sutculer'),
(399, 32, 'ŞARKİKARAAĞAÇ', 'sarkikaraagac'),
(400, 32, 'ULUBORLU', 'uluborlu'),
(401, 32, 'YALVAÇ', 'yalvac'),
(402, 32, 'YENİŞARBADEMLİ', 'yenisarbademli'),
(403, 33, 'AKDENİZ', 'akdeniz'),
(404, 33, 'YENİŞEHİR', 'yenisehir'),
(405, 33, 'TOROSLAR', 'toroslar'),
(406, 33, 'MEZİTLİ', 'mezitli'),
(407, 33, 'ANAMUR', 'anamur'),
(408, 33, 'AYDINCIK', 'aydincik'),
(409, 33, 'BOZYAZI', 'bozyazi'),
(410, 33, 'ÇAMLIYAYLA', 'camliyayla'),
(411, 33, 'ERDEMLİ', 'erdemli'),
(412, 33, 'GÜLNAR(GÜLPINAR)', 'gulnargulpinar'),
(413, 33, 'MUT', 'mut'),
(414, 33, 'SİLİFKE', 'silifke'),
(415, 33, 'TARSUS', 'tarsus'),
(416, 34, 'BAKIRKÖY', 'bakirkoy'),
(417, 34, 'BAYRAMPAŞA', 'bayrampasa'),
(418, 34, 'BEŞİKTAŞ', 'besiktas'),
(419, 34, 'BEYOĞLU', 'beyoglu'),
(420, 34, 'ARNAVUTKÖY', 'arnavutkoy'),
(421, 34, 'EYÜP', 'eyup'),
(422, 34, 'FATİH', 'fatih'),
(423, 34, 'GAZİOSMANPAŞA', 'gaziosmanpasa'),
(424, 34, 'KAĞITHANE', 'kagithane'),
(425, 34, 'KÜÇÜKÇEKMECE', 'kucukcekmece'),
(426, 34, 'SARIYER', 'sariyer'),
(427, 34, 'ŞİŞLİ', 'sisli'),
(428, 34, 'ZEYTİNBURNU', 'zeytinburnu'),
(429, 34, 'AVCILAR', 'avcilar'),
(430, 34, 'GÜNGÖREN', 'gungoren'),
(431, 34, 'BAHÇELİEVLER', 'bahcelievler'),
(432, 34, 'BAĞCILAR', 'bagcilar'),
(433, 34, 'ESENLER', 'esenler'),
(434, 34, 'BAŞAKŞEHİR', 'basaksehir'),
(435, 34, 'BEYLİKDÜZÜ', 'beylikduzu'),
(436, 34, 'ESENYURT', 'esenyurt'),
(437, 34, 'SULTANGAZİ', 'sultangazi'),
(438, 34, 'ADALAR', 'adalar'),
(439, 34, 'BEYKOZ', 'beykoz'),
(440, 34, 'KADIKÖY', 'kadikoy'),
(441, 34, 'KARTAL', 'kartal'),
(442, 34, 'PENDİK', 'pendik'),
(443, 34, 'ÜMRANİYE', 'umraniye'),
(444, 34, 'ÜSKÜDAR', 'uskudar'),
(445, 34, 'TUZLA', 'tuzla'),
(446, 34, 'MALTEPE', 'maltepe'),
(447, 34, 'ATAŞEHİR', 'atasehir'),
(448, 34, 'ÇEKMEKÖY', 'cekmekoy'),
(449, 34, 'SANCAKTEPE', 'sancaktepe'),
(450, 34, 'BÜYÜKÇEKMECE', 'buyukcekmece'),
(451, 34, 'ÇATALCA', 'catalca'),
(452, 34, 'SİLİVRİ', 'silivri'),
(453, 34, 'ŞİLE', 'sile'),
(454, 34, 'SULTANBEYLİ', 'sultanbeyli'),
(455, 35, 'ALİAĞA', 'aliaga'),
(456, 35, 'BALÇOVA', 'balcova'),
(457, 35, 'BAYINDIR', 'bayindir'),
(458, 35, 'BORNOVA', 'bornova'),
(459, 35, 'BUCA', 'buca'),
(460, 35, 'ÇİĞLİ', 'cigli'),
(461, 35, 'FOÇA', 'foca'),
(462, 35, 'GAZİEMİR', 'gaziemir'),
(463, 35, 'GÜZELBAHÇE', 'guzelbahce'),
(464, 35, 'KARŞIYAKA', 'karsiyaka'),
(465, 35, 'KEMALPAŞA', 'kemalpasa'),
(466, 35, 'KONAK', 'konak'),
(467, 35, 'CUMAOVASI(MENDERES)', 'cumaovasimenderes'),
(468, 35, 'MENEMEN', 'menemen'),
(469, 35, 'NARLIDERE', 'narlidere'),
(470, 35, 'SEFERİHİSAR', 'seferihisar'),
(471, 35, 'SELÇUK', 'selcuk'),
(472, 35, 'TORBALI', 'torbali'),
(473, 35, 'URLA', 'urla'),
(474, 35, 'BAYRAKLI', 'bayrakli'),
(475, 35, 'KARABAĞLAR', 'karabaglar'),
(476, 35, 'BERGAMA', 'bergama'),
(477, 35, 'BEYDAĞ', 'beydag'),
(478, 35, 'ÇEŞME', 'cesme'),
(479, 35, 'DİKİLİ', 'dikili'),
(480, 35, 'KARABURUN', 'karaburun'),
(481, 35, 'KINIK', 'kinik'),
(482, 35, 'KİRAZ', 'kiraz'),
(483, 35, 'ÖDEMİŞ', 'odemis'),
(484, 35, 'TİRE', 'tire'),
(485, 36, 'KARS', 'kars'),
(486, 36, 'AKYAKA', 'akyaka'),
(487, 36, 'ARPAÇAY', 'arpacay'),
(488, 36, 'DİGOR', 'digor'),
(489, 36, 'KAĞIZMAN', 'kagizman'),
(490, 36, 'SARIKAMIŞ', 'sarikamis'),
(491, 36, 'SELİM', 'selim'),
(492, 36, 'SUSUZ', 'susuz'),
(493, 37, 'KASTAMONU', 'kastamonu'),
(494, 37, 'ABANA', 'abana'),
(495, 37, 'AĞLI', 'agli'),
(496, 37, 'ARAÇ', 'arac'),
(497, 37, 'AZDAVAY', 'azdavay'),
(498, 37, 'BOZKURT', 'bozkurt'),
(499, 37, 'CİDE', 'cide'),
(500, 37, 'ÇATALZEYTİN', 'catalzeytin'),
(501, 37, 'DADAY', 'daday'),
(502, 37, 'DEVREKANİ', 'devrekani'),
(503, 37, 'DOĞANYURT', 'doganyurt'),
(504, 37, 'HANÖNÜ(GÖKÇEAĞAÇ)', 'hanonugokceagac'),
(505, 37, 'İHSANGAZİ', 'ihsangazi'),
(506, 37, 'İNEBOLU', 'inebolu'),
(507, 37, 'KÜRE', 'kure'),
(508, 37, 'PINARBAŞI', 'pinarbasi'),
(509, 37, 'SEYDİLER', 'seydiler'),
(510, 37, 'ŞENPAZAR', 'senpazar'),
(511, 37, 'TAŞKÖPRÜ', 'taskopru'),
(512, 37, 'TOSYA', 'tosya'),
(513, 38, 'KOCASİNAN', 'kocasinan'),
(514, 38, 'MELİKGAZİ', 'melikgazi'),
(515, 38, 'TALAS', 'talas'),
(516, 38, 'AKKIŞLA', 'akkisla'),
(517, 38, 'BÜNYAN', 'bunyan'),
(518, 38, 'DEVELİ', 'develi'),
(519, 38, 'FELAHİYE', 'felahiye'),
(520, 38, 'HACILAR', 'hacilar'),
(521, 38, 'İNCESU', 'incesu'),
(522, 38, 'ÖZVATAN(ÇUKUR)', 'ozvatancukur'),
(523, 38, 'PINARBAŞI', 'pinarbasi'),
(524, 38, 'SARIOĞLAN', 'sarioglan'),
(525, 38, 'SARIZ', 'sariz'),
(526, 38, 'TOMARZA', 'tomarza'),
(527, 38, 'YAHYALI', 'yahyali'),
(528, 38, 'YEŞİLHİSAR', 'yesilhisar'),
(529, 39, 'KIRKLARELİ', 'kirklareli'),
(530, 39, 'BABAESKİ', 'babaeski'),
(531, 39, 'DEMİRKÖY', 'demirkoy'),
(532, 39, 'KOFÇAZ', 'kofcaz'),
(533, 39, 'LÜLEBURGAZ', 'luleburgaz'),
(534, 39, 'PEHLİVANKÖY', 'pehlivankoy'),
(535, 39, 'PINARHİSAR', 'pinarhisar'),
(536, 39, 'VİZE', 'vize'),
(537, 40, 'KIRŞEHİR', 'kirsehir'),
(538, 40, 'AKÇAKENT', 'akcakent'),
(539, 40, 'AKPINAR', 'akpinar'),
(540, 40, 'BOZTEPE', 'boztepe'),
(541, 40, 'ÇİÇEKDAĞI', 'cicekdagi'),
(542, 40, 'KAMAN', 'kaman'),
(543, 40, 'MUCUR', 'mucur'),
(544, 41, 'İZMİT', 'izmit'),
(545, 41, 'BAŞİSKELE', 'basiskele'),
(546, 41, 'ÇAYIROVA', 'cayirova'),
(547, 41, 'DARICA', 'darica'),
(548, 41, 'DİLOVASI', 'dilovasi'),
(549, 41, 'KARTEPE', 'kartepe'),
(550, 41, 'GEBZE', 'gebze'),
(551, 41, 'GÖLCÜK', 'golcuk'),
(552, 41, 'KANDIRA', 'kandira'),
(553, 41, 'KARAMÜRSEL', 'karamursel'),
(554, 41, 'TÜTÜNÇİFTLİK', 'tutunciftlik'),
(555, 41, 'DERİNCE', 'derince'),
(556, 42, 'KARATAY', 'karatay'),
(557, 42, 'MERAM', 'meram'),
(558, 42, 'SELÇUKLU', 'selcuklu'),
(559, 42, 'AHIRLI', 'ahirli'),
(560, 42, 'AKÖREN', 'akoren'),
(561, 42, 'AKŞEHİR', 'aksehir'),
(562, 42, 'ALTINEKİN', 'altinekin'),
(563, 42, 'BEYŞEHİR', 'beysehir'),
(564, 42, 'BOZKIR', 'bozkir'),
(565, 42, 'CİHANBEYLİ', 'cihanbeyli'),
(566, 42, 'ÇELTİK', 'celtik'),
(567, 42, 'ÇUMRA', 'cumra'),
(568, 42, 'DERBENT', 'derbent'),
(569, 42, 'DEREBUCAK', 'derebucak'),
(570, 42, 'DOĞANHİSAR', 'doganhisar'),
(571, 42, 'EMİRGAZİ', 'emirgazi'),
(572, 42, 'EREĞLİ', 'eregli'),
(573, 42, 'GÜNEYSINIR', 'guneysinir'),
(574, 42, 'HADİM', 'hadim'),
(575, 42, 'HALKAPINAR', 'halkapinar'),
(576, 42, 'HÜYÜK', 'huyuk'),
(577, 42, 'ILGIN', 'ilgin'),
(578, 42, 'KADINHANI', 'kadinhani'),
(579, 42, 'KARAPINAR', 'karapinar'),
(580, 42, 'KULU', 'kulu'),
(581, 42, 'SARAYÖNÜ', 'sarayonu'),
(582, 42, 'SEYDİŞEHİR', 'seydisehir'),
(583, 42, 'TAŞKENT', 'taskent'),
(584, 42, 'TUZLUKÇU', 'tuzlukcu'),
(585, 42, 'YALIHÜYÜK', 'yalihuyuk'),
(586, 42, 'YUNAK', 'yunak'),
(587, 43, 'KÜTAHYA', 'kutahya'),
(588, 43, 'ALTINTAŞ', 'altintas'),
(589, 43, 'ASLANAPA', 'aslanapa'),
(590, 43, 'ÇAVDARHİSAR', 'cavdarhisar'),
(591, 43, 'DOMANİÇ', 'domanic'),
(592, 43, 'DUMLUPINAR', 'dumlupinar'),
(593, 43, 'EMET', 'emet'),
(594, 43, 'GEDİZ', 'gediz'),
(595, 43, 'HİSARCIK', 'hisarcik'),
(596, 43, 'PAZARLAR', 'pazarlar'),
(597, 43, 'SİMAV', 'simav'),
(598, 43, 'ŞAPHANE', 'saphane'),
(599, 43, 'TAVŞANLI', 'tavsanli'),
(600, 43, 'TUNÇBİLEK', 'tuncbilek'),
(601, 44, 'MALATYA', 'malatya'),
(602, 44, 'AKÇADAĞ', 'akcadag'),
(603, 44, 'ARAPKİR', 'arapkir'),
(604, 44, 'ARGUVAN', 'arguvan'),
(605, 44, 'BATTALGAZİ', 'battalgazi'),
(606, 44, 'DARENDE', 'darende'),
(607, 44, 'DOĞANŞEHİR', 'dogansehir'),
(608, 44, 'DOĞANYOL', 'doganyol'),
(609, 44, 'HEKİMHAN', 'hekimhan'),
(610, 44, 'KALE', 'kale'),
(611, 44, 'KULUNCAK', 'kuluncak'),
(612, 44, 'PÖTÜRGE', 'poturge'),
(613, 44, 'YAZIHAN', 'yazihan'),
(614, 44, 'YEŞİLYURT', 'yesilyurt'),
(615, 45, 'MANİSA', 'manisa'),
(616, 45, 'AHMETLİ', 'ahmetli'),
(617, 45, 'AKHİSAR', 'akhisar'),
(618, 45, 'ALAŞEHİR', 'alasehir'),
(619, 45, 'DEMİRCİ', 'demirci'),
(620, 45, 'GÖLMARMARA', 'golmarmara'),
(621, 45, 'GÖRDES', 'gordes'),
(622, 45, 'KIRKAĞAÇ', 'kirkagac'),
(623, 45, 'KÖPRÜBAŞI', 'koprubasi'),
(624, 45, 'KULA', 'kula'),
(625, 45, 'SALİHLİ', 'salihli'),
(626, 45, 'SARIGÖL', 'sarigol'),
(627, 45, 'SARUHANLI', 'saruhanli'),
(628, 45, 'SELENDİ', 'selendi'),
(629, 45, 'SOMA', 'soma'),
(630, 45, 'TURGUTLU', 'turgutlu'),
(631, 46, 'KAHRAMANMARAŞ', 'kahramanmaras'),
(632, 46, 'AFŞİN', 'afsin'),
(633, 46, 'ANDIRIN', 'andirin'),
(634, 46, 'ÇAĞLAYANCERİT', 'caglayancerit'),
(635, 46, 'EKİNÖZÜ', 'ekinozu'),
(636, 46, 'ELBİSTAN', 'elbistan'),
(637, 46, 'GÖKSUN', 'goksun'),
(638, 46, 'NURHAK', 'nurhak'),
(639, 46, 'PAZARCIK', 'pazarcik'),
(640, 46, 'TÜRKOĞLU', 'turkoglu'),
(641, 47, 'MARDİN', 'mardin'),
(642, 47, 'DARGEÇİT', 'dargecit'),
(643, 47, 'DERİK', 'derik'),
(644, 47, 'KIZILTEPE', 'kiziltepe'),
(645, 47, 'MAZIDAĞI', 'mazidagi'),
(646, 47, 'MİDYAT(ESTEL)', 'midyatestel'),
(647, 47, 'NUSAYBİN', 'nusaybin'),
(648, 47, 'ÖMERLİ', 'omerli'),
(649, 47, 'SAVUR', 'savur'),
(650, 47, 'YEŞİLLİ', 'yesilli'),
(651, 48, 'MUĞLA', 'mugla'),
(652, 48, 'BODRUM', 'bodrum'),
(653, 48, 'DALAMAN', 'dalaman'),
(654, 48, 'DATÇA', 'datca'),
(655, 48, 'FETHİYE', 'fethiye'),
(656, 48, 'KAVAKLIDERE', 'kavaklidere'),
(657, 48, 'KÖYCEĞİZ', 'koycegiz'),
(658, 48, 'MARMARİS', 'marmaris'),
(659, 48, 'MİLAS', 'milas'),
(660, 48, 'ORTACA', 'ortaca'),
(661, 48, 'ULA', 'ula'),
(662, 48, 'YATAĞAN', 'yatagan'),
(663, 49, 'MUŞ', 'mus'),
(664, 49, 'BULANIK', 'bulanik'),
(665, 49, 'HASKÖY', 'haskoy'),
(666, 49, 'KORKUT', 'korkut'),
(667, 49, 'MALAZGİRT', 'malazgirt'),
(668, 49, 'VARTO', 'varto'),
(669, 50, 'NEVŞEHİR', 'nevsehir'),
(670, 50, 'ACIGÖL', 'acigol'),
(671, 50, 'AVANOS', 'avanos'),
(672, 50, 'DERİNKUYU', 'derinkuyu'),
(673, 50, 'GÜLŞEHİR', 'gulsehir'),
(674, 50, 'HACIBEKTAŞ', 'hacibektas'),
(675, 50, 'KOZAKLI', 'kozakli'),
(676, 50, 'GÖREME', 'goreme'),
(677, 51, 'NİĞDE', 'nigde'),
(678, 51, 'ALTUNHİSAR', 'altunhisar'),
(679, 51, 'BOR', 'bor'),
(680, 51, 'ÇAMARDI', 'camardi'),
(681, 51, 'ÇİFTLİK(ÖZYURT)', 'ciftlikozyurt'),
(682, 51, 'ULUKIŞLA', 'ulukisla'),
(683, 52, 'ORDU', 'ordu'),
(684, 52, 'AKKUŞ', 'akkus'),
(685, 52, 'AYBASTI', 'aybasti'),
(686, 52, 'ÇAMAŞ', 'camas'),
(687, 52, 'ÇATALPINAR', 'catalpinar'),
(688, 52, 'ÇAYBAŞI', 'caybasi'),
(689, 52, 'FATSA', 'fatsa'),
(690, 52, 'GÖLKÖY', 'golkoy'),
(691, 52, 'GÜLYALI', 'gulyali'),
(692, 52, 'GÜRGENTEPE', 'gurgentepe'),
(693, 52, 'İKİZCE', 'ikizce'),
(694, 52, 'KARADÜZ(KABADÜZ)', 'karaduzkabaduz'),
(695, 52, 'KABATAŞ', 'kabatas'),
(696, 52, 'KORGAN', 'korgan'),
(697, 52, 'KUMRU', 'kumru'),
(698, 52, 'MESUDİYE', 'mesudiye'),
(699, 52, 'PERŞEMBE', 'persembe'),
(700, 52, 'ULUBEY', 'ulubey'),
(701, 52, 'ÜNYE', 'unye'),
(702, 53, 'RİZE', 'rize'),
(703, 53, 'ARDEŞEN', 'ardesen'),
(704, 53, 'ÇAMLIHEMŞİN', 'camlihemsin'),
(705, 53, 'ÇAYELİ', 'cayeli'),
(706, 53, 'DEREPAZARI', 'derepazari'),
(707, 53, 'FINDIKLI', 'findikli'),
(708, 53, 'GÜNEYSU', 'guneysu'),
(709, 53, 'HEMŞİN', 'hemsin'),
(710, 53, 'İKİZDERE', 'ikizdere'),
(711, 53, 'İYİDERE', 'iyidere'),
(712, 53, 'KALKANDERE', 'kalkandere'),
(713, 53, 'PAZAR', 'pazar'),
(714, 54, 'ADAPAZARI', 'adapazari'),
(715, 54, 'HENDEK', 'hendek'),
(716, 54, 'ARİFİYE', 'arifiye'),
(717, 54, 'ERENLER', 'erenler'),
(718, 54, 'SERDİVAN', 'serdivan'),
(719, 54, 'AKYAZI', 'akyazi'),
(720, 54, 'FERİZLİ', 'ferizli'),
(721, 54, 'GEYVE', 'geyve'),
(722, 54, 'KARAPÜRÇEK', 'karapurcek'),
(723, 54, 'KARASU', 'karasu'),
(724, 54, 'KAYNARCA', 'kaynarca'),
(725, 54, 'KOCAALİ', 'kocaali'),
(726, 54, 'PAMUKOVA', 'pamukova'),
(727, 54, 'SAPANCA', 'sapanca'),
(728, 54, 'SÖĞÜTLÜ', 'sogutlu'),
(729, 54, 'TARAKLI', 'tarakli'),
(730, 55, 'ATAKUM', 'atakum'),
(731, 55, 'İLKADIM', 'ilkadim'),
(732, 55, 'CANİK', 'canik'),
(733, 55, 'TEKKEKÖY', 'tekkekoy'),
(734, 55, 'ALAÇAM', 'alacam'),
(735, 55, 'ASARCIK', 'asarcik'),
(736, 55, 'AYVACIK', 'ayvacik'),
(737, 55, 'BAFRA', 'bafra'),
(738, 55, 'ÇARŞAMBA', 'carsamba'),
(739, 55, 'HAVZA', 'havza'),
(740, 55, 'KAVAK', 'kavak'),
(741, 55, 'LADİK', 'ladik'),
(742, 55, '19MAYIS(BALLICA)', '19mayisballica'),
(743, 55, 'SALIPAZARI', 'salipazari'),
(744, 55, 'TERME', 'terme'),
(745, 55, 'VEZİRKÖPRÜ', 'vezirkopru'),
(746, 55, 'YAKAKENT', 'yakakent'),
(747, 56, 'SİİRT', 'siirt'),
(748, 56, 'BAYKAN', 'baykan'),
(749, 56, 'ERUH', 'eruh'),
(750, 56, 'KURTALAN', 'kurtalan'),
(751, 56, 'PERVARİ', 'pervari'),
(752, 56, 'AYDINLAR', 'aydinlar'),
(753, 56, 'ŞİRVAN', 'sirvan'),
(754, 57, 'SİNOP', 'sinop'),
(755, 57, 'AYANCIK', 'ayancik'),
(756, 57, 'BOYABAT', 'boyabat'),
(757, 57, 'DİKMEN', 'dikmen'),
(758, 57, 'DURAĞAN', 'duragan'),
(759, 57, 'ERFELEK', 'erfelek'),
(760, 57, 'GERZE', 'gerze'),
(761, 57, 'SARAYDÜZÜ', 'sarayduzu'),
(762, 57, 'TÜRKELİ', 'turkeli'),
(763, 58, 'SİVAS', 'sivas'),
(764, 58, 'AKINCILAR', 'akincilar'),
(765, 58, 'ALTINYAYLA', 'altinyayla'),
(766, 58, 'DİVRİĞİ', 'divrigi'),
(767, 58, 'DOĞANŞAR', 'dogansar'),
(768, 58, 'GEMEREK', 'gemerek'),
(769, 58, 'GÖLOVA', 'golova'),
(770, 58, 'GÜRÜN', 'gurun'),
(771, 58, 'HAFİK', 'hafik'),
(772, 58, 'İMRANLI', 'imranli'),
(773, 58, 'KANGAL', 'kangal'),
(774, 58, 'KOYULHİSAR', 'koyulhisar'),
(775, 58, 'SUŞEHRİ', 'susehri'),
(776, 58, 'ŞARKIŞLA', 'sarkisla'),
(777, 58, 'ULAŞ', 'ulas'),
(778, 58, 'YILDIZELİ', 'yildizeli'),
(779, 58, 'ZARA', 'zara'),
(780, 59, 'TEKİRDAĞ', 'tekirdag'),
(781, 59, 'ÇERKEZKÖY', 'cerkezkoy'),
(782, 59, 'ÇORLU', 'corlu'),
(783, 59, 'HAYRABOLU', 'hayrabolu'),
(784, 59, 'MALKARA', 'malkara'),
(785, 59, 'MARMARAEREĞLİSİ', 'marmaraereglisi'),
(786, 59, 'MURATLI', 'muratli'),
(787, 59, 'SARAY', 'saray'),
(788, 59, 'ŞARKÖY', 'sarkoy'),
(789, 60, 'TOKAT', 'tokat'),
(790, 60, 'ALMUS', 'almus'),
(791, 60, 'ARTOVA', 'artova'),
(792, 60, 'BAŞÇİFTLİK', 'basciftlik'),
(793, 60, 'ERBAA', 'erbaa'),
(794, 60, 'NİKSAR', 'niksar'),
(795, 60, 'PAZAR', 'pazar'),
(796, 60, 'REŞADİYE', 'resadiye'),
(797, 60, 'SULUSARAY', 'sulusaray'),
(798, 60, 'TURHAL', 'turhal'),
(799, 60, 'YEŞİLYURT', 'yesilyurt'),
(800, 60, 'ZİLE', 'zile'),
(801, 61, 'TRABZON', 'trabzon'),
(802, 61, 'AKÇAABAT', 'akcaabat'),
(803, 61, 'ARAKLI', 'arakli'),
(804, 61, 'ARSİN', 'arsin'),
(805, 61, 'BEŞİKDÜZÜ', 'besikduzu'),
(806, 61, 'ÇARŞIBAŞI', 'carsibasi'),
(807, 61, 'ÇAYKARA', 'caykara'),
(808, 61, 'DERNEKPAZARI', 'dernekpazari'),
(809, 61, 'DÜZKÖY', 'duzkoy'),
(810, 61, 'HAYRAT', 'hayrat'),
(811, 61, 'KÖPRÜBAŞI', 'koprubasi'),
(812, 61, 'MAÇKA', 'macka'),
(813, 61, 'OF', 'of'),
(814, 61, 'SÜRMENE', 'surmene'),
(815, 61, 'ŞALPAZARI', 'salpazari'),
(816, 61, 'TONYA', 'tonya'),
(817, 61, 'VAKFIKEBİR', 'vakfikebir'),
(818, 61, 'YOMRA', 'yomra'),
(819, 62, 'TUNCELİ', 'tunceli'),
(820, 62, 'ÇEMİŞGEZEK', 'cemisgezek'),
(821, 62, 'HOZAT', 'hozat'),
(822, 62, 'MAZGİRT', 'mazgirt'),
(823, 62, 'NAZIMİYE', 'nazimiye'),
(824, 62, 'OVACIK', 'ovacik'),
(825, 62, 'PERTEK', 'pertek'),
(826, 62, 'PÜLÜMÜR', 'pulumur'),
(827, 63, 'ŞANLIURFA', 'sanliurfa'),
(828, 63, 'AKÇAKALE', 'akcakale'),
(829, 63, 'BİRECİK', 'birecik'),
(830, 63, 'BOZOVA', 'bozova'),
(831, 63, 'CEYLANPINAR', 'ceylanpinar'),
(832, 63, 'HALFETİ', 'halfeti'),
(833, 63, 'HARRAN', 'harran'),
(834, 63, 'HİLVAN', 'hilvan'),
(835, 63, 'SİVEREK', 'siverek'),
(836, 63, 'SURUÇ', 'suruc'),
(837, 63, 'VİRANŞEHİR', 'viransehir'),
(838, 64, 'UŞAK', 'usak'),
(839, 64, 'BANAZ', 'banaz'),
(840, 64, 'EŞME', 'esme'),
(841, 64, 'KARAHALLI', 'karahalli'),
(842, 64, 'SİVASLI', 'sivasli'),
(843, 64, 'ULUBEY', 'ulubey'),
(844, 65, 'VAN', 'van'),
(845, 65, 'BAHÇESARAY', 'bahcesaray'),
(846, 65, 'BAŞKALE', 'baskale'),
(847, 65, 'ÇALDIRAN', 'caldiran'),
(848, 65, 'ÇATAK', 'catak'),
(849, 65, 'EDREMİT(GÜMÜŞDERE)', 'edremitgumusdere'),
(850, 65, 'ERCİŞ', 'ercis'),
(851, 65, 'GEVAŞ', 'gevas'),
(852, 65, 'GÜRPINAR', 'gurpinar'),
(853, 65, 'MURADİYE', 'muradiye'),
(854, 65, 'ÖZALP', 'ozalp'),
(855, 65, 'SARAY', 'saray'),
(856, 66, 'YOZGAT', 'yozgat'),
(857, 66, 'AKDAĞMADENİ', 'akdagmadeni'),
(858, 66, 'AYDINCIK', 'aydincik'),
(859, 66, 'BOĞAZLIYAN', 'bogazliyan'),
(860, 66, 'ÇANDIR', 'candir'),
(861, 66, 'ÇAYIRALAN', 'cayiralan'),
(862, 66, 'ÇEKEREK', 'cekerek'),
(863, 66, 'KADIŞEHRİ', 'kadisehri'),
(864, 66, 'SARAYKENT', 'saraykent'),
(865, 66, 'SARIKAYA', 'sarikaya'),
(866, 66, 'SORGUN', 'sorgun'),
(867, 66, 'ŞEFAATLİ', 'sefaatli'),
(868, 66, 'YENİFAKILI', 'yenifakili'),
(869, 66, 'YERKÖY', 'yerkoy'),
(870, 67, 'ZONGULDAK', 'zonguldak'),
(871, 67, 'ALAPLI', 'alapli'),
(872, 67, 'ÇAYCUMA', 'caycuma'),
(873, 67, 'DEVREK', 'devrek'),
(874, 67, 'KARADENİZEREĞLİ', 'karadenizeregli'),
(875, 67, 'GÖKÇEBEY', 'gokcebey'),
(876, 68, 'AKSARAY', 'aksaray'),
(877, 68, 'AĞAÇÖREN', 'agacoren'),
(878, 68, 'ESKİL', 'eskil'),
(879, 68, 'GÜLAĞAÇ(AĞAÇLI)', 'gulagacagacli'),
(880, 68, 'GÜZELYURT', 'guzelyurt'),
(881, 68, 'ORTAKÖY', 'ortakoy'),
(882, 68, 'SARIYAHŞİ', 'sariyahsi'),
(883, 69, 'BAYBURT', 'bayburt'),
(884, 69, 'AYDINTEPE', 'aydintepe'),
(885, 69, 'DEMİRÖZÜ', 'demirozu'),
(886, 70, 'KARAMAN', 'karaman'),
(887, 70, 'AYRANCI', 'ayranci'),
(888, 70, 'BAŞYAYLA', 'basyayla'),
(889, 70, 'ERMENEK', 'ermenek'),
(890, 70, 'KAZIMKARABEKİR', 'kazimkarabekir'),
(891, 70, 'SARIVELİLER', 'sariveliler'),
(892, 71, 'KIRIKKALE', 'kirikkale'),
(893, 71, 'BAHŞİLİ', 'bahsili'),
(894, 71, 'BALIŞEYH', 'baliseyh'),
(895, 71, 'ÇELEBİ', 'celebi'),
(896, 71, 'DELİCE', 'delice'),
(897, 71, 'KARAKEÇİLİ', 'karakecili'),
(898, 71, 'KESKİN', 'keskin'),
(899, 71, 'SULAKYURT', 'sulakyurt'),
(900, 71, 'YAHŞİHAN', 'yahsihan'),
(901, 72, 'BATMAN', 'batman'),
(902, 72, 'BEŞİRİ', 'besiri'),
(903, 72, 'GERCÜŞ', 'gercus'),
(904, 72, 'HASANKEYF', 'hasankeyf'),
(905, 72, 'KOZLUK', 'kozluk'),
(906, 72, 'SASON', 'sason'),
(907, 73, 'ŞIRNAK', 'sirnak'),
(908, 73, 'BEYTÜŞŞEBAP', 'beytussebap'),
(909, 73, 'CİZRE', 'cizre'),
(910, 73, 'GÜÇLÜKONAK', 'guclukonak'),
(911, 73, 'İDİL', 'idil'),
(912, 73, 'SİLOPİ', 'silopi'),
(913, 73, 'ULUDERE', 'uludere'),
(914, 74, 'BARTIN', 'bartin'),
(915, 74, 'AMASRA', 'amasra'),
(916, 74, 'KURUCAŞİLE', 'kurucasile'),
(917, 74, 'ULUS', 'ulus'),
(918, 75, 'ARDAHAN', 'ardahan'),
(919, 75, 'ÇILDIR', 'cildir'),
(920, 75, 'DAMAL', 'damal'),
(921, 75, 'GÖLE', 'gole'),
(922, 75, 'HANAK', 'hanak'),
(923, 75, 'POSOF', 'posof'),
(924, 76, 'IĞDIR', 'igdir'),
(925, 76, 'ARALIK', 'aralik'),
(926, 76, 'KARAKOYUNLU', 'karakoyunlu'),
(927, 76, 'TUZLUCA', 'tuzluca'),
(928, 77, 'YALOVA', 'yalova'),
(929, 77, 'ALTINOVA', 'altinova'),
(930, 77, 'ARMUTLU', 'armutlu'),
(931, 77, 'ÇİFTLİKKÖY', 'ciftlikkoy'),
(932, 77, 'ÇINARCIK', 'cinarcik'),
(933, 77, 'TERMAL', 'termal'),
(934, 78, 'KARABÜK', 'karabuk'),
(935, 78, 'EFLANİ', 'eflani'),
(936, 78, 'ESKİPAZAR', 'eskipazar'),
(937, 78, 'OVACIK', 'ovacik'),
(938, 78, 'SAFRANBOLU', 'safranbolu'),
(939, 78, 'YENİCE', 'yenice'),
(940, 79, 'KİLİS', 'kilis'),
(941, 79, 'ELBEYLİ', 'elbeyli'),
(942, 79, 'MUSABEYLİ', 'musabeyli'),
(943, 79, 'POLATELİ', 'polateli'),
(944, 80, 'OSMANİYE', 'osmaniye'),
(945, 80, 'BAHÇE', 'bahce'),
(946, 80, 'DÜZİÇİ', 'duzici'),
(947, 80, 'HASANBEYLİ', 'hasanbeyli'),
(948, 80, 'KADİRLİ', 'kadirli'),
(949, 80, 'SUMBAS', 'sumbas'),
(950, 80, 'TOPRAKKALE', 'toprakkale'),
(951, 81, 'DÜZCE', 'duzce'),
(952, 81, 'AKÇAKOCA', 'akcakoca'),
(953, 81, 'CUMAYERİ', 'cumayeri'),
(954, 81, 'ÇİLİMLİ', 'cilimli'),
(955, 81, 'GÖLYAKA', 'golyaka'),
(956, 81, 'GÜMÜŞOVA', 'gumusova'),
(957, 81, 'KAYNAŞLI', 'kaynasli'),
(958, 81, 'YIĞILCA', 'yigilca'),
(962, 20, 'PAMUKKALE', 'pamukkale'),
(963, 7, 'OLYMPOS', 'olympos'),
(964, 7, 'ÇIRALI', 'cirali'),
(965, 7, 'KALEİÇİ', 'kaleici'),
(967, 33, 'KIZKALESİ', 'kizkalesi'),
(968, 20, 'KARAHAYİT', 'karahayit');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `manager`
--

DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `mail` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `tel` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `status` int(1) NOT NULL,
  `avatar` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `manager`
--

INSERT INTO `manager` (`id`, `name`, `mail`, `tel`, `username`, `password`, `status`, `avatar`) VALUES
(1, 'Erkan IŞIK', 'erkanisik@yahoo.com', '+90 (542) 480 22 80', 'erkanisik', 'c14142ae5dbaeb67126bb401d1891f55', 1, 'images/man_avatar.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ozellik`
--

DROP TABLE IF EXISTS `ozellik`;
CREATE TABLE `ozellik` (
  `id` int(11) NOT NULL,
  `urunID` int(11) NOT NULL,
  `label` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ozellik` varchar(100) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci COMMENT='ürün özelliklerinin tutulduğu tablo';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `page`
--

DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `title_seo` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `content` longblob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `page`
--

INSERT INTO `page` (`id`, `title`, `title_seo`, `content`) VALUES
(1, 'MESAFELİ SATIŞ SÖZLEŞMESİ  ', 'mesafeli-satis-sozlesmesi', 0x3c6469763e3c623e3c666f6e742073697a653d2233223e4d414444452031202d2054415241464c41523c2f666f6e743e3c2f623e3c2f6469763e3c6469763e534154494349266e6273703b3c2f6469763e3c6469763e54696361726920c39c6e76616ec4b1203a266e6273703b3c2f6469763e3c6469763e416472657369203a266e6273703b3c2f6469763e3c6469763e54656c65666f6e203a266e6273703b3c2f6469763e3c6469763e452d6d61696c203a266e6273703b3c62723e3c62723e3c2f6469763e3c6469763e414c494349266e6273703b3c2f6469763e3c6469763e4164c4b120e2809320736f796164c4b1203a266e6273703b3c2f6469763e3c6469763e416472657369203a266e6273703b3c2f6469763e3c6469763e54656c65666f6e203a266e6273703b3c2f6469763e3c6469763e452d6d61696c203a3c62723e3c62723e3c2f6469763e3c6469763e3c623e3c666f6e742073697a653d2233223e4d4144444520322d53c3965a4c45c59e4d454ec4b04e204b4f4e555355207665204b415053414d493c2f666f6e743e3c2f623e3c2f6469763e3c646976207374796c653d22746578742d616c69676e3a206a7573746966793b223ec4b0c59f6275204d65736166656c6920536174c4b1c59f2053c3b67a6c65c59f6d6573692028e2809c53c3b67a6c65c59f6d65e2809d292054c3bc6b65746963696e696e204b6f72756e6d6173c4b12048616b6bc4b16e6461204b616e756e207665204d65736166656c692053c3b67a6c65c59f6d656c65726520446169722059c3b66e65746d656c696be280996520757967756e206f6c6172616b2064c3bc7a656e6c656e6d69c59f7469722e20c4b0c59f62752053c3b67a6c65c59f6d65e280996e696e2074617261666c6172c4b12069c59f62752053c3b67a6c65c59f6d652074616874c4b16e64612054c3bc6b65746963696e696e204b6f72756e6d6173c4b12048616b6bc4b16e6461204b616e756e207665204d65736166656c692053c3b67a6c65c59f6d656c65726520446169722059c3b66e65746d656c696be2809974656e206b61796e616b6c616e616e2079c3bc6bc3bc6d6cc3bc6cc3bc6b20766520736f72756d6c756c756b6c6172c4b16ec4b12062696c64696b6c6572696e6920766520616e6c6164c4b16b6c6172c4b16ec4b1206b6162756c20766520626579616e20656465726c65722e20c4b0c59f62752073c3b67a6c65c59f6d656e696e206b6f6e7573752c20416cc4b163c4b1262333393b6ec4b16e2c20507265737469676520412ec59ee28099796520616974207777772e656e74616d6167617a612e636f6d20766579612073756e756c616e2068697a6d657465206261c49f6cc4b12064696c657220616c616e2061646c6172c4b120c3bc7a6572696e64656e2028e2809c576562736974657369e2809d292c20536174c4b163c4b179612061697420c3bc72c3bc6e6c6572696e20736174c4b16e20616cc4b16e6d6173c4b16e612079c3b66e656c696b20656c656b74726f6e696b206f6c6172616b20736970617269c59f207665726469c49f692c2073c3b67a6c65c59f6d6564652062656c697274696c656e206e6974656c696b6c657265207361686970206d616c2f68697a6d6574696e20736174c4b1c59fc4b1207665207465736c696d6920696c6520696c67696c69206f6c6172616b2054c3bc6b65746963696e696e204b6f72756e6d6173c4b12048616b6bc4b16e64616b69204b616e756e207665204d65736166656c692053c3b67a6c65c59f6d656c65726520446169722059c3b66e65746d656c696b2068c3bc6bc3bc6d6c6572692067657265c49f696e63652074617261666c6172c4b16e2068616b2076652079c3bc6bc3bc6d6cc3bc6cc3bc6b6c6572696e696e2073617074616e6d6173c4b1206f6c75c59f74757275722e20c4b0c59f62752073c3b67a6c65c59f6d656e696e20616b646564696c6d6573692074617261666c6172c4b16e20617972c4b120617972c4b120507265737469676520412ec59e20696c6520616b6465746d69c59f206f6c64756b6c6172c4b12077656273697465736920c3bc79656c696b2073c3b67a6c65c59f6d656c6572696e696e2068c3bc6bc3bc6d6c6572696e696e2069666173c4b16ec4b120656e67656c6c656d65796563656b206f6c75702074617261666c61722069c59f62752053c3b67a6c65c59f6d65206b6f6e75737520c3bc72c3bc6e20736174c4b1c59fc4b16e646120507265737469676520412ec59ee28099696e2068657268616e67692062697220c59f656b696c6465207461726166206f6c6d6164c4b1c49fc4b16ec4b12076652053c3b67a6c65c59f6d65206b617073616dc4b16e64612074617261666c6172c4b16e2079c3bc6bc3bc6d6cc3bc6cc3bc6b6c6572696e6920796572696e652067657469726d656c65726920696c6520696c67696c692068657268616e67692062697220736f72756d6c756c756b207665207461616868c3bc64c3bc2062756c756e6d6164c4b1c49fc4b16ec4b1206b6162756c20766520626579616e20656465726c65722e3c2f6469763e3c646976207374796c653d22746578742d616c69676e3a206a7573746966793b223e3c62723e3c2f6469763e3c6469763e3c623e3c666f6e742073697a653d2233223e4d41444445203320e280932053c3965a4c45c59e4d45204b4f4e555355204d414c494e2054454d454c204ec4b054454cc4b04b4c4552c4b020564520424544454cc4b03c2f666f6e743e3c2f623e3c2f6469763e3c6469763ec39c72c3bc6e2fc39c72c3bc6e6c6572696e2063696e73692076652074c3bc72c3bc2c206d696b746172c4b12c206d61726b612f6d6f64656c692c2072656e67692076652076657267696c657220646168696c20736174c4b1c59f20626564656c69207665207465736c696d61742062696c67696c6572692061c59f61c49fc4b164616b6920676962696469723a203c62723ec39664656d6520c59e656b6c6920766520506c616ec4b13a20c38765766972696d69c3a7692073616e616c20504f5320757967756c616d6173c4b120c3bc7a6572696e64656e202e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e42616e6b6173c4b1206b72656469206b617274c4b120696c65202e2e2e2e206179202e2e2e2e202879617ac4b1796c612e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2920544c2061796cc4b16b20c3b664656d65202f207065c59f696e202e2e2e2e2e2e2e2e2e2e2e20544c20c3b664656d6520416cc4b16e616e2056616465204661726bc4b13a202e2e2e2e2e2e2e56616465204661726bc4b1206865736162c4b16e6461206b756c6c616ec4b16c616e206661697a206f72616ec4b13a2025202e2e2e2e2e2e2e2e20536970617269c59f692074616b6970206564656e20332069c59f2067c3bc6ec3bc2069c3a7696e6465207365766b697961746c617261206261c59f6c616e6163616b74c4b1722e205365766b697961742c202837292069c59f2067c3bc6ec3bc2069c3a7696e64652074616d616d6c616e6163616b74c4b1722e3c2f6469763e3c6469763e5465736c696d6174204164726573693a266e6273703b3c2f6469763e3c6469763e5465736c696d204564696c6563656b204b69c59f696c65723a266e6273703b3c2f6469763e3c6469763e312e266e6273703b3c2f6469763e3c6469763e322e266e6273703b3c2f6469763e3c6469763e466174757261204164726573693a3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e3c623e3c666f6e742073697a653d2233223e4d414444452034202d204d414c494e205445534cc4b04dc4b0205645205445534cc4b04d20c59e454b4cc4b03c2f666f6e743e3c2f623e3c2f6469763e3c6469763e53c3b67a6c65c59f6d6520416cc4b163c4b1207461726166c4b16e64616e206f6e61796c616e6d616b6c612079c3bc72c3bc726cc3bcc49f65206769726d69c59f206f6c75702c20416cc4b163c4b1e280996ec4b16e20536174c4b163c4b1e2809964616e20736174c4b16e20616c6dc4b1c59f206f6c6475c49f75204d616c2f48697a6d6574e28099696e20416cc4b163c4b1e280997961207465736c696d206564696c6d657369796c6520696661206564696c6d69c59f206f6c75722e204d616c2f68697a6d65742c20416cc4b163c4b1262333393b6ec4b16e20736970617269c59f20666f726d756e64612076652069c59f62752073c3b67a6c65c59f6d6564652062656c6972746d69c59f206f6c6475c49f7520616472657374652062756c756e616e206b69c59f692f6b69c59f696c657265207465736c696d206564696c6563656b7469722e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e3c666f6e742073697a653d2233223e3c623e4d414444452035202d205445534cc4b04d4154204d41535241464c41524920564520c4b0464153493c2f623e3c2f666f6e743e3c2f6469763e3c646976207374796c653d22746578742d616c69676e3a206a7573746966793b223e4d616c2f48697a6d6574e28099696e207465736c696d6174206d61737261666c6172c4b120416cc4b163c4b1262333393b7961206169747469722e20536174c4b163c4b1e280996ec4b16e2c207765627369746573696e6465207465736c696d617420c3bc63726574696e696e206b656e646973696e6365206b6172c59fc4b16c616e616361c49fc4b16ec4b120626579616e2065746d69c59f73652c207465736c696d6174206d61737261666c6172c4b120536174c4b163c4b1e28099796120616974206f6c6163616b74c4b1722e204d616cc4b16e207465736c696d6174c4b13b20536174c4b163c4b1e280996ec4b16e2073746f6b756e756e206dc3bc73616974206f6c6d6173c4b120766520c3b664656d656e696e20676572c3a7656b6c65c59f6d6573696e64656e20736f6e7261207461616868c3bc74206564696c656e2073c3bc7265646520796170c4b16cc4b1722e20536174c4b163c4b1204d616c2f48697a6d6574e28099692c20416cc4b163c4b1207461726166c4b16e64616e204d616c2f48697a6d6574e28099696e20736970617269c59f206564696c6d6573696e64656e20697469626172656e20333020286f74757a292067c3bc6e2069c3a7696e6465207465736c696d20656465722076652062752073c3bc72652069c3a7696e64652079617ac4b16cc4b12062696c646972696d6c6520656b20313020286f6e292067c3bc6e6cc3bc6b2073c3bc726520757a6174c4b16d2068616b6bc4b16ec4b12073616b6cc4b12074757461722e2048657268616e676920626972206e6564656e6c652041c4b163c4b1207461726166c4b16e64616e204d616c2f48697a6d657420626564656c6920c3b664656e6d657a207665796120796170c4b16c616e20c3b664656d652062616e6b61206b6179c4b1746c6172c4b16e646120697074616c206564696c6972206973652c20536174c4b163c4b1204d616c2f48697a6d6574e28099696e207465736c696d692079c3bc6bc3bc6d6cc3bc6cc3bcc49fc3bc6e64656e206b757274756c6d75c59f206b6162756c206564696c69722e3c2f6469763e3c646976207374796c653d22746578742d616c69676e3a206a7573746966793b223e3c62723e3c2f6469763e3c6469763e3c666f6e742073697a653d2233223e3c623e4d414444452036202d20414c4943494e494e20424559414e205645205441414848c39c544c4552c4b03c2f623e3c2f666f6e743e3c2f6469763e3c6469763e416cc4b163c4b12c205765627369746573696e64652079657220616c616e2073c3b67a6c65c59f6d65206b6f6e75737520c3bc72c3bc6ec3bc6e2074656d656c206e6974656c696b6c6572692c20736174c4b1c59f206669796174c4b120766520c3b664656d6520c59f656b6c6920696c65207465736c696d61746120696c69c59f6b696e206f6c6172616b20536174c4b163c4b1207461726166c4b16e64616e2079c3bc6b6c656e656e20c3b66e2062696c67696c657269206f6b757975702062696c676920736168696269206f6c6475c49f756e7520766520656c656b74726f6e696b206f7274616d646120676572656b6c6920746579696469207665726469c49f696e6920626579616e20656465722e20416cc4b163c4b16c61722054c3bc6b65746963692073c4b1666174c4b1796c612074616c657020766520c59f696b617965746c6572696e692079756b6172c4b164612079657220616c616e20536174c4b163c4b120696c657469c59f696d2062696c67696c6572696e696e207361c49f6c6164c4b1c49fc4b1206b616e616c6c61726c6120756c61c59f74c4b1726162696c69726c65722e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e416cc4b163c4b12c2069c59f62752053c3b67a6c65c59f6d65e28099796920766520c3966e2042696c67696c656e6469726d6520466f726d756e7520656c656b74726f6e696b206f7274616d64612074657969742065746d656b6c652c206d65736166656c692073c3b67a6c65c59f6d656c6572696e20616b64696e64656e20c3b66e636520536174c4b163c4b1207461726166c4b16e64616e2074c3bc6b6574696369796520766572696c6d65736920676572656b656e2061647265732c20736970617269c59f6920766572696c656e20c3bc72c3bc6e6c657265206169742074656d656c20c3b67a656c6c696b6c65722c20c3bc72c3bc6e6c6572696e2076657267696c657220646168696c206669796174c4b12c20c3b664656d65207665207465736c696d61742062696c67696c6572696e6920646520646fc49f727520766520656b73696b73697a206f6c6172616b206564696e6469c49f696e692074657969742065746d69c59f206f6c75722e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e416cc4b163c4b1e280996ec4b16e2c2053c3b67a6c65c59f6d65206b6f6e757375204d616c2f48697a6d6574e2809969207465736c696d20616c6d6164616e20c3b66e6365206d756179656e652065646563656b20746168726970206f6c6d75c59f2c206bc4b172c4b16b2c20616d62616c616ac4b12079c4b17274c4b16c6dc4b1c59f2076622e2068617361726cc4b1207665206179c4b1706cc4b1204d616c2f48697a6d657469206b6172676f20c59f69726b6574696e64656e207465736c696d20616c6d6173c4b12068616c696e646520736f72756d6c756c756b2074616d616d656e206b656e646973696e65206169747469722e266e6273703b20416cc4b163c4b1207461726166c4b16e64616e206b6172676f20c59f69726b6574692067c3b67265766c6973696e64656e207465736c696d20616cc4b16e616e204d616c2f48697a6d6574e28099696e20686173617273c4b17a207665207361c49f6c616d206f6c6475c49f75206b6162756c206564696c6563656b7469722e205465736c696d64656e20736f6e7261204d616c2f48697a6d6574e28099696e20736f72756d6c756c75c49f752076652068617361726c617220416cc4b163c4b1262333393b7961206169747469722e266e6273703b3c2f6469763e3c6469763e3c62723e4d616c2f48697a6d6574e28099696e207465736c696d696e64656e20736f6e726120416cc4b163c4b1262333393b796120616974206b72656469206b617274c4b16ec4b16e20416cc4b163c4b1262333393b6ec4b16e206b75737572756e64616e206b61796e616b6c616e6d6179616e2062697220c59f656b696c6465207965746b6973697a206b69c59f696c657263652068616b73c4b17a20766579612068756b756b612061796bc4b172c4b1206f6c6172616b206b756c6c616ec4b16c6d6173c4b1206e6564656e6920696c6520696c67696c692062616e6b6120766579612066696e616e73206b7572756c75c59f756e756e206d616c2f68697a6d657420626564656c696e6920536174c4b163c4b1262333393b796120c3b664656d656d6573692068616c696e64652c20416cc4b163c4b1206b656e646973696e65207465736c696d206564696c6d69c59f206f6c6d6173c4b1206b617964c4b1796c61204d616c2f48697a6d6574e280996920332028c3bcc3a7292067c3bc6e2069c3a7696e646520536174c4b163c4b1262333393b796120696164652065746d656b6c652079c3bc6bc3bc6d6cc3bc64c3bc722e2042752068616c6465207465736c696d61742067696465726c65726920416cc4b163c4b1262333393b7961206169747469722e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e3c623e3c666f6e742073697a653d2233223e4d414444452037202d205341544943494e494e20424559414e205645205441414848c39c544c4552c4b03c2f666f6e743e3c2f623e3c2f6469763e3c6469763e536174c4b163c4b12c2053c3b67a6c65c59f6d65206b6f6e757375204d616c2f48697a6d6574e28099696e2054c3bc6b6574696369204d65767a756174c4b16e6120757967756e206f6c6172616b2c207361c49f6c616d2c20656b73696b73697a2c20736970617269c59f74652062656c697274696c656e206e6974656c696b6c65726520757967756e20766520766172736120676172616e74692062656c67656c657269207665206b756c6c616ec4b16d206bc4b16c6176757a6c6172c4b120696c6520416cc4b163c4b1e280997961207465736c696d206564696c6d6573696e64656e20736f72756d6c756475722e20536174c4b163c4b12c206dc3bc636269722073656265706c65722076657961206e616b6c697965796920656e67656c6c6579656e206f6c61c49f616ec3bc7374c3bc20647572756d6c6172206e6564656e6920696c652073c3b67a6c65c59f6d65206b6f6e75737520c3bc72c3bc6ec3bc2073c3bc726573692069c3a7696e6465207465736c696d206564656d657a206973652c20647572756d7520416cc4b163c4b1e280997961206dc3bc6d6bc3bc6e206f6c616e20656e206bc4b173612073c3bc726564652062696c6469726d656b6c652079c3bc6bc3bc6d6cc3bc64c3bc722053c3b67a6c65c59f6d65206b6f6e757375204d616c2f48697a6d65742c20416cc4b163c4b1262333393b64616e206261c59f6b6120626972206b69c59f697965207465736c696d206564696c6563656b206973652c207465736c696d206564696c6563656b206b69c59f696e696e207465736c696d6174c4b1206b6162756c2065746d656d6573696e64656e20536174c4b163c4b120736f72756d6c7520747574756c616d617a2e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e3c623e3c666f6e742073697a653d2233223e4d41444445203820e28093204341594d412048414b4b493c2f666f6e743e3c2f623e3c2f6469763e3c6469763e416cc4b163c4b1e280996ec4b16e206869c3a76269722068756b756b692076652063657a616920736f72756d6c756c756b20c3bc73746c656e6d656b73697a696e207665206869c3a762697220676572656bc3a7652067c3b6737465726d656b73697a696e207465736c696d20616c64c4b1c49fc4b120766579612073c3b67a6c65c59f6d656e696e20696d7a616c616e64c4b1c49fc4b120746172696874656e20697469626172656e2037202879656469292067c3bc6e2069c3a765726973696e6465206d616cc4b120766579612068697a6d657469207265646465646572656b2073c3b67a6c65c59f6d6564656e206361796d612068616b6bc4b16ec4b16e20766172206f6c6475c49f756e75207665206361796d612062696c646972696d696e696e20536174c4b163c4b1e28099796120756c61c59f6d6173c4b1207461726968696e64656e20697469626172656e20536174c4b163c4b1e280996ec4b16e206d616cc4b1206765726920616c616361c49fc4b16ec4b120536174c4b163c4b1207461616868c3bc7420656465722e204361796d612068616b6bc4b12062696c646972696d692076652073c3b67a6c65c59f6d65796520696c69c59f6b696e20736169722062696c646972696d6c657220736174c4b163c4b17961206169742076652079756b6172c4b164612062656c697274696c656e20736174c4b163c4b1266e6273703b3c2f6469763e3c6469763e696c657469c59f696d2062696c67696c657269206b616e616cc4b120696c652067c3b66e646572696c652062696c6563656b7469722e20507265737469676520412ec59e2c20c4b0c59e4255204d45534146454cc4b02053415449c59e2053c3965a4c45c59e4d4553c4b04ec4b04e20544152414649204f4c4d414449c49e494e44414e20505245535449474520412ec59ee280995945204b4152c59e49204341594d412048414b4b49204b554c4c414e494c414d415a205645594120424544454c20c4b041444553c4b02054414c4550204544c4b04c454d455a2e203c62723e3c62723e4361796d612068616b6bc4b16ec4b16e206b756c6c616ec4b16c6d6173c4b12069c3a7696e2062752073c3bc72652069c3a765726973696e646520536174c4b163c4b1e280997961206d65767a7561742068c3bc6bc3bc6d6c6572696e6520757967756e206f6c6172616b2062696c646972696d64652062756c756e756c6d6173c4b120c59f61727474c4b1722e204361796d612068616b6bc4b16ec4b16e206b756c6c616ec4b16c6d6173c4b12068616c696e64653a266e6273703b3c2f6469763e3c6469763e612920416cc4b163c4b1e2809979612076657961206f6e756e2062696c6469726469c49f692079756b6172c4b164612062696c676973692062756c756e616e20c3bcc3a7c3bc6e63c3bc206b69c59f697965207465736c696d206564696c656e20c3bc72c3bc6ec3bc6e2069616465206564696c6d657369207a6f72756e6c756475722e3c2f6469763e3c6469763e62292037202879656469292067c3bc6e6cc3bc6b2073c3bc72652069c3a765726973696e64652069616465206564696c6563656b20c3bc72c3bc6e6c6572696e206b75747573752c20616d62616c616ac4b12c207661727361207374616e6461727420616b7365737561726c6172c4b120766172736120c3bc72c3bc6e6c65206269726c696b746520686564697965206564696c656e206469c49f657220c3bc72c3bc6e6c65726920656b73696b73697a20766520686173617273c4b17a206f6c6172616b207465736c696d206564696c6d65736920676572656b6d656b74656469722e204361796d612068616b6bc4b16ec4b16e206b756c6c616ec4b16c6d6173c4b16ec4b12076652062696c67696e696e20756c61c59fc4b16dc4b16ec4b12074616b6970206564656e20313020286f6e292067c3bc6e2069c3a765726973696e646520c3bc72c3bc6e20626564656c6920416cc4b163c4b1e28099796120c3b664656469c49f6920c59f656b696c64652069616465206564696c69722e20c39c72c3bc6e20536174c4b163c4b1e2809979612069616465206564696c69726b656e2c20c3bc72c3bc6e207465736c696d692073c4b1726173c4b16e646120416cc4b163c4b1e28099796120696272617a206564696c6d69c59f206f6c616e206f72696a696e616c206661747572616ec4b16e2064612069616465206564696c6d657369266e6273703b3c2f6469763e3c6469763e676572656b6d656b74656469722e20c4b0616465206b6172676f20626564656c6920536174c4b163c4b1e280997961206169747469722e20c39c72c3bc6e6c6520626572616265722069616465206564696c6563656b206f6c616e206661747572616ec4b16e20696164652062c3b66cc3bc6dc3bc20646f6c647572756c6172616b20766520416cc4b163c4b1207461726166c4b16e64616e20696d7a616c616e6172616b2069616465206564696c6563656b7469722e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e3c623e3c666f6e742073697a653d2233223e4d41444445203920e28093204341594d412048414b4b494e494e204b554c4c414e494c414d4159414341c49e492048414c4c45523c2f666f6e743e3c2f623e3c2f6469763e3c6469763e4361796d612068616b6bc4b12061c59f61c49fc4b164616b692068616c6c65726465206b756c6c616ec4b16c616d617a3a3c2f6469763e3c6469763e4361796d612068616b6bc4b12073c3bc7265736920736f6e612065726d6564656e20c3b66e63652c2054c3bc6b65746963696e696e206f6e617920696c652068697a6d6574696e2069666173c4b16e61206261c59f6c616e616e2068697a6d65742073c3b67a6c65c59f6d656c657269204669796174c4b120626f7273612076657961207465c59f6b696c61746c616e6dc4b1c59f206469c49f6572207069796173616c617264612062656c69726c656e656e206d616c6c61726120696c69c59f6b696e2073c3b67a6c65c59f6d656c65723c2f6469763e3c6469763e54c3bc6b65746963696e696e20697374656b6c65726920766579612061c3a7c4b16bc3a761206f6e756e206b69c59f6973656c20696874697961c3a76c6172c4b120646fc49f72756c747573756e64612068617ac4b1726c616e616e2c206e6974656c69c49f692069746962617269796c6520676572692067c3b66e646572696c6d65796520656c76657269c59f6c69206f6c6d6179616e20766520c3a76162756b20626f7a756c6d61207465686c696b657369206f6c616e207665796120736f6e206b756c6c616e6d6120746172696869206765c3a76d6520696874696d616c69206f6c616e206d616c6c6172c4b16e207465736c696d696e6520696c69c59f6b696e2073c3b67a6c65c59f6d656c65722e3c62723e54c3bc6b6574696369207461726166c4b16e64616e20616d62616c616ac4b16ec4b16e2061c3a7c4b16c6dc4b1c59f206f6c6d6173c4b120c59f617274c4b1796c612c2073657320766579612067c3b672c3bc6e74c3bc206b6179c4b1746c6172c4b16e612c2079617ac4b16cc4b16d2070726f6772616d6c6172c4b16e612076652062696c676973617961722073617266206d616c7a656d656c6572696e6520696c69c59f6b696e2073c3b67a6c65c59f6d656c65723c2f6469763e3c6469763e47617a6574652c20646572676920676962692073c3bc72656c6920796179c4b16e6c6172c4b16e207465736c696d696e6520696c69c59f6b696e2073c3b67a6c65c59f6d656c65723c2f6469763e3c6469763e426168697320766520706979616e676f796120696c69c59f6b696e2068697a6d65746c6572696e2069666173c4b16e6120696c69c59f6b696e2073c3b67a6c65c59f6d656c65723c2f6469763e3c6469763e456c656b74726f6e696b206f7274616d646120616ec4b16e646120696661206564696c656e2068697a6d65746c657220696c652074c3bc6b6574696369796520616ec4b16e6461207465736c696d206564696c656e206761797269206d61646469206d616c6c61726120696c69c59f6b696e2073c3b67a6c65c59f6d656c65722e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e3c623e3c666f6e742073697a653d2233223e4d41444445203130202d20555955c59e4d415a4c494b4c4152494e20c387c3965ac39c4dc39c3c2f666f6e743e3c2f623e3c2f6469763e3c6469763e54c3bc6b65746963696c65722c20536174c4b163c4b120696c6520736f72756e6c6172c4b1206f6c757273612c20736f72756e7520536174c4b163c4b1e280996ec4b16e20c3a7c3b67a656d656d65736920647572756d756e64612c20c3bc72c3bc6e20626564656c6920312e3136312c363720544ce280997965206b61646172206f6c616e2069c59f6c656d6c65726c6520696c67696c6920c59f696b617965742076652069746972617a206b6f6e756c6172c4b16e6461206261c59f767572756c6172c4b16ec4b120c3bc72c3bc6ec3bc20736174c4b16e20616c64c4b16b6c6172c4b1207665796120696b616d65746761686c6172c4b16ec4b16e2062756c756e6475c49f752079657264656b692054c3bc6b657469636920536f72756e6c6172c4b12048616b656d20486579657469e280996e653b20c3bc72c3bc6e20626564656c6920312e3136312c363720544ce280996e696e20c3bc7a6572696e6465206f6c616e2069c59f6c656d6c65726c6520696c67696c6920c59f696b617965742076652069746972617a206b6f6e756c6172c4b16e6461206261c59f767572756c6172c4b16ec4b1206973652c20c3bc72c3bc6ec3bc20736174c4b16e20616c64c4b16b6c6172c4b1207665796120696b616d65746761686c6172c4b16ec4b16e2062756c756e6475c49f752079657264656b692054c3bc6b6574696369206d61686b656d6573696e65207961706162696c6563656b6c65726469722e30312e30382e323030332074617269686c6920766520323531383620736179c4b16cc4b1205265736d692047617a657465e28099646520796179c4b16d6c616e616e2054c3bc6b657469636920536f72756e6c6172c4b12048616b656d2048657965746c6572692059c3b66e65746d656c69c49f69e280996e696e20352e204d6164646573696e696e20c3bcc3a7c3bc6e63c3bc2066c4b16b726173c4b16e64612c2062c3bc79c3bc6bc59f656869722073746174c3bc73c3bc6e64652062756c756e616e20696c6c65726465206661616c697965742067c3b673746572656e20696c2068616b656d2068657965746c6572696e696e20757975c59f6d617a6cc4b16b6c6172612062616b6d616b6c612067c3b67265766c69207665207965746b696c69206f6c6d616c6172c4b16e6120696c69c59f6b696e20616c74207061726173616c2073c4b16ec4b17220332e3033322c363520544ce280996469722e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e3c623e3c666f6e742073697a653d2233223e4d41444445203131202d204d414c2f48c4b05a4d4554c4b04e2046c4b0594154493c2f666f6e743e3c2f623e3c2f6469763e3c6469763e4d616c2f68697a6d6574696e207065c59f696e207665796120766164656c69206669796174c4b12c207065c59f696e6174206669796174c4b120736970617269c59f20666f726d756e64612079657220616c6d616b6c61206269726c696b74652c20736970617269c59f20736f6e75206d61696c206174c4b16c616e20c3b6726e656b2066617475726120766520c3bc72c3bc6e20696c65206269726c696b7465206dc3bcc59f7465726979652067c3b66e646572696c656e206661747572612069c3a7657269c49f696e6465206d6576637574206f6c616e20666979617474c4b1722e20536174c4b163c4b1207665796120507265736974676520412ec59e207461726166c4b16e64616e20796170c4b16c616e20696e646972696d6c65722c206b75706f6e6c6172207665207361697220736174c4b1c59f206669796174c4b16e612079616e73c4b174c4b16cc4b1722e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e3c666f6e742073697a653d2233223e3c623e4d41444445203132202d2054454d455252c39c442048414cc4b02056452048554b554bc4b020534f4e55c3874c4152493c2f623e3c2f666f6e743e3c2f6469763e3c6469763e416cc4b163c4b12c206b72656469206b617274c4b120696c65207961706dc4b1c59f206f6c6475c49f752069c59f6c656d6c6572696e64652074656d657272c3bc64652064c3bcc59f6d6573692068616c696e6465206b617274207361686962692062616e6b616ec4b16e206b656e6469736920696c65207961706dc4b1c59f206f6c6475c49f75206b72656469206b617274c4b12073c3b67a6c65c59f6d65736920c3a76572c3a765766573696e6465206661697a20c3b66465796563656b2076652062616e6b617961206b6172c59fc4b120736f72756d6c75206f6c6163616b74c4b1722e20427520647572756d646120696c67696c692062616e6b612068756b756b6920796f6c6c617261206261c59f7675726162696c69723b20646fc49f6163616b206d61737261666c6172c4b12076652076656bc3a26c657420c3bc63726574696e6920416cc4b163c4b1262333393b64616e2074616c65702065646562696c697220766520686572206b6fc59f756c646120416cc4b163c4b1262333393b6ec4b16e20626f7263756e64616e20646f6c6179c4b12074656d657272c3bc64652064c3bcc59f6d6573692068616c696e64652c20416cc4b163c4b12c20626f7263756e20676563696b6d656c692069666173c4b16e64616e20646f6c6179c4b120536174c4b163c4b1262333393b6ec4b16e206f6c75c59f616e207a61726172207665207a6979616ec4b16ec4b120c3b664656d657969206b6162756c20656465722e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e3c623e3c666f6e742073697a653d2233223e4d4144444520313320e280932042c4b04c44c4b052c4b04d4c45522076652044454cc4b04c2053c3965a4c45c59e4d4553c4b03c2f666f6e743e3c2f623e3c2f6469763e3c6469763ec4b0c59f62752053c3b67a6c65c59f6d652074616874c4b16e64612054617261666c61722061726173c4b16e646120796170c4b16c6163616b206865722074c3bc726cc3bc2079617ac4b1c59f6d612c204b616e756e646120736179c4b16c616e207a6f72756e6c752068616c6c65722064c4b1c59fc4b16e64612c20652d6d61696c2061726163c4b16cc4b1c49fc4b1796c6120796170c4b16c6163616b74c4b1722e20416cc4b163c4b12c2069c59f62752053c3b67a6c65c59f6d65e2809964656e20646fc49f6162696c6563656b20696874696c61666c6172646120536174c4b163c4b1e280996ec4b16e20766520446fc49f75c59f20506c616e6574e28099696e207265736d692064656674657220766520746963617269206b6179c4b1746c6172c4b1796c612c206b656e64692076657269746162616ec4b16e64612c2073756e7563756c6172c4b16e6461207475747475c49f7520656c656b74726f6e696b2062696c67696c6572696e2076652062696c67697361796172206b6179c4b1746c6172c4b16ec4b16e2c206261c49f6c6179c4b163c4b12c206b6573696e207665206dc3bc6e686173c4b1722064656c696c207465c59f6b696c206564656365c49f696e692c206275206d616464656e696e2048756b756b204d7568616b656d656c657269204b616e756e75e280996e756e203139332e206d61646465736920616e6c616dc4b16e64612064656c696c2073c3b67a6c65c59f6d657369206e6974656c69c49f696e6465206f6c6475c49f756e75206b6162756c2c20626579616e207665207461616868c3bc7420656465722e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e3c623e3c666f6e742073697a653d2233223e4d41444445203134202d2059c39c52c39c524cc39c4b3c2f666f6e743e3c2f623e3c2f6469763e3c6469763e313420286f6e2064c3b6727429206d6164646564656e206962617265742062752053c3b67a6c65c59f6d652c2054617261666c61726361206f6b756e6172616b2c20416cc4b163c4b1207461726166c4b16e64616e266e6273703b3c2f6469763e3c6469763e656c656b74726f6e696b206f7274616d6461206f6e61796c616e6d616b20737572657469796c6520616b646564696c6d69c59f2076652064657268616c2079c3bc72c3bc726cc3bcc49f65266e6273703b3c2f6469763e3c6469763e6769726d69c59f7469722e3c2f6469763e3c6469763e5341544943495b2e5d266e6273703b3c2f6469763e3c6469763e414c4943493c62723e3c2f6469763e20);
INSERT INTO `page` (`id`, `title`, `title_seo`, `content`) VALUES
(2, 'ÜYELİK SÖZLEŞMESİ ', 'uyelik-sozlesmesi', 0x3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c623e54415241464c41523a3c2f623e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e4d6164646520312e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223ec4b0c59f62752073c3b67a6c65c59f6d656e696e20626972207461726166c4b16e64612c205061c59f61204c696d616ec4b120436164646573692054616874616cc4b120426f7374616e20536f6b616b2056696c6c61205072657374696765204e6f3a2032204b757a67756e63756b20c39c736bc3bc646172202d20c4b05354414e42554c206164726573696e6465206d756b696d205072657374696a20416e6f6e696d20266e6273703bc59e69726b6574692e202862756e64616e2062c3b6796c65206bc4b17361636120e2809c454e5441e2809d206f6c6172616b20616ec4b16c6163616b74c4b1722e29206469c49f6572207461726166c4b16e64613b205072657374696765204772757020736168696269206f6c6475c49f75207777772e656e74616d6167617a612e636f6d202862756e64616e20736f6e7261206bc4b17361636120e2809cc4b06e7465726e657420536974657369e2809d206f6c6172616b20616ec4b16c6163616b74c4b1722920696e7465726e6574207369746573696e6520c3bc7965206f6c616e2f6f6c6163616b202862756e64616e2062c3b6796c65206bc4b17361636120e2809cc39c7965e2809d206f6c6172616b20616ec4b16c6163616b74c4b17229206b69c59f692079657220616c6d616b7461206f6c75702069c59f62752073c3b67a6c65c59f6d652c2054617261666c6172c4b16e20266e6273703b68616b2076652079c3bc6bc3bc6d6cc3bc6cc3bc6b6c6572696e696e3b20c4b06e7465726e65742073697465736920c3bc7a6572696e64652073756e756c616e2068697a6d65746c6572696e2c20757967756c616d616c6172c4b16e2076652069c3a76572696b6c6572696e206b756c6c616ec4b16c6d6173c4b1206b6fc59f756c6c6172c4b16ec4b16e2062656c69726c656e6d65736920616d6163c4b1796c61206f6c75c59f747572756c6d75c59f7475722e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c623e54414e494d4c41523a3c2f623e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e4d6164646520322e266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223ec4b0c59f62752073c3b67a6c65c59f6d656465206966616465206564696c656e2061c59f61c49fc4b164616b69206b656c696d656c6572696e2074616ec4b16dc4b120c59fc3b6796c656469723b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e22c4b06e7465726e657420536974657369e2809d207777772e656e74616d6167617a612e636f6d206973696d6c6920616c616e206164c4b16e64616e20766520627520616c616e206164c4b16e61206261c49f6cc4b120616c7420616c616e2061646c6172c4b16e64616e206f6c75c59f616e20736974657379692c3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e224b756c6c616ec4b163c4b1223a20e2809c696e7465726e657420736974657369e2809d6e6520c3a7657672696d69c3a76920286f6e2d6c696e6529206f7274616d64616e20657269c59f656e2068657220676572c3a7656b20766579612074c3bc7a656c206b69c59f6979692c3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e22c39c7965223a20696e7465726e6574207369746573692064c3a268696c696e64652073756e756c616e2068697a6d65746c657264656e2069c59f62752073c3b67a6c65c59f6d6564652062656c697274696c656e206b6fc59f756c6c61722064c3a268696c696e64652079617261726c616e616e20676572c3a7656b2076652f766579612074c3bc7a656c206b69c59f696c6572692c3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223ee2809cc39c79656c696be2809d3a2022506f7274616c22c4b16e20696c67696c692062c3b66cc3bc6dc3bc6e64656e20e2809cc39c7965e2809d206f6c6d616b206973746579656e20e2809c4b756c6c616ec4b163c4b1e2809d207461726166c4b16e64616e20c3bc7965206f6c6d616b2069c3a7696e20676572656b6c69206f6c616e20c3bc79656c696b20666f726d756e756e20646f6c647572756c6d6173c4b12c206b696d6c696b2062696c67696c6572696e696e20766572696c6d6573692c206b696d6c696b2062696c67696c6572696e696e20646fc49f72756c75c49f756e756e206f6e61796c616e6d6173c4b120737572657469796c65206b6179c4b1742069c59f6c656d696e696e2079617074c4b172c4b16c6d6173c4b120766520456e7461207461726166c4b16e64616e206b6179c4b1742069c59f6c656d696e696e206f6e61796c616e6d6173c4b120696c652074616d616d6c616ec4b1722e20c39c79656c696b2069c59f6c656d692074616d616d6c616e6d6164616e2069c59f62752073c3b67a6c65c59f6d6564652074616ec4b16d6c616e616e2022c39c796522206f6c6d612068616b207665207965746b6973696e65207361686970206f6c756e616d617a2e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c623e3c62723e3c2f623e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c623e454e5441204d41c49e415a41205441524146494e44414e2053554e554c4143414b2048c4b05a4d45544c45523a266e6273703b3c2f623e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e4d6164646520332e266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e332d312920456e74613b2069c59f62752073c3b67a6c65c59f6d657969206f6e61796c6179616e20c39c7965e28099796520c4b06e7465726e65742053697465736920c3bc7a6572696e64656e2061c59f61c49fc4b164616b692068697a6d65746c6572692073756e6163616b74c4b1723a3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e332d322920456e7461e280996ec4b16e206661616c697965746c65726920696c6520696c67696c692062696c67692076652069c3a76572696b207061796c61c59fc4b16dc4b12c3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e332d332920456e7461206b616d70616e79616c617220696c6520696c67696c692067c3bc6e63656c2062696c67696c65722c20456e746120696c6520696c67696c692068616265726c65722c2079656e6920c3bc72c3bc6e2062696c646972696d6c6572692062656e7a65722069c3a76572696b6c6572696e207061796c61c59fc4b16dc4b12c3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e332d342920c39c79656e696e2062696c6469726d69c59f206f6c6475c49f7520652d706f737461206164726573696e6520652d62c3bc6c74656e20796f6c6c616d612c3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e332d352920456e7461e280996ec4b16e2073756e6475c49f7520c3bc72c3bc6e2076652068697a6d65746c6572696e20c39c7965207461726166c4b16e64616e206d656d6e756e697965742064657265636573696e6920c3b66cc3a7c3bc6d6c656d656b2c2079656e692068697a6d65746c65722068616b6bc4b16e646120757967756e6c756b2f66696b6972207061796c61c59fc4b16dc4b1207961706d616b2076652068697a6d6574206b616c69746573696e6920617274c4b1726d616b20616d6163c4b1796c6120796170c4b16c6163616b20616e6b657420757967756c616d616c6172c4b12c3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e332d362920c39c79656e696e20c4b06e7465726e657420536974657369e280996e6520c3bc79656c696b2069c59f6c656d6c6572696e696e20796170c4b16c6d6173c4b13b20c39c7965e280996e696e206b69c59f6973656c2062696c67696c6572696e696e20286973696d2c20736f7961642c20652d706f7374612c20646fc49f756d205461726968692c207665206365702074656c65666f6e752920616cc4b16e6d6173c4b12c2067c3bc76656e6c692062697220c59f656b696c646520747574756c6d6173c4b12c20c39c796520697374656469c49f696e646520766579612067c3bc76656e6c696b20757967756c616d616c6172c4b120736562656269796c6520c4b06e7465726e65742053697465736920676572656b6c692067c3b67264c3bcc49fc3bc6e64652062752062696c67696c6572696e20c39c7965207461726166c4b16e64616e20c4b06e7465726e65742053697465736920c3bc7a6572696e64652067c3bc6e63656c6c656e6d6573696e696e207361c49f6c616e6d6173c4b12c3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e332d372920c39c7965e280996e696e20c4b06e7465726e65742053697465736920c3bc7a6572696e64656e2048697a6d6574207665796120c3bc72c3bc6e20736174c4b16e20616c6162696c6d6573692e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c623e3c62723e3c2f623e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c623ec4b04e5445524e45542053c4b0544553c4b020c39c59454cc4b04b2053c4b05354454dc4b03a3c2f623e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e4d6164646520342e266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223ec39c79652c20c4b06e7465726e657420536974657369e280996e6520c3bc7965206f6c6d616b20697374657273652c20c3b66e636520696e7465726e65742073697465736920c3bc7a6572696e646520796179c4b16e6c616e616e20c39c79656c696b20466f726d75262333393b6e7520646fc49f72752062696c67696c657220696c6520646f6c6475726d616b2076652062752064c3b66bc3bc6d616e64612062656c697274696c6d69c59f206f6c616e20c39c79656c696b2053c3b67a6c65c59f6d6573692068c3bc6bc3bc6d6c6572696e652075796d6179c4b1206b6162756c207665207461616868c3bc742065746d656c696469722e20266e6273703bc39c79652c206b61726172c4b120646fc49f72756c747573756e6461204b6179c4b17420466f726d75262333393b6e756e20616c74c4b16e64612062756c756e616e2028c39c7965204f6c292076657961202856617a6765c3a729206275746f6e756e752074c4b16b6c61722e20c39c7965204f6c206275746f6e756e752074c4b16b6c6164c4b1c49fc4b16e64612069c59f62752053c3b67a6c65c59f6d6564656b6920c59f6172746c6172c4b1206b6162756c2065746d69c59f206f6c6163616b74c4b1722e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223ec39c79652c20c4b06e7465726e65742053697465736920c3bc7a6572696e64656b692062617ac4b12069c59f6c656d6c65726920676572c3a7656b6c65c59f7469726562696c6d656b2069c3a7696e20696874697961c3a7206475796475c49f752c206b656e646973696e696e2062656c69726c6579656365c49f692062697220224b756c6c616ec4b163c4b1204164c4b1222076652022c59e69667265227965207361686970206f6c75722e266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e224b756c6c616ec4b163c4b1204164c4b12220c39c7965262333393b796520c3b67a656c6469722076652061796ec4b120224b756c6c616ec4b163c4b1204164c4b12220696b69206661726b6cc4b120c3bc7965796520766572696c6d657a2e2022c59e696672652220736164656365206b756c6c616ec4b163c4b1207461726166c4b16e64616e2062696c696e69722e204b756c6c616ec4b163c4b12064696c656469c49f69207a616d616e20c59f6966726573696e69206465c49f69c59f7469726562696c69722e20c59e696672656e696e207365c3a7696d69207665206b6f72756e6d6173c4b12074616d616d69796c65206b756c6c616ec4b163c4b16ec4b16e20736f72756d6c756c75c49f756e646164c4b1722e20456e74612c20c39c7965e280996e696e20c59f69667265206b756c6c616ec4b16dc4b120696c6520696c67696c69206b756c6c616ec4b163c4b120686174616c6172c4b120736562656269796c6520646fc49f6163616b20686174616c617264616e2f70726f626c656d6c657264656e20736f72756d6c75206465c49f696c6469722e20c59e6966726573696e6920c3bc737420c3bc7374652033206b657a2079616e6cc4b1c59f20676972656e206b756c6c616ec4b163c4b12022c59e696672656d6920556e757474756d222062c3b66cc3bc6dc3bc6e652079c3b66e6c656e646972696c69722c2076652079656e6920c59f6966726573696e692074616ec4b16d6c616d6173c4b12069c3a7696e2067c3bc76656e6c696b206164c4b16d6c6172c4b16ec4b12074616d616d6c616d6173c4b120697374656e69722e20266e6273703b47c3bc76656e6c696b206164c4b16d6c6172c4b16ec4b1206261c59f6172c4b1796c612074616d616d6c6179616e20c39c79652c2079656e6920c59f6966726573696e692074616ec4b16d6c61722c207665206275206164c4b16d64616e20736f6e72616b20c4b06e7465726e657420736974657369e280996e6520c39c7965206f6c6172616b206865722067697269c59f2079617074c4b1c49fc4b16e64612062752079656e6920c59f69667265206765c3a765726c69206f6c75722e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c623ec39c5945262333393b4ec4b04e2059c39c4bc39c4d4cc39c4cc39c4b4c4552c4b03a266e6273703b3c2f623e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e4d6164646520352e266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e352d312920c39c79652c20456e7461e280996ec4b16e20c4b06e7465726e65742053697465736920c39c79656c696b20466f726d75262333393b6e64612079657220616c616e2062696c67696c6572696e20646fc49f7275206f6c6475c49f756e752076652062752062696c67696c6572696e20676572656b6c69206f6c6475c49f752028c59f6966726520756e75746d6120676962692920647572756d6c617264612062696c67696e696e20686174616cc4b12076657961206e6f6b73616e206f6c6d6173c4b16e64616e20646fc49f6163616b207a617261726c617264616e20646f6c6179c4b120736f72756d6c756c75c49f756e206b656e646973696e6520616974206f6c6475c49f756e752c2062752068616c6c6572646520c3bc79656c69c49f696e696e20736f6e612065726562696c656365c49f696e692c266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e352d322920456e7461e280996ec4b16e20c4b06e7465726e657420536974657369207461726166c4b16e64616e20766572696c656e207365727669736c6572696e2076652079617ac4b16cc4b16d6c6172c4b16e2074656c69662068616b6bc4b16ec4b16e20456e7461262333393b79612076652f7665796120456e7461262333393b7961206c6973616e7320766572656e20766579612069c3a76572696b207361c49f6c6179616e206b69c59f696c65726520616974206f6c6475c49f756e752c2066696b7269206dc3bc6c6b697965742068756b756b75206b617073616dc4b16e6461206b6f72756e6475c49f756e752c2069686c616c2065746d65736920647572756d756e64612068756b756b692076652063657a6169206f6c6172616b20736f72756d6c75206f6c616361c49fc4b16ec4b12c2062752079617ac4b16cc4b16d6c6172c4b1207961206461207365727669736c657269206869c3a762697220c59f656b696c646520697a696e73697a20c3a76fc49f616c74c4b170206461c49fc4b1746d6179616361c49fc4b16ec4b12c20796179c4b16e6c616d6179616361c49fc4b16ec4b12c2070617a61726c616d6179616361c49fc4b16ec4b12c266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e352d332920456e7461e280996ec4b16e20c4b06e7465726e657420536974657369e280996e64656b692068697a6d65746c657269206b756c6c616ec4b1726b656e20696c6572692073c3bc7264c3bcc49fc3bc20c59f616873692066696b69722c2064c3bcc59fc3bc6e63652076652069666164656c6572696e2c20c4b06e7465726e657420536974657369262333393b6e6520656b6c656469c49f6920646f7379616c6172c4b16e2076652069c3a76572696b6c6572696e20736f72756d6c756c75c49f756e756e206b656e646973696e6520616974206f6c6475c49f756e7520766520456e7461262333393b6ec4b16e2062752069c3a76572696b6c657264656e20646f6c6179c4b1206869c3a762697220c59f656b696c646520736f72756d6c7520747574756c616d6179616361c49fc4b16ec4b12c3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e352d342920c4b06e7465726e657420536974657369262333393b6e65207a61726172207665726563656b207665796120456e7461262333393b79c4b1206261c59f6b6120696e7465726e657420736974656c65726920696c6520757975c59f6d617a6cc4b16b20647572756d756e612067657469726563656b2068657268616e6769206269722079617ac4b16cc4b16d2076657961206d6174657279616c2062756c756e647572616d6179616361c49fc4b16ec4b12c207061796c61c59f616d6179616361c49fc4b16ec4b12c20266e6273703b62752073656265706c657264656e20646f6c6179c4b12068657268616e6769206269722063657a616920647572756d756e20646fc49f6d6173c4b12068616c696e64652074c3bc6d2068756b756b612076652063657a616920736f72756d6c756c756b6c6172c4b120c3bc7374c3bc6e6520616c64c4b1c49fc4b16ec4b12c3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e352d352920c39c7965e280996c6572696e2068697a6d65746c6572696e206b756c6c616ec4b16dc4b12073c4b1726173c4b16e6461206b6179626f6c6163616b2c2076652f7665796120656b73696b20616cc4b16e6163616b2c2079616e6cc4b1c59f20626972206164726573696e20766572696c6d69c59f206f6c6d6173c4b16e64616e20646f6c6179c4b12079616e6cc4b1c59f2061647265736520696c6574696c6563656b2062696c67692c206d6573616a20766520646f7379616c617264616e20456e7461262333393b6ec4b16e20736f72756d6c75206f6c6d6179616361c49fc4b16ec4b12c266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e352d362920c4b06e7465726e657420536974657369e280996e64652073756e756c616e2068697a6d65746c65726520456e7461207461726166c4b16e64616e2062656c69726c656e656e20c59f656b696c2064c4b1c59fc4b16e6461207665207965746b6973697a20c59f656b696c646520756c61c59f6d616d6179c4b12c2079617ac4b16cc4b16d20696c65207365727669736c6572696e20c3b67a656c6c696b6c6572696e69206869c3a762697220c59f656b696c6465206465c49f69c59f7469726d656d6579692c206465c49f69c59f746972696c6d69c59f206f6c6475c49f752062656c6c69206f6c616e6c6172c4b1206b756c6c616e6d616d6179c4b12076652073c3b67ac3bc206765c3a7656e206d616464656c6572652075796d6164c4b1c49fc4b120647572756d6c6172646120456e7461262333393b696e2075c49f7261796162696c656365c49f692074c3bc6d206d61646469207665206d616e657669207a617261726c6172c4b120c3b664656d6579692c266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e352d372920c39c796520766572696c6572696e696e20456e7461262333393b6ec4b16e2069686d616c692067c3b672c3bc6c6d6564656e207965746b6973697a206b69c59f696c65726365206f6b756e6d6173c4b16e64616e2028c3bc79656e696e2062696c67696c6572696e69206261c59f6b61206b69c59f696c657220696c65207061796c61c59f6d6173c4b12c207369746564656e20617972c4b16cc4b1726b656e20c3a7c4b16bc4b1c59f207961706d616d6173c4b12c2076652062656e7a65726920647572756d6c617264616e206b61796e616b6cc4b1206f6c6172616b2920646f6c6179c4b12067656c6562696c6563656b207a617261726c617264616e20c3b674c3bc72c3bc20456e7461262333393b6ec4b16e20736f72756d6c75206f6c6d6179616361c49fc4b16ec4b12c266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e352d3829205465686469742065646963692c2061686c616b2064c4b1c59fc4b12c20c4b1726bc3a7c4b12c20617972c4b16d63c4b12c2054c3bc726b6979652043756d687572697965746920596173616c6172c4b16e612c20766174616e6461c59fc4b1206f6c6475c49f75206469c49f657220c3bc6c6b656c6572696e20796173616c6172c4b16e6120766520756c75736c617261726173c4b120616e6c61c59f6d616c6172612061796bc4b172c4b1206d6573616a6c61722067c3b66e6465726d656d6579692c266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e352d392920c4b06e7465726e65742073697465736920c3bc7a6572696e646520656b6c656e6563656b2079617ac4b1c59f6d616c6172c4b16e2c206b6f6e75206261c59f6cc4b16b6c6172c4b16ec4b16e2c2072756d757a6c6172c4b16e2c2067656e656c2061686c616b2c2067c3b67267c3bc2076652068756b756b206b7572616c6c6172c4b16e6120757967756e206f6c6d6173c4b16ec4b12c266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e352d313029204469c49f657220c39c7965207665206b756c6c616ec4b163c4b16c6172c4b120746163697a207665207465686469742065746d656d6579692c266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e352d313129204469c49f657220c39c7965207665206b756c6c616ec4b163c4b16c6172c4b16e2068697a6d65746c657269206b756c6c616e6d6173c4b16ec4b12065746b696c65796563656b20c59f656b696c64652064617672616e6d616d6179c4b12c206469c49f6572206b756c6c616ec4b163c4b16c6172c4b16e2062696c67697361796172c4b16e64616b692062696c67696c6572652079612064612079617ac4b16cc4b16d61207a61726172207665726563656b2062696c676920766579612070726f6772616d6c61722067c3b66e6465726d656d6579692c266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e352d31322920456e74612068697a6d65746c6572696e69206b756c6c616e6172616b20656c6465206564696c656e2068657268616e676920626972206b6179c4b174207665796120656c6465206564696c6d69c59f2062696c67696c6572696e2074616d616d69796c65206b756c6c616ec4b163c4b16ec4b16e2072c4b17a6173c4b120646168696c696e6465206f6c6475c49f756e752c206b756c6c616ec4b163c4b12062696c67697361796172c4b16e6461207961726174616361c49fc4b1206172c4b17a616c61722c2062696c6769206b617962c4b1207665206469c49f6572206b6179c4b1706c6172c4b16e20736f72756d6c756c75c49f756e756e2074616d616d69796c65206b656e646973696e6520616974206f6c6475c49f756e752c20736572766973696e206b756c6c616ec4b16dc4b16e64616e20646f6c6179c4b12075c49f7261796162696c656365c49f69207a617261726c617264616e20646f6c6179c4b120456e7461262333393b64616e2074617a6d696e61742074616c65702065746d656d6579692c20456e7461262333393b64616e20697a696e20616c6d6164616e20456e7461207365727669736c6572696e69207469636172692079612064612072656b6c616d20616d6163c4b1796c61206b756c6c616e6d616d6179c4b12c20456e7461262333393b6ec4b16e2c2064696c656469c49f69207a616d616e20766579612073c3bc72656b6c69206f6c6172616b2074c3bc6d2073697374656d6920697a6c65796562696c656365c49f696e692c206b7572616c6c6172612061796bc4b172c4b12064617672616e64c4b1c49fc4b12074616b646972646520456e7461262333393b6ec4b16e20676572656b6c69206dc3bc646168616c656c657264652062756c756e6d612c20c3bc79657969207365727669732064c4b1c59fc4b16e6120c3a7c4b16b61726d6120766520c3bc79656c69c49f6520736f6e207665726d652068616b6bc4b16e61207361686970206f6c6475c49f756e752c20456e7461262333393b6ec4b16e2c206b656e64692073697374656d696e692074696361726920616d61c3a76c61206b756c6c616e6162696c656365c49f696e692c3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e352d313329204b616e756e6c6172612067c3b6726520706f7374616c616e6d6173c4b12f7061796c61c59fc4b16c6d6173c4b120796173616b206f6c616e2062696c67696c657269207061796c61c59f6d616d6179c4b1207665207a696e63697220706f7374612028636861696e206d61696c292c2079617ac4b16cc4b16d20766972c3bc73c3bc202876622e2920676962692067c3b66e646572696c6d65207965746b697369206f6c6d6179616e20706f7374616c6172c4b1206461c49fc4b1746d616d6179c4b12c3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e352d313429204261c59f6b616c6172c4b16e6120616974206f6c616e206b69c59f6973656c2062696c67696c657269206b6179c4b1742065746d656d6579692c206bc3b674c3bc7965206b756c6c616e6d616d6179c4b12c266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e352d31352920c39c796520224b756c6c616ec4b163c4b1204164c4b122796c6120796170616361c49fc4b1206865722074c3bc726cc3bc2069c59f6c656d64656e2062697a7a6174206b656e646973696e696e20736f72756d6c75206f6c6475c49f756e752c3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e352d31362920c39c79656c69c49f696e692074656b2074617261666cc4b1206f6c6172616b20697074616c20657474697273652062696c652c20627520697074616c2069c59f6c656d696e64656e20c3b66e63652c20c3bc79656c69c49f692073c4b1726173c4b16e646120676572c3a7656b6c65c59f7469726469c49f692074c3bc6d206963726161746c617264616e206269726562697220736f72756d6c75206f6c616361c49fc4b16ec4b12c266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e352d3137292054c3bc6d206275206d616464656c657269206461686120736f6e7261206869c3a76269722069746972617a61206d6168616c207665726d65796563656b20c59f656b696c6465206f6b756475c49f756e752c20266e6273703b6b6162756c207665207461616868c3bc742065746d69c59f7469722e266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c623e454e5441204d41c49e415a41262333393b594120564552c4b04c454e2048414b205645205945544bc4b04c45523a266e6273703b3c2f623e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e4d6164646520362e456e746120c4b06e7465726e657420536974657369e280996e696e2c2068657268616e676920626972207a616d616e64612c2073697374656d696e20c3a7616cc4b1c59f6d6173c4b16ec4b1206765c3a7696369206269722073c3bc72652061736bc4b1796120616c6162696c697220766579612074616d616d656e206475726475726162696c69722e2053697374656d696e206765c3a7696369206269722073c3bc72652061736bc4b1796120616cc4b16e6d6173c4b120766579612074616d616d656e20647572647572756c6d6173c4b16e64616e20646f6c6179c4b120456e7461262333393b6ec4b16e20c3bc79656c6572696e65207665796120c3bcc3a7c3bc6e63c3bc20c59f6168c4b1736c617261206b6172c59fc4b1206869c3a762697220736f72756d6c756c75c49f75206f6c6d61796163616b74c4b1722e266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e456e74612c20c4b06e7465726e6574205369746573692068697a6d65746c6572696e6465206d657964616e612067656c6563656b2074656b6e696b206172c4b17a616c6172206e6564656e69796c6520c39c7965e280996e696e2075c49f726179616361c49fc4b1207a6172617264616e20736f72756d6c75206465c49f696c6469722e20456e74612c207365727669736c6572696e696e20686572207a616d616e2076652068657220c59f61727420616c74c4b16e6461207a616d616ec4b16e64612c2067c3bc76656e6c69207665206861746173c4b17a206f6c6172616b2073756e756c616361c49fc4b16ec4b12c20736572766973206b756c6c616ec4b16dc4b16e64616e20656c6465206564696c656e20736f6e75c3a76c6172c4b16e20686572207a616d616e20646fc49f72752076652067c3bc76656e696c6972206f6c616361c49fc4b16ec4b12c20736572766973206b616c69746573696e696e206865726b6573696e2062656b6c656e74696c6572696e6520636576617020766572656365c49f696e69207461616868c3bc742065746d657a2e20456e74612c206b656e64692073697465736920c3bc7374c3bc6e64656e20796170c4b16c616e207665207a6172617220646fc49f75726162696c6563656b206865722074c3bc726cc3bc2068616265726c65c59f6d6579692c20796179c4b16ec4b12c2062696c676920616b746172c4b16dc4b16ec4b120697374656469c49f69207a616d616e206b65736d652068616b6bc4b16ec4b120766520676572656b656e206b6fc59f756c6c6172206f6c75c59f7475c49f752074616b646972646520c3bc7965206d6573616a6c6172c4b16ec4b12073696c6d652c20c3bc79657969207365727669736c657264656e206d656e65746d6520766520c3bc79656c69c49f696e6520736f6e207665726d652068616b6bc4b16ec4b12073616b6cc4b12074757461722e266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c623ec39c594520564552c4b04c4552c4b02c20452d2042c39c4c54454e2056452047c4b05a4cc4b04cc4b04b3a266e6273703b3c2f623e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e4d6164646520372e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e456e74612c20c4b06e7465726e65742053697465736920c3bc79656c6572696e652064616861206e6974656c696b6c692076652067c3bc76656e696c69722068697a6d6574207665726562696c6d656b20616d6163c4b1796c6120c3bc79656c696b2061c59f616d6173c4b16e646120766520c4b06e7465726e6574205369746573696e69206b756c6c616ec4b1726b656e206b756c6c616ec4b163c4b16c617264616e2c20c39c79656c657264656e2062617ac4b1206b69c59f6973656c2062696c67696c6572696e20286973696d2c207961c59f2c20696c676920616c616e6c6172c4b16ec4b17a2c20652d706f737461206164726573696e697a2076622e2920766572696c6d6573696e692074616c65702065746d656b74656469722e20456e74612073697374656d6c6572696e646520746f706c616e616e2062752062696c67696c65722c20c39c79656c6572696e20456e7461e2809964616e20766520c4b06e7465726e6574207369746573692068697a6d65746c6572696e64656e20656e206979692076652067c3bc6e63656c20c59f656b696c64652066617964616c616e6d6173c4b16ec4b1207361c49f6c616d616b2c2068616265722c206b616d70616e79612c2079656e6920c3bc72c3bc6e2f65c49f6974696d2069c3a76572696b6c6572692c2074616ec4b174c4b16d2c2072656b6c616d2076652062656e7a657269206475797572756c617264616e20266e6273703b6861626572646172206f6c6d616c6172c4b120616d6163c4b1796c612074696361726920656c656b74726f6e696b20696c6574696c6572696e2067c3b66e646572696c6d6573692c20c39c7965207461726166c4b16e64616e20697374656e6d6579656e20652d706f7374616c6172c4b16e2f62696c67696c6572696e2066696c7472656c656e6562696c6d6573692c207061796c61c59fc4b16d6c6172c4b16e2c2067c3b66e646572696c6572696e20c39c7965e280996e696e2062656c69726c656d69c59f206f6c6475c49f7520266e6273703b7465726369686c6572696e652067c3b672652079c3b66e6574696c6562696c6d65736920616d6163c4b1796c6120456e74612062c3bc6e796573696e6465206b756c6c616ec4b16c6d616b746164c4b1722e266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223ec39c7965e280996e696e20456e7461206d61c49f617a6120766520c4b06e7465726e65742053697465736920696c65207061796c61c59f6dc4b1c59f206f6c6475c49f75206b69c59f6973656c2062696c67696c657220627520616d61c3a72064c4b1c59fc4b16e6461206b756c6c616ec4b16c6d617a20766520332e20c59e6168c4b1736c617220696c65207061796c61c59fc4b16c6d617a2e266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223ec39c79652c206b69c59f6973656c2062696c67696c6572696e696e20456e7461207461726166c4b16e64616e206275206b6fc59f756c6c617220696c65206b756c6c616ec4b16c6d6173c4b16ec4b12076652073616b6c616e6d6173c4b16ec4b1206b6162756c20656465722e20c39c79652c20456e746120c4b06e7465726e65742053697465736920c3bc7a6572696e64656e207665726d69c59f206f6c6475c49f7520652d706f737461206164726573696e6520456e746120c3bc72c3bc6e207665207365727669736c65726920696c6520696c67696c69206b616d70616e79612c2062c3bc6c74656e2c2074616ec4b174c4b16d2c2072656b6c616d207665206475797572756c617264616e206861626572646172206f6c6d6173c4b120616d6163c4b1796c6120456e7461207461726166c4b16e64616e2074696361726920656c656b74726f6e696b20696c6574692067c3b66e646572696c6d6573696e692c20766520627520696c6574696c6572696e2062656c69726c656d69c59f206f6c6475c49f75207465726369686c65722062617ac4b16e646120796170c4b16c616361c49fc4b16ec4b1206b6162756c20656465722e20456e7461207461726166c4b16e64616e2067c3b66e646572696c656e2062752074696361726920656c656b74726f6e696b20696c6574696c65726920616c6d616b20697374656d69796f72207665796120616c6d6179c4b1206f6e61796c616dc4b1796f722069736520c39c79652c20266e6273703b67c3b66e646572696c656e2074696361726920656c656b74726f6e696b20696c65746964652079657220616c616e20e28098452d62c3bc6c74656e206c6973746573696e64656e20c3a7c4b16b6d61e2809920266e6273703b7365c3a7656e65c49f696e69206b756c6c616ec4b1722e266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e456e74612c20c3bc79656c696b20666f726d6c6172c4b16e646120c39c79656c657264656e2074616c65702065747469c49f69206b69c59f6973656c2062696c67696c6572692c20c3bcc3a7c3bc6e63c3bc20c59f6168c4b1736c61726c61206b6573696e6c696b6c65207061796c61c59f6d617a2c206661616c697965742064c4b1c59fc4b1206869c3a7626972206e6564656e6c652074696361726920616d61c3a76c61206b756c6c616e6d617a2e266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223ec39c7965e280996e696e206b69c59f6973656c2062696c67696c6572692c20616e63616b207265736d69206d616b616d6c61726361207573756cc3bc6e6520757967756e20c59f656b696c64652074616c6570206564696c6d6573692068616c696e64652076652079c3bc72c3bc726cc3bc6b74656b6920656d726564696369206d65767a7561742068c3bc6bc3bc6d6c6572692067657265c49f696e6365207265736d69206d616b616d6c6172612061c3a7c4b16b6c616d61207961706d616b207a6f72756e6461206f6c756e616e20647572756d6c61726461207265736d69206d616b616d6c6172612061c3a7c4b16b6c616e6162696c69722e20456e74612c20c3bc79656c6572696e696e2062696c67696c6572696e692061c59f61c49fc4b164612062656c697274696c656e206b6fc59f756c6c617264616e20626972696e696e2079612064612068657073696e696e20676572c3a7656b6c65c59f6d6573692068616c696e646520696c67696c69207265736d69206d657263696c657220696c65207061796c61c59f6d612068616b6bc4b16e612073616869707469723a20266e6273703b20266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e2d205265736d69206d616b616d6c617264616e20c3bc796579652079c3b66e656c696b207375c3a7206475797572757375207961206461207265736d6920736f7275c59f7475726d612074616c6562692067656c6d65736920647572756d756e64612c20266e6273703b20266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e2d20c39c79656e696e2073697374656d696e20c3a7616cc4b1c59f6d6173c4b16ec4b120656e67656c6c65796563656b20626972207361626f74616a2079612064612073616c64c4b172c4b12079617074c4b1c49fc4b16ec4b16e20746573706974206564696c6d65736920647572756d756e64612c266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e2d20c39c79656c69c49f692073c3b67a6c65c59f6d6564652062656c697274696c656e2073656265706c657264656e20646f6c6179c4b120697074616c206564696c6d69c59f2062697220c3bc79656e696e2079656e6964656e20c3bc7965206f6c6172616b2073c3b67a6c65c59f6d652069686c616c696e692074656b7261726c616d6173c4b120647572756d756e64612076652062756e6c61726c612073c4b16ec4b1726cc4b1206f6c6d6179616e2062656e7a657269206469c49f65722068616c6c657264653c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e456e74612c20c39c79656c6572696e20646f7379616c6172c4b16ec4b16e2073616b6c616e6d6173c4b12069c3a7696e20757967756e2067c3b672656365c49f692062c3bc79c3bc6b6cc3bc6b7465206b6f74612074616873697369207961706162696c69722e20456e74612c20c4b0687469796163612067c3b67265206b6f74616c6172c4b120617274c4b1726d6120766520617a616c746d61207965746b6973696e692073616b6cc4b12074757461722e20456e746120c3bc79656c6572696e207365727669736c657264656e2079617261726c616e6d616c6172c4b12073c4b1726173c4b16e6461206f7274616d64612062756c756e6475726163616b6c6172c4b120646f7379616c6172c4b16e2c206d6573616a6c6172c4b16e2c2062696c67696c6572696e2062617ac4b16c6172c4b16ec4b120766579612074616d616dc4b16ec4b120757967756e2067c3b672656365c49f692070657269796f646c61726c6120796564656b6c656d652076652073696c6d65207965746b6973696e652073616869707469722e20596564656b6c656d652076652073696c6d652069c59f6c656d6c6572696e64656e20646f6c6179c4b120456e746120736f72756d6c7520747574756c6d61796163616b74c4b1722e20456e7461206b656e646920c3bc7265747469c49f692076652f766579612064c4b1c59f617264616e20736174c4b16e20616c64c4b1c49fc4b12062696c67692c2062656c67652c2079617ac4b16cc4b16d2c207461736172c4b16d2c2067726166696b2076622e20657365726c6572696e206dc3bc6c6b69796574207665206dc3bc6c6b6979657474656e20646fc49f616e2074656c69662068616b6c6172c4b16e612073616869707469722e20456e746120c3bc79656c6572696e696e20c3bc7265747469c49f6920766520796179c4b16e6c616e6d616b20c3bc7a657265206b656e64692069726164657369796c652073697374656d652079c3bc6b6c656469c49f692028c3b6726e65c49f696e20c4b06e7465726e657420536974657369262333393b6e6520656b6c656469c49f69206d6573616a2c20c59f6969722c2068616265722c20646f7379612c20766964656f2077656220736179666173c4b12067696269292062696c67692c2062656c67652c2079617ac4b16cc4b16d2c207461736172c4b16d2c2067726166696b2c20726573696d2076622e2074c3bc6d20657365726c6572692074616ec4b174c4b16d2c206475797572756d20616d6163c4b120696c6520796179c4b16e6c616d612076652f7665796120736974652069c3a765726973696e646520456e7461207461726166c4b16e64616e20757967756e2067c3b672c3bc6c6563656b206261c59f6b612062697220616472657365207461c59fc4b16d612068616b6c6172c4b16e612073616869707469722e20596179c4b16e6c616e616e2062752062696c67696c6572696e206261c59f6b61206b756c6c616ec4b163c4b16c6172207461726166c4b16e64616e206b6f7079616c616e6d6173c4b12076652f7665796120796179c4b16e6c616e6d6173c4b120696874696d616c20646168696c696e64656469722e2042752068616c6c6572646520c39c79652c20456e7461262333393b64656e2074656c69662076652062656e7a657269206869c3a762697220c3bc637265742074616c65702065746d65796563656b7469722e20c39c79656c6572206261c59f6b616c6172c4b16e61206169742066696b72692076652073c4b16e6169206dc3bc6c6b697965742068616b6c6172c4b16ec4b16e206b6f72756e6d6173c4b12069c3a7696e20676572656b6c6920c3b67a656e692067c3b6737465726d656b6c652079c3bc6bc3bc6d6cc3bc64c3bc722e20c39c79656c6572207361646563652074656c69662068616b6c6172c4b1206b656e646973696e6520616974206f6c616e20c4b0c3a7657269c49f692073697374656d652079c3bc6b6c65796562696c69722e2045c49f657220c39c79652c2066696b72692076652073c4b16e6169206dc3bc6c6b697965742068616b6c6172c4b1206261c59f6b6173c4b16e6120616974206f6c616e2079617ac4b12c20666f746fc49f7261662c20726573696d2c206c6f676f2c20766964656f20766520736169722069c3a7657269c49f692c2073c3b67a206b6f6e75737520657365722076652068616b2073616869706c6572696e696e20697a6e69206f6c6d616b73c4b17ac4b16e2073697374656d652079c3bc6b6c657273652c20456e74612069686c616c65206b6f6e75206f6c616e20c4b0c3a7657269c49f692064657268616c20796179c4b16e64616e206b616c64c4b1726d616b20766520676572656b7469c49f696e64652062752069686c616c6920676572c3a7656b6c65c59f746972656e20c3bc79656c6572696e20c3bc79656c69c49f696e6520736f6e207665726d656b2068616b6c6172c4b16e612073616869707469722e20c39cc3a7c3bc6e63c3bc20c59f6168c4b1736c6172c4b16e2066696b72692076652073c4b16e6169206dc3bc6c6b697965742068616b6c6172c4b16ec4b12069686c616c206564656e20c3bc79656c65722c2062752069686c616c6c657264656e2076652062752069686c616c6c657264656e20646fc49f616e206865722074c3bc726cc3bc207a6172617264616e20c3bcc3a7c3bc6e63c3bc20c59f6168c4b1736c617220696c65206b616d75206b7572756d207665206b7572756c75c59f6c6172c4b16e61206b6172c59fc4b12068756b756b692076652063657a6169206f6c6172616b2062697a7a617420736f72756d6c756475726c61722e20456e74612c20c3bc79656e696e20696c65747469c49f69206b69c59f6973656c2062696c67696c6572696e2069c3a76572696b207361c49f6c6179c4b163c4b16c617220766520776562207365727669736c657269206b756c6c616ec4b163c4b16c6172c4b16e6120c3bc79656e696e20c3b67a6cc3bc6b2068616b6c6172c4b16ec4b120746163697a2065746d65796563656b20c59f656b696c646520676572656b6c6920696c657469c59f696d2c2074616ec4b174c4b16d2c206d616c207465736c696d692c2072656b6c616d2076622e20616d61c3a76c61722069c3a7696e206b756c6c616e64c4b172c4b16c6d6173c4b1206b6f6e7573756e64612074616d207965746b696c696469722e266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e456e74612c206261c59f6b6120696e7465726e657420736974656c6572696e65206c696e6b207665726562696c69722e204c696e6b20766572696c656e20696e7465726e657420736974656c6572696e646520796179c4b16e6c616e616e2069c3a76572696b6c6572696e20646fc49f72756c75c49f7520456e7461207461726166c4b16e64616e20676172616e7469206564696c6d656d656b7465207665204c696e6b20766572696c6d6573692c206c696e6b20766572696c656e2077656220736974656c6572696e696e2069c3a7657269c49f696e696e20456e7461207461726166c4b16e64616e206f6e61796c616e64c4b1c49fc4b120616e6c616dc4b16e612067656c6d657a2e20c39c79652c206c696e6b20766572696c656e20696e7465726e657420736974656c6572696e696e2069c3a76572696b6c6572696e64656e20456e7461262333393b696e20736f72756d6c75206f6c6d6164c4b1c49fc4b16ec4b1206b6162756c20656465722e20427520736974656c6572696e206b756c6c616ec4b16dc4b120766579612069c3a76572696b6c657269206e6564656e69796c65207961206461207361c49f6c616e616e2068697a6d65746c6572206e6564656e69796c6520646fc49f6162696c6563656b206865722074c3bc726cc3bc207a6172617264616e20c39c7965262333393b6e696e206b656e6469736920736f72756d6c756475722e20456e74612c20696c657269646520646fc49f6163616b2074656b6e696b207a6172757265746c6572207665206d65767a75617461207579756d20616d6163c4b1796c6120c3bc79656c657265206861626572207665726d656b207a6f72756e6461206f6c6d6164616e2069c59f62752073c3b67a6c65c59f6d656e696e20757967756c616d6173c4b16e6461206465c49f69c59f696b6c696b6c6572207961706162696c656365c49f692067696269206d6576637574206d616464656c6572696e69206465c49f69c59f7469726562696c69722c20697074616c2065646562696c697220766579612079656e69206d616464656c657220696c6176652065646562696c69722e20c39c79656c65722073c3b67a6c65c59f6d65796920686572207a616d616e20687474703a2f2f656e74612e636f6d2f73617966612f7579656c696b2d736f7a6c65736d657369206164726573696e64652062756c6162696c6972207665206f6b75796162696c69726c65722e205365727669736c657220696c6520696c67696c69206465c49f69c59f696b6c696b6c657220736974652069c3a765726973696e6465206475797572756c6163616b74c4b17220766520676572656b7469c49f696e646520c3bc79656e696e2068697a6d65746c657264656e2079617261726c616e6162696c6d6573692069c3a7696e2073c3b67a6c65c59f6d65206465c49f69c59f696b6c696b6c6572696e6920696c67696c69206275746f6e752074c4b16b6c616d616b20737572657469796c65206f6e61796c616d6173c4b120697374656e6563656b7469722e2042752073656265706c652c206b756c6c616ec4b163c4b16c6172612c20c3bc79656c65726520736974657965206865722067697269c59f746520796173616c2075796172c4b120736179666173c4b16ec4b1207a6979617265742065746d656c6572692074617673697965206564696c6d656b74656469722e20456e746120c3bc79656c696b20676572656b7469726d6579656e207365727669736c657269207a616d616e2069c3a765726973696e646520c3bc79656c696b20676572656b746972656e2062697220647572756d612064c3b66ec3bcc59f74c3bc72c3bc6c6562696c69722e20456e746120696c617665207365727669736c65722061c3a76162696c69722c2062617ac4b1207365727669736c6572696e69206bc4b1736d656e20766579612074616d616d656e206465c49f69c59f7469726562696c6972207665796120c3bc637265746c692068616c652064c3b66ec3bcc59f74c3bc726562696c69722e266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223ec39c7965e280996e696e206b656e64697369207461726166c4b16e64616e20736f6e6c616e64c4b172c4b16c616e20c3bc79656c696b206865736162c4b16e6120616974206865722074c3bc726cc3bc206b617964c4b12073696c69702073696c6d656d65206b61726172c4b120456e7461e280997961206169747469722e20c39c79652c2073696c696e656e206b6179c4b1746c61726c612c2073616b6c616e6d6179616e2c2079656465c49f6920616cc4b16e6d6179616e2062696c67692076652062656c67656c65726c6520696c67696c69206f6c6172616b20796173616c2079612064612073c3b67a6c65c59f6d6573656c2068657268616e67692062697220676572656bc3a76520696c6572692073c3bc726572656b20456e7461e2809964616e2068657268616e6769206269722068616b20766579612074617a6d696e61742074616c6562696e64652062756c756e6d6179616361c49fc4b16ec4b12c20456e7461e28099796120626972206b757375722061746665746d6579656365c49f696e692c2063657a6120736f72756d6c756c75c49f752079c3bc6b6c65746d6579656365c49f696e69206b6162756c2c20626579616e207665207461616868c3bc7420656465722e266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c623e456e7461204b415949544c4152494e494e204745c38745524cc4b04cc4b0c49ec4b03a3c2f623e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e4d6164646520382e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223ec39c79652069c59f62752073c3b67a6c65c59f6d6564656e20646fc49f6162696c6563656b20696874696c61666c6172646120456e7461262333393b696e20646566746572206b6179c4b1746c6172c4b1796c612c206d696b726f66696c6d2c206d696b726f6669c59f2076652062696c67697361796172206b6179c4b1746c6172c4b16ec4b16e203631303020536179c4b16cc4b120484d4b203139332e204d6164646520616e6c616dc4b16e6461206d7574656265722c206261c49f6c6179c4b163c4b12c206b6573696e207665206dc3bc6e686173c4b1722064656c696c207465c59f6b696c206564656365c49f696e69207665206275206d616464656e696e2064656c696c2073c3b67a6c65c59f6d657369206e6974656c69c49f696e6465206f6c6475c49f756e7520626579616e207665207461616868c3bc7420656465722e266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c623e3c62723e3c2f623e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c623e4dc39c4342c4b0522053454245504c45523a3c2f623e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e4d6164646520392e204dc3bc6362697220736562657020746572696d693b20796173616c61726361206b6162756c206564696c656e2068616c6c65726520696c617665206f6c6172616b2c20646fc49f616c20616665742c20677265762c20696c657469c59f696d20736f72756e6c6172c4b12c20616c74796170c4b120766520696e7465726e6574206172c4b17a616c6172c4b12c2073697374656d6520696c69c59f6b696e206979696c65c59f7469726d6520766579612079656e696c65c59f7469726d6520c3a7616cc4b1c59f6d616c6172c4b12c2062752073656265706c65206d657964616e612067656c6562696c6563656b206172c4b17a616c61722c20656c656b7472696b206b6573696e746973692c206bc3b674c3bc2068617661206b6fc59f756c6c6172c4b12064612064c3a268696c20616e63616b2062756e6c61726c612073c4b16ec4b1726cc4b1206f6c6d616d616b206b617964c4b1796c612c20456e7461e280996ec4b16e206b6f6e74726f6cc3bc2064c4b1c59fc4b16e64612c20676572656b6c6920c3b67a656e692067c3b6737465726d6573696e65207261c49f6d656e20c3b66e6c6579656d656469c49f69206f6c61796c6172206f6c6172616b20796f72756d6c616e6163616b74c4b1722e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e456e74612c2068756b756b656e206dc3bc6362697220736562657020736179c4b16c616e2074c3bc6d2068616c6c657264652c2069c59f62752073c3b67a6c65c59f6d6564656b69206564696d6c6572696e692069666120696c652079c3bc6bc3bc6d6cc3bc206f6c6d61796163616b3b206564696d6c6572696e2074616d616d656e2076657961206bc4b1736d656e2c206765c3a7207665796120656b73696b20696661206564696c6469c49f6920696c6572692073c3bc72c3bc6c6572656b2068657268616e676920626972206269c3a7696d2076652073657669796520646520736f72756d6c7520747574756c6d61796163616b74c4b1722e20c39c79652062752076622e206869c3a762697220647572756d7520676572656bc3a7652067c3b6737465726572656b20456e7461e2809964616e2068657268616e676920626972206e616d20616c74c4b16e64612074617a6d696e61742074616c65702065746d6579656365c49f696e69206b6162756c207665207461616868c3bc7420656465722e266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c623e555947554c414e4143414b2048c39c4bc39c4d4c45523a266e6273703b3c2f623e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e4d616464652031302e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e42752073c3b67a6c65c59f6d65796c6520696c67696c69206f6c6172616b20c3a7c4b16b6162696c6563656b20696874696c61666c6172646120c3b66e63656c696b6c652069c59f62752073c3b67a6c65c59f6d6564656b692068c3bc6bc3bc6d6c65722c2068c3bc6bc3bc6d2062756c756e6d6179616e2068616c6c65726465206973652054c3bc726b204b616e756e6c6172c4b1202854424b2c2054544b2c20484d4b2c20544d4b207665203536353120536179c4b16cc4b12059617361207665736169722920757967756c616e6163616b74c4b1722e266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c623e5445424cc4b04741543a3c2f623e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e4d616464652031312e20266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223ec39c79656e696e2c20456e7461e2809979612062696c6469726469c49f6920656c656b74726f6e696b20706f737461206164726573692c2069c59f62752073c3b67a6c65c59f6d6520696c6520696c67696c69206f6c6172616b20796170c4b16c6163616b206865722074c3bc726cc3bc2062696c646972696d2069c3a7696e20796173616c20706f73746120616472657369206f6c6172616b206b6162756c206564696c69722e20c39c79652c206d657663757420656c656b74726f6e696b20706f7374612061647265736c6572696e64656b69206465c49f69c59f696b6c696b6c6572692c2079617ac4b16cc4b1206f6c6172616b20456e7461e28099796120332028c3bcc3a7292067c3bc6e2069c3a7696e64652062696c6469726d6564696bc3a7652c2065736b6920656c656b74726f6e696b20706f7374616c61726120796170c4b16c6163616b2062696c646972696d6c6572696e206765c3a765726c69206f6c616361c49fc4b16ec4b12076652062696c646972696d6c6572696e206b656e64696c6572696e6520796170c4b16c6dc4b1c59f20736179c4b16c616361c49fc4b16ec4b1206b6162756c20656465722e266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c623e59c39c52c39c524cc39c4b3c2f623e3a3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e4d616464652031322e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e4b756c6c616ec4b163c4b1204b6179c4b17420466f726d75262333393b6e7520646f6c647572757020666f726d756e20616c74c4b16e64612062756c756e616e20224b6162756c20456469796f72756d22206275746f6e756e752074c4b16b6c6164c4b1c49fc4b16e64612062752073c3b67a6c65c59f6d652074617261666c61722061726173c4b16e64612073c3bc726573697a206f6c6172616b2079c3bc72c3bc726cc3bcc49f652067697265722e20c39c79652c2069c59f62752073c3b67a6c65c59f6d6564652079657220616c616e206d616464656c6572696e2074c3bc6dc3bc6ec3bc206f6b756475c49f756e752c20616e6c6164c4b1c49fc4b16ec4b12c206b6162756c2065747469c49f696e693b206b656e64697369796c6520696c67696c69207665726469c49f692062696c67696c6572696e20646fc49f72756c75c49f756e75206f6e61796c6164c4b1c49fc4b16ec4b1206b6162756c2c20626579616e207665207461616868c3bc7420656465722e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c623e464553c4b0483a266e6273703b3c2f623e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e4d616464652031332e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e54617261666c61722064696c656469c49f69207a616d616e2069c59f62752073c3b67a6c65c59f6d65796920736f6e612065726469726562696c69722e266e6273703b3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e3c62723e3c2f7370616e3e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c7370616e207374796c653d22666f6e742d73697a653a2031332e3333333370783b223e436f7079726967687420c2a920323031372050726573746967652047524f55502e20c4b0c59f62752073c3b67a6c65c59f6d656e696e2074656c69662068616b6c6172c4b12050726573746967652067726f7570262333393b6120266e6273703b4169747469722e3c2f7370616e3e3c2f703e3c2f6469763e20);
INSERT INTO `page` (`id`, `title`, `title_seo`, `content`) VALUES
(3, 'HAKKIMIZDA', 'hakkimizda', 0x59415a4953492048415a49524c414e49594f52);
INSERT INTO `page` (`id`, `title`, `title_seo`, `content`) VALUES
(4, 'MAĞAZA İLAN SÖZLEŞMESİ', 'magaza-ilan-sozlesmesi', 0x3c7020636c6173733d227765737465726e22207374796c653d22746578742d616c69676e3a2063656e7465723b206d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a2031327074223e3c623e3c62723e3c2f623e3c2f666f6e743e3c2f666f6e743e3c2f703e3c7020636c6173733d227765737465726e22207374796c653d22746578742d616c69676e3a2063656e7465723b206d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e0d0a3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a2031327074223e3c623e536174c4b163c4b10d0ac4b06c616e20766520c4b0c59f6269726c69c49f692053c3b67a6c65c59f6d6573c4b03c62723e3c62723e3c2f623e3c2f666f6e743e3c2f666f6e743e3c2f703e0d0a3c7020636c6173733d227765737465726e22207374796c653d22746578742d616c69676e3a2063656e7465723b206d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20313030253b223e3c62207374796c653d22666f6e742d73697a653a20313270743b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b20636f6c6f723a207267622836312c2036312c203632293b223e5341544943490d0ac4b0c59e204f5254414b4c49c49e4920766520c4b04c414e2053c3965a4c45c59e4d4553c4b03c2f623e3c62723e3c2f703e0d0a3c7020636c6173733d227765737465726e223e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e312e0d0a54415241464c4152266e6273703b3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e312e312e0d0ac4b0c59f627520736174c4b163c4b12069c59f206f7274616b6cc4b1c49fc4b120766520696c616e2073c3b67a6c65c59f6d65736920282253c3b67a6c65c59f6d6522290d0a6d65726b657a69203c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c666f6e7420636f6c6f723d2223333333333333223e3c666f6e7420666163653d22526f626f746f2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a2031307074223e5061c59f610d0a4c696d616ec4b120436164646573692054616874616cc4b120426f7374616e20536f6b616b2056696c6c61205072657374696765204e6f3a2032204b757a67756e63756b0d0ac39c736bc3bc646172202d20c4b05354414e42554c3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e0d0a6164726573696e64652062756c756e616e202e456e7461204d41c49e415a4120696c65206d65726b657a690d0a2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e6164726573696e64652062756c756e616e0d0a282e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e22536174c4b163c4b122292061726173c4b16e64610d0a616b646564696c6d69c59f7469722e266e6273703b3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e312e322e0d0a456e7461204d61c49f617a6120766520536174c4b163c4b12069c59f62752053c3b67a6c65c59f6d65e280996465206dc3bc6e6665726964656e20225461726166220d0a7665206dc3bcc59f746572656b656e202254617261666c617222206f6c6172616b20616ec4b16c6163616b6c617264c4b1722e266e6273703b3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e322e0d0a53c3965a4c45c59e4d45e280994ec4b04e20414d414349205645204b415053414d49266e6273703b3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e322e312e0d0a456e7461204d61c49f7a617a61202c207777772e656e74616d6167617a612e636f6d2020616c616e2061646cc4b120c3a7657672696d69c3a76920656c656b74726f6e696b0d0a7469636172657420706c6174666f726d756e752c206d6f62696c20757967756c616d616c6172c4b16ec4b1207665206d6f62696c207765627369746573696e690d0a69c59f6c65746d656b7465206f6c7570207465646172696bc3a7696c65722c2061726163c4b16c61722c20736572766973207361c49f6c6179c4b163c4b16c61722c0d0ac3bc7265746963696c65722c2074c3bc6b65746963696c65722c20616d6163c4b120746963617269206f6c616e2076657961206f6c6d6179616e206b7572756d6c61720d0a61726173c4b16e646120696c657469c59f696d692076652069c59f2073c3bc7265c3a76c6572696e692068c4b17a6c616e64c4b172616e2c20766572696d6c696c69c49f690d0a617274c4b172616e2c2066696e616e73616c206b61796e616b6c617264616e207461736172727566206564696c6d6573696e69207361c49f6c6179616e2073616e616c0d0a6269722070617a6172796572696e646520616cc4b1c59f76657269c59f207961706d6120616d6163c4b1796c612074617261666c6172c4b1206269722061726179610d0a67657469726d656b74656469722e20454e5441204d41c49e415a412c20576562736974657369e280996e64652079657220616c616e2068657268616e6769206269720d0ac3bc72c3bc6e20766579612068697a6d6574696e20736174c4b163c4b173c4b1206b6f6e756d756e6461206465c49f696c646972207665203635363320736179c4b16cc4b10d0a456c656b74726f6e696b2054696361726574696e2044c3bc7a656e6c656e6d6573692048616b6bc4b16e6461204b616e756e2075796172c4b16e63612061726163c4b10d0a68697a6d6574207361c49f6c6179c4b163c4b164c4b1722e266e6273703b3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e322e322e0d0ac4b0c59f62752053c3b67a6c65c59f6d652075796172c4b16e636120536174c4b163c4b12c20456e7461204d61c49f617a61207461726166c4b16e64616e0d0a79c3b66e6574696c6d656b7465206f6c616e207777772e20656e74616d6167617a612e636f6d20616c616e2061646cc4b120656c656b74726f6e696b20746963617265740d0a706c6174666f726d756e6120c3bc7965206f6c6d616b20766520627520706c6174666f726d6461206b7572616361c49fc4b12053616e616c204d61c49f617a61e2809964616e0d0a736174c4b1c59f207961706d616b2c20456e74612069736520536174c4b163c4b1e280996ec4b16e206b656e646973696e6520c3b6646579656365c49f690d0a6b6f6d6973796f6e206b6172c59fc4b16cc4b1c49fc4b16e646120736168696269206f6c6475c49f7520656c656b74726f6e696b20746963617265740d0a706c6174666f726d752068697a6d65746c6572696e64656e20536174c4b163c4b1e2809979c4b12066617964616c616e64c4b1726d616b0d0a697374656d656b74656469722e266e6273703b3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e322e332e0d0ac4b0c59f62752053c3b67a6c65c59f6d65e280996e696e20616d6163c4b16ec4b12c2057656273697465736920c3bc7a6572696e646520456e7461204d61c49f617a610d0a796120646120456e7461204d61c49f617a61262333393b6ec4b16e2062656c69726c656469c49f692069c59f206f727461c49fc4b1207461726166c4b16e64616e2073756e756c616e0d0a48697a6d65746c6572e2809964656e2c20536174c4b163c4b16c6172e28099c4b16e2079617261726c616e6d6173c4b16e6120696c69c59f6b696e20c59f6172746c6172c4b16e0d0a62656c69726c656e6d65736920766520627520646fc49f72756c747564612054617261666c6172e28099c4b16e2068616b2076650d0a79c3bc6bc3bc6d6cc3bc6cc3bc6b6c6572696e696e2074657370697469206f6c75c59f7475726d616b746164c4b1722e266e6273703b3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e322e342e0d0ac59ec3bc7068657965206d6168616c207665726d656d656b206164c4b16e612c2069c59f62752053c3b67a6c65c59f6d652c2079616c6ec4b17a63612054617261666c61720d0a61726173c4b16e6461206f6c75702c20456e7461204d61c49f617a61207461726166c4b16e64616e20536174c4b163c4b1e2809979612073756e756c616e0d0a48697a6d65746c6572e28099652079c3b66e656c696b20c59f656b696c20766520c59f6172746c6172c4b1206b617073616d616b746164c4b1722e20536174c4b163c4b16c61720d0a696c6520416cc4b163c4b16c61722061726173c4b16e64616b6920696c69c59f6b692069c59f62752053c3b67a6c65c59f6d65e280996e696e206b617073616dc4b16e610d0a6769726d656d656b74656469723b20456e7461204d61c49f617a612069c59f627520746963617269206661616c697965747465207361646563652c20536174c4b163c4b1e2809979610d0a53616e616c204d61c49f617a612061c3a76d612076652062752053616e616c204d61c49f617a61e280996ec4b16e2062756c756e6475c49f7520616c616e646120696c616e0d0a796179c4b16e6c616d612068616b6bc4b1207665726d656b74656469722e20536174c4b163c4b12c2053616e616c204d61c49f617a61e2809964616e0d0a676572c3a7656b6c65c59f746972656365c49f6920736174c4b1c59f2069c59f6c656d6c6572696e64656e2c20416cc4b163c4b16c6172e2809961206b6172c59fc4b10d0a3635303220736179c4b16cc4b12054c3bc6b65746963696e696e204b6f72756e6d6173c4b12048616b6bc4b16e6461204b616e756e206261c59f7461206f6c6d616b0d0ac3bc7a6572652073616972206d65767a75617420c3a76572c3a765766573696e64652062697a7a617420736f72756d6c75206f6c6163616b74c4b1722e266e6273703b3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e332e0d0a54414e494d4c41523c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e416cc4b163c4b13a3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a456e74610d0a4d61c49f617a613c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e0d0a696c652079617074c4b1c49fc4b120c39c79656c696b2053c3b67a6c65c59f6d657369206b617073616dc4b16e646120576562736974657369e280996e6520c3bc79650d0a6f6c616e20766520536174c4b163c4b1207461726166c4b16e64616e2057656273697465736920c3bc7a6572696e646520766572696c656e20696c616e6c61726c610d0a736174c4b1c59f612061727a206564696c656e20c3bc72c3bc6e2076652f766579612068697a6d65746c65726920736174c4b16e20616c616e20c3bc796579690d0a696661646520656465722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e48697a6d65743a3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e416cc4b163c4b10d0a766520536174c4b163c4b16c6172e28099c4b16e2069c59f62752053c3b67a6c65c59f6d652069c3a765726973696e64652074616ec4b16d6cc4b1206f6c616e2069c59f0d0a76652069c59f6c656d6c6572696e6920676572c3a7656b6c65c59f7469726d656c65726920766520c3bc72c3bc6e2f68697a6d65746c6572696e690d0a796179c4b16e6c616d616c6172c4b120616d6163c4b1796c6120454e5441204d41c49e415a41207461726166c4b16e64616e20c3bc637265740d0a6b6172c59fc4b16cc4b1c49fc4b16e6461207665796120c3bc6372657473697a206f6c6172616b20576562736974657369e280996e64652073756e756c616e20696c616e2c0d0a796179c4b16e6c616d612076652062656e7a65726920757967756c616d616c6172c4b12069666164650d0a656465722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e4b756c6c616ec4b163c4b13a3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e576562736974657369e280996e650d0a657269c59f696d64652062756c756e616e2074c3bc6d20676572c3a7656b2076652074c3bc7a656c206b69c59f696c65726920696661646520656465722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e53616e616c0d0a4d61c49f617a613a3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a456e74610d0a4d61c49f617a61262333393b6ec4b16e203c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e5765627369746573690d0ac3bc7a6572696e646520456e7461205765627369746573692070726f736564c3bc72207665206b7572616c6c6172c4b16e6120757967756e206f6c6172616b0d0a536174c4b163c4b1e280996c617261207461687369732065746d69c59f206f6c6475c49f7520766520536174c4b163c4b16c6172e28099c4b16e206269722079612064610d0a62697264656e2066617a6c6120c3bc72c3bc6e2076652f766579612068697a6d6574696e20736174c4b1c59fc4b16e612079c3b66e656c696b2069c3a76572696b2076650d0a67c3b67273656c6c657264656e206f6c75c59f616e20696c616e6c6172c4b16ec4b120796179c4b16e6c61796162696c6d6520696d6bc3a26ec4b16e612073616869700d0a6f6c64756b6c6172c4b12073616e616c20616c616ec4b120696661646520656465722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e536174c4b163c4b13a3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e454e54410d0a4d41c49e415a4120696c652079617074c4b1c49fc4b12069c59f62752053c3b67a6c65c59f6d65206b617073616dc4b16e646120576562736974657369e280996e650d0ac3bc7965206f6c616e2076652057656273697465736920c3bc7a6572696e6465206f6c75c59f7475726475c49f7520686573617020c3bc7a6572696e64656e0d0a796179c4b16e6c6164c4b1c49fc4b120696c616e6c61722061726163c4b16cc4b1c49fc4b1796c6120c3a765c59f69746c6920c3bc72c3bc6e2076652f766579610d0a68697a6d65746c65726920736174c4b1c59f612061727a206564656e2074c3bc7a656c2f676572c3a7656b206b69c59f6920c3bc796579692069666164650d0a656465722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e536174c4b163c4b10d0a4f666973693a3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e536174c4b163c4b1e280996ec4b16e2c0d0a456e7461204d61c49f617a6120207461726166c4b16e64616e20576562736974657369e280996e64652073756e756c616e20757967756c616d616c617264616e2076650d0a48697a6d65746c6572e2809964656e2079617261726c616e6162696c6d6573692069c3a7696e20676572656b6c692069c59f6c656d6c6572690d0a676572c3a7656b6c65c59f7469726562696c6469c49f692c206b656e646973696e64656e2074616c6570206564696c656e206669726d612f6b69c59f6973656c0d0a62696c67696c6572696e69206769726469c49f692c20736174c4b1c59f2069c59f6c656d2064657461796c6172c4b16ec4b12074616b69702065646562696c6469c49f692c0d0a73616465636520536174c4b163c4b1207461726166c4b16e64616e2062656c69726c656e656e206b756c6c616ec4b163c4b1206164c4b120766520c59f6966726520696c650d0a657269c59f6562696c6469c49f69206b656e646973696e6520c3b67a656c2073616e616c20736179666179c4b12069666164650d0a656465722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e5765627369746573693a3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e4dc3bc6c6b69796574690d0a456e7461204d61c49f617a61262333393b796120616974206f6c616e20766520456e7461204d61c49f617a61262333393b6ec4b16e2069c59f62752053c3b67a6c65c59f6d6520696c650d0a62656c69726c656e656e2048697a6d65746c6572e280996920c3bc7a6572696e64652073756e6d616b7461206f6c6475c49f750d0a7777772e656e74616d6167617a612e636f6d20616c616e206164c4b16e6120736168697020696e7465726e6574207369746573696e692c206d6f62696c0d0a757967756c616d616c6172c4b16ec4b1207665206d6f62696c2073697465796920696661646520656465722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e342e0d0a534154494349e280994e494e2048414b2056452059c39c4bc39c4d4cc39c4cc39c4b4c4552c4b03c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e342e312e0d0a536174c4b163c4b12c20e2809c736174c4b163c4b1e2809d2073c4b1666174c4b16ec4b1206b617a616e6162696c6d656b2069c3a7696e2c20c3b66e63656c696b6c650d0a454b2d31e2809964652062756c756e616e20e2809c53616e616c204d61c49f617a612041c3a7c4b16cc4b1c59fc4b120c4b0c3a7696e20476572656b6c692042656c67650d0a4c697374657369e2809d6e64652079657220616c616e2062656c67656c6572692069c59f62752053c3b67a6c65c59f6d65e280996e696e20656c656b74726f6e696b0d0a6f7274616d6461206f6e61796c616e6d6173c4b120766520536174c4b163c4b1204f66697369e280996e652079c3bc6b6c656e6d6573692073c4b1726173c4b16e64610d0a74616d20766520656b73696b73697a206f6c6172616b2074656d696e2065646563656b7469722e20536174c4b163c4b1207461726166c4b16e64616e2069c59f62750d0a62656c67656c657220656b73696b73697a206f6c6172616b2073756e756c6d616b6c61206269726c696b74652c20456e7461204d61c49f617a61262333393b6ec4b16e0d0a536174c4b163c4b1e280996ec4b16e206261c59f7675727573756e752073656265702067c3b6737465726d656b73697a696e207265646465746d652076652f766579610d0a656b2062656c67652074616c65702065746d652068616b6bc4b12073616b6cc4b164c4b1722e204261c59f767572757375206b6162756c206564696c656e0d0a536174c4b163c4b12c20576562736974657369e280996e64652062756c756e616e20c3bc79656c696b20666f726d756e752c20656b73696b73697a2076650d0a676572c3a765c49f6520757967756e20c59f656b696c646520646f6c6475726163616b74c4b1722e204261c59f767572752073c4b1726173c4b16e646120536174c4b163c4b10d0a7461726166c4b16e64616e20676572c3a765c49f6520757967756e206f6c6d6179616e2079616e6cc4b1c59f2062696c67696c657220766572696c6d6573690d0a6e6564656e69796c6520646fc49f6162696c6563656b2074c3bc6d207a617261726c617264616e2062697a7a617420536174c4b163c4b120736f72756d6c750d0a6f6c6163616b74c4b1722e20536174c4b163c4b12c20c59f69726b657469206164c4b16e612069c59f6c656d207961706d617961207965746b696c69206b69c59f696c6572690d0a6b6179c4b1742065736e6173c4b16e646120696c67696c6920666f726d64612062696c6469726563656b207665206275206b69c59f696c6572696e20796170616361c49fc4b10d0a6865722074c3bc726cc3bc2069c59f6c656d20454e5441204d41c49e415a41206e657a64696e646520536174c4b163c4b1e2809979c4b12074656d73696c656e0d0a796170c4b16c6dc4b1c59f206b6162756c206564696c6563656b7469722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e342e322e0d0a536174c4b163c4b12c20536174c4b163c4b1e280997961207665207965746b696c692074656d73696c636973696e65206169742062696c67696c6572206261c59f74610d0a6f6c6d616b20c3bc7a6572652074656d696e2065746d69c59f206f6c6475c49f752062656c67652076652062696c67696c65726465206d657964616e610d0a67656c6562696c6563656b206865722074c3bc726cc3bc206465c49f69c59f696b6c69c49f692c206465c49f69c59f696b6c69c49f696e206d657964616e610d0a67656c6d6573696e64656e20697469626172656e20656e206765c3a720313520286f6e206265c59f292067c3bc6e2069c3a7696e64652c20456e74610d0a4d61c49f617a61262333393b79612062696c6469726d656b6c652076652073697374656d64656b69206b617964c4b16ec4b12062756e6120757967756e206f6c6172616b0d0a67c3bc6e63656c6c656d656b6c652079c3bc6bc3bc6d6cc3bc64c3bc722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e342e332e0d0a536174c4b163c4b12c20576562736974657369e280996e6520c3bc7965206f6c6475c49f752065736e61646120576562736974657369e280996e646520696c616e0d0a6564696c656e206b7572616c6c61726120766520696c67696c692069c59f2069c3a7657269c49f696e652067c3b6726520626972206b756c6c616ec4b163c4b1206164c4b10d0a766520c59f69667265206f6c75c59f7475726163616b3b2053616e616c204d61c49f617a61e2809973c4b16e612c2070726f66696c20736179666173c4b16e610d0a657269c59f6d656b207665206469c49f65722062617ac4b12069c59f6c656d6c65726920676572c3a7656b6c65c59f7469726562696c6d656b2069c3a7696e2062750d0a62696c67696c657269206b756c6c616e6163616b74c4b1722e20536174c4b163c4b1e280996ec4b16e20c59f69667265207665206b756c6c616ec4b163c4b10d0a6164c4b16ec4b16e2067c3bc76656e6c69c49f692076652067697a6c696c69c49f692074616d616d656e20536174c4b163c4b1e280996ec4b16e0d0a736f72756d6c756c75c49f756e646164c4b1722c206275206e6564656e6c65206465206b656e64692070726f66696c6920c3bc7a6572696e64656e2067697269c59f0d0a796170c4b16c6172616b20676572c3a7656b6c65c59f746972696c656e2074c3bc6d2069c59f6c656d6c657264656e2062697a7a6174207665206dc3bc6e686173c4b172616e0d0a736f72756d6c756475722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e342e342e0d0a536174c4b163c4b12c206865722074c3bc726cc3bc2072656b6c616d20766520696c616ec4b16e20576562736974657369e280996e64650d0a796179c4b16e6c616e6d6173c4b16ec4b1207361c49f6c61796163616b20676572656b6c692074656b6e696b20616c74796170c4b16ec4b16e0d0a6f6c75c59f747572756c6d6173c4b12069c3a7696e20454e5441204d41c49e415a4120696c652074616d2069c59f6269726c69c49f692069c3a7696e6465206f6c6d6179c4b10d0a76652062756e756e2069c3a7696e20676572656b6c69206865722074c3bc726cc3bc2062656c676579692074656d696e2065746d657969206b6162756c2076650d0a7461616868c3bc7420656465722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e342e352e0d0a536174c4b163c4b12c203636393820736179c4b16cc4b1204b69c59f6973656c20566572696c6572696e204b6f72756e6d6173c4b1204b616e756e750d0a75796172c4b16e63612c206b69c59f6973656c20766572696c6572696e2068756b756b612061796bc4b172c4b1206f6c6172616b2069c59f6c656e6d6573696e692076650d0a6b69c59f6973656c20766572696c6572652068756b756b612061796bc4b172c4b1206f6c6172616b20657269c59f696c6d6573696e6920c3b66e6c656d656b2076650d0a6b69c59f6973656c20766572696c6572696e206d75686166617a6173c4b16ec4b1207361c49f6c616d616b20616d6163c4b1796c612c20757967756e2067c3bc76656e6c696b0d0a64c3bc7a6579696e692074656d696e2065746d6579652079c3b66e656c696b20676572656b6c69206865722074c3bc726cc3bc2074656b6e696b2076652069646172690d0a7465646269726920616c6d616b207a6f72756e646164c4b17220766520627520c3b66e6c656d6c6572696e20616cc4b16e6d6173c4b1206875737573756e64610d0a736f72756d6c756475722e20536174c4b163c4b120617972c4b163612c20576562736974657369e280996e64652076652053616e616c204d61c49f617a61e2809964610d0a796179c4b16e6c6164c4b1c49fc4b120696c616e6c6172612079c3b66e656c696b206865722074c3bc726cc3bc2067c3b67273656c2c2079617ac4b16cc4b12076650d0a73616972207361c49f6c616e616e2062696c67692076652069c3a76572696b6c6572696e20676572c3a7656b6c69c49f696e64656e2c0d0a67c3bc76656e696c69726c69c49f696e64656e2c20646fc49f72756c75c49f756e64616e2076652068756b756b6120757967756e6c75c49f756e64616e2062697a7a61740d0a736f72756d6c756475722e20456b206f6c6172616b2c20536174c4b163c4b12c20576562736974657369e280996e69206b656e6469207665796120c3bcc3a7c3bc6e63c3bc0d0a626972206b69c59f69206164c4b16e612c20626972207665726920746162616ec4b12c206b6179c4b1742076657961207265686265722079617261746d616b2c0d0a6b6f6e74726f6c2065746d656b2c2067c3bc6e63656c6c656d656b2c206465c49f69c59f7469726d656b207665206469c49f657220c3bc79656c6572696e0d0a6b69c59f6973656c2062696c67696c6572696e6520657269c59f6d656b207665206261c59f6b61206269722073697374656d6520696e6469726d656b20616d6163c4b1796c610d0a6b756c6c616e6d616d6179c4b1206b6162756c20626579616e207665207461616868c3bc7420656465722e20536174c4b163c4b12c206275206d616464650d0a68c3bc6b6dc3bc6ec3bc2069686c616c2065746d6573692068616c696e64652053c3b67a6c65c59f6d65e280996e696e204d6164646520372e3520e28099696e696e0d0a757967756c616e616361c49fc4b16ec4b1206b6162756c20656465722e20536174c4b163c4b120576562736974657369e280996e64652076652053616e616c0d0a4d61c49f617a61e28099646120796179c4b16e6c6164c4b1c49fc4b120696c616e6c6172612079c3b66e656c696b206865722074c3bc726cc3bc2067c3b67273656c2c0d0a79617ac4b16cc4b12076652073616972207361c49f6c616e616e2062696c67692076652069c3a76572696b6c6572696e20c3bcc3a7c3bc6e63c3bc206b69c59f696c6572696e0d0a66696b7269206dc3bc6c6b697965742068616b6c6172c4b16ec4b12069686c616c2065746d6573692068616c696e646520c3bcc3a7c3bc6e63c3bc206b69c59f696c6572650d0a6b6172c59fc4b120766520456e7461204d61c49f617a61262333393b7961206b6172c59fc4b120736f72756d6c756475722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e342e362e0d0a536174c4b163c4b120454b2d34e2809974652062756c756e616e2022536174c4b1c59f20766520c4b06c616e204b6fc59f756c6c6172c4b1226e64610d0a62656c697274696c656e2074c3bc6d2068c3bc6bc3bc6d207665206b6fc59f756c6c6172c4b16e2053c3b67a6c65c59f6d65e280996e696e20657361736cc4b10d0a756e7375726c6172c4b16e64616e206f6c6475c49f756e752076652062756e6c61726120757967756e206661616c697965742067c3b6737465726469c49f696e692076650d0a67c3b673746572656365c49f696e69206b6162756c207665207461616868c3bc7420656465722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e342e372e0d0a536174c4b163c4b12c20576562736974657369e280996e65206b656e64697369207461726166c4b16e64616e20696c6574696c6d69c59f206f6c616e206865720d0a74c3bc726cc3bc20696c616e2c2069c3a76572696b2076652067c3b67273656c20c3bc7a6572696e646520686572206461696d2068616b20736168696269206f6c6d6179610d0a646576616d2065646563656b7469722e2042756e756e6c61206269726c696b746520536174c4b163c4b12c2073c3b67a206b6f6e7573752069c3a7657269c49f696e2c0d0a72656b6c616d2076652074616ec4b174c4b16d2069c3a7696e2068617ac4b1726c616e616e20656b72616e2067c3b672c3bc6e74c3bc6c657269207665206865720d0a74c3bc726cc3bc2067c3b67273656c2076652069c3a76572696b7465206b756c6c616ec4b16c6d6173c4b16e612028c3b6726e65c49f696e2c2053616e616c0d0a4d61c49f617a6173c4b1e280996ec4b16e207777772e20656e74616d6167617a612e636f6d207369746573696e696e2072656b6c616dc4b16e64612076650d0a64696a6974616c2070617a61726c616d61206661616c697965746c6572696e646520616e6cc4b16b206f6c6172616b2067c3b672c3bc6e6d657369292079c3b66e656c696b0d0a6f6c6172616b20676572656b6c69206865722074c3bc726cc3bc2068616b207665207965746b6979692c2073c3bc726520766520796572206bc4b173c4b1746c616d6173c4b10d0a6f6c6d616b73c4b17ac4b16e2076652062696c61626564656c20456e7461204d61c49f617a61262333393b7961207461687369732065747469c49f69206b6162756c2c0d0a7461616868c3bc7420766520626579616e20656465722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e342e382e0d0a536174c4b163c4b12c206b656e64697369796c652057656273697465736920c3bc7a6572696e64656e20696c657469c59f696d65206765c3a7656e0d0a416cc4b163c4b16c6172e28099c4b1205765627369746573692064c4b1c59fc4b16e646120616cc4b1c59f76657269c59f207961706d617961207465c59f76696b0d0a65746d65796563656b207665206b656e646973696e652062752079c3b66e64652067656c656e2074656b6c69666c657269206465207265646465646563656b7469722e0d0a536174c4b163c4b12c206869c3a7626972207375726574746520456e7461204d61c49f617a61206b616d70616e796120766520696e646972696d6c6572696e690d0a6d616e6970c3bc6c65206564656e2064617672616ec4b1c59f6c617264612062756c756e6d61796163616b74c4b1722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e342e392e0d0a456e7461204d61c49f617a612c20536174c4b163c4b1796120c3bc72c3bc6e6c6572696e6920646168612070726f666573796f6e656c20626972206269c3a7696d64650d0a73756e6162696c6d6573696e652079617264c4b16d63c4b1206f6c6d616b2069c3a7696e20666f746fc49f726166207374c3bc64796f73750d0a68697a6d65746c6572696e64656e2066617964616c616e6d6120696d6b616ec4b12073756e6162696c6563656b7469722e2042752068697a6d6574696e0d0a73756e756c6d6173c4b12074616d616d656e20456e7461204d61c49f617a61262333393b6ec4b16e2074616b646972696e64656469722e20536174c4b163c4b13b2069c59f62750d0a7374c3bc64796f2068697a6d65746c6572696e64656e2066617964616c616e6d6173c4b12068616c696e64652c207374c3bc64796f206b756c6c616ec4b16dc4b16e610d0a646169722070726f736564c3bc722067657265c49f696e636520456e746120207665796120696c67696c69207374c3bc64796f207461726166c4b16e64616e2074616c65700d0a6564696c6d657369206d756874656d656c2062696c67692076652062656c67656c65726920456e7461204d61c49f617a61202076657961207374c3bc64796f79610d0a73756e6163616b74c4b1722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e342e31302e0d0a536174c4b163c4b12c20c39664656d65204b6f72756d612053697374656d69e280996e6520757967756e2064617672616e6d6179c4b1207461616868c3bc7420656465722e0d0ac39664656d65204b6f72756d612053697374656d69e280996e652067c3b6726520416cc4b163c4b120c3bc72c3bc6ec3bc20736174c4b16e20616c64c4b16b74616e0d0a736f6e72612c20c3bc72c3bc6e20626564656c6920456e7461204d61c49f617a6120686176757a206865736162c4b16e6120616b746172c4b16cc4b1722e0d0a536174c4b163c4b12c20c3bc72c3bc6ec3bc2062656c6972747469c49f692073c3bc72652069c3a765726973696e646520416cc4b163c4b1e2809979610d0a756c61c59f74c4b17264c4b16b74616e20736f6e72612c20416cc4b163c4b120c3bc72c3bc6ec3bc20696e63656c65796572656b20736970617269c59f65206f6e61790d0a76657269722e204275206f6e617920696c6520c3b664656d6520456e7461204d61c49f617a6120686176757a206865736162c4b16e64616e20536174c4b163c4b1e280996ec4b16e0d0a6865736162c4b16e6120616b746172c4b16cc4b1722e20536174c4b163c4b12c20576562736974657369e280996e64650d0a282e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e207361796661206c696e6b6920656b6c656e6563656b290d0ac39664656d65204b6f72756d612053697374656d69e280996e6520696c69c59f6b696e2074c3bc6d2068c3bc6bc3bc6d20766520c59f6172746c6172c4b16e610d0a657269c59f696d207361c49f6c61796162696c656365c49f696e692076652062756e6c6172c4b120616e6c6164c4b1c49fc4b16ec4b1206b6162756c20656465722076650d0a456e7461204d61c49f617a61262333393b79c4b12073c3b67a206b6f6e7573752069c59f6c656d6c65726920676572c3a7656b6c65c59f7469726562696c6d6573692069c3a7696e0d0a7965746b696c656e64697269722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e352e0d0a456e7461204d41c49e415a41262333393b4e494e2048414b2056452059c39c4bc39c4d4cc39c4cc39c4b4c4552c4b03c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e352e312e0d0a456e74612c20536174c4b163c4b1207461726166c4b16e64616e20c3bc79656c696b2069c59f6c656d692065736e6173c4b16e646120766520c3bc79656c696b0d0a626f79756e63612074656d696e206564696c656e20c59f61687369207665207469636172692062696c67696c6572692067c3bc76656e6c6920626972206f7274616d64610d0a73616b6c61796163616b74c4b1722e20456e74612c2062752062696c67696c6572692048697a6d65746c6572e28099696e2074616d2076652067657265c49f6920676962690d0a69c59f6c6574696c6d6573692069c3a7696e20676572656b656e20757967756c616d616c6172c4b16e2079c3bc72c3bc74c3bc6c6d6573692c206973746174697374696b690d0a6465c49f65726c656e6469726d656c6572696e20796170c4b16c6d6173c4b120616d6163c4b1796c61206b656e646973696e696e2076652069c59f0d0a6f7274616b6c6172c4b16ec4b16e206661616c697965746c6572696e696e2c20757967756c616d616c6172c4b16ec4b16e2072656b6c616dc4b12c0d0a70617a61726c616e6d6173c4b12c20696c616ec4b12c206b7265646962696c69746520736f7267757375207665207361697220616d61c3a76c61726c612c0d0a6b756c6c616e6162696c69722076652062656c697274696c656e2073656265706c65726c652073c4b16ec4b1726cc4b1206f6c6d616b206b617964c4b1796c610d0ac3bcc3a7c3bc6e63c3bc206b69c59f696c6572652061c3a7c4b16b6c616e6162696c69722e20427520616e6c616d646120536174c4b163c4b12c206b656e64696e650d0a6169742062696c67696c6572696e20456e746120207461726166c4b16e64616e2069c59f6275206d616464652068c3bc6b6dc3bc6e652067c3b672650d0a6b756c6c616ec4b16cc4b1702073616b6c616e6d6173c4b16e612072c4b17a612067c3b6737465726563656b7469722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e352e322e0d0a456e74612c203635303220736179c4b16cc4b12054c3bc6b65746963696e696e204b6f72756e6d6173c4b12048616b6bc4b16e6461204b616e756e20766520363536330d0a736179c4b16cc4b120456c656b74726f6e696b20546963617265742044c3bc7a656e6c656e6d6573692048616b6bc4b16e6461204b616e756e206b617073616dc4b16e64610d0a6d65736166656c692073c3b67a6c65c59f6d65206b7572756c6d6173c4b16e612061726163c4b16cc4b16b206564656e2073c4b1666174c4b16e612076652041726163c4b10d0a48697a6d6574205361c49f6c6179c4b163c4b1206e6974656c69c49f696e652073616869707469722e2042752073656265706c6520646520456e7461262333393b6ec4b16e2c0d0a536174c4b163c4b1207461726166c4b16e64616e20576562736974657369e280996e646520796179c4b16e6c616e616e2069c3a76572696b6c657269206b6f6e74726f6c0d0a65746d652079c3bc6bc3bc6d6cc3bc6cc3bcc49fc3bc2062756c756e6d616d616b746164c4b1722e20456e74612c2057656273697465736920c3bc7a6572696e64656e0d0a676572c3a7656b6c65c59f746972696c656e206d6573616a6c61c59f6d616c61722064612064c3a268696c206f6c6d616b20c3bc7a657265206865722074c3bc726cc3bc0d0a69c3a7657269c49f69206b6f6e74726f6c2065746d656b2079612064612062752069c3a76572696b2076652069c3a7657269c49f65206b6f6e7520c3bc72c3bc6e0d0a766579612068697a6d65746c6520696c67696c692068756b756b612061796bc4b172c4b120626972206661616c69796574696e207665796120647572756d756e2073c3b67a0d0a6b6f6e757375206f6c7570206f6c6d6164c4b1c49fc4b16ec4b120617261c59f74c4b1726d616b6c612079c3bc6bc3bc6d6cc3bc206f6c6d616d616b6c610d0a6269726c696b74652c2073c3b67a206b6f6e7573752069c3a76572696b6c6572692064696c65c49f69207a616d616e206b6f6e74726f6c2065746d652076650d0a676572656b6c692067c3b672c3bc72736520657269c59f696d65206b617061746d612076652073696c6d652068616b6bc4b16e612073616869707469722e20456e74610d0a617972c4b163612c206d61686b656d652076652068616b656d2068657965746920646520646168696c206f6c6d616b20c3bc7a6572652068657268616e6769206269720d0a79617267c4b1206d616b616dc4b16ec4b16e206b61726172c4b16ec4b120796572696e652067657469726d656b2069c3a7696e207665206275206b617073616d6c610d0a73c4b16ec4b1726cc4b1206f6c6d616b20c3bc7a6572652073c3b67a206b6f6e7573752069c3a76572696b6c657220c3bc7a6572696e64652069c59f6c656d0d0a676572c3a7656b6c65c59f7469726562696c6563656b7469722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e352e332e0d0a456e7461262333393b6ec4b16e20536174c4b163c4b1e280996ec4b16e20576562736974657369e280996e646520796179c4b16e6c6164c4b1c49fc4b12068657268616e67690d0a6269722069c3a7657269c49f696e2079c3bc72c3bc726cc3bc6b74656b69206d65767a756174612061796bc4b172c4b1206f6c6475c49f756e75207465737069740d0a65746d6573692068616c696e64652062752069c3a7657269c49f692064657268616c206b616c64c4b1726d612068616b6bc4b120686572207a616d616e0d0a73616b6cc4b164c4b1722e2042c3b6796c652062697220647572756d646120536174c4b163c4b120686572206e65206973696d20616c74c4b16e6461206f6c757273610d0a6f6c73756e20454e5441204d41c49e415a41e2809964656e2068657268616e6769206269722074617a6d696e61742074616c6570206564656d657a2e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e362e0d0a4d414cc4b02048555355534c41523c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e362e312e0d0a536174c4b163c4b12c2069c59f62752053c3b67a6c65c59f6d65e2809964652062656c697274696c656e206564696d6c6572696e692074616d2076652067657265c49f690d0a6769626920796572696e652067657469726d657369206b6fc59f756c756e61206261c49f6cc4b1206f6c6172616b2048697a6d65746c6572e2809964656e0d0a66617964616c616e6162696c6563656b2076652057656273697465736920c3bc7a6572696e64656e20676572c3a7656b6c65c59f746972656365c49f6920736174c4b1c59f0d0a69c59f6c656d6c657269206b6172c59fc4b16cc4b1c49fc4b16e64616b6920c3bc63726574652068616b206b617a616e6163616b74c4b1722e20456e7461204d61c49f617a610d0a7461726166c4b16e64616e20536174c4b163c4b1e28099796120757967756c616e6163616b206f6c616e206b6f6d6973796f6e206f72616e6c6172c4b12c20c3b664656d650d0a6b6fc59f756c6c6172c4b12076652073616972206d616c6920c59f6172746c6172c4b120454b2d33e2809974652079657220616c616e202246696e616e73616c0d0a766520c3967a656c20c387616cc4b1c59f6d6120c59e6172746c6172c4b1226e64612062656c69726c656e6469c49f6920c59f656b696c64650d0a757967756c616e6163616b74c4b1722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e362e322e0d0a536174c4b163c4b12032313320536179c4b16cc4b1205665726769205573756c204b616e756e75204d6164646520323330207665203330363520736179c4b16cc4b10d0a4b61746d61204465c49f65722056657267697369204b616e756e75204d6164646520382075796172c4b16e636120736174c4b16c616e20c3bc72c3bc6e2076650d0a68697a6d65746c6520696c67696c6920666174757261207665796120706572616b656e646520736174c4b1c59f206669c59f692064c3bc7a656e6c656d656b0d0a7a6f72756e646164c4b1722e20427520616e6c616d646120536174c4b163c4b12c20416cc4b163c4b1e2809979612067c3b66e6465726469c49f6920c3bc72c3bc6e0d0a76652f766579612068697a6d65746920666174757261206b65736572656b207465736c696d2065746d657969206b6162756c207665207461616868c3bc740d0a656465722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e362e332e0d0ac4b0c59f62752053c3b67a6c65c59f6d65e280996e696e204d6164646520372e35e28099692075796172c4b16e63612c20456e7461204d61c49f617a612c206d6172757a0d0a6b616c64c4b1c49fc4b1206865722074c3bc726cc3bc207a61726172c4b12c206b617962c4b12c206d6173726166c4b12c20676964657269207665796120c3bcc3a7c3bc6e63c3bc0d0a6b69c59f696c6572696e2074616c65706c6572696e692074616b646972692074616d616d656e206b656e646973696e6465206f6c6d616b20c3bc7a6572650d0a536174c4b163c4b1e280996ec4b16e2063617269206865736162c4b16e64616e206d61687375702065646562696c6972207665796120536174c4b163c4b1e2809964616e0d0a62697a7a61742074616873696c2065646562696c69722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e372e0d0a53c3965a4c45c59e4d45e280994ec4b04e2053c39c524553c4b02c2046455348c4b02056452054415a4dc4b04e41543c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e372e312e0d0ac4b0c59f62752053c3b67a6c65c59f6d652c20536174c4b163c4b1207461726166c4b16e64616e20656c656b74726f6e696b206f7274616d64610d0a6f6e61796c616e6d616b6c612079c3bc72c3bc726cc3bcc49f65206769726563656b206f6c75702c2079c3bc72c3bc726cc3bc6b207461726968696e64656e0d0a697469626172656e2062656c697273697a2073c3bc72656c69206f6c6172616b206765c3a765726c696469722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e372e322e0d0a54617261666c61722c2068657268616e6769206269722073656265626520646179616e6d616b73c4b17ac4b16e2076652074617a6d696e617420c3b664656d650d0a79c3bc6bc3bc6d6cc3bc6cc3bcc49fc3bc20616c74c4b16e64612062756c756e6d616b73c4b17ac4b16e2c2079617ac4b16cc4b1206f6c6172616b0d0a62696c646972696d64652062756c756e6d616b206b617964c4b1796c612069c59f62752053c3b67a6c65c59f6d65e28099796920686572207a616d616e0d0a6665736865646562696c69722e2053c3b67a6c65c59f6d65e280996e696e20456e7461204d61c49f617a61207461726166c4b16e64616e2062752073757265746c650d0a666573686564696c6d6573692068616c696e646520536174c4b163c4b12c206665736968207461726968696e65206b6164617220456e7461204d61c49f617a61200d0a7461726166c4b16e64616e2073756e756c616e2068697a6d65746520696c69c59f6b696e20626564656c6c65726920c3b664656d657969206b6162756c2076650d0a7461616868c3bc7420656465722e2042752066657369682079616c6ec4b17a63612054617261666c6172e28099c4b16e20696c69c59f6b6973696e690d0a65746b696c65796563656b3b20536174c4b163c4b1e280996ec4b16e2053616e616c204d61c49f617a61e2809973c4b120c3bc7a6572696e64656e207961706dc4b1c59f0d0a6f6c6475c49f7520736174c4b1c59f6c6172612079c3b66e656c696b206f6c6172616b20416cc4b163c4b16c6172e2809961206b6172c59fc4b1206d65766375740d0a6f6c6162696c6563656b2074c3bc6d20736f72756d6c756c756b6c6172c4b120646576616d2065646563656b7469722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e372e332e0d0a54617261666c6172e2809964616e20626972696e696e2069666c61732065746d6573692c2069666c6173c4b16e20657274656c656e6d6573692074616c6562696e64650d0a62756c756e6d6173c4b12c2061637a652064c3bcc59f6d6573692c206b6f6e6b6f726461746f2074656b6c6966696e64652062756c756e6d6173c4b12c206b617979756d0d0a6174616e6d6173c4b12c20746173666979657965206769726d65736920766579612068616b6bc4b16e6461206665736968206461766173c4b12061c3a7c4b16c6d6173c4b10d0a68616c6c6572696e64652c2053c3b67a6c65c59f6d65206b656e64696c69c49f696e64656e20736f6e612065726563656b7469722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e372e342e0d0a54617261666c61722069c59f62752053c3b67a6c65c59f6d65e280996e696e20454b2d34e28099c3bc6e64652079657220616c616e2068c3bc6bc3bc6d2076650d0ac59f6172746c6172c4b16e2068657220626972696e696e20657361736cc4b1206f6c6475c49f756e752076652062752068c3bc6bc3bc6d20766520c59f6172746c6172610d0a61796bc4b172c4b16cc4b16b2068616c696e646520456e7461204d61c49f617a61262333393b6ec4b16e2053c3b67a6c65c59f6d65e2809979692064657268616c2066657369680d0a68616b6bc4b12062756c756e6475c49f756e75206b6162756c20656465722e2042756e6c6172c4b16e2079616ec4b16e646120456e7461204d61c49f617a61200d0a53c3b67a6c65c59f6d65e280997969206665736865746d652068616b6bc4b16ec4b1206b756c6c616e6d61736120646168692c2073c3b67a206b6f6e7573750d0a61796bc4b172c4b16cc4b16b2068616c6c6572696e646520456e7461204d61c49f617a61262333393b6ec4b16e202048697a6d65746c6572e2809969206765c3a76963690d0a6f6c6172616b206475726475726d612076652061736bc4b1796120616c6d612068616b6bc4b16e6120686572207a616d616e207361686970206f6c6163616b74c4b1722e0d0a427520647572756d6c6172646120536174c4b163c4b1e280996ec4b16e2c20416cc4b163c4b1e280997961206b6172c59fc4b1206865722074c3bc726cc3bc0d0a736f72756d6c756c75c49f7520646576616d2065646563656b7469722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e372e352e0d0a536174c4b163c4b12c2069c59f62752053c3b67a6c65c59f6d65e280996e696e2068c3bc6bc3bc6d6c6572696e64656e20626972696e692069686c616c2065746d6573690d0a7665796120536174c4b163c4b1204f66697369e280996e646520696c616e206564696c656e20736174c4b1c59f206b7572616c6c6172c4b16e61207579756c6d616d6173c4b10d0a736562656269796c6520456e7461204d61c49f617a61262333393b6ec4b16e2020646fc49f727564616e207665796120646f6c61796cc4b1206f6c6172616b2075c49f72616dc4b1c59f0d0a6f6c6475c49f75206865722074c3bc726cc3bc2068756b756b692f69646172692f63657a6169207a61726172c4b12c206b617962c4b12c206d6173726166c4b12c0d0a67696465726920766520c3bcc3a7c3bc6e63c3bc206b69c59f696c6572696e2074616c65706c6572696e6920456e7461204d61c49f617a61262333393b6ec4b16e200d0a68657268616e676920626972206d616b616d61206261c59f7675726d6173c4b16e6120676572656b206f6c6d616b73c4b17ac4b16e20766520696c6b2074616c6562690d0ac3bc7a6572696e652c2074616d616d656e2076652064657268616c2074617a6d696e2065746d656b6c652079c3bc6bc3bc6d6cc3bc64c3bc722e20c59ec3bc70686579650d0a6d6168616c2062c4b172616b6d616d616b206164c4b16e612c20456e7461204d61c49f617a61262333393b6ec4b16e2073c3b67a206b6f6e7573752068616b6bc4b16ec4b10d0a6b756c6c616e6d6173c4b12c2020456e7461204d61c49f617a61262333393b6ec4b16e2053c3b67a6c65c59f6d65e2809979692066657368656469700d0a6665736865746d656d6573696e64656e206261c49fc4b16d73c4b17a64c4b17220766520456e7461204d61c49f617a61202053c3b67a6c65c59f6d65e2809979690d0a6665736865746d656b73697a696e2073c3b67a206b6f6e7573752074617a6d696e6174612068616b206b617a616ec4b1722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e372e362e0d0a536174c4b163c4b12c20456e7461204d61c49f617a6120616c657968696e6520646176612c2074c3bc6b657469636920c59f696b61796574692c2073617663c4b16cc4b16b0d0a736f7275c59f7475726d6173c4b120766520696372612074616b69626920646520646168696c206f6c6d616b20c3bc7a6572652068657268616e6769206269720d0a796173616c2074616b6962696e206261c59f6c6174c4b16c6d6173c4b120766579612062616e6b616c617264616e2c2062616b616e6cc4b16b6c617264616e2c2061646c690d0a76657961206964617269206d616b616d6c617264616e2c20656d6e69796574206dc3bc64c3bc726cc3bc6b6c6572696e64656e207665206469c49f65722074c3bc6d0d0a7361697220c3b67a656c206b7572756c75c59f207961206461206b616d75206b7572756c75c59f6c6172c4b1207461726166c4b16e64616e2068657268616e6769206269720d0a62696c676920766579612062656c67656e696e2074616c6570206564696c6d6573692068616c696e646520456e7461204d61c49f617a61262333393b6ec4b16e200d0a6b656e646973696e6920736176756e6d6173c4b120766579612074616c6570206564696c656e2062696c67692079612064612062656c67656c6572692073756e6d6173c4b10d0a69c3a7696e20676572656b656e2074c3bc6d2062696c67692076652062656c67656c6572692064657268616c2074656d696e2065646563656b7469722e20536174c4b163c4b10d0a7461726166c4b16e64616e2c2074616c6570206564696c656e2073c3bc72652069c3a7696e646520456e7461204d61c49f617a61262333393b79612074656d696e0d0a6564696c6d6579656e2062696c67692076652062656c67656c6572206e6564656e69796c6520646fc49f6163616b206865722074c3bc726cc3bc207a617261720d0a76652f766579612063657a612c20536174c4b163c4b1e2809979612079616e73c4b174c4b16c6163616b74c4b1722e20417972c4b163612c2062752074757461726c61722c0d0a536174c4b163c4b1e280997961206169742074c3bc6d206d61c49f617a616c617264616e2074616873696c206564696c6562696c6563656b7469722e20417972c4b163612c0d0a456e7461204d61c49f617a61262333393b79612068657268616e676920626972206963726120646169726573696e64656e2079612064612062656e7a657269206269720d0a6d616b616d64616e20536174c4b163c4b120616c657968696e652064c3bc7a656e6c656e6d69c59f2062697220686163697a2069686261726e616d657369207465626c69c49f0d0a6564696c6d6573692c20456e7461204d61c49f617a61262333393b6ec4b16e2020536174c4b163c4b1e280996ec4b16e20646f6c616e64c4b172c4b163c4b16cc4b16b2079612064610d0a736168746563696c696b207465c59f6b696c2065646562696c6563656b206269722064617672616ec4b1c59fc4b16ec4b16e2073c3b67a206b6f6e7573750d0a6f6c6162696c656365c49f696e6520766579612053616e616c204d61c49f617a61e28099646120736168746520c3bc72c3bc6e20736174c4b1c59fc4b16ec4b16e0d0a796170c4b16c64c4b1c49fc4b16e6120696c69c59f6b696e206d616b756c2062697220c59fc3bc706865206475796d6173c4b1207665796120416cc4b163c4b16c6172e28099c4b16e0d0a796120646120c3bcc3a7c3bc6e63c3bc20626972206b69c59f696e696e206d61c49f64757269796574696e6920c3b66e6c656d656b20796120646120617a616c746d616b0d0a616d6163c4b16ec4b1207461c59fc4b179616e206469c49f6572206d616b756c2073656265706c65726c652c20456e74612020536174c4b163c4b1e280996ec4b16e0d0a456e7461204d61c49f617a61206865736162c4b16e64616b692062616b69796579692c20686163697a2069686261726e616d6573696e696e206d65766375740d0a6f6c6d6173c4b12068616c696e64652062656c697274696c656e206d696b7461726c612073c4b16ec4b1726cc4b1206f6c6d616b20c3bc7a6572653b206469c49f65720d0a68616c6c65726465206973652073c3b67a206b6f6e7573752069686c616c207961206461206d61c49f6475726979657469206b6172c59fc4b16c61796162696c6563656b0d0a6d616b756c20626972206d696b746172c4b120313230202879c3bc7a207969726d69292067c3bc6e6cc3bc6b206269722073c3bc72652069c3a7696e2076650d0a536174c4b163c4b1e280997961206861626572207665726d656b73697a696e20626c6f6b652065646562696c69722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e382e0d0a53c3965a4c45c59e4d45204445c49ec4b0c59ec4b04b4cc4b04b4c4552c4b02056452042c4b04c44c4b052c4b04d4c45523c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e382e312e0d0a536174c4b163c4b12c2069c59f62752053c3b67a6c65c59f6d65e28099796920656c656b74726f6e696b206f7274616d6461206f6e61796c61796172616b2c0d0a53c3b67a6c65c59f6d65e2809979652074617261662076652053c3b67a6c65c59f6d65e280996e696e2068c3bc6bc3bc6d6c657269796c65206261c49f6cc4b10d0a6f6c6163616b74c4b1722e20456e746120676572656b6c69206f6c6475c49f756e61206b616e6161742067657469726469c49f692074616b64697264652069c59f62750d0a53c3b67a6c65c59f6d65e280996e696e2068c3bc6bc3bc6d20766520c59f6172746c6172c4b16ec4b12074656b2074617261666cc4b1206f6c6172616b20757967756e0d0a67c3b672656365c49f692068657268616e676920626972207a616d616e6461206465c49f69c59f7469726d652068616b6bc4b16e612073616869707469722e0d0ac59ec3bc7068657965206d6168616c207665726d656d656b206164c4b16e612c20456e74612062656c69726c692068697a6d65746c6572696e206bc4b1736d656e2079610d0a64612074616d616d656e20c3bc637265746c692068616c652067656c6d6573696e6520696c69c59f6b696e206f6c616e6c617220646120646168696c206f6c6d616b0d0ac3bc7a6572652053c3b67a6c65c59f6d65e28099796520656b6c656d656c6572207961706d612068616b6bc4b16e612064612073616869707469722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e382e322e0d0a53c3b67a206b6f6e7573752053c3b67a6c65c59f6d65206465c49f69c59f696b6c696b6c65726920456e746120207461726166c4b16e64616e202869290d0a536174c4b163c4b1e280996ec4b16e20456e7461204d61c49f617a612020576562736974657369e280996e6520c3bc7965206f6c75726b656e2062696c6469726469c49f690d0a61647265736520652d706f7374612067c3b66e646572696c6d6573692c202869692920536174c4b163c4b1204f666973690d0a2868747470733a2f2f2e2e2e2e2e2e2e2e2e2e2e2e2e207361796661206c696e6b692f2920656b72616ec4b16e6461206475797572756c6d6173c4b120766579610d0a286969692920576562736974657369e280996e646520796179c4b16e6c616e6d6173c4b120796f6c75796c6120796170c4b16c6162696c69722e20c4b0c59f62750d0a53c3b67a6c65c59f6d65e280996e696e206465c49f69c59f656e2068c3bc6bc3bc6d6c6572692c20696c616e206564696c64696b6c65726920746172696874650d0a6765c3a765726c696c696b206b617a616e6163616b2c2067657269206b616c616e2068c3bc6bc3bc6d6c65722061796e656e2079c3bc72c3bc726cc3bc6b74650d0a6b616c6172616b2068c3bc6bc3bc6d20766520736f6e75c3a76c6172c4b16ec4b120646fc49f75726d61796120646576616d2065646563656b7469722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e382e332e0d0ac59ec3bc7068657965206d6168616c207665726d656d656b206164c4b16e612c20456e7461204d61c49f617a612053c3b67a6c65c59f6d65e280996e696e20696d7a610d0a7461726968696e64656e20736f6e7261206d657964616e612067656c656e206d65767a756174206465c49f69c59f696b6c696b6c6572692067657265c49f690d0a7961706d616b207a6f72756e6461206f6c6475c49f752053c3b67a6c65c59f6d65206465c49f69c59f696b6c696b6c6572696e6920536174c4b163c4b1e2809979610d0a62696c6469726d656b6c652079c3bc6bc3bc6d6cc3bc206465c49f696c6469722e20417972c4b163612057656273697465736920c3bc7a6572696e64650d0a73756e756c6163616b206f6c616e2048697a6d65746c6572e28099696e20766520456e7461204d61c49f617a61207461726166c4b16e64616e20757967756c616e616e0d0a6b616d70616e79616c6172c4b16e2064657461796c6172c4b12c20c3bc72c3bc6e6c6572696e2073657267696c656e6d652073c3bc72656c6572692c20656b0d0a696d6bc3a26e6c61722076652074656b6e696b20c3b67a656c6c696b6c657220456e7461204d61c49f617a6120207461726166c4b16e64616e20c3b66e636564656e0d0a686162657273697a206f6c6172616b206465c49f69c59f746972696c6562696c6563656b7469722e20456e7461204d61c49f617a6120207461726166c4b16e64616e0d0a796170c4b16c616e206465c49f69c59f696b6c696b6c657220796179c4b16e6c616e6d61207461726968696e64652079c3bc72c3bc726cc3bcc49f65206769726563656b0d0a7665206261c49f6c6179c4b163c4b1206f6c6163616b74c4b1722c20536174c4b163c4b12069c59f6275206465c49f69c59f696b6c6572690d0a576562736974657369e280996e64656e2074616b69702065746d656b207665206465c49f69c59f696b6c696b6c6572696e20676572656b6c6572696e6920796572696e650d0a67657469726d656b6c652079c3bc6bc3bc6d6cc3bc64c3bc722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e382e342e0d0a536174c4b163c4b12c20456e7461204d61c49f617a6120207461726166c4b16e64616e2068657268616e67692062697220c3b66e2062696c67696c656e6469726d650d0a796170c4b16c6d6173c4b16ec4b12062656b6c656d656b73697a696e20456e7461204d61c49f617a61262333393b6ec4b16e202057656273697465736920c3bc7a6572696e64656e0d0a64757975726475c49f7520766520757967756c6164c4b1c49fc4b1206b616d70616e796120766520696e646972696d6c6572692074616b69702065746d656b2c0d0a6b616d70616e7961206b617073616dc4b16e6120646168696c206564696c656e20c3bc72c3bc6e6c65726c6520696c67696c69206f6c6172616b2074c3bc6d0d0a6b616d70616e7961206b6fc59f756c6c6172c4b16ec4b120757967756c616d616b2076652074c3bc6d206b616d70616e7961206b6fc59f756c6c6172c4b16e610d0a76616bc4b166206f6c6172616b206b656e646973696e652067656c656e20416cc4b163c4b12074616c65706c6572696e69206b616d70616e7961796120757967756e0d0a6f6c6172616b2079c3b66e65746d656b6c652079c3bc6bc3bc6d6cc3bc64c3bc722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e382e352e0d0a54617261666c61722c20536174c4b163c4b1e280996ec4b16e20576562736974657369e280996e6520c3bc7965206f6c75726b656e2062696c6469726469c49f690d0a652d706f7374612061647265736920766173c4b1746173c4b1796c6120766579612066697a696b6920706f7374612061647265736c6572696e6520696164656c690d0a7461616868c3bc746cc3bc20706f73746120696c652067c3b66e646572696c6563656b2062696c646972696d6c65722061726163c4b16cc4b1c49fc4b1796c610d0a696c657469c59f696d206b75726163616b6c617264c4b1722e20536174c4b163c4b1e280996ec4b16e20576562736974657369e280996e65206b6179c4b1746cc4b10d0a6164726573696e6520652d706f7374612067c3b66e646572696d692079617ac4b16cc4b120696c657469c59f696d206f6c6172616b206b6162756c206564696c6563656b0d0a6f6c75702c20536174c4b163c4b1e280996ec4b16e20652d706f737461206164726573696e692064c3bc7a656e6c69206f6c6172616b206b6f6e74726f6c2065746d650d0a76652079c3bc6bc3bc6d6cc3bc6cc3bcc49fc3bc206f6c6163616b74c4b1722e20536174c4b163c4b1e280996ec4b16e2062696c6469726d69c59f206f6c6475c49f750d0a61647265732076652f7665796120652d706f7374612061647265736c6572696e696e206465c49f69c59f6d65736920647572756d756e64612c0d0a6465c49f69c59f696b6c69c49f696e2079617ac4b16cc4b1206f6c6172616b2064657268616c206469c49f6572205461726166e28099610d0a62696c646972696c6d656469c49f692074616b646972646520736f6e2061647265732076652f7665796120652d706f7374612061647265736c6572696e650d0a796170c4b16c616e2062696c646972696d6c6572206765c3a765726c69207665206261c49f6c6179c4b163c4b1206b6162756c0d0a6564696c6563656b7469722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e382e362e0d0a4b6172c59fc4b1205461726166e28099c4b16e2074656d657272c3bc64c3bc6e652c2053c3b67a6c65c59f6d65e280996e696e2066657368696e652076650d0a53c3b67a6c65c59f6d65e2809964656e2064c3b66e6d65796520696c69c59f6b696e2062696c646972696d6c65722068616b6bc4b16e64612064612069c59f62750d0a53c3b67a6c65c59f6d65e280996e696e204d6164646520382e35e280996920757967756c616e6163616b74c4b1722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e392e0d0a47c4b05a4cc4b04cc4b04b3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e392e312e0d0a54617261666c6172e28099c4b16e2069c59f62752053c3b67a6c65c59f6d65e280996e696e2069666173c4b12073c4b1726173c4b16e6461206269726269726c6572690d0a68616b6bc4b16e6461206564696e64696b6c657269206865722074c3bc726cc3bc207469636172692c2066696e616e73616c2c20706174656e742076650d0a6b6e6f772d686f772c2062696c67692c2062756c75c59f2c2069c59f2c206d65746f742c2074656c69662068616b6bc4b12c206d61726b612c206dc3bcc59f746572690d0a62696c67696c65726920766520736169722074c3bc6d2062696c67696c657220e2809c47697a6c692042696c6769e2809d206f6c6172616b206b6162756c0d0a6564696c6563656b2076652069c59f62752053c3b67a6c65c59f6d652073c3bc726573696e63652076652053c3b67a6c65c59f6d65e280996e696e20736f6e610d0a65726d6573696e692074616b6970206564656e20332028c3bcc3a7292079c4b16c20626f79756e63612047697a6c692042696c6769206f6c6172616b0d0a6465c49f65726c656e646972696c6563656b7469722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e392e322e0d0a54617261666c61722c2047697a6c692042696c67696c6572e28099692067697a6c69207475746163616b20766520616cc4b163c4b1205461726166e28099c4b16e2c0d0a6966c59f61206564656e205461726166e28099c4b16e20c3b66e636564656e2079617ac4b16cc4b1206f6e6179c4b16ec4b120616c6d6173c4b120766579612073c3b67a0d0a6b6f6e757375206966c59f616174c4b16e20757967756c616e616e206b616e756e6c6172207665796120626972206d61686b656d6520656d7269207461726166c4b16e64616e0d0a676572656b6c69206bc4b16cc4b16e6d6173c4b12068616c6c657269206861726963696e64652c2068657268616e67692062697220c3bcc3a7c3bc6e63c3bc0d0a746172616661206966c59f612065746d65796563656b6c65726469722e20454e5441204d41c49e415a41e280996e696e2047697a6c692042696c67696c6572e28099690d0ac3bc79656c65722061726173c4b16e646120c3a7c4b16b616e20757975c59f6d617a6cc4b16b6c61726461206469c49f6572204b756c6c616ec4b163c4b16c6172e28099c4b16e0d0a796173616c2068616b6c6172c4b16ec4b1206b756c6c616e6162696c6d656c65726920616d6163c4b1796c6120766520736164656365206275206b617073616d6cc4b10d0a73c4b16ec4b1726cc4b1206f6c6d616b20c3bc7a65726520757975c59f6d617a6cc4b1c49f61207461726166206f6c6162696c6563656b206469c49f65720d0a4b756c6c616ec4b163c4b16c6172e280996120696c65746562696c6d652068616b6bc4b12073616b6cc4b164c4b1722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e31302e0d0a46c4b04b52c4b0204dc39c4c4bc4b05945542048414b4c4152493c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e31302e312e0d0a456e7461204d61c49f617a6173c4b1206d61726b6173c4b1207665206c6f676f73752c28206d61726b61796120616974206469c49f65722074c3bc6d206d61726b612076650d0a6c6f676f6c6172c4b120656b6c65796562696c697273696e697a292020456e7461204d61c49f617a6120206d6f62696c20757967756c616d6173c4b16ec4b16e2076650d0a576562736974657369e280996e696e207461736172c4b16dc4b12c2079617ac4b16cc4b16dc4b12c20616c616e206164c4b12076652062756e6c61726120696c69c59f6b696e0d0a6f6c6172616b20456e7461204d61c49f617a6120207461726166c4b16e64616e206f6c75c59f747572756c616e206865722074c3bc726cc3bc206d61726b612c0d0a7461736172c4b16d2c206c6f676f2c207469636172692074616b64696d20c59f656b6c692c20736c6f67616e207665206469c49f65722074c3bc6d2069c3a7657269c49f696e0d0a6865722074c3bc726cc3bc2066696b7269206dc3bc6c6b697965742068616b6bc4b120696c6520456e7461204d61c49f617a61262333393b6ec4b16e200d0a6dc3bc6c6b69796574696e64656469722e20536174c4b163c4b12c20456e7461204d61c49f617a61262333393b6ec4b16e202076657961206261c49f6cc4b10d0ac59f69726b65746c6572696e696e206dc3bc6c6b69796574696e6520746162692066696b7269206dc3bc6c6b697965742068616b6c6172c4b16ec4b120456e74610d0a4d61c49f617a61262333393b6ec4b16e2020697a6e69206f6c6d616b73c4b17ac4b16e206b756c6c616e616d617a2c207061796c61c59f616d617a2c206461c49fc4b174616d617a2c0d0a73657267696c6579656d657a2c20c3a76fc49f616c74616d617a2076652062756e6c617264616e2074c3bc72656d69c59f20c3a7616cc4b1c59f6d616c61720d0a796170616d617a2e20536174c4b163c4b12c20456e7461204d61c49f617a61206d6f62696c20757967756c616d6173c4b16ec4b16e2076650d0a576562736974657369e280996e696e2062c3bc74c3bc6ec3bc207665796120626972206bc4b1736dc4b1206261c59f6b612062697220696e7465726e65740d0a7369746573696e646520697a696e73697a206f6c6172616b206b756c6c616ec4b16c616d617a2e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e31302e322e0d0a536174c4b163c4b12c20456e7461204d61c49f617a6120206d6f62696c20757967756c616d6173c4b1207665205765627369746573692061726163c4b16cc4b1c49fc4b1796c610d0a676572c3a7656b6c65c59f7469726469c49f692074c3bc6d206661616c697965746c6572696e646520456e7461204d61c49f617a612020766520c3bcc3a7c3bc6e63c3bc0d0a6b69c59f696c6572696e2066696b7269206dc3bc6c6b697965742068616b6c6172c4b16ec4b12069686c616c2065746d6579656365c49f696e69207461616868c3bc740d0a65746d656b74656469722e20456e7461204d61c49f617a612c20c3bcc3a7c3bc6e63c3bc206b69c59f696c6572696e207665796120456e7461204d61c49f617a61262333393b6ec4b16e0d0a2066696b7269206dc3bc6c6b697965742068616b6c6172c4b16ec4b12069686c616c2065646563656b206e6974656c696b7465206661616c697965742067c3b673746572656e0d0a536174c4b163c4b1e280996ec4b16e2073c3b67a6c65c59f6d6573696e69206665736865746d652068616b6bc4b16ec4b12073616b6cc4b1207475746d616b746164c4b1722e0d0a536174c4b163c4b12c206275206d616464652068c3bc6b6dc3bc6ec3bc6e2069686c616c2065746d6573692068616c696e64652053c3b67a6c65c59f6d65e280996e696e0d0a4d6164646520372e35e28099696e696e20757967756c616e616361c49fc4b16ec4b1206b6162756c20656465722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e31302e332e0d0a456e7461204d61c49f617a612c20576562736974657369207665206d6f62696c20757967756c616d6173c4b120c3bc7a6572696e64652067c3b673746572696c656e0d0a6661616c697965746c657264652066696b7269206dc3bc6c6b697965742068616b6c6172c4b16e6120697469626172206564696c6d6573696e652076652062750d0a6b6f6e7564612068657268616e6769206269722069686c616c206f6c6d616d6173c4b16e6120617a616d6920c3b66e656d2067c3b6737465726d656b74656469722e2042750d0a6e6564656e6c652c20676572656b2057656273697465736920676572656b7365206d6f62696c20757967756c616d6173c4b120c3bc7a6572696e64656b692073616874650d0ac3bc72c3bc6e6c6572207665206469c49f6572206865722074c3bc726cc3bc206d61726b612076652066696b7269206dc3bc6c6b697965742068616b6bc4b10d0a69686c616c6c6572696e6520696c69c59f6b696e2062697220757a6c61c59f6d61206d656b616e697a6d6173c4b12079617261746162696c6d656b2076650d0a536174c4b163c4b16c6172e28099c4b16ec4b16e2079617267c4b1206d616b616d6c6172c4b120c3b66ec3bc6e6465207961c59f61796162696c656365c49f690d0a736f72756e6c6172c4b120656e20617a6120696e6469726765796562696c6d656b206164c4b16e6120626972204d61726b61204b6f72756d61204d65726b657a690d0a28e2809c4d65726b657ae2809d29206f6c75c59f7475726d75c59f7475722e204d65726b657a2c2057656273697465736920c3bc7a6572696e64656e0d0a6d61726b6173c4b16ec4b16e2076657961206469c49f65722068657268616e6769206269722066696b7269206dc3bc6c6b697965742068616b6bc4b16ec4b16e0d0a69686c616c206564696c6469c49f696e6920696c6572692073c3bc72656e2068616b2073616869706c6572696e696e20c59f696b617965746c6572696e69206b6162756c0d0a65646572656b2c20627520c59f696b617965746c65726920696e63656c65796563656b7469722e20c59e696b617965746920796572696e64652067c3b6726d6573690d0a68616c696e64652074617261666c6172c4b120757a6c61c59f74c4b1726162696c6d656b206164c4b16e6120536174c4b163c4b120696c6520696c657469c59f696d650d0a6765c3a76572656b2069686c616c65207365626570206f6c616e2069c3a7657269c49f69206b616c64c4b1726d6173c4b16ec4b12074616c65702065646562696c6563656b0d0a76652073c3b67a206b6f6e75737520536174c4b163c4b1e280996ec4b16e2062696c67696c6572696e6920c59f696b61796574207361686962696e650d0a696c65746562696c6563656b7469722e20454e5441204d41c49e415a41e280996e696e20696e63656c656d65796920676572c3a7656b6c65c59f7469726562696c6d656b0d0a6164c4b16e6120656b2062696c67692076652062656c67652074616c65702065746d652068616b6bc4b12073616b6cc4b164c4b1722e20c59ec3bc70686579650d0a6d6168616c2062c4b172616b6d616d616b206164c4b16e612c2073c3b67a206b6f6e757375204d65726b657ae28099696e20616d6163c4b1205765627369746573690d0ac3bc7a6572696e646520676572c3a7656b6c65c59f6562696c6563656b2066696b7269206dc3bc6c6b697965742069686c616c6c6572696e696e20757a6c61c59f6d6163c4b10d0a796f6c6c61726c6120c3a7c3b67ac3bc6dc3bc6e652061726163c4b16cc4b16b2065746d656b74656469722e204d65726b657a2c20456e7461204d61c49f617a61262333393b6ec4b16e0d0a2073c3b67a206b6f6e75737520647572756d6c6172646120626972206b61726172206d6572636969206f6c6172616b20686172656b65742065747469c49f692079612064610d0a736f72756d6c756c756b20c3bc73746c656e6469c49f6920c59f656b6c696e646520796f72756d6c616e616d617a2e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e31312e0d0a4dc39c4342c4b0522053454245503c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e31312e312e0d0a4179616b6c616e6d612c20616d626172676f2c206465766c6574206dc3bc646168616c6573692c20697379616e2c2069c59f67616c2c2073617661c59f2c0d0a73656665726265726c696b2c20677265762c206c6f6b6176742c2069c59f2065796c656d6c657269207665796120626f796b6f746c617220646168696c206f6c6d616b0d0ac3bc7a6572652069c59fc3a7692d69c59f766572656e20616e6c61c59f6d617a6cc4b16b6c6172c4b12c2073696265722073616c64c4b172c4b12c20696c657469c59f696d0d0a736f72756e6c6172c4b12c20616c74796170c4b120766520696e7465726e6574206172c4b17a616c6172c4b12c2073697374656d6520696c69c59f6b696e0d0a6979696c65c59f7469726d6520766579612079656e696c65c59f7469726d6520c3a7616cc4b1c59f6d616c6172c4b12076652062752073656265706c65206d657964616e610d0a67656c6562696c6563656b206172c4b17a616c61722c20656c656b7472696b206b6573696e746973692c2079616e67c4b16e2c207061746c616d612c2066c4b17274c4b16e612c0d0a73656c2c2064657072656d2c2067c3b6c3a72c2073616c67c4b16e2076657961206469c49f65722062697220646fc49f616c2066656c616b657420766579610d0a54617261666c6172e2809964616e20626972696e696e206b6f6e74726f6cc3bc2064c4b1c59fc4b16e646120676572c3a7656b6c65c59f656e2c206b75737572756e64616e0d0a6b61796e616b6c616e6d6179616e207665206d616b756c206f6c6172616b20c3b66e67c3b672c3bc6c656d65796563656b206469c49f6572206f6c61796c61720d0a28224dc3bc6362697220536562657022292054617261666c6172e2809964616e2068657268616e676920626972696e696e0d0a282245746b696c656e656e20546172616622292062752053c3b67a6c65c59f6d65e2809964656e20646fc49f616e0d0a79c3bc6bc3bc6d6cc3bc6cc3bc6b6c6572696e69206966612065746d6573696e6920656e67656c6c6572207665796120676563696b746972697273652c0d0a45746b696c656e656e2054617261662c206469c49f6572205461726166e28099612079617ac4b16cc4b1206f6c6172616b2064657268616c206275204dc3bc636269720d0a5365626570e28099692c2062756e756e6c6120696c67696c692074c3bc6d2064657461796c6172c4b12076652064656c696c6c65726920766520627520647572756d756e0d0a6d756874656d656c2073c3bc726573696e692062696c6469726d656b6c652079c3bc6bc3bc6d6cc3bc64c3bc722e2045746b696c656e656e205461726166204dc3bc636269720d0a5365626570e28099696e20736f6e75c3a76c6172c4b16ec4b120656e67656c6c656d656b20766579612068616669666c65746d656b2069c3a7696e206d616b756c0d0ac3a761626179c4b12067c3b6737465726d656b6c652079c3bc6bc3bc6d6cc3bc64c3bc722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e31312e322e0d0a45746b696c656e656e2054617261662c206275206d6164646564652079657220616c616e2079c3bc6bc3bc6d6cc3bc6cc3bc6b6c6572696e652075796d75c59f0d0a6f6c6d6173c4b1206b617964c4b1796c612c2069666173c4b1204dc3bc6362697220536562657020736f6e7563756e646120656e67656c6c656e656e20766579610d0a676563696b656e2079c3bc6bc3bc6d6cc3bc6cc3bc6b6c6572696e64656e20646f6c6179c4b120736f72756d6c7520747574756c616d617a20766520627520647572756d0d0a69c59f62752053c3b67a6c65c59f6d65e280996e696e206269722069686c616c69206f6c6172616b206b6162756c206564696c6d65796572656b2c206966612069c3a7696e0d0a676572656b6c69206f6c616e2073c3bc72652c2073c3b67a206b6f6e75737520676563696b6d656e696e2073c3bc726573696e652065c59f6974206269722073c3bc72650d0a696c6520757a6174c4b16cc4b1722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e31322e0d0a555947554c414e4143414b2048554b554b20564520555955c59e4d415a4c494b4c4152494e20c387c3965ac39c4dc39c3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e31322e312e0d0ac4b0c59f62752053c3b67a6c65c59f6d65206dc3bc6e686173c4b172616e2054c3bc726b6979652043756d6875726979657469206b616e756e6c6172c4b16e6120746162690d0a6f6c6163616b74c4b1722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e31322e322e0d0ac4b0c59f62752053c3b67a6c65c59f6d65e2809964656e206b61796e616b6c616e616e20766579612069c59f62752053c3b67a6c65c59f6d6520696c650d0a6261c49f6c616e74c4b16cc4b1206f6c616e206865722074c3bc726cc3bc20696874696c61662c20c4b07374616e62756c204d65726b657a2028c38761c49f6c6179616e290d0a4d61686b656d656c65726920766520c4b0637261204dc3bc64c3bc726cc3bc6b6c657269e280996e696e206dc3bc6e686173c4b1722079617267c4b10d0a7965746b6973696e6465206f6c6163616b74c4b1722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e31332e0d0a4d554854454cc4b0462048c39c4bc39c4d4c45523c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e31332e312e0d0a44656c696c2073c3b67a6c65c59f6d6573692e20536174c4b163c4b12c2069c59f62752053c3b67a6c65c59f6d65e2809964656e20646fc49f6162696c6563656b0d0a696874696c61666c617264612054617261666c6172e28099c4b16e207265736d692064656674657220766520746963617269206b6179c4b1746c6172c4b120696c650d0a454e5441204d41c49e415a41e280996e696e207665726920746162616ec4b16e64612c2073756e7563756c6172c4b16e646120747574756c616e20652d6172c59f69760d0a6b6179c4b1746c6172c4b16ec4b16e2c20656c656b74726f6e696b2062696c67696c6572696e2076652062696c67697361796172206b6179c4b1746c6172c4b16ec4b16e2c0d0a6261c49f6c6179c4b163c4b12c206b6573696e207665206dc3bc6e686173c4b1722064656c696c207465c59f6b696c206564656365c49f696e692076652062750d0a6d616464656e696e203631303020736179c4b16cc4b12048756b756b204d7568616b656d656c657269204b616e756e75e280996e756e203139332e206d6164646573690d0a616e6c616dc4b16e64612064656c696c2073c3b67a6c65c59f6d657369206e6974656c69c49f696e6465206f6c6475c49f756e75206b6162756c0d0a656465722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e31332e322e0d0a54617261666c6172c4b16e20c4b06c69c59f6b6973692e20c4b0c59f62752053c3b67a6c65c59f6d65e280996e696e206869c3a76269722068c3bc6b6dc3bc2c0d0a54617261666c61722076657961206f6e6c6172c4b16e206bc3bc6c6c6920766579612063c3bc7ae28099692068616c65666c6572692061726173c4b16e6461206269720d0a6163656e74656c696b2c20626179696c696b2c2064697374726962c3bc74c3b6726cc3bc6b2c206f7274616b6cc4b16b2076657961206f7274616b2067697269c59f696d0d0a696c69c59f6b697369206b7572756c6475c49f7520c59f656b6c696e646520796f72756d6c616e616d617a2e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e31332e332e0d0a53c3b67a6c65c59f6d65e280996e696e2042c3bc74c3bc6e6cc3bcc49fc3bc2e20c4b0c59f62752053c3b67a6c65c59f6d65e280996e696e20656b6c6572692c2069c59f62750d0a53c3b67a6c65c59f6d65e280996e696e20617972c4b16c6d617a2062697220706172c3a76173c4b16ec4b1207465c59f6b696c20656465722076652069c59f62750d0a53c3b67a6c65c59f6d65e28099796c65206269726c696b74652067c3b67a20c3b66ec3bc6e6520616cc4b16ec4b17220766520796f72756d6c616ec4b1722e20c4b0c59f62750d0a53c3b67a6c65c59f6d652c2054617261666c61722061726173c4b16e64616b6920616e6c61c59f6d616ec4b16e2074616d616dc4b16ec4b1206f6c75c59f7475726d616b74610d0a76652069c59f62752053c3b67a6c65c59f6d65e280996e696e206b6f6e7573756e6120696c69c59f6b696e206f6c6172616b2054617261666c61720d0a61726173c4b16e64616b692073c3b67a6cc3bc20766579612079617ac4b16cc4b120c3b66e63656b692074c3bc6d207461736c616b6c6172c4b12c0d0a616e6c61c59f6d616c6172c4b12c2064c3bc7a656e6c656d656c657269207665206d75746162616b6174c4b16e20696c67612065746d656b74656469722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e31332e342e0d0a42c3b66cc3bc6e6562696c69726c696b2e20c4b0c59f62752053c3b67a6c65c59f6d65e280996e696e2068657268616e6769206269722068c3bc6b6dc3bc6ec3bc6e0d0a7965746b696c692068657268616e676920626972206d61686b656d652c207461686b696d206865796574692076657961206964617269206d616b616d0d0a7461726166c4b16e64616e2074c3bc6dc3bc796c652076657961206bc4b1736d656e206765c3a7657273697a207665796120757967756c616e616d617a206f6c6475c49f750d0a76657961206d616b756c206f6c6d6164c4b1c49fc4b16e61206b6172617220766572696c6d6573692068616c696e64652c2073c3b67a206b6f6e7573750d0a6765c3a7657273697a6c696b2c20757967756c616e616d617a6cc4b16b2076657961206d616b756c206f6c6d616d6120c3b66cc3a7c3bc73c3bc6e64652069c59f62750d0a53c3b67a6c65c59f6d652062c3b66cc3bc6e6562696c6972206f6c6172616b206b6162756c206564696c6563656b207665206469c49f65722068c3bc6bc3bc6d6c65720d0a74c3bc6dc3bc796c652079c3bc72c3bc726cc3bc6b7465206b616c6d61796120646576616d2065646563656b7469722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e31332e352e0d0a53c3b67a6c65c59f6d65e280996e696e2044657672692e20536174c4b163c4b12c20456e7461204d61c49f617a61262333393b6ec4b16e2020c3b66e636564656e2079617ac4b16cc4b10d0a6f6e6179c4b16ec4b120616c6d616b73c4b17ac4b16e2069c59f62752053c3b67a6c65c59f6d65e2809964656b692068616b6c6172c4b16ec4b120766579610d0a79c3bc6bc3bc6d6cc3bc6cc3bc6b6c6572696e692074c3bc6dc3bc796c652076657961206bc4b1736d656e2074656d6c696b0d0a6564656d65796563656b7469722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e31332e362e0d0a546164696c20766520466572616761742e2054617261666c6172e2809964616e20626972696e696e2053c3b67a6c65c59f6d65e280996465206b656e646973696e650d0a766572696c656e2068657268616e6769206269722068616b6bc4b1206b756c6c616e6d616d6173c4b120796120646120696372612065746d656d6573692c2073c3b67a0d0a6b6f6e7573752068616b74616e20666572616761742065747469c49f6920616e6c616dc4b16e612067656c6d65796563656b20766579612073c3b67a206b6f6e7573750d0a68616b6bc4b16e206461686120736f6e7261206b756c6c616ec4b16c6d6173c4b16ec4b12079612064612069637261206564696c6d6573696e690d0a656e67656c6c656d65796563656b7469722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e31330d0a286f6e20c3bcc3a729206d616464652076652034202864c3b672742920656b74656e206962617265742062752053c3b67a6c65c59f6d652c2054617261666c6172e2809963610d0a686572206269722068c3bc6b6dc3bc206f6b756e6172616b2c20536174c4b163c4b1207461726166c4b16e64616e20656c656b74726f6e696b206f7274616d64610d0a6f6e61796c616e6d616b20737572657469796c6520616b646564696c6572656b2079c3bc72c3bc726cc3bcc49f65206769726d69c59f7469722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e454b4c45523a0d0a3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e454b2d313a0d0a53616e616c204d61c49f617a612041c3a7c4b16cc4b1c59f20476572656b6c692042656c6765204c6973746573693c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e454b2d323a0d0a596173616b6cc4b120c39c72c3bc6e6c6572204c6973746573693c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e454b2d333a0d0a46696e616e73616c20766520c3967a656c20c387616cc4b1c59f6d6120c59e6172746c6172c4b13c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e454b2d343a0d0a536174c4b1c59f20c4b06c616e207665204b6fc59f756c6c6172c4b13c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e454b2d313c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e53616e616c0d0a4d61c49f617a612041c3a7c4b16cc4b1c59fc4b120c4b0c3a7696e20476572656b6c692042656c6765204c6973746573693c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e5365726d6179650d0ac59f69726b657469206973656e697a3a3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e312e0d0a5665726769206c6576686173c4b120666f746f6b6f706973693c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e322e0d0ac59e69726b6574206b7572756c75c59f207469636172657420736963696c2067617a657465736920666f746f6b6f706973693c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e332e0d0ac4b06d7a61207369726bc3bc6c65726920666f746f6b6f706973693c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e342e0d0ac4b06c67696c69207469636172657420736963696c696e64656e20616cc4b16e6163616b2067c3bc6e63656c206661616c697965742062656c676573696e696e0d0a61736cc4b13c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223ec59e6168c4b1730d0ac59f69726b6574692c207461636972207665796120616469206f7274616b6cc4b16b206973656e697a3a3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e312e0d0a4f7274616b6cc4b16b2073c3b67a6c65c59f6d6573693c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e322e0d0a4ec3bc6675732063c3bc7a64616ec4b120666f746f6b6f706973693c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e332e0d0a4661616c697965742062656c676573693c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e342e0d0ac4b06d7a61207369726bc3bc6c6572693c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e352e0d0a5665726769206c6576686173c4b13c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e454e54410d0a4d41c49e415a412079756b6172c4b1646120736179c4b16c616e2062656c67656c65726520656b206f6c6172616b2c20617972c4b163612062656c67652074616c65700d0a6564696c6562696c6563656b20766520c3bc79656c696b206b6162756c206b61726172c4b16ec4b1206e69686169206f6c6172616b207665726d65207965746b6973696e650d0a7361686970206f6c6163616b74c4b1722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e454b2d323c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e596173616b6cc4b10d0ac39c72c3bc6e6c6572204c6973746573693c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e312e0d0a312e2041697262616720766520656b69706d616e6c6172c4b13c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e322e0d0a416cc4b16d2d736174c4b16dc4b1206465766c657420697a6e696e652074616269206f6c616e20c3bc72c3bc6e6c65723c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e332e0d0a416c6b6f6c6cc3bc2069c3a76563656b6c65723c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e342e0d0a41736b657269207465c3a768697a61743c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e352e0d0a417465c59f6c692073696c61686c61722076652062c4b1c3a7616b6c61723c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e362e0d0a43616e6cc4b12068617976616e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e372e0d0a43696e73656c20616b746976697465796520696c69c59f6b696e20c3bc72c3bc6e6c65723c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e382e0d0ac387616cc4b16e74c4b1206d616c6c61722c2073657269206e756d61726173c4b120c3a7c4b16b6172c4b16c6dc4b1c59f20c3bc72c3bc6e6c65723c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e392e0d0a44656e656d6520426f7975202f206e756d756e652028746573746572292070617266c3bc6d2076652073616972206b6f7a6d6574696b20c3bc72c3bc6e6c6572693c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e31302e0d0a4469c49f6572206b7572756d2c206b7572756c75c59f20766520652d7469636172657420706c6174666f726d6c6172c4b16e61206169742068656469796520c3a7656b690d0a796120646120696e646972696d206b75706f6e6c6172c4b13c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e31312e0d0a44696e6c656d6520636968617a6c6172c4b13c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e31322e0d0a456d6e69796574206b656d657269206164617074c3b672c3bc3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e31332e0d0a48697373652073656e6564692c2074616876696c2c20626f6e6f3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e31342e0d0ac4b06c61c3a720746573746c6572696e69206765c3a76d6579652079c3b66e656c696b2079617264c4b16d63c4b1206d616464656c65723c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e31352e0d0ac4b06e73616e207665206469c49f65722063616e6cc4b1206f7267616e6c6172c4b13c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e31362e0d0a4b61c3a7616b20766520697468616c6174c4b120796173616b20c3bc72c3bc6e6c65723c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e31372e0d0a4b69c59f696c696b2068616b6c6172c4b13c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e31382e0d0a4b6f7079612076652062616e64726f6c73c3bc7a20c3bc72c3bc6e6c65723c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e31392e0d0a4bc3bc6c74c3bc7220766520746162696174207661726cc4b16b6c6172c4b13c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e32302e0d0a4d61796d756e63756b207665206b696c69742061c3a7c4b163c4b16c61723c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e32312e0d0a4d7563697a6576692074656461766920c3bc72c3bc6e20766579612068697a6d65746c6572692c2066616c63c4b16cc4b16b2076652062c3bc79c3bc63c3bc6cc3bc6b0d0a766520736169722068697a6d65746c65723c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e32322e0d0a506f726e6f67726166696b2069c3a76572696b6c69206d616c7a656d656c65723c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e32332e0d0a50726f6d6f73796f6e20c3bc72c3bc6e6c6572693c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e32342e0d0a526164617220646564656b74c3b6726c6572693c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e32352e0d0a5265c3a76574656c6920696c61c3a76c61722c206c656e736c65722076652067c4b164612074616b766979656c6572693c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e32362e0d0a5265736d69206bc4b179616665746c657220766520c3bc6e69666f726d616c61723c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e32372e0d0a53616874652076657961207265706c696b6120c3bc72c3bc6e6c65723c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e32382e0d0a536f7379616c2061c49f207665206469c49f657220696e7465726e657420c3bc79656c696b2068657361706c6172c4b13c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e32392e0d0ac59e616e73206f79756e6c6172c4b12062696c65746c6572693c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e33302e0d0a5461c59fc4b1746c6172c4b16e2079c3b66e6574696d2073697374656d696e65206dc3bc646168616c6520616d6163c4b1796c61206b756c6c616ec4b16c616e0d0a636968617a207665207465c3a768697a61743c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e33312e0d0a54656c69662068616b6bc4b16ec4b1206861697a20c3bc72c3bc6e6c65723c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e33322e0d0a54656c73697a207665206b6f6dc3bc6e696b6173796f6e20636968617a6c6172c4b13c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e33332e0d0a546f706c7520656c656b74726f6e696b20706f7374612061647265736c657269207665206c697374656c6572693c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e33342e0d0a54c3bc74c3bc6e206d616d756c6c65726920766520656c656b74726f6e696b207369676172616c61723c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e33352e0d0a54562064656b6f6465726c65726920766520c59f696672656c6920796179c4b16e20c3a7c3b67ac3bc63c3bc6c65723c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e33362e0d0a557975c59f747572756375206d616464656c65723c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e33372e0d0ac39c72c3bc6e20c3b67a656c6c69c49f69207461c59fc4b16d6179616e20736174c4b1c59f6c61723c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e33382e0d0ac39c72c3bc6e2076617366c4b16e61207361686970206f6c6d6179616e206c697374656c656d656c65723c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e33392e0d0a576562206f7274616dc4b16e64612073616c64c4b1726d612076652070726f6772616d206bc4b1726d612079617ac4b16cc4b16d6c6172c4b13c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e34302e0d0a59616ec4b163c4b1207665207061746c6179c4b163c4b1206d616464656c65723c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e34312e0d0a596173616b6cc4b12068617976616e2074c3bc726c6572693c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e34322e0d0a596173616b6cc4b120796179c4b16e6c61723c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e454b2d343c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e536174c4b1c59f0d0a766520c4b06c616e204b6fc59f756c6c6172c4b13c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e312e0d0a536174c4b163c4b12c2053616e616c204d61c49f617a6173c4b1e280996e646120766520696c616e6c617264612073657267696c656469c49f6920c3bc72c3bc6e2076650d0a68697a6d65746c6572696e20736174c4b1c59fc4b16ec4b16e207665207465c59f686972696e696e2079c3bc72c3bc726cc3bc6b74656b69206d65767a7561740d0a646fc49f72756c747573756e64612068657268616e6769206269722068756b756b612061796bc4b172c4b16cc4b16b2079617261746d6179616361c49fc4b16ec4b12c0d0a68657268616e676920616c646174c4b163c4b12c2079616e6cc4b1c59f207665796120656b73696b2062696c67692069c3a765726d656469c49f696e692c2068616b0d0a69686c616c696e65207365626570206f6c6d6179616361c49fc4b16ec4b12c2073c3b67a206b6f6e75737520696c616e2076652069c3a76572696b6c6572696e0d0a696c67696c69206f6c6475c49f7520c3bc72c3bc6e2076652068697a6d65746c6572696e20696e7465726e657420c3bc7a6572696e646520796179c4b16e6c616e6d6173c4b12c0d0a736174c4b1c59f612061727a206564696c6d65736920766520736174c4b16c6d6173c4b12069c3a7696e2074c3bc6d2068616b2c207965746b692076650d0a736f72756d6c756c75c49f756e206b656e646973696e6465206f6c6475c49f756e75206b6162756c2c20626579616e207665207461616868c3bc740d0a65746d656b74656469722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e322e0d0a536174c4b163c4b12c2053616e616c204d61c49f617a61e2809973c4b16e6461206b6573696e6c696b6c652074616b6c69742f73616874652c20697a696e0d0a676572656b746972656e2076652f7665796120697a6e69206f6c6d6179616e20c3bc72c3bc6e207465c59f6869722065746d65796563656b2076650d0a7361746d61796163616b74c4b1722e20417972c4b1636120536174c4b163c4b12c20454b2d32e2809964652079657220616c616e2022596173616b6cc4b10d0ac39c72c3bc6e6c6572204c697374657369226e696e2069c3a7657269c49f696e692073c3bc72656b6c69206f6c6172616b2074616b69702065646563656b0d0a7665206275206c6973746564652079657220616c616e20c3bc72c3bc6e6c6572696e207465c59f686972696e6920766520736174c4b1c59fc4b16ec4b10d0a7961706d61796163616b74c4b1722e20536174c4b163c4b1e280996ec4b16e20454b2d32e2809964652079657220616c616e20c3bc72c3bc6e6c6572696e0d0a7465c59f686972696e69207665796120736174c4b1c59fc4b16ec4b1207961706d6173c4b12068616c696e64652c2062752066696c6c6572696e2068756b756b610d0a61796bc4b172c4b16cc4b1c49fc4b16e64616e20646f6c6179c4b120456e7461204d61c49f617a61262333393b79612079c3b66e656c74696c6562696c6563656b0d0a74616c65706c6572207665796120c3bcc3a7c3bc6e63c3bc206b69c59f696c6572696e206d61726b612068616b6c6172c4b120646168696c206f6c6d616b20c3bc7a6572650d0a66696b72692076652073c4b16e6169206dc3bc6c6b697965742068616b6c6172c4b16ec4b16e2069686c616c6c6572696e64656e0d0a6b61796e616b6c616e6162696c6563656b2074616c65706c6572696e2074656b206d756861746162c4b120766520736f72756d6c75737520536174c4b163c4b10d0a6f6c6163616b74c4b1722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e332e0d0a536174c4b163c4b12c2057656273697465736920c3bc7a6572696e646520676572c3a7656b6c65c59f7469726469c49f6920696c616e20766520736174c4b1c59f0d0a69c59f6c656d6c6572696e64653b2069c59f62752053c3b67a6c65c59f6d65e280996e696e2068c3bc6bc3bc6d6c6572696e652c20576562736974657369e280996e64650d0a62656c697274696c656e2074c3bc6d20c59f617274207665206b6fc59f756c6c6172612076652079c3bc72c3bc726cc3bc6b74656b69206d65767a756174612c0d0a61686c616b206b7572616c6c6172c4b16e61207665206b616d752064c3bc7a656e696e6520757967756e206f6c6172616b20686172656b65742065746d6579690d0a7461616868c3bc7420656465722e20536174c4b163c4b1e280996ec4b16e2062752068c3bc6bc3bc6d20616b73696e6520796170616361c49fc4b12074c3bc6d0d0a69c59f6c656d2076652065796c656d6c657264652068756b756b692076652063657a616920736f72756d6c756c756b206b656e646973696e65206169740d0a6f6c6163616b74c4b1722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e342e0d0a536174c4b163c4b12c20456e7461204d61c49f617a61262333393b6ec4b16e2020c3b66e636564656e2079617ac4b16cc4b12072c4b17a6173c4b120616cc4b16e6d616b73c4b17ac4b16e0d0a576562736974657369e280996e64652079657220616c616e2069c3a7657269c49f696e2062c3bc74c3bc6ec3bc6ec3bc207665796120626972206bc4b1736dc4b16ec4b10d0a74696361726920616d61c3a76c61726c61206b6f7079616c616d61796163616b2c2069c59f6c656d65796563656b2c206b756c6c616e6d61796163616b20766579610d0a756d756d612061727a2065746d65796563656b7469722e20536174c4b163c4b120617972c4b163612c20456e7461204d61c49f617a61262333393b796120766579610d0a416cc4b163c4b16c6172e2809961207370616d2076657961207a696e6369726c656d6520652d706f7374612067c3b66e6465726d65796563656b7469722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e352e0d0a536174c4b163c4b12c20576562736974657369e280996e64652079c3bc72c3bc7474c3bcc49fc3bc2074c3bc6d206661616c697965746c6572696e690d0a576562736974657369e280996e652074656b6e696b206f6c6172616b206869c3a76269722073757265747465207a61726172207665726d65796563656b20c59f656b696c64650d0a79c3bc72c3bc746d656b6c652079c3bc6bc3bc6d6cc3bc64c3bc722e20536174c4b163c4b12c20576562736974657369e280996e65207361c49f6c6179616361c49fc4b10d0a74c3bc6d2062696c67692c2069c3a76572696b2c206d6174657279616c20766520736169722069c3a7657269c49f696e2073697374656d65207a617261720d0a7665726563656b206865722074c3bc726cc3bc2070726f6772616d2c20766972c3bc732c2079617ac4b16cc4b16d2c206c6973616e73c4b17a20c3bc72c3bc6e2c0d0a7472757661206174c4b12c2076622e20676962692069c3a765726d656d6573692069c3a7696e20676572656b6c69206b6f7275797563752079617ac4b16cc4b16d6c6172c4b10d0a7665206c6973616e736cc4b120c3bc72c3bc6e6c657269206b756c6c616e6d616b2064612064c3a268696c206f6c6d616b20c3bc7a65726520676572656b6c69206865720d0a74c3bc726cc3bc207465646269726920616c64c4b1c49fc4b16ec4b12c206275206d616464652068c3bc6b6dc3bc6ec3bc6e20757967756c616e6d6173c4b10d0a616d6163c4b1796c6120456e7461204d61c49f617a6120207461726166c4b16e64616e2074616c6570206564696c656e20c3b66e6c656d6c6572692064657268616c0d0a616c6d6179c4b1206b6162756c207665207461616868c3bc7420656465722e20536174c4b163c4b120617972c4b1636120576562736974657369e280996e64656b690d0a70726f66696c696e6520726f626f742076657961206f746f6d6174696b2067697269c59f2079c3b66e74656d6c657269796c65206769726d6579656365c49f696e690d0a6b6162756c20656465722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e362e0d0a536174c4b163c4b12c20416cc4b163c4b16c6172e280996c6120576562736974657369e280996e64656e20796170c4b16c6163616b20736174c4b1c59f6c617264610d0a616b646564696c6563656b206d65736166656c6920736174c4b1c59f2073c3b67a6c65c59f6d656c6572696e646520736174c4b163c4b12074617261660d0a6f6c6475c49f756e752c20456e7461204d61c49f617a61262333393b6ec4b16e202069c59f6275206d65736166656c6920736174c4b1c59f2073c3b67a6c65c59f6d6573690d0a696c69c59f6b6973696e6465207461726166206f6c6d6164c4b1c49fc4b16ec4b12c20416cc4b163c4b16c6172e2809961206b6172c59fc4b10d0a79c3bc72c3bc726cc3bc6b74656b692074c3bc6b65746963692068756b756b75206d65767a756174c4b12076652073616972206d65767a756174206b617073616dc4b16e64610d0a68657220616e6c616d64612062697a7a617420736f72756d6c75206f6c6475c49f756e75206b6162756c20766520626579616e20656465722e204275206261c49f6c616d64610d0a536174c4b163c4b12c2053616e616c204d61c49f617a6173c4b1e280996e64612073657267696c656469c49f692076652073617474c4b1c49fc4b12074c3bc6d0d0ac3bc72c3bc6e6c6572696e206b616c69746573696e64656e2c206d65767a7561746120757967756e6c75c49f756e64616e2c20676172616e74692062656c676573690d0a766572696c6d6573696e64656e2c206661747572616c616e64c4b172c4b16c6d6173c4b16e64616e2076652073616972206469c49f657220676572656b6c690d0a62656c67656e696e207465736c696d696e64656e20766520736174c4b1c59f20736f6e726173c4b120676572656b73696e696d20647579756c616e207365727669730d0a76732e2068697a6d65746c6572696e64656e20766520c3bc72c3bc6e6c6572696e2073c3bc726573696e6465207465736c696d206564696c6d6573696e64656e0d0a62697a7a6174207665206dc3bc6e686173c4b172616e20736f72756d6c75206f6c6163616b20766520416cc4b163c4b120697374656b2076652074616c65706c6572696e650d0a6dc3bc6d6bc3bc6e206f6c616e20656e206bc4b173612073c3bc726564652064c3b66ec3bcc59f207961706163616b74c4b1722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e372e0d0a536174c4b163c4b12c2053616e616c204d61c49f617a612061726163c4b16cc4b1c49fc4b1796c612057656273697465736920c3bc7a6572696e20456e74610d0a4d61c49f617a6120646520796179c4b16e6c6164c4b1c49fc4b12074c3bc6d20696c616e2076652069c3a76572696b6c65726c65206261c49f6cc4b164c4b1722076650d0a62756e6c617264616e206b61796e616b6c616e616e2074c3bc6d207461616868c3bc746c6572696e64656e20736f72756d6c75206f6c6163616b74c4b1722e202c0d0a536174c4b163c4b1e280996ec4b16e206661616c697965746c6572696e696e2069c59f62752053c3b67a6c65c59f6d65206b6fc59f756c6c6172c4b16e612076650d0a576562736974657369e280996e646520626579616e206564696c656e20706f6c6974696b612c206b7572616c20766520c59f6172746c6172612075796d616d6173c4b12c0d0a6d65767a756174612061796bc4b172c4b16cc4b16b207465c59f6b696c2065746d6573692c2068756b756b692c2074656b6e696b20766520c3b67a656c6c696b6c650d0a62696c67692067c3bc76656e6c69c49f6920616e6c616dc4b16e6461207269736b206f6c75c59f7475726475c49f756e756e20746573706974206564696c6d6573692c0d0ac3bcc3a7c3bc6e63c3bc206b69c59f696c6572696e20c59f61687369207665207469636172692068616b6c6172c4b16e612068616c656c2067657469726963690d0a6d6168697965747465206f6c6d6173c4b120736562656269796c652c20536174c4b163c4b1e2809979612068657268616e67692062697220c3b66e20696874617264610d0a62756c756e6d6164616e20696c67696c6920696c616e6c6172c4b16e20796179c4b16ec4b16ec4b1206765c3a769636920766579612073c3bc72656b6c69206f6c6172616b0d0a6475726475726162696c69722c20c3bc79656c69c49f692061736bc4b1796120616c6162696c6972207665796120c3bc79656c69c49f6520736f6e0d0a7665726562696c69722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e382e0d0a536174c4b163c4b12c20736174c4b1c59f612073756e6475c49f7520c3bc72c3bc6e2076652068697a6d65746c6572692c206261c59f7461203534363420736179c4b16cc4b10d0a42616e6b61204b6172746c6172c4b1207665204b72656469204b6172746c6172c4b1204b616e756e75207665203635303220736179c4b16cc4b10d0a54c3bc6b65746963696e696e204b6f72756e6d6173c4b12048616b6bc4b16e6461204b616e756e20696c6520696c67696c692079c3b66e65746d656c696b6c6572690d0a6f6c6d616b20c3bc7a65726520696c67696c69206d65767a7561742068c3bc6bc3bc6d6c6572696e692064696b6b61746520616c6172616b20757967756e2076650d0a646fc49f7275206b617465676f72696465206c697374656c656d656b6c652c20c3bc72c3bc6e20766579612068697a6d657420696c6520696c67697369206f6c6d6179616e0d0a6b656c696d656c657269206b756c6c616e6d616d616b6c612c206d65767a756174612061796bc4b172c4b120c3bc72c3bc6e2069c3a76572696b6c6572690d0a6f6c75c59f7475726d616d616b6c612079c3bc6bc3bc6d6cc3bc64c3bc722e20456e7461204d61c49f617a6120207461726166c4b16e64616e20536174c4b163c4b1e280996ec4b16e0d0a68657268616e67692062697220c3bc72c3bc6e20766579612068697a6d657420686174616cc4b1206b617465676f72696c656e6469726469c49f696e696e20766579610d0a4d616c2f48697a6d657420696c6520696c67696c69206f6c6172616b2079616ec4b16c74c4b163c4b12062696c67692076652f766579612069c3a76572696b6c65720d0a796179c4b16e6c6164c4b1c49fc4b16ec4b16e20746573706974206564696c6d6573692068616c696e64652c20456e7461204d61c49f617a6120696c67696c6920c3bc72c3bc6e0d0a766579612068697a6d65746920576562736974657369e280996e64656e206b616c64c4b1726d612068616b6bc4b16e612073616869707469722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e392e0d0a536174c4b163c4b12c206661616c697965746c6572696e69206979696e697965742076652064c3bc72c3bc73746cc3bc6b206b7572616c6c6172c4b16e612075796172616b0d0a766520626173697265746c6920626972207461636972206769626920676572c3a7656b6c65c59f7469726d6579692c20456e7461204d61c49f617a61262333393b6ec4b16e2069c3a70d0a69c59f6c657969c59f696e65207665206f6e6c696e65206f7065726173796f6e6c6172c4b16e61207a6172617220766572656e206661616c697965746c657264656e0d0a6b61c3a7c4b16e6d6179c4b12c206275206661616c697965746c65726c6520696c67696c6920757975c59f6d617a6cc4b16b6c6172646120456e74610d0a4d61c49f617a61262333393b6ec4b16e20206b656e646973696e692064656e6574696d2068616b6bc4b16ec4b16e2062756c756e6475c49f756e75207065c59f696e656e0d0a6b6162756c207665207461616868c3bc7420656465722e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c62723e0d0a3c666f6e7420636f6c6f723d2223336433643365223e3c666f6e7420666163653d22417269616c2c2073616e732d7365726966223e3c666f6e74207374796c653d22666f6e742d73697a653a20397074223e31302e0d0a536174c4b163c4b12c202e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e206d61726b6173c4b1206261c59f7461206f6c6d616b20c3bc7a65726520456e74610d0a4d61c49f617a61262333393b6ec4b16e202076652069c59f746972616b6c6572696e696e207361686970206f6c6475c49f75206d61726b6120766520736169722066696b72692076650d0a73c4b16e6169206dc3bc6c6b6979657465206b6f6e7520c3bc72c3bc6e6c65726920696c652076657961207469636172657420756e76616e6c6172c4b16ec4b10d0a536174c4b163c4b120766579612053616e616c204d61c49f617a612069736d69206f6c6172616b207665796120c3bcc3a7c3bc6e63c3bc20626972206b69c59f696e696e0d0a66696b7269206dc3bc6c6b697965742068616b6c6172c4b1207665206b69c59f696c696b2068616b6c6172c4b120646168696c206f6c6d616b20c3bc7a6572650d0a68657268616e6769206269722068616b6bc4b16ec4b12069686c616c2065646563656b20c59f656b696c6465206b756c6c616e616d617a2e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c2f703e);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `title_seo` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `subtitle` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `category` int(11) NOT NULL,
  `content` longtext COLLATE utf8_turkish_ci NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `hit` int(11) NOT NULL,
  `stock_quantity` int(11) NOT NULL,
  `stock_code` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `stokKalan` int(11) NOT NULL,
  `confirmation` int(1) NOT NULL DEFAULT 0,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `brand` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `payment_method` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `cargo_payment` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `cargo_company` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `store_id`, `title`, `title_seo`, `keyword`, `description`, `subtitle`, `category`, `content`, `price`, `hit`, `stock_quantity`, `stock_code`, `stokKalan`, `confirmation`, `create_date`, `brand`, `payment_method`, `cargo_payment`, `cargo_company`) VALUES
(1, 4, 'Elbise 01', 'elbise-01', '', '', '', 9, '', '100.00', 0, 1, 'elbise001', 0, 0, '2018-06-23 15:35:53', '', 'Havale / Eft', '1', 0),
(2, 4, 'Elbise 02', 'elbise-02', '', '', '', 9, '', '100.00', 0, 1, 'elbise0', 0, 0, '2018-06-23 15:37:09', '', 'Havale / Eft', '1', 0),
(3, 4, 'Elbise 03', 'elbise-03', '', '', '', 9, '', '100.00', 0, 1, 'elbise0', 0, 0, '2018-06-23 15:37:59', '', 'Havale / Eft', '1', 0),
(4, 4, 'Elbise 04', 'elbise-04', '', '', '', 9, '', '100.00', 0, 1, 'elbise0', 0, 0, '2018-06-23 15:38:52', '', 'Havale / Eft', '1', 0),
(5, 4, 'Elbise 05', 'elbise-05', '', '', '', 9, '', '100.00', 0, 1, 'elbise0', 0, 0, '2018-06-23 15:39:39', '', 'Havale / Eft', '1', 0),
(6, 4, 'Elbise 06', 'elbise-06', '', '', '', 9, '', '100.00', 0, 1, 'elbise0', 0, 0, '2018-06-23 15:40:45', '', 'Havale / Eft', '1', 0),
(7, 4, 'Elbise 07', 'elbise-07', '', '', '', 9, '', '100.00', 0, 1, 'elbise0', 0, 0, '2018-06-23 15:42:29', '', 'Havale / Eft', '1', 0),
(8, 4, 'Elbise 08', 'elbise-08', '', '', '', 9, '', '100.00', 0, 1, 'elbise007', 0, 0, '2018-06-23 15:43:59', '', 'Havale / Eft', '1', 0),
(9, 4, 'Elbise 09', 'elbise-09', '', '', '', 9, '', '100.00', 0, 1, 'elbise009', 0, 0, '2018-06-23 15:54:23', '', 'Havale / Eft', '1', 0),
(10, 4, 'Elbise 10', 'elbise-10', '', '', '', 9, '', '100.00', 0, 1, 'elbise10', 0, 0, '2018-06-23 15:55:15', '', 'Havale / Eft', '1', 0),
(11, 4, 'Elbise 11', 'elbise-11', '', '', '', 9, '', '100.00', 0, 1, 'elbise11', 0, 0, '2018-06-23 15:57:23', '', 'Havale / Eft', '1', 0),
(12, 4, 'Elbise 12', 'elbise-12', '', '', '', 9, '', '100.00', 0, 1, 'elbise12', 0, 0, '2018-06-23 16:06:12', '', 'Havale / Eft', '1', 0),
(13, 4, 'Elbise 13', 'elbise-13', '', '', '', 9, '', '100.00', 0, 1, 'elbise013', 0, 0, '2018-06-23 17:00:28', '', 'Havale / Eft', '1', 0),
(14, 4, 'Elbise 14', 'elbise-14', '', '', '', 9, '', '100.00', 0, 1, 'elbise014', 0, 0, '2018-06-23 17:01:20', '', 'Havale / Eft', '1', 0),
(15, 4, 'Elbise 15', 'elbise-15', '', '', '', 9, '', '100.00', 0, 1, 'elbise15', 0, 0, '2018-06-23 17:02:49', '', 'Havale / Eft', '1', 0),
(16, 4, 'Elbise 16', 'elbise-16', '', '', '', 9, '', '100.00', 0, 1, 'elbise16', 0, 0, '2018-06-23 17:05:57', '', 'Havale / Eft', '1', 0),
(17, 4, 'Elbise 17', 'elbise-17', '', '', '', 9, '', '100.00', 0, 1, 'elbise17', 0, 0, '2018-06-23 17:06:52', '', 'Havale / Eft', '1', 0),
(18, 4, 'Elbise 18', 'elbise-18', '', '', '', 9, '', '100.00', 0, 1, 'elbise18', 0, 0, '2018-06-23 17:08:47', '', 'Havale / Eft', '1', 0),
(19, 4, 'Elbise 19', 'elbise-19', '', '', '', 9, '', '100.00', 0, 1, 'elbise19', 0, 0, '2018-06-23 17:10:51', '', 'Havale / Eft', '1', 0),
(20, 4, 'Elbise 20', 'elbise-20', '', '', '', 9, '', '100.00', 0, 1, 'elbise20', 0, 0, '2018-06-23 17:13:20', '', 'Havale / Eft', '1', 0),
(21, 4, 'Elbise 21', 'elbise-21', '', '', '', 9, '', '100.00', 0, 1, 'elbise21', 0, 0, '2018-06-23 17:14:31', '', 'Havale / Eft', '1', 0),
(22, 4, 'Elbise 22', 'elbise-22', '', '', '', 9, '', '100.00', 0, 1, 'elbise22', 0, 0, '2018-06-23 17:16:25', '', 'Havale / Eft', '1', 0),
(23, 4, 'Elbise 23', 'elbise-23', '', '', '', 9, '', '100.00', 0, 1, 'elbise23', 0, 0, '2018-06-23 17:17:30', '', 'Havale / Eft', '1', 0),
(24, 4, 'Elbise 24', 'elbise-24', '', '', '', 9, '', '100.00', 0, 1, 'elbise24', 0, 0, '2018-06-23 17:19:22', '', 'Havale / Eft', '1', 0),
(25, 4, 'Elbise 25', 'elbise-25', '', '', '', 9, '', '100.00', 0, 1, 'elbise25', 0, 0, '2018-06-23 17:22:53', '', 'Havale / Eft', '1', 0),
(26, 4, 'Elbise 26', 'elbise-26', '', '', '', 9, '', '100.00', 0, 1, 'elbise26', 0, 0, '2018-06-23 17:26:20', '', 'Havale / Eft', '1', 0),
(27, 4, 'Elbise 27', 'elbise-27', '', '', '', 9, '', '100.00', 0, 1, 'elbise27', 0, 0, '2018-06-23 17:27:30', '', 'Havale / Eft', '1', 0),
(28, 4, 'Elbise 28', 'elbise-28', '', '', '', 9, '', '100.00', 0, 1, 'elbise28', 0, 0, '2018-06-23 17:28:30', '', 'Havale / Eft', '1', 0),
(29, 4, 'Elbise 29', 'elbise-29', '', '', '', 9, '', '100.00', 0, 1, 'elbise29', 0, 0, '2018-06-23 17:29:41', '', 'Havale / Eft', '1', 0),
(30, 4, 'Elbise 30', 'elbise-30', '', '', '', 9, '', '100.00', 0, 1, 'elbise30', 0, 0, '2018-06-23 17:34:21', '', 'Havale / Eft', '1', 0),
(31, 4, 'Elbise 31', 'elbise-31', '', '', '', 9, '', '100.00', 0, 1, 'elbise31', 0, 0, '2018-06-23 17:35:50', '', 'Havale / Eft', '1', 0),
(32, 4, 'Elbise 32', 'elbise-32', '', '', '', 9, '', '100.00', 0, 1, 'elbise32', 0, 0, '2018-06-23 17:37:08', '', 'Havale / Eft', '1', 0),
(33, 4, 'Elbise 33', 'elbise-33', '', '', '', 9, '', '100.00', 0, 1, 'elbise33', 0, 0, '2018-06-23 17:38:20', '', 'Havale / Eft', '1', 0),
(34, 4, 'Elbise 34', 'elbise-34', '', '', '', 9, '', '100.00', 0, 1, 'elbise34', 0, 0, '2018-06-23 17:39:07', '', 'Havale / Eft', '1', 0),
(35, 4, 'Elbise 35', 'elbise-35', '', '', '', 9, '', '100.00', 0, 1, 'elbise35', 0, 0, '2018-06-23 17:41:36', '', 'Havale / Eft', '1', 0),
(36, 4, 'Elbise 36', 'elbise-36', '', '', '', 9, '', '100.00', 0, 1, 'elbise36', 0, 0, '2018-06-23 22:59:22', '', 'Havale / Eft', '1', 0),
(37, 4, 'Elbise 37', 'elbise-37', '', '', '', 9, '', '100.00', 0, 1, 'elbise37', 0, 0, '2018-06-23 23:01:01', '', 'Havale / Eft', '1', 0),
(38, 4, 'Elbise 38', 'elbise-38', '', '', '', 9, '', '100.00', 0, 1, 'elbisee38', 0, 0, '2018-06-23 23:03:02', '', 'Havale / Eft', '1', 0),
(39, 4, 'Elbise 39', 'elbise-39', '', '', '', 9, '', '100.00', 0, 1, 'elbise39', 0, 0, '2018-06-23 23:04:49', '', 'Havale / Eft', '1', 0),
(40, 4, 'Elbise 40', 'elbise-40', '', '', '', 9, '', '100.00', 0, 1, 'elbise40', 0, 0, '2018-06-23 23:06:23', '', 'Havale / Eft', '1', 0),
(41, 4, 'Elbise 41', 'elbise-41', '', '', '', 9, '', '100.00', 0, 1, 'elbise41', 0, 0, '2018-06-24 05:59:31', '', 'Havale / Eft', '1', 0),
(42, 4, 'Elbise 42', 'elbise-42', '', '', '', 9, '', '100.00', 0, 1, 'elbise42', 0, 0, '2018-06-24 06:01:09', '', 'Havale / Eft', '1', 0),
(43, 4, 'Elbise 43', 'elbise-43', '', '', '', 9, '', '100.00', 0, 1, 'elbise43', 0, 0, '2018-06-24 06:52:04', '', 'Havale / Eft', '1', 0),
(44, 4, 'Elbise 44', 'elbise-44', '', '', '', 9, '', '100.00', 0, 1, 'elbise44', 0, 0, '2018-06-24 06:55:13', '', 'Havale / Eft', '1', 0),
(45, 4, 'Elbise 45', 'elbise-45', '', '', '', 9, '', '100.00', 0, 1, 'elbise45', 0, 0, '2018-06-24 06:56:13', '', 'Havale / Eft', '1', 0),
(46, 4, 'Elbise 46', 'elbise-46', '', '', '', 9, '', '100.00', 0, 1, 'elbise46', 0, 0, '2018-06-24 06:57:17', '', 'Havale / Eft', '1', 0),
(47, 4, 'Elbise 47', 'elbise-47', '', '', '', 9, '', '100.00', 0, 1, 'elbise47', 0, 0, '2018-06-24 06:58:47', '', 'Havale / Eft', '1', 0),
(48, 4, 'Elbise 48', 'elbise-48', '', '', '', 9, '', '100.00', 0, 1, 'elbise48', 0, 0, '2018-06-24 20:22:05', '', 'Havale / Eft', '1', 0),
(49, 4, 'Elbise 49', 'elbise-49', '', '', '', 9, '', '100.00', 0, 1, 'elbise49', 0, 0, '2018-06-24 20:22:46', '', 'Havale / Eft', '1', 0),
(50, 4, 'Elbise 50', 'elbise-50', '', '', '', 9, '', '100.00', 0, 1, 'elbise50', 0, 0, '2018-06-24 20:24:00', '', 'Havale / Eft', '1', 0),
(51, 4, 'Elbise 51', 'elbise-51', '', '', '', 9, '', '100.00', 0, 1, 'elbise-51', 0, 0, '2018-06-24 20:25:13', '', 'Havale / Eft', '1', 0),
(52, 4, 'Elbise 52', 'elbise-52', '', '', '', 9, '', '100.00', 0, 1, 'elbise-52', 0, 0, '2018-06-24 20:26:19', '', 'Havale / Eft', '1', 0),
(53, 4, 'Elbise 53', 'elbise-53', '', '', '', 9, '', '100.00', 0, 1, 'elbise-53', 0, 0, '2018-06-24 20:27:03', '', 'Havale / Eft', '1', 0),
(54, 4, 'Elbise 54', 'elbise-54', '', '', '', 9, '', '100.00', 0, 1, 'elbise-54', 0, 0, '2018-06-24 20:28:13', '', 'Havale / Eft', '1', 0),
(55, 4, 'Elbise 55', 'elbise-55', '', '', '', 9, '', '100.00', 0, 1, 'elbise-55', 0, 0, '2018-06-24 20:29:12', '', 'Havale / Eft', '1', 0),
(56, 4, 'Elbise 56', 'elbise-56', '', '', '', 9, '', '100.00', 0, 1, 'elbise-56', 0, 0, '2018-06-24 20:37:08', '', 'Havale / Eft', '1', 0),
(57, 4, 'Elbise 57', 'elbise-57', '', '', '', 9, '', '100.00', 0, 1, 'elbise-57', 0, 0, '2018-06-24 20:38:05', '', 'Havale / Eft', '1', 0),
(58, 4, 'Elbise 58', 'elbise-58', '', '', '', 9, '', '100.00', 0, 1, 'elbise-58', 0, 0, '2018-06-24 20:38:44', '', 'Havale / Eft', '1', 0),
(59, 4, 'Eşarp 01', 'esarp-01', '', '', '', 22, '', '100.00', 0, 1, 'esarp-01', 0, 0, '2018-06-24 21:16:29', '', 'Havale / Eft', '1', 0),
(60, 4, 'Eşarp 02', 'esarp-02', '', '', '', 22, '', '100.00', 0, 1, 'esarp-02', 0, 0, '2018-06-24 22:46:02', '', 'Havale / Eft', '1', 0),
(61, 4, 'Eşarp 03', 'esarp-03', '', '', '', 22, '', '100.00', 0, 1, 'esarp-03', 0, 0, '2018-06-25 05:18:47', '', 'Havale / Eft', '1', 0),
(62, 4, 'Eşarp 04', 'esarp-04', '', '', '', 22, '', '100.00', 0, 1, 'esarp-04', 0, 0, '2018-06-25 05:19:45', '', 'Havale / Eft', '1', 0),
(63, 4, 'Eşarp 05', 'esarp-05', '', '', '', 22, '', '100.00', 0, 1, 'esarp-05', 0, 0, '2018-06-25 05:20:36', '', 'Havale / Eft', '1', 0),
(64, 4, 'Eşarp 06', 'esarp-06', '', '', '', 22, '', '100.00', 0, 1, 'esarp-06', 0, 0, '2018-06-25 05:21:21', '', 'Havale / Eft', '1', 0),
(65, 4, 'Eşarp 07', 'esarp-07', '', '', '', 22, '', '100.00', 0, 1, 'esarp-07', 0, 0, '2018-06-25 05:21:57', '', 'Havale / Eft', '1', 0),
(66, 4, 'Eşarp 08', 'esarp-08', '', '', '', 22, '', '100.00', 0, 1, 'esarp-08', 0, 0, '2018-06-25 05:22:35', '', 'Havale / Eft', '1', 0),
(67, 4, 'Eşarp 09', 'esarp-09', '', '', '', 22, '', '100.00', 0, 1, 'esarp-09', 0, 0, '2018-06-25 05:23:28', '', 'Havale / Eft', '1', 0),
(68, 4, 'Eşarp 10', 'esarp-10', '', '', '', 22, '', '100.00', 0, 1, 'esarp-10', 0, 0, '2018-06-25 05:24:08', '', 'Havale / Eft', '1', 0),
(69, 4, 'Eşarp 11', 'esarp-11', '', '', '', 22, '', '100.00', 0, 1, 'esarp-11', 0, 0, '2018-06-25 05:35:33', '', 'Havale / Eft', '1', 0),
(70, 4, 'Eşarp 12', 'esarp-12', '', '', '', 22, '', '100.00', 0, 1, 'esarp-12', 0, 0, '2018-06-25 14:24:27', '', 'Havale / Eft', '1', 0),
(71, 4, 'Eşarp 13', 'esarp-13', '', '', '', 22, '', '100.00', 0, 1, 'esarp-13', 0, 0, '2018-06-25 14:25:14', '', 'Havale / Eft', '1', 0),
(72, 4, 'Eşarp 14', 'esarp-14', '', '', '', 22, '', '100.00', 0, 1, 'esarp-14', 0, 0, '2018-06-25 14:26:02', '', 'Havale / Eft', '1', 0),
(73, 4, 'Eşarp 15', 'esarp-15', '', '', '', 22, '', '100.00', 0, 1, 'esarp-15', 0, 0, '2018-06-25 14:26:46', '', 'Havale / Eft', '1', 0),
(74, 4, 'Eşarp 16', 'esarp-16', '', '', '', 22, '', '100.00', 0, 1, 'esarp-16', 0, 0, '2018-06-25 14:27:47', '', 'Havale / Eft', '1', 0),
(75, 4, 'Eşarp 17', 'esarp-17', '', '', '', 22, '', '100.00', 0, 1, 'esarp-17', 0, 0, '2018-06-25 14:28:21', '', 'Havale / Eft', '1', 0),
(76, 4, 'Eşarp 18', 'esarp-18', '', '', '', 22, '', '100.00', 0, 1, 'esarp-18', 0, 0, '2018-06-25 14:28:53', '', 'Havale / Eft', '1', 0),
(77, 4, 'Eşarp 19', 'esarp-19', '', '', '', 22, '', '100.00', 0, 1, 'esarp-19', 0, 0, '2018-06-25 14:29:27', '', 'Havale / Eft', '1', 0),
(78, 4, 'Eşarp 20', 'esarp-20', '', '', '', 22, '', '100.00', 0, 1, 'esarp-20', 0, 0, '2018-06-25 14:30:04', '', 'Havale / Eft', '1', 0),
(79, 4, 'Eşarp 21', 'esarp-21', '', '', '', 22, '', '100.00', 0, 1, 'esarp-21', 0, 0, '2018-06-25 14:30:32', '', 'Havale / Eft', '1', 0),
(80, 4, 'Şal 01', 'sal-01', '', '', '', 21, '', '100.00', 0, 1, 'sal-01', 0, 0, '2018-06-25 14:49:13', '', 'Havale / Eft', '1', 0),
(81, 4, 'Şal 02', 'sal-02', '', '', '', 21, '', '100.00', 0, 1, 'sal-02', 0, 0, '2018-06-25 14:49:41', '', 'Havale / Eft', '1', 0),
(82, 4, 'Şal 03', 'sal-03', '', '', '', 21, '', '100.00', 0, 1, 'sal-03', 0, 0, '2018-06-25 14:50:20', '', 'Havale / Eft', '1', 0),
(83, 4, 'şal 04', 'sal-04', '', '', '', 21, '', '100.00', 0, 1, 'sal-04', 0, 0, '2018-06-25 14:50:47', '', 'Havale / Eft', '1', 0),
(84, 4, 'Kolye 01', 'kolye-01', '', '', '', 39, '', '100.00', 0, 1, 'kolye01', 0, 0, '2018-06-25 21:50:05', '', 'Havale / Eft', '1', 0),
(85, 4, 'Kolye 02', 'kolye-02', '', '', '', 39, '', '100.00', 0, 1, 'kolye02', 0, 0, '2018-06-25 21:50:56', '', 'Havale / Eft', '1', 0),
(86, 4, 'Kolye 03', 'kolye-03', '', '', '', 39, '', '100.00', 0, 1, 'kolye03', 0, 0, '2018-06-25 21:51:37', '', 'Havale / Eft', '1', 0),
(87, 4, 'Kolye 04', 'kolye-04', '', '', '', 39, '', '100.00', 0, 1, 'kolye04', 0, 0, '2018-06-25 21:52:12', '', 'Havale / Eft', '1', 0),
(88, 4, 'Kolye 05', 'kolye-05', '', '', '', 39, '', '100.00', 0, 1, 'kolye05', 0, 0, '2018-06-25 21:52:46', '', 'Havale / Eft', '1', 0),
(89, 4, 'Kolye 06', 'kolye-06', '', '', '', 39, '', '100.00', 0, 1, 'kolye-06', 0, 0, '2018-06-25 22:00:31', '', 'Havale / Eft', '1', 0),
(90, 4, 'Kolye 07', 'kolye-07', '', '', '', 39, '', '100.00', 0, 1, 'kolye-07', 0, 0, '2018-06-25 22:01:16', '', 'Havale / Eft', '1', 0),
(91, 4, 'Kolye 08', 'kolye-08', '', '', '', 39, '', '100.00', 0, 1, 'kolye-08', 0, 0, '2018-06-25 22:01:57', '', 'Havale / Eft', '1', 0),
(92, 4, 'Kolye 09', 'kolye-09', '', '', '', 39, '', '100.00', 0, 1, 'kolye-09', 0, 0, '2018-06-25 22:02:27', '', 'Havale / Eft', '1', 0),
(93, 4, 'Kolye 10', 'kolye-10', '', '', '', 39, '', '100.00', 0, 1, 'kolye-10', 0, 0, '2018-06-25 22:02:55', '', 'Havale / Eft', '1', 0),
(94, 4, 'Kolye 11', 'kolye-11', '', '', '', 39, '', '100.00', 0, 1, 'kolye-11', 0, 0, '2018-06-25 22:03:44', '', 'Havale / Eft', '1', 0),
(95, 4, 'Kolye 12', 'kolye-12', '', '', '', 39, '', '100.00', 0, 1, 'kolye-12', 0, 0, '2018-06-25 22:04:03', '', 'Havale / Eft', '1', 0),
(96, 4, 'Kolye 13', 'kolye-13', '', '', '', 39, '', '100.00', 0, 1, 'kolye-13', 0, 0, '2018-06-25 22:04:36', '', 'Havale / Eft', '1', 0),
(97, 4, 'Kolye 14', 'kolye-14', '', '', '', 39, '', '100.00', 0, 1, 'kolye-14', 0, 0, '2018-06-25 22:05:06', '', 'Havale / Eft', '1', 0),
(98, 4, 'Kolye 15', 'kolye-15', '', '', '', 39, '', '100.00', 0, 1, 'kolye-15', 0, 0, '2018-06-25 22:05:44', '', 'Havale / Eft', '1', 0),
(99, 4, 'Kolye 16', 'kolye-16', '', '', '', 39, '', '100.00', 0, 1, 'kolye-17', 0, 0, '2018-06-25 22:06:22', '', 'Havale / Eft', '1', 0),
(101, 4, 'Kolye 17', 'kolye-17', '', '', '', 39, '', '100.00', 0, 1, 'kolye-17', 0, 0, '2018-06-25 22:09:12', '', 'Havale / Eft', '1', 0),
(102, 4, 'Kolye 18', 'kolye-18', '', '', '', 39, '', '100.00', 0, 1, 'kolye-18', 0, 0, '2018-06-25 22:10:16', '', 'Havale / Eft', '1', 0),
(103, 4, 'Kolye 19', 'kolye-19', '', '', '', 39, '', '100.00', 0, 1, 'kolye-19', 0, 0, '2018-06-25 22:11:47', '', 'Havale / Eft', '1', 0),
(104, 4, 'Kolye 20', 'kolye-20', '', '', '', 39, '', '100.00', 0, 1, 'kolye-20', 0, 0, '2018-06-25 22:13:19', '', 'Havale / Eft', '1', 0),
(105, 4, 'Kolye 21', 'kolye-21', '', '', '', 39, '', '100.00', 0, 1, 'kolye-21', 0, 0, '2018-06-25 22:13:48', '', 'Havale / Eft', '1', 0),
(106, 4, 'Kolye 22', 'kolye-22', '', '', '', 39, '', '100.00', 0, 1, 'kolye-22', 0, 0, '2018-06-25 22:13:51', '', 'Havale / Eft', '1', 0),
(107, 4, 'Kolye 23', 'kolye-23', '', '', '', 39, '', '100.00', 0, 1, 'kolye-23', 0, 0, '2018-06-25 22:17:46', '', 'Havale / Eft', '1', 0),
(108, 4, 'Kolye 24', 'kolye-24', '', '', '', 39, '', '100.00', 0, 1, 'kolye-24', 0, 0, '2018-06-25 22:18:20', '', 'Havale / Eft', '1', 0),
(109, 4, 'Kolye 25', 'kolye-25', '', '', '', 39, '', '100.00', 0, 1, 'kolye-25', 0, 0, '2018-06-25 22:19:19', '', 'Havale / Eft', '1', 0),
(110, 4, 'Kolye 26', 'kolye-26', '', '', '', 39, '', '100.00', 0, 1, 'kolye-26', 0, 0, '2018-06-25 22:19:55', '', 'Havale / Eft', '1', 0),
(111, 4, 'Kolye 27', 'kolye-27', '', '', '', 39, '', '100.00', 0, 1, 'kolye-27', 0, 0, '2018-06-25 22:20:48', '', 'Havale / Eft', '1', 0),
(112, 4, 'Eşarp 22', 'esarp-22', '', '', '', 22, '', '100.00', 0, 1, 'esarp-22', 0, 0, '2018-06-26 15:01:53', '', 'Havale / Eft', '1', 0),
(113, 4, 'Eşarp 23', 'esarp-23', '', '', '', 22, '', '100.00', 0, 1, 'esarp-23', 0, 0, '2018-06-26 15:02:20', '', 'Havale / Eft', '1', 0),
(114, 4, 'Eşarp 24', 'esarp-24', '', '', '', 22, '', '100.00', 0, 1, 'esarp-24', 0, 0, '2018-06-26 15:02:51', '', 'Havale / Eft', '1', 0),
(115, 4, 'Eşarp 25', 'esarp-25', '', '', '', 22, '', '100.00', 0, 1, 'esarp-25', 0, 0, '2018-06-26 15:03:16', '', 'Havale / Eft', '1', 0),
(116, 4, 'Eşarp 26', 'esarp-26', '', '', '', 22, '', '100.00', 0, 1, 'esarp-26', 0, 0, '2018-06-26 15:03:44', '', 'Havale / Eft', '1', 0),
(117, 4, 'Eşarp 27', 'esarp-27', '', '', '', 22, '', '100.00', 0, 1, 'esarp-27', 0, 0, '2018-06-26 15:04:37', '', 'Havale / Eft', '1', 0),
(118, 4, 'Eşarp 28', 'esarp-28', '', '', '', 22, '', '100.00', 0, 1, 'esarp-28', 0, 0, '2018-06-26 15:05:08', '', 'Havale / Eft', '1', 0),
(119, 4, 'Eşarp 29', 'esarp-29', '', '', '', 22, '', '100.00', 0, 1, 'esarp-29', 0, 0, '2018-06-26 16:29:38', '', 'Havale / Eft', '1', 0),
(120, 4, 'Eşarp 30', 'esarp-30', '', '', '', 22, '', '100.00', 0, 1, 'esarp-30', 0, 0, '2018-06-27 19:26:21', '', 'Havale / Eft', '1', 0),
(121, 4, 'Eşarp 31', 'esarp-31', '', '', '', 22, '', '100.00', 0, 1, 'esarp-31', 0, 0, '2018-06-27 19:26:49', '', 'Havale / Eft', '1', 0),
(122, 4, 'Eşarp 32', 'esarp-32', '', '', '', 22, '', '100.00', 0, 1, 'esarp-32', 0, 0, '2018-06-27 19:27:13', '', 'Havale / Eft', '1', 0),
(123, 4, 'Eşarp 33', 'esarp-33', '', '', '', 22, '', '100.00', 0, 1, 'esarp-33', 0, 0, '2018-06-27 19:27:38', '', 'Havale / Eft', '1', 0),
(124, 4, 'Eşarp 34', 'esarp-34', '', '', '', 22, '', '100.00', 0, 1, 'esarp-34', 0, 0, '2018-06-27 19:28:04', '', 'Havale / Eft', '1', 0),
(125, 4, 'Eşarp 35', 'esarp-35', '', '', '', 22, '', '100.00', 0, 1, 'esarp-35', 0, 0, '2018-06-27 19:28:35', '', 'Havale / Eft', '1', 0),
(126, 4, 'Eşarp 36', 'esarp-36', '', '', '', 22, '', '100.00', 0, 1, 'esarp-36', 0, 0, '2018-06-27 19:30:00', '', 'Havale / Eft', '1', 0),
(127, 4, 'Eşarp 37', 'esarp-37', '', '', '', 22, '', '100.00', 0, 1, 'esarp-37', 0, 0, '2018-06-27 19:30:27', '', 'Havale / Eft', '1', 0),
(128, 4, 'Eşarp 38', 'esarp-38', '', '', '', 22, '', '100.00', 0, 1, 'esarp-38', 0, 0, '2018-06-27 19:31:21', '', 'Havale / Eft', '1', 0),
(129, 4, 'Eşarp 39', 'esarp-39', '', '', '', 22, '', '100.00', 0, 1, 'esarp-39', 0, 0, '2018-06-27 19:33:04', '', 'Havale / Eft', '1', 0),
(130, 4, 'Eşarp 40', 'esarp-40', '', '', '', 22, '', '100.00', 0, 1, 'esarp-40', 0, 0, '2018-06-27 19:33:32', '', 'Havale / Eft', '1', 0),
(131, 4, 'Eşarp 41', 'esarp-41', '', '', '', 22, '', '100.00', 0, 1, 'esarp-41', 0, 0, '2018-06-27 19:34:09', '', 'Havale / Eft', '1', 0),
(132, 4, 'Eşarp 42', 'esarp-42', '', '', '', 22, '', '100.00', 0, 1, 'esarp-42', 0, 0, '2018-06-27 19:34:40', '', 'Havale / Eft', '1', 0),
(133, 4, 'Eşarp 43', 'esarp-43', '', '', '', 22, '', '100.00', 0, 1, 'esarp-43', 0, 0, '2018-06-27 19:35:13', '', 'Havale / Eft', '1', 0),
(134, 4, 'Eşarp 44', 'esarp-44', '', '', '', 22, '', '100.00', 0, 1, 'esarp-44', 0, 0, '2018-06-27 19:35:42', '', 'Havale / Eft', '1', 0),
(135, 4, 'Eşarp 45', 'esarp-45', '', '', '', 22, '', '100.00', 0, 1, 'esarp-45', 0, 0, '2018-06-28 21:48:34', '', 'Havale / Eft', '1', 0),
(136, 4, 'Eşarp 46', 'esarp-46', '', '', '', 22, '', '100.00', 0, 1, 'esarp-46', 0, 0, '2018-06-28 21:49:13', '', 'Havale / Eft', '1', 0),
(137, 4, 'Eşarp 47', 'esarp-47', '', '', '', 22, '', '100.00', 0, 1, 'esarp-47', 0, 0, '2018-06-28 21:49:42', '', 'Havale / Eft', '1', 0),
(138, 4, 'Eşarp 48', 'esarp-48', '', '', '', 22, '', '100.00', 0, 1, 'esarp-48', 0, 0, '2018-06-28 21:50:12', '', 'Havale / Eft', '1', 0),
(139, 4, 'Eşarp 49', 'esarp-49', '', '', '', 22, '', '100.00', 0, 1, 'esarp-49', 0, 0, '2018-06-28 21:50:55', '', 'Havale / Eft', '1', 0),
(140, 4, 'Eşarp 50', 'esarp-50', '', '', '', 22, '', '100.00', 0, 1, 'esarp-50', 0, 0, '2018-06-28 21:51:23', '', 'Havale / Eft', '1', 0),
(141, 4, 'Eşarp 51', 'esarp-51', '', '', '', 22, '', '100.00', 0, 1, 'esarp-51', 0, 0, '2018-07-02 18:32:48', '', 'Havale / Eft', '1', 0),
(142, 4, 'Eşarp 52', 'esarp-52', '', '', '', 22, '', '100.00', 0, 1, 'esarp-52', 0, 0, '2018-07-02 18:35:03', '', 'Havale / Eft', '1', 0),
(143, 4, 'Eşarp 53', 'esarp-53', '', '', '', 22, '', '100.00', 0, 1, 'esarp-53', 0, 0, '2018-07-02 18:35:47', '', 'Havale / Eft', '1', 0),
(144, 4, 'Eşarp 54', 'esarp-54', '', '', '', 22, '', '100.00', 0, 1, 'esarp-54', 0, 0, '2018-07-02 18:36:19', '', 'Havale / Eft', '1', 0),
(145, 4, 'Eşarp 55', 'esarp-55', '', '', '', 22, '', '100.00', 0, 1, 'esarp-55', 0, 0, '2018-07-02 18:37:05', '', 'Havale / Eft', '1', 0),
(146, 4, 'Eşarp 56', 'esarp-56', '', '', '', 22, '', '100.00', 0, 1, 'esarp-56', 0, 0, '2018-07-02 18:37:31', '', 'Havale / Eft', '1', 0),
(147, 4, 'Eşarp 57', 'esarp-57', '', '', '', 22, '', '100.00', 0, 1, 'esarp-57', 0, 0, '2018-07-02 18:38:01', '', 'Havale / Eft', '1', 0),
(148, 4, 'Eşarp 58', 'esarp-58', '', '', '', 22, '', '100.00', 0, 1, 'esarp-58', 0, 0, '2018-07-02 18:38:42', '', 'Havale / Eft', '1', 0),
(149, 4, 'Eşarp 59', 'esarp-59', '', '', '', 22, '', '100.00', 0, 1, 'esarp-59', 0, 0, '2018-07-02 18:39:20', '', 'Havale / Eft', '1', 0),
(150, 4, 'Eşarp 60', 'esarp-60', '', '', '', 22, '', '100.00', 0, 1, 'esarp-60', 0, 0, '2018-07-02 18:39:52', '', 'Havale / Eft', '1', 0),
(151, 4, 'Eşarp 61', 'esarp-61', '', '', '', 22, '', '100.00', 0, 1, 'esarp-61', 0, 0, '2018-07-02 18:40:31', '', 'Havale / Eft', '1', 0),
(152, 4, 'Eşarp 62', 'esarp-62', '', '', '', 22, '', '100.00', 0, 1, 'esarp-62', 0, 0, '2018-07-02 18:41:04', '', 'Havale / Eft', '1', 0),
(153, 4, 'Eşarp 63', 'esarp-63', '', '', '', 22, '', '100.00', 0, 1, 'esarp-63', 0, 0, '2018-07-02 18:41:44', '', 'Havale / Eft', '1', 0),
(154, 4, 'Eşarp 64', 'esarp-64', '', '', '', 22, '', '100.00', 0, 1, 'esarp-64', 0, 0, '2018-07-02 18:42:15', '', 'Havale / Eft', '1', 0),
(155, 4, 'Eşarp 65', 'esarp-65', '', '', '', 22, '', '100.00', 0, 1, 'esarp-65', 0, 0, '2018-07-02 18:42:43', '', 'Havale / Eft', '1', 0),
(156, 4, 'Eşarp 66', 'esarp-66', '', '', '', 22, '', '100.00', 0, 1, 'esarp-66', 0, 0, '2018-07-02 18:43:15', '', 'Havale / Eft', '1', 0),
(157, 4, 'Eşarp 67', 'esarp-67', '', '', '', 22, '', '100.00', 0, 1, 'esarp-67', 0, 0, '2018-07-02 18:43:44', '', 'Havale / Eft', '1', 0),
(158, 4, 'Eşarp 68', 'esarp-68', '', '', '', 22, '', '100.00', 0, 1, 'esarp-68', 0, 0, '2018-07-02 18:44:16', '', 'Havale / Eft', '1', 0),
(159, 4, 'Eşarp 69', 'esarp-69', '', '', '', 22, '', '100.00', 0, 1, 'esarp-69', 0, 0, '2018-07-02 18:44:52', '', 'Havale / Eft', '1', 0),
(160, 4, 'Eşarp 70', 'esarp-70', '', '', '', 22, '', '100.00', 0, 1, 'esarp-70', 0, 0, '2018-07-02 18:45:34', '', 'Havale / Eft', '1', 0),
(161, 4, 'Eşarp 71', 'esarp-71', '', '', '', 22, '', '100.00', 0, 1, 'esarp-71', 0, 0, '2018-07-02 18:46:09', '', 'Havale / Eft', '1', 0),
(162, 4, 'Eşarp 72', 'esarp-72', '', '', '', 22, '', '100.00', 0, 1, 'esarp-72', 0, 0, '2018-07-02 18:46:58', '', 'Havale / Eft', '1', 0),
(163, 4, 'Eşarp 73', 'esarp-73', '', '', '', 22, '', '100.00', 0, 1, 'esarp-73', 0, 0, '2018-07-02 18:47:28', '', 'Havale / Eft', '1', 0),
(164, 4, 'Eşarp 74', 'esarp-74', '', '', '', 22, '', '100.00', 0, 1, 'esarp-74', 0, 0, '2018-07-02 18:48:19', '', 'Havale / Eft', '1', 0),
(165, 4, 'Eşarp 75', 'esarp-75', '', '', '', 22, '', '100.00', 0, 1, 'esarp-75', 0, 0, '2018-07-02 18:49:05', '', 'Havale / Eft', '1', 0),
(166, 4, 'Eşarp 76', 'esarp-76', '', '', '', 22, '', '100.00', 0, 1, 'esarp-76', 0, 0, '2018-07-02 18:49:41', '', 'Havale / Eft', '1', 0),
(167, 4, 'Eşarp 77', 'esarp-77', '', '', '', 22, '', '100.00', 0, 1, 'esarp-77', 0, 0, '2018-07-02 18:51:49', '', 'Havale / Eft', '1', 0),
(168, 4, 'Eşarp 78', 'esarp-78', '', '', '', 22, '', '100.00', 0, 1, 'esarp-78', 0, 0, '2018-07-02 18:52:48', '', 'Havale / Eft', '1', 0),
(169, 4, 'Eşarp 79', 'esarp-79', '', '', '', 22, '', '100.00', 0, 1, 'esarp-79', 0, 0, '2018-07-02 18:53:21', '', 'Havale / Eft', '1', 0),
(170, 4, 'Eşarp 80', 'esarp-80', '', '', '', 22, '', '100.00', 0, 1, 'esarp-80', 0, 0, '2018-07-02 18:54:21', '', 'Havale / Eft', '1', 0),
(171, 4, 'Eşarp 81', 'esarp-81', '', '', '', 22, '', '100.00', 0, 1, 'esarp-81', 0, 0, '2018-07-02 18:54:55', '', 'Havale / Eft', '1', 0),
(172, 4, 'Eşarp 82', 'esarp-82', '', '', '', 22, '', '100.00', 0, 1, 'esarp-82', 0, 0, '2018-07-02 18:55:28', '', 'Havale / Eft', '1', 0),
(173, 4, 'Eşarp 83', 'esarp-83', '', '', '', 22, '', '100.00', 0, 1, 'esarp-83', 0, 0, '2018-07-02 18:56:01', '', 'Havale / Eft', '1', 0),
(174, 4, 'Eşarp 84', 'esarp-84', '', '', '', 22, '', '100.00', 0, 1, 'esarp-84', 0, 0, '2018-07-02 18:56:36', '', 'Havale / Eft', '1', 0),
(175, 4, 'Eşarp 85', 'esarp-85', '', '', '', 22, '', '100.00', 0, 1, 'esarp-85', 0, 0, '2018-07-02 18:57:05', '', 'Havale / Eft', '1', 0),
(176, 4, 'Eşarp 86', 'esarp-86', '', '', '', 22, '', '100.00', 0, 1, 'esarp-86', 0, 0, '2018-07-02 18:57:40', '', 'Havale / Eft', '1', 0),
(177, 4, 'Eşarp 87', 'esarp-87', '', '', '', 22, '', '100.00', 0, 1, 'esarp-87', 0, 0, '2018-07-02 18:58:21', '', 'Havale / Eft', '1', 0),
(178, 4, 'Eşarp 88', 'esarp-88', '', '', '', 22, '', '100.00', 0, 1, 'esarp-88', 0, 0, '2018-07-02 18:58:49', '', 'Havale / Eft', '1', 0),
(179, 4, 'Eşarp 89', 'esarp-89', '', '', '', 22, '', '100.00', 0, 1, 'esarp-89', 0, 0, '2018-07-02 18:59:20', '', 'Havale / Eft', '1', 0),
(180, 4, 'Eşarp 90', 'esarp-90', '', '', '', 22, '', '100.00', 0, 1, 'esarp-90', 0, 0, '2018-07-02 18:59:53', '', 'Havale / Eft', '1', 0),
(181, 4, 'Eşarp 91', 'esarp-91', '', '', '', 22, '', '100.00', 0, 1, 'esarp-91', 0, 0, '2018-07-02 19:00:31', '', 'Havale / Eft', '1', 0),
(182, 4, 'Eşarp 92', 'esarp-92', '', '', '', 22, '', '100.00', 0, 1, 'esarp-92', 0, 0, '2018-07-02 19:01:07', '', 'Havale / Eft', '1', 0),
(183, 4, 'Eşarp 93', 'esarp-93', '', '', '', 22, '', '100.00', 0, 1, 'esarp-93', 0, 0, '2018-07-02 19:01:55', '', 'Havale / Eft', '1', 0),
(185, 4, 'Eşarp 94', 'esarp-94', '', '', '', 22, '', '100.00', 0, 1, 'esarp-94', 0, 0, '2018-07-02 19:04:47', '', 'Havale / Eft', '1', 0),
(186, 4, 'Eşarp 95', 'esarp-95', '', '', '', 22, '', '100.00', 0, 1, 'esarp-95', 0, 0, '2018-07-02 19:05:21', '', 'Havale / Eft', '1', 0),
(187, 4, 'Gessi Siyah Deri Kadın Çizme', 'gessi-siyah-deri-kadin-cizme', '', '', 'Gessi Siyah Deri Kadın Çizme', 10, '<p>Gessi Siyah Deri Kadın &Ccedil;izme&nbsp;</p>', '329.00', 1, 5, 'gessi001', 5, 0, '2019-03-27 18:04:51', '13', 'Kredi Kartı', '2', 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products_category`
--

DROP TABLE IF EXISTS `products_category`;
CREATE TABLE `products_category` (
  `id` int(11) NOT NULL,
  `seo` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `parentid` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `img` varchar(100) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `products_category`
--

INSERT INTO `products_category` (`id`, `seo`, `parentid`, `name`, `status`, `img`) VALUES
(28, 'erkek-giyim-&-aksesuar', 0, 'ERKEK GİYİM & AKSESUAR', 1, ''),
(27, 'gozluk', 23, 'GÖZLÜK', 1, ''),
(24, 'swarovski', 23, 'SWAROVSKİ', 1, ''),
(23, 'aksesuar', 8, 'AKSESUAR', 1, 'womenaksesuar.jpg'),
(22, 'esarp', 8, 'EŞARP', 1, 'esarp.jpg'),
(21, 'sal', 8, 'ŞAL', 1, 'womenscarf.jpg'),
(13, 'bluzlar-ve-gomlekler', 8, 'BLUZLAR VE GÖMLEKLER', 1, 'womenbluz.jpg'),
(12, 'etekler', 8, 'ETEKLER', 1, 'womenskirt.jpg'),
(11, 'ceketler-ve-montlar', 8, 'CEKETLER VE MONTLAR', 1, 'womenjacket.jpg'),
(10, 'kadin-ayakkabi', 58, 'KADIN AYAKKABI', 1, 'women_shoes.jpg'),
(9, 'elbiseler', 8, 'ELBİSELER', 1, 'womendress.jpg'),
(8, 'kadin-giyim-&-aksesuar', 0, 'KADIN GİYİM & AKSESUAR', 1, ''),
(29, 'erkek-ayakkabi', 58, 'ERKEK AYAKKABI', 1, ''),
(30, 'pantolon', 28, 'PANTOLON', 1, ''),
(31, 'ceket', 28, 'CEKET', 1, ''),
(32, 'kravat', 28, 'KRAVAT', 1, ''),
(33, 'gomlek', 28, 'GÖMLEK', 1, ''),
(35, 'kemer', 28, 'KEMER', 1, ''),
(36, 'canta', 28, 'ÇANTA', 1, ''),
(37, 'sapka', 28, 'ŞAPKA', 1, ''),
(38, 'gomlek', 8, 'GÖMLEK', 1, 'womengomlek.jpg'),
(39, 'kolye', 23, 'KOLYE', 1, ''),
(44, 'kapusonlular-&-kazaklar', 8, 'KAPÜŞONLULAR & KAZAKLAR', 1, ''),
(45, 'suveterler', 8, 'SÜVETERLER', 1, ''),
(46, 'alt-giyim', 8, 'ALT GİYİM', 1, ''),
(47, 'etekler', 46, 'ETEKLER', 1, ''),
(48, 'pantolon-&-capris', 46, 'PANTOLON & CAPRİS', 1, ''),
(49, 'taytlar', 46, 'TAYTLAR', 1, ''),
(50, 'kot', 46, 'KOT', 1, ''),
(51, 'sort', 46, 'ŞORT', 1, ''),
(52, 'tisortler', 8, 'TİŞÖRTLER', 1, ''),
(53, 'tulumlar', 8, 'TULUMLAR', 1, ''),
(54, 'zibinlar', 8, 'ZIBINLAR', 1, ''),
(55, 'cocuk-giyim-&-aksesuar', 0, 'ÇOCUK GİYİM & AKSESUAR', 1, ''),
(56, 'elektronik', 0, 'ELEKTRONİK', 1, ''),
(57, 'ev-&-bahce', 0, 'EV & BAHÇE', 1, ''),
(58, 'ayakkabi', 0, 'AYAKKABI', 1, ''),
(59, 'anne-ve-cocuk', 0, 'ANNE VE ÇOCUK', 1, ''),
(60, 'spor-&-eglence', 0, 'SPOR & EĞLENCE', 1, ''),
(61, 'guzellik-&-saglik', 0, 'GÜZELLİK & SAĞLIK', 1, ''),
(62, 'bilgisayar-&-ofis', 0, 'BİLGİSAYAR & OFİS', 1, ''),
(63, 'ev-gelistirme', 0, 'EV GELİŞTİRME', 1, ''),
(64, 'hirkalar', 45, 'HIRKALAR', 1, ''),
(65, 'kazaklar', 45, 'KAZAKLAR', 1, ''),
(66, 'omuzluklar', 45, 'OMUZLUKLAR', 1, ''),
(67, 'yelekler', 45, 'YELEKLER', 1, ''),
(68, 'pelerin', 45, 'PELERİN', 1, ''),
(69, 'uzun-kollu-tisortler', 52, 'UZUN KOLLU TİŞÖRTLER', 1, ''),
(70, 'kisa-kollu-tisortler', 52, 'KISA KOLLU TİŞÖRTLER', 1, ''),
(71, 'atletler', 52, 'ATLETLER', 1, ''),
(72, 'polo-gomlekler', 52, 'POLO GÖMLEKLER', 1, '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products_img`
--

DROP TABLE IF EXISTS `products_img`;
CREATE TABLE `products_img` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `link` varchar(200) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `products_img`
--

INSERT INTO `products_img` (`id`, `product_id`, `link`) VALUES
(213, 35, 'upload/magaza_id-4/elbise-35/8e5d1b74-_jim6709.jpg'),
(212, 35, 'upload/magaza_id-4/elbise-35/4236807e-_jim6707.jpg'),
(97, 35, 'upload/magaza_id-4/elbise01/1777292d-_jim6455.jpg'),
(98, 35, 'upload/magaza_id-4/elbise01/8ec96943-_jim6453.jpg'),
(99, 35, 'upload/magaza_id-4/elbise01/fa235a68-_jim6450.jpg'),
(100, 35, 'upload/magaza_id-4/elbise01/b85acec1-_jim6447.jpg'),
(101, 1, 'upload/magaza_id-4/elbise-01/294055ea-_jim6448.jpg'),
(102, 1, 'upload/magaza_id-4/elbise-01/703ad476-_jim6449.jpg'),
(103, 1, 'upload/magaza_id-4/elbise-01/1f36c287-_jim6455.jpg'),
(104, 2, 'upload/magaza_id-4/elbise-02/292776b3-_jim6456.jpg'),
(105, 2, 'upload/magaza_id-4/elbise-02/7e149147-_jim6458.jpg'),
(106, 2, 'upload/magaza_id-4/elbise-02/9de8be37-_jim6460.jpg'),
(107, 3, 'upload/magaza_id-4/elbise-03/9817ad0c-_jim6461.jpg'),
(108, 3, 'upload/magaza_id-4/elbise-03/12a0651e-_jim6463.jpg'),
(109, 3, 'upload/magaza_id-4/elbise-03/6eacb0dc-_jim6465.jpg'),
(110, 4, 'upload/magaza_id-4/elbise-04/4c72fa09-_jim6468.jpg'),
(111, 4, 'upload/magaza_id-4/elbise-04/5372a8a5-_jim6471.jpg'),
(112, 4, 'upload/magaza_id-4/elbise-04/990e18aa-_jim6473.jpg'),
(113, 5, 'upload/magaza_id-4/elbise-05/ca9c3c58-_jim6475.jpg'),
(114, 5, 'upload/magaza_id-4/elbise-05/b3607b03-_jim6476.jpg'),
(115, 5, 'upload/magaza_id-4/elbise-05/c876d9ee-_jim6477.jpg'),
(116, 6, 'upload/magaza_id-4/elbise-06/f7c3c318-_jim6480.jpg'),
(117, 6, 'upload/magaza_id-4/elbise-06/3992d3c7-_jim6484.jpg'),
(118, 6, 'upload/magaza_id-4/elbise-06/d6ca3478-_jim6485.jpg'),
(119, 7, 'upload/magaza_id-4/elbise-07/6069259c-_jim6488.jpg'),
(120, 7, 'upload/magaza_id-4/elbise-07/08963d3b-_jim6495.jpg'),
(121, 7, 'upload/magaza_id-4/elbise-07/7a5b8a99-_jim6497.jpg'),
(122, 8, 'upload/magaza_id-4/elbise-08/d9fae34c-_jim6499.jpg'),
(123, 8, 'upload/magaza_id-4/elbise-08/5d7483c5-_jim6501.jpg'),
(124, 8, 'upload/magaza_id-4/elbise-08/92f5635b-_jim6504.jpg'),
(125, 9, 'upload/magaza_id-4/elbise-09/a7d6d61c-_jim6505.jpg'),
(126, 9, 'upload/magaza_id-4/elbise-09/61a978a1-_jim6516.jpg'),
(127, 9, 'upload/magaza_id-4/elbise-09/e36bfd4d-_jim6520.jpg'),
(128, 10, 'upload/magaza_id-4/elbise-10/45d1ba2d-_jim6521.jpg'),
(129, 10, 'upload/magaza_id-4/elbise-10/d0475d9a-_jim6523.jpg'),
(130, 10, 'upload/magaza_id-4/elbise-10/80c4784f-_jim6525.jpg'),
(131, 11, 'upload/magaza_id-4/elbise-11/6605719e-_jim6527.jpg'),
(132, 11, 'upload/magaza_id-4/elbise-11/5a968396-_jim6532.jpg'),
(133, 11, 'upload/magaza_id-4/elbise-11/dcdd6714-_jim6533.jpg'),
(134, 11, 'upload/magaza_id-4/elbise-11/188df9f7-_jim6535.jpg'),
(135, 12, 'upload/magaza_id-4/elbise-12/49ab03d1-_jim6536.jpg'),
(136, 12, 'upload/magaza_id-4/elbise-12/7b8c758c-_jim6540.jpg'),
(137, 12, 'upload/magaza_id-4/elbise-12/388d2aad-_jim6542.jpg'),
(138, 12, 'upload/magaza_id-4/elbise-12/fb6f5bcb-_jim6546.jpg'),
(139, 13, 'upload/magaza_id-4/elbise-13/1bb3bd9c-_jim6555.jpg'),
(140, 13, 'upload/magaza_id-4/elbise-13/f892c604-_jim6557.jpg'),
(141, 13, 'upload/magaza_id-4/elbise-13/3d3b6f62-_jim6566.jpg'),
(142, 13, 'upload/magaza_id-4/elbise-13/b27c00f9-_jim6567.jpg'),
(143, 14, 'upload/magaza_id-4/elbise-14/0d9482ca-_jim6568.jpg'),
(144, 14, 'upload/magaza_id-4/elbise-14/b46d0c5b-_jim6570.jpg'),
(145, 14, 'upload/magaza_id-4/elbise-14/17681fb5-_jim6572.jpg'),
(146, 15, 'upload/magaza_id-4/elbise-15/a95b722d-_jim6574.jpg'),
(147, 15, 'upload/magaza_id-4/elbise-15/687e9c93-_jim6575.jpg'),
(148, 15, 'upload/magaza_id-4/elbise-15/98c0426f-_jim6576.jpg'),
(149, 16, 'upload/magaza_id-4/elbise-16/5964ace1-_jim6577.jpg'),
(150, 16, 'upload/magaza_id-4/elbise-16/8c64a70c-_jim6582.jpg'),
(151, 16, 'upload/magaza_id-4/elbise-16/df550e59-_jim6583.jpg'),
(152, 16, 'upload/magaza_id-4/elbise-16/6efd6c02-_jim6586.jpg'),
(153, 17, 'upload/magaza_id-4/elbise-17/a6bfaa67-_jim6587.jpg'),
(154, 17, 'upload/magaza_id-4/elbise-17/54900dcd-_jim6589.jpg'),
(155, 17, 'upload/magaza_id-4/elbise-17/ca25c431-_jim6591.jpg'),
(156, 18, 'upload/magaza_id-4/elbise-18/5895a040-_jim6592.jpg'),
(157, 18, 'upload/magaza_id-4/elbise-18/239f761e-_jim6595.jpg'),
(158, 18, 'upload/magaza_id-4/elbise-18/5290a3df-_jim6597.jpg'),
(159, 19, 'upload/magaza_id-4/elbise-19/58d5c5fd-_jim6603.jpg'),
(160, 19, 'upload/magaza_id-4/elbise-19/35b1d66a-_jim6605.jpg'),
(161, 19, 'upload/magaza_id-4/elbise-19/3a88a62f-_jim6607.jpg'),
(162, 20, 'upload/magaza_id-4/elbise-20/644f4461-_jim6608.jpg'),
(163, 20, 'upload/magaza_id-4/elbise-20/15cb6602-_jim6609.jpg'),
(164, 20, 'upload/magaza_id-4/elbise-20/f0eab653-_jim6612.jpg'),
(165, 21, 'upload/magaza_id-4/elbise-21/3cd0b23d-_jim6614.jpg'),
(166, 21, 'upload/magaza_id-4/elbise-21/06a2ed41-_jim6616.jpg'),
(167, 21, 'upload/magaza_id-4/elbise-21/3dad63cf-_jim6619.jpg'),
(168, 22, 'upload/magaza_id-4/elbise-22/bc10d6f7-_jim6621.jpg'),
(169, 22, 'upload/magaza_id-4/elbise-22/d7a71532-_jim6624.jpg'),
(170, 22, 'upload/magaza_id-4/elbise-22/e13564dc-_jim6635.jpg'),
(171, 23, 'upload/magaza_id-4/elbise-23/8afe8bec-_jim6626.jpg'),
(172, 23, 'upload/magaza_id-4/elbise-23/9332c170-_jim6629.jpg'),
(173, 23, 'upload/magaza_id-4/elbise-23/38a9635b-_jim6630.jpg'),
(174, 24, 'upload/magaza_id-4/elbise-24/4833f2a9-_jim6638.jpg'),
(175, 24, 'upload/magaza_id-4/elbise-24/925a4b41-_jim6640.jpg'),
(176, 24, 'upload/magaza_id-4/elbise-24/2a54102b-_jim6642.jpg'),
(177, 25, 'upload/magaza_id-4/elbise-25/61eedde8-_jim6644.jpg'),
(178, 25, 'upload/magaza_id-4/elbise-25/773cd81a-_jim6647.jpg'),
(179, 25, 'upload/magaza_id-4/elbise-25/6d4d4eb0-_jim6648.jpg'),
(180, 26, 'upload/magaza_id-4/elbise-26/93c715f6-_jim6649.jpg'),
(181, 26, 'upload/magaza_id-4/elbise-26/8171631c-_jim6653.jpg'),
(182, 26, 'upload/magaza_id-4/elbise-26/61c9015c-_jim6656.jpg'),
(183, 26, 'upload/magaza_id-4/elbise-26/16d45b2f-_jim6658.jpg'),
(184, 27, 'upload/magaza_id-4/elbise-27/a7e217c1-_jim6659.jpg'),
(185, 27, 'upload/magaza_id-4/elbise-27/d13c493c-_jim6661.jpg'),
(186, 27, 'upload/magaza_id-4/elbise-27/cc14cb61-_jim6662.jpg'),
(187, 28, 'upload/magaza_id-4/elbise-28/e70f947b-_jim6663.jpg'),
(188, 28, 'upload/magaza_id-4/elbise-28/a9dc6fed-_jim6666.jpg'),
(189, 28, 'upload/magaza_id-4/elbise-28/1d27172f-_jim6668.jpg'),
(190, 29, 'upload/magaza_id-4/elbise-29/30df6d4c-_jim6670.jpg'),
(191, 29, 'upload/magaza_id-4/elbise-29/c160b50f-_jim6674.jpg'),
(192, 29, 'upload/magaza_id-4/elbise-29/724cbd63-_jim6675.jpg'),
(193, 29, 'upload/magaza_id-4/elbise-29/5d9d921f-_jim6677.jpg'),
(194, 30, 'upload/magaza_id-4/elbise-30/627fbc77-_jim6678.jpg'),
(195, 30, 'upload/magaza_id-4/elbise-30/96909549-_jim6681.jpg'),
(196, 30, 'upload/magaza_id-4/elbise-30/bd7dfd0b-_jim6682.jpg'),
(197, 31, 'upload/magaza_id-4/elbise-31/27731ad2-_jim6684.jpg'),
(198, 31, 'upload/magaza_id-4/elbise-31/b96f7c1e-_jim6685.jpg'),
(199, 31, 'upload/magaza_id-4/elbise-31/58c58c08-_jim6686.jpg'),
(200, 31, 'upload/magaza_id-4/elbise-31/b848a062-_jim6687.jpg'),
(201, 32, 'upload/magaza_id-4/elbise-32/3c1b960b-_jim6688.jpg'),
(202, 32, 'upload/magaza_id-4/elbise-32/56f56685-_jim6689.jpg'),
(203, 32, 'upload/magaza_id-4/elbise-32/6e33f2a0-_jim6692.jpg'),
(204, 32, 'upload/magaza_id-4/elbise-32/57c7307a-_jim6693.jpg'),
(205, 33, 'upload/magaza_id-4/elbise-33/ac2309ed-_jim6695.jpg'),
(206, 33, 'upload/magaza_id-4/elbise-33/00fb92bb-_jim6696.jpg'),
(207, 33, 'upload/magaza_id-4/elbise-33/37f117d0-_jim6698.jpg'),
(208, 34, 'upload/magaza_id-4/elbise-34/00ce91b4-_jim6701.jpg'),
(209, 34, 'upload/magaza_id-4/elbise-34/e743f681-_jim6702.jpg'),
(210, 34, 'upload/magaza_id-4/elbise-34/6108a603-_jim6703.jpg'),
(211, 34, 'upload/magaza_id-4/elbise-34/f6a74760-_jim6704.jpg'),
(214, 35, 'upload/magaza_id-4/elbise-35/ef8bc8b7-_jim6711.jpg'),
(215, 35, 'upload/magaza_id-4/elbise-35/2ba4d776-_jim6717.jpg'),
(216, 36, 'upload/magaza_id-4/elbise-36/5d5311a9-_jim6728.jpg'),
(217, 36, 'upload/magaza_id-4/elbise-36/364df85e-_jim6727.jpg'),
(218, 36, 'upload/magaza_id-4/elbise-36/652b5832-_jim6726.jpg'),
(219, 36, 'upload/magaza_id-4/elbise-36/01e51caa-_jim6724.jpg'),
(220, 37, 'upload/magaza_id-4/elbise-37/3c9350ee-_jim6732.jpg'),
(221, 37, 'upload/magaza_id-4/elbise-37/5e409eed-_jim6730.jpg'),
(222, 37, 'upload/magaza_id-4/elbise-37/0ce861d9-_jim6729.jpg'),
(223, 38, 'upload/magaza_id-4/elbise-38/5cc510d9-_jim6738.jpg'),
(224, 38, 'upload/magaza_id-4/elbise-38/825cb04b-_jim6736.jpg'),
(225, 38, 'upload/magaza_id-4/elbise-38/e880a8d9-_jim6735.jpg'),
(226, 38, 'upload/magaza_id-4/elbise-38/e9b87e2a-_jim6733.jpg'),
(227, 39, 'upload/magaza_id-4/elbise-39/c9008c63-_jim6745.jpg'),
(228, 39, 'upload/magaza_id-4/elbise-39/042f10e7-_jim6743.jpg'),
(229, 39, 'upload/magaza_id-4/elbise-39/7e453c4d-_jim6741.jpg'),
(230, 39, 'upload/magaza_id-4/elbise-39/33b8b766-_jim6739.jpg'),
(231, 40, 'upload/magaza_id-4/elbise-40/a43d1873-_jim6755.jpg'),
(232, 40, 'upload/magaza_id-4/elbise-40/3f1d0907-_jim6754.jpg'),
(233, 40, 'upload/magaza_id-4/elbise-40/b16378df-_jim6747.jpg'),
(234, 41, 'upload/magaza_id-4/elbise-41/59252c48-_jim6759.jpg'),
(235, 41, 'upload/magaza_id-4/elbise-41/a2f8c0f6-_jim6757.jpg'),
(236, 41, 'upload/magaza_id-4/elbise-41/4d371181-_jim6756.jpg'),
(237, 42, 'upload/magaza_id-4/elbise-42/f0449682-_jim6766.jpg'),
(238, 42, 'upload/magaza_id-4/elbise-42/ff2a023c-_jim6765.jpg'),
(239, 42, 'upload/magaza_id-4/elbise-42/6b650151-_jim6763.jpg'),
(240, 42, 'upload/magaza_id-4/elbise-42/03d639df-_jim6760.jpg'),
(241, 43, 'upload/magaza_id-4/elbise-43/9fbc6008-_jim6770.jpg'),
(242, 43, 'upload/magaza_id-4/elbise-43/c517701e-_jim6769.jpg'),
(243, 43, 'upload/magaza_id-4/elbise-43/2583cbf2-_jim6768.jpg'),
(244, 43, 'upload/magaza_id-4/elbise-43/4128a2ff-_jim6767.jpg'),
(245, 44, 'upload/magaza_id-4/elbise-44/4a513e63-_jim6775.jpg'),
(246, 44, 'upload/magaza_id-4/elbise-44/0c4b0499-_jim6774.jpg'),
(247, 44, 'upload/magaza_id-4/elbise-44/6bf31b00-_jim6771.jpg'),
(248, 45, 'upload/magaza_id-4/elbise-45/8f8c54ec-_jim6780.jpg'),
(249, 45, 'upload/magaza_id-4/elbise-45/b4a0eac6-_jim6779.jpg'),
(250, 45, 'upload/magaza_id-4/elbise-45/d416cdb7-_jim6776.jpg'),
(251, 46, 'upload/magaza_id-4/elbise-46/8bd79fa8-_jim6784.jpg'),
(252, 46, 'upload/magaza_id-4/elbise-46/cebae18b-_jim6783.jpg'),
(253, 46, 'upload/magaza_id-4/elbise-46/707e53b3-_jim6781.jpg'),
(254, 47, 'upload/magaza_id-4/elbise-47/eef4c3d0-_jim6789.jpg'),
(255, 47, 'upload/magaza_id-4/elbise-47/55e12089-_jim6788.jpg'),
(256, 47, 'upload/magaza_id-4/elbise-47/c6daf032-_jim6786.jpg'),
(257, 48, 'upload/magaza_id-4/elbise-48/eb809547-_jim6793.jpg'),
(258, 48, 'upload/magaza_id-4/elbise-48/c53cfa9d-_jim6792.jpg'),
(259, 48, 'upload/magaza_id-4/elbise-48/be046582-_jim6791.jpg'),
(260, 49, 'upload/magaza_id-4/elbise-49/b95ff93f-_jim6797.jpg'),
(261, 49, 'upload/magaza_id-4/elbise-49/03400006-_jim6796.jpg'),
(262, 49, 'upload/magaza_id-4/elbise-49/076ed6ee-_jim6795.jpg'),
(263, 49, 'upload/magaza_id-4/elbise-49/449c963c-_jim6794.jpg'),
(264, 50, 'upload/magaza_id-4/elbise-50/59071344-_jim6801.jpg'),
(265, 50, 'upload/magaza_id-4/elbise-50/ec55f372-_jim6800.jpg'),
(266, 50, 'upload/magaza_id-4/elbise-50/c7d48119-_jim6799.jpg'),
(267, 50, 'upload/magaza_id-4/elbise-50/04ee7ad8-_jim6798.jpg'),
(268, 51, 'upload/magaza_id-4/elbise-51/78a4d957-_jim6805.jpg'),
(269, 51, 'upload/magaza_id-4/elbise-51/ade093c4-_jim6804.jpg'),
(270, 51, 'upload/magaza_id-4/elbise-51/f42c229d-_jim6802.jpg'),
(271, 52, 'upload/magaza_id-4/elbise-52/15ad6b11-_jim6812.jpg'),
(272, 52, 'upload/magaza_id-4/elbise-52/b545eb85-_jim6809.jpg'),
(273, 52, 'upload/magaza_id-4/elbise-52/394e77ed-_jim6807.jpg'),
(274, 53, 'upload/magaza_id-4/elbise-53/629634d6-_jim6816.jpg'),
(275, 53, 'upload/magaza_id-4/elbise-53/fa8a164f-_jim6815.jpg'),
(276, 53, 'upload/magaza_id-4/elbise-53/359ff38c-_jim6813.jpg'),
(277, 54, 'upload/magaza_id-4/elbise-54/cbdc36b5-_jim6823.jpg'),
(278, 54, 'upload/magaza_id-4/elbise-54/5675eacf-_jim6821.jpg'),
(279, 54, 'upload/magaza_id-4/elbise-54/ff110037-_jim6818.jpg'),
(280, 55, 'upload/magaza_id-4/elbise-55/287270c0-_jim6828.jpg'),
(281, 55, 'upload/magaza_id-4/elbise-55/60c7658c-_jim6827.jpg'),
(282, 55, 'upload/magaza_id-4/elbise-55/b0a3bb3e-_jim6824.jpg'),
(283, 56, 'upload/magaza_id-4/elbise-56/198604cb-_jim6847.jpg'),
(284, 56, 'upload/magaza_id-4/elbise-56/7a5ad75b-_jim6845.jpg'),
(285, 56, 'upload/magaza_id-4/elbise-56/05b75a00-_jim6841.jpg'),
(286, 57, 'upload/magaza_id-4/elbise-57/a76dd8cc-_jim6852.jpg'),
(287, 57, 'upload/magaza_id-4/elbise-57/af8711aa-_jim6851.jpg'),
(288, 57, 'upload/magaza_id-4/elbise-57/4c05ad7d-_jim6848.jpg'),
(289, 58, 'upload/magaza_id-4/elbise-58/b137e56d-_jim6861.jpg'),
(290, 58, 'upload/magaza_id-4/elbise-58/36a2704d-_jim6860.jpg'),
(291, 58, 'upload/magaza_id-4/elbise-58/02a1d0b9-_jim6859.jpg'),
(292, 58, 'upload/magaza_id-4/elbise-58/86a3b819-_jim6858.jpg'),
(293, 59, 'upload/magaza_id-4/esarp-01/4e5f276c-_jim5599-.png.jpg'),
(294, 59, 'upload/magaza_id-4/esarp-01/7e4a6d5b-_jim5602-.png.jpg'),
(295, 60, 'upload/magaza_id-4/esarp-02/0e4b3bfd-_jim5600-.png.jpg'),
(296, 60, 'upload/magaza_id-4/esarp-02/fb7e7694-_jim5601-.png.jpg'),
(297, 61, 'upload/magaza_id-4/esarp-03/89c04dd1-_jim5603-.png.jpg'),
(298, 61, 'upload/magaza_id-4/esarp-03/5236347d-_jim5604-.png.jpg'),
(299, 62, 'upload/magaza_id-4/esarp-04/1cc68631-_jim5605-.png.jpg'),
(300, 62, 'upload/magaza_id-4/esarp-04/d805bead-_jim5606-.png.jpg'),
(301, 63, 'upload/magaza_id-4/esarp-05/e612cf9e-_jim5607-.png.jpg'),
(302, 63, 'upload/magaza_id-4/esarp-05/ed6f420f-_jim5608-.png.jpg'),
(303, 64, 'upload/magaza_id-4/esarp-06/20f4031c-_jim5609-.png.jpg'),
(304, 64, 'upload/magaza_id-4/esarp-06/2f5a3000-_jim5610-.png.jpg'),
(305, 65, 'upload/magaza_id-4/esarp-07/447cb09b-_jim5611-.png.jpg'),
(306, 65, 'upload/magaza_id-4/esarp-07/fc8262b7-_jim5612-.png.jpg'),
(307, 66, 'upload/magaza_id-4/esarp-08/f53142c0-_jim5613-.png.jpg'),
(308, 66, 'upload/magaza_id-4/esarp-08/90cfc9ba-_jim5614-.png.jpg'),
(309, 67, 'upload/magaza_id-4/esarp-09/28e69625-_jim5615-.png.jpg'),
(310, 67, 'upload/magaza_id-4/esarp-09/ab156a1b-_jim5616-.png.jpg'),
(311, 68, 'upload/magaza_id-4/esarp-10/4b376ae7-_jim5617-.png.jpg'),
(312, 68, 'upload/magaza_id-4/esarp-10/8c6d3422-_jim5618-.png.jpg'),
(313, 69, 'upload/magaza_id-4/esarp-11/2983a3ec-_jim5619-1024.jpg'),
(314, 69, 'upload/magaza_id-4/esarp-11/0bb7cbaf-_jim5620-1024.jpg'),
(315, 70, 'upload/magaza_id-4/esarp-12/d779f698-_jim5621-.jpg'),
(316, 70, 'upload/magaza_id-4/esarp-12/a1745086-_jim5622-.jpg'),
(317, 71, 'upload/magaza_id-4/esarp-13/71f8eb57-_jim5623-.jpg'),
(318, 71, 'upload/magaza_id-4/esarp-13/0586810f-_jim5624-.jpg'),
(319, 72, 'upload/magaza_id-4/esarp-14/34d68d34-_jim5625-.jpg'),
(320, 72, 'upload/magaza_id-4/esarp-14/c13e28ec-_jim5626-.jpg'),
(321, 73, 'upload/magaza_id-4/esarp-15/9b5b8b58-_jim5627-.jpg'),
(322, 73, 'upload/magaza_id-4/esarp-15/154015ae-_jim5628-.jpg'),
(323, 74, 'upload/magaza_id-4/esarp-16/00f5725b-_jim5629-.jpg'),
(324, 74, 'upload/magaza_id-4/esarp-16/62cf18a8-_jim5630-.jpg'),
(325, 75, 'upload/magaza_id-4/esarp-17/eabde9b0-_jim5631-.jpg'),
(326, 75, 'upload/magaza_id-4/esarp-17/d4b98838-_jim5632-.jpg'),
(327, 76, 'upload/magaza_id-4/esarp-18/58e1a3a6-_jim5633-.jpg'),
(328, 76, 'upload/magaza_id-4/esarp-18/d5ad3595-_jim5634-.jpg'),
(329, 77, 'upload/magaza_id-4/esarp-19/485635a8-_jim5635-.jpg'),
(330, 77, 'upload/magaza_id-4/esarp-19/792f85aa-_jim5636-.jpg'),
(331, 78, 'upload/magaza_id-4/esarp-20/78c16b15-_jim5637-.jpg'),
(332, 78, 'upload/magaza_id-4/esarp-20/71c07af9-_jim5638-.jpg'),
(333, 79, 'upload/magaza_id-4/esarp-21/50963281-_jim5639-.jpg'),
(334, 79, 'upload/magaza_id-4/esarp-21/f7b8c198-_jim5640-.jpg'),
(335, 80, 'upload/magaza_id-4/sal-01/16f15691-_jim5792-.jpg'),
(336, 81, 'upload/magaza_id-4/sal-02/d8a22c3e-_jim5794-.jpg'),
(337, 82, 'upload/magaza_id-4/sal-03/418913d4-_jim5795-.jpg'),
(338, 83, 'upload/magaza_id-4/sal-04/6221eca2-_jim5796-.jpg'),
(339, 84, 'upload/magaza_id-4/kolye-01/bec35a37-_jim5801-.jpg'),
(340, 85, 'upload/magaza_id-4/kolye-02/f7e97dbf-_jim5802-.jpg'),
(341, 86, 'upload/magaza_id-4/kolye-03/da915326-_jim5803-.jpg'),
(342, 87, 'upload/magaza_id-4/kolye-04/9b6a3169-_jim5804-.jpg'),
(343, 88, 'upload/magaza_id-4/kolye-05/f9be2209-_jim5805-.jpg'),
(344, 89, 'upload/magaza_id-4/kolye-06/46b6e766-_jim5806-.jpg'),
(345, 90, 'upload/magaza_id-4/kolye-07/d8a67ac3-_jim5807-.jpg'),
(346, 91, 'upload/magaza_id-4/kolye-08/202777ae-_jim5808-.jpg'),
(347, 92, 'upload/magaza_id-4/kolye-09/9e1720c2-_jim5809-.jpg'),
(348, 93, 'upload/magaza_id-4/kolye-10/1d313e46-_jim5810-.jpg'),
(349, 94, 'upload/magaza_id-4/kolye-11/e18fbbb7-_jim5811-.jpg'),
(350, 95, 'upload/magaza_id-4/kolye-12/45c2fb28-_jim5812-.jpg'),
(351, 96, 'upload/magaza_id-4/kolye-13/d95980b5-_jim5813-.jpg'),
(352, 97, 'upload/magaza_id-4/kolye-14/10d17a18-_jim5814-.jpg'),
(353, 98, 'upload/magaza_id-4/kolye-15/e7463c08-_jim5816-.jpg'),
(354, 99, 'upload/magaza_id-4/kolye-16/514aeaa1-_jim5818-.jpg'),
(355, 101, 'upload/magaza_id-4/kolye-17/26dc6384-_jim5820-.jpg'),
(356, 102, 'upload/magaza_id-4/kolye-18/ab44093c-_jim5822-.jpg'),
(357, 103, 'upload/magaza_id-4/kolye-19/8cc58366-_jim5823-.jpg'),
(358, 104, 'upload/magaza_id-4/kolye-20/f4800986-_jim5824-.jpg'),
(359, 105, 'upload/magaza_id-4/kolye-21/36c934e3-_jim5825-.jpg'),
(360, 106, 'upload/magaza_id-4/kolye-21/26388f35-_jim5825-.jpg'),
(361, 107, 'upload/magaza_id-4/kolye-23/9f610eb0-_jim5826-.jpg'),
(362, 108, 'upload/magaza_id-4/kolye-24/6e127c5c-_jim5827-.jpg'),
(363, 109, 'upload/magaza_id-4/kolye-25/dd9020da-_jim5828-.jpg'),
(364, 110, 'upload/magaza_id-4/kolye-26/2ccc673c-_jim5830-.jpg'),
(365, 111, 'upload/magaza_id-4/kolye-27/e6156e95-_jim5832-.jpg'),
(366, 111, 'upload/magaza_id-4/kolye-27/88571ae6-_jim5835-.jpg'),
(367, 112, 'upload/magaza_id-4/esarp-22/ffd7c90f-_jim5641-.jpg'),
(368, 112, 'upload/magaza_id-4/esarp-22/a1132407-_jim5642-.jpg'),
(369, 113, 'upload/magaza_id-4/esarp-23/ada32971-_jim5643-.jpg'),
(370, 113, 'upload/magaza_id-4/esarp-23/8c2dbde5-_jim5644-.jpg'),
(371, 114, 'upload/magaza_id-4/esarp-24/1b2bf287-_jim5645-.jpg'),
(372, 114, 'upload/magaza_id-4/esarp-24/5c7819ea-_jim5646-.jpg'),
(373, 115, 'upload/magaza_id-4/esarp-25/ae861c86-_jim5648-.jpg'),
(374, 115, 'upload/magaza_id-4/esarp-25/1f2b285d-_jim5649-.jpg'),
(375, 116, 'upload/magaza_id-4/esarp-26/da8dbe5e-_jim5650-.jpg'),
(376, 116, 'upload/magaza_id-4/esarp-26/39d0588c-_jim5651-.jpg'),
(377, 117, 'upload/magaza_id-4/esarp-27/1b763b5c-_jim5652-.jpg'),
(378, 117, 'upload/magaza_id-4/esarp-27/71e46fd2-_jim5653-.jpg'),
(379, 118, 'upload/magaza_id-4/esarp-28/75a96dda-_jim5654-.jpg'),
(380, 118, 'upload/magaza_id-4/esarp-28/0aadf54b-_jim5655-.jpg'),
(381, 119, 'upload/magaza_id-4/esarp-29/44019757-_jim5656-.jpg'),
(382, 119, 'upload/magaza_id-4/esarp-29/f348964f-_jim5657-.jpg'),
(383, 120, 'upload/magaza_id-4/esarp-30/cdde1797-_jim5658-.jpg'),
(384, 120, 'upload/magaza_id-4/esarp-30/75a16613-_jim5659-.jpg'),
(385, 121, 'upload/magaza_id-4/esarp-31/846505da-_jim5660-.jpg'),
(386, 121, 'upload/magaza_id-4/esarp-31/9164bcd0-_jim5661-.jpg'),
(387, 122, 'upload/magaza_id-4/esarp-32/379ba85d-_jim5662-.jpg'),
(388, 122, 'upload/magaza_id-4/esarp-32/a905edb3-_jim5663-.jpg'),
(389, 123, 'upload/magaza_id-4/esarp-33/5609fdd0-_jim5664-.jpg'),
(390, 123, 'upload/magaza_id-4/esarp-33/543c966d-_jim5665-.jpg'),
(391, 124, 'upload/magaza_id-4/esarp-34/607e5879-_jim5666-.jpg'),
(392, 124, 'upload/magaza_id-4/esarp-34/d85a047f-_jim5667-.jpg'),
(393, 125, 'upload/magaza_id-4/esarp-35/037aea14-_jim5668-.jpg'),
(394, 125, 'upload/magaza_id-4/esarp-35/d2b6e717-_jim5669-.jpg'),
(395, 126, 'upload/magaza_id-4/esarp-36/4364c505-_jim5670-.jpg'),
(396, 126, 'upload/magaza_id-4/esarp-36/9e3d8002-_jim5671-.jpg'),
(397, 127, 'upload/magaza_id-4/esarp-37/e1fb1874-_jim5672-.jpg'),
(398, 127, 'upload/magaza_id-4/esarp-37/71219a50-_jim5673-.jpg'),
(399, 128, 'upload/magaza_id-4/esarp-38/b1caf795-_jim5674-.jpg'),
(400, 128, 'upload/magaza_id-4/esarp-38/e151bedd-_jim5675-.jpg'),
(401, 129, 'upload/magaza_id-4/esarp-39/1e96bdc3-_jim5676-.jpg'),
(402, 129, 'upload/magaza_id-4/esarp-39/952e237b-_jim5677-.jpg'),
(403, 130, 'upload/magaza_id-4/esarp-40/ad1a477d-_jim5678-.jpg'),
(404, 130, 'upload/magaza_id-4/esarp-40/e2e36f52-_jim5679-.jpg'),
(405, 131, 'upload/magaza_id-4/esarp-41/4637d6f9-_jim5680-.jpg'),
(406, 131, 'upload/magaza_id-4/esarp-41/91bfc14d-_jim5681-.jpg'),
(407, 132, 'upload/magaza_id-4/esarp-42/e1ac73a2-_jim5682-.jpg'),
(408, 132, 'upload/magaza_id-4/esarp-42/282ddfd6-_jim5683-.jpg'),
(409, 133, 'upload/magaza_id-4/esarp-43/5e01d278-_jim5684-.jpg'),
(410, 133, 'upload/magaza_id-4/esarp-43/fb3bad61-_jim5685-.jpg'),
(411, 134, 'upload/magaza_id-4/esarp-44/f0654931-_jim5686-.jpg'),
(412, 134, 'upload/magaza_id-4/esarp-44/fffa509b-_jim5687-.jpg'),
(413, 135, 'upload/magaza_id-4/esarp-45/c212b1a9-_jim5688-.jpg'),
(414, 135, 'upload/magaza_id-4/esarp-45/895f2d4a-_jim5689-.jpg'),
(415, 136, 'upload/magaza_id-4/esarp-46/67f07aad-_jim5690-.jpg'),
(416, 136, 'upload/magaza_id-4/esarp-46/bab779ce-_jim5691-.jpg'),
(417, 137, 'upload/magaza_id-4/esarp-47/50644e8e-_jim5692-.jpg'),
(418, 137, 'upload/magaza_id-4/esarp-47/f02f8269-_jim5693-.jpg'),
(419, 138, 'upload/magaza_id-4/esarp-48/b19fba84-_jim5694-.jpg'),
(420, 138, 'upload/magaza_id-4/esarp-48/4f2a94b6-_jim5695-.jpg'),
(421, 139, 'upload/magaza_id-4/esarp-49/c4641531-_jim5696-.jpg'),
(422, 139, 'upload/magaza_id-4/esarp-49/d43d8de2-_jim5697-.jpg'),
(423, 140, 'upload/magaza_id-4/esarp-50/56e0f639-_jim5698-.jpg'),
(424, 140, 'upload/magaza_id-4/esarp-50/c432a782-_jim5699-.jpg'),
(425, 141, 'upload/magaza_id-4/esarp-51/678cc4e4-_jim5790-.jpg'),
(426, 141, 'upload/magaza_id-4/esarp-51/19cc92f9-_jim5791-.jpg'),
(427, 142, 'upload/magaza_id-4/esarp-52/833cd32d-_jim5700-.jpg'),
(428, 142, 'upload/magaza_id-4/esarp-52/5f1f9865-_jim5701-.jpg'),
(429, 143, 'upload/magaza_id-4/esarp-53/4987cad0-_jim5702-.jpg'),
(430, 143, 'upload/magaza_id-4/esarp-53/bb2240e3-_jim5703-.jpg'),
(431, 144, 'upload/magaza_id-4/esarp-54/21836e21-_jim5704-.jpg'),
(432, 144, 'upload/magaza_id-4/esarp-54/0a5ec4fa-_jim5705-.jpg'),
(433, 145, 'upload/magaza_id-4/esarp-55/611a745d-_jim5732-.jpg'),
(434, 145, 'upload/magaza_id-4/esarp-55/3fc45836-_jim5733-.jpg'),
(435, 146, 'upload/magaza_id-4/esarp-56/de759fa3-_jim5734-.jpg'),
(436, 146, 'upload/magaza_id-4/esarp-56/b127ca27-_jim5735-.jpg'),
(437, 147, 'upload/magaza_id-4/esarp-57/c86e6158-_jim5736-.jpg'),
(438, 147, 'upload/magaza_id-4/esarp-57/5494e45d-_jim5737-.jpg'),
(439, 148, 'upload/magaza_id-4/esarp-58/ef1d1ca7-_jim5738-.jpg'),
(440, 148, 'upload/magaza_id-4/esarp-58/5f2651a2-_jim5739-.jpg'),
(441, 149, 'upload/magaza_id-4/esarp-59/da4323c7-_jim5742-.jpg'),
(442, 149, 'upload/magaza_id-4/esarp-59/1ec93a5a-_jim5743-.jpg'),
(443, 150, 'upload/magaza_id-4/esarp-60/d1af79df-_jim5744-.jpg'),
(444, 150, 'upload/magaza_id-4/esarp-60/6edd9d6c-_jim5745-.jpg'),
(445, 151, 'upload/magaza_id-4/esarp-61/08848696-_jim5746-.jpg'),
(446, 151, 'upload/magaza_id-4/esarp-61/ee795092-_jim5747-.jpg'),
(447, 152, 'upload/magaza_id-4/esarp-62/c910c015-_jim5748-.jpg'),
(448, 152, 'upload/magaza_id-4/esarp-62/0a3d9c5f-_jim5749-.jpg'),
(449, 153, 'upload/magaza_id-4/esarp-63/1e8790f1-_jim5750-.jpg'),
(450, 153, 'upload/magaza_id-4/esarp-63/26996df4-_jim5751-.jpg'),
(451, 154, 'upload/magaza_id-4/esarp-64/9746bb8b-_jim5752-.jpg'),
(452, 154, 'upload/magaza_id-4/esarp-64/055bacb9-_jim5753-.jpg'),
(453, 155, 'upload/magaza_id-4/esarp-65/29994566-_jim5755-.jpg'),
(454, 155, 'upload/magaza_id-4/esarp-65/0b65416e-_jim5756-.jpg'),
(455, 156, 'upload/magaza_id-4/esarp-66/a5056a41-_jim5757-.jpg'),
(456, 156, 'upload/magaza_id-4/esarp-66/764a42f0-_jim5758-.jpg'),
(457, 157, 'upload/magaza_id-4/esarp-67/f6fafa6a-_jim5759-.jpg'),
(458, 157, 'upload/magaza_id-4/esarp-67/ea0099ba-_jim5760-.jpg'),
(459, 158, 'upload/magaza_id-4/esarp-68/63b87b0f-_jim5761-.jpg'),
(460, 158, 'upload/magaza_id-4/esarp-68/9809f892-_jim5762-.jpg'),
(461, 159, 'upload/magaza_id-4/esarp-69/827cc081-_jim5763-.jpg'),
(462, 159, 'upload/magaza_id-4/esarp-69/428a87d1-_jim5764-.jpg'),
(463, 160, 'upload/magaza_id-4/esarp-70/77b4720f-_jim5765-.jpg'),
(464, 160, 'upload/magaza_id-4/esarp-70/2bb1c183-_jim5766-.jpg'),
(465, 161, 'upload/magaza_id-4/esarp-71/00f3cb90-_jim5767-.jpg'),
(466, 161, 'upload/magaza_id-4/esarp-71/a3cb00f7-_jim5768-.jpg'),
(467, 162, 'upload/magaza_id-4/esarp-72/a92235a1-_jim5769-.jpg'),
(468, 162, 'upload/magaza_id-4/esarp-72/88e8152f-_jim5770-.jpg'),
(469, 163, 'upload/magaza_id-4/esarp-73/aa288bcd-_jim5771-.jpg'),
(470, 163, 'upload/magaza_id-4/esarp-73/9eff8dfb-_jim5772-.jpg'),
(471, 164, 'upload/magaza_id-4/esarp-74/9f650719-_jim5773-.jpg'),
(472, 164, 'upload/magaza_id-4/esarp-74/36807409-_jim5774-.jpg'),
(473, 165, 'upload/magaza_id-4/esarp-75/365cbbea-_jim5775-.jpg'),
(474, 165, 'upload/magaza_id-4/esarp-75/3981fad2-_jim5776-.jpg'),
(475, 166, 'upload/magaza_id-4/esarp-76/75d5e16a-_jim5777-.jpg'),
(476, 166, 'upload/magaza_id-4/esarp-76/a3cd17e7-_jim5778-.jpg'),
(477, 167, 'upload/magaza_id-4/esarp-77/f8514f48-_jim5779-.jpg'),
(478, 167, 'upload/magaza_id-4/esarp-77/f05c5928-_jim5780-.jpg'),
(479, 168, 'upload/magaza_id-4/esarp-78/5be125f1-_jim5782-.jpg'),
(480, 168, 'upload/magaza_id-4/esarp-78/ae18c09b-_jim5783-.jpg'),
(481, 169, 'upload/magaza_id-4/esarp-79/aa41f9a8-_jim5784-.jpg'),
(482, 169, 'upload/magaza_id-4/esarp-79/14677fe7-_jim5785-.jpg'),
(483, 170, 'upload/magaza_id-4/esarp-80/95417053-_jim5786-.jpg'),
(484, 170, 'upload/magaza_id-4/esarp-80/83549d52-_jim5787-.jpg'),
(485, 171, 'upload/magaza_id-4/esarp-81/7150a71c-_jim5788-.jpg'),
(486, 171, 'upload/magaza_id-4/esarp-81/a4465c2d-_jim5789-.jpg'),
(487, 172, 'upload/magaza_id-4/esarp-82/1870e24e-_jim6862.jpg'),
(488, 172, 'upload/magaza_id-4/esarp-82/dfd591f3-_jim6863.jpg'),
(489, 173, 'upload/magaza_id-4/esarp-83/53dc363d-_jim6864.jpg'),
(490, 173, 'upload/magaza_id-4/esarp-83/de51f244-_jim6865.jpg'),
(491, 174, 'upload/magaza_id-4/esarp-84/cc935e80-_jim6866.jpg'),
(492, 174, 'upload/magaza_id-4/esarp-84/35edc042-_jim6867.jpg'),
(493, 175, 'upload/magaza_id-4/esarp-85/fc8cc727-_jim6868.jpg'),
(494, 175, 'upload/magaza_id-4/esarp-85/81b8ceda-_jim6869.jpg'),
(495, 176, 'upload/magaza_id-4/esarp-86/a14b6a2c-_jim6870.jpg'),
(496, 176, 'upload/magaza_id-4/esarp-86/6cad4336-_jim6871.jpg'),
(497, 177, 'upload/magaza_id-4/esarp-87/a9e55a06-_jim6872.jpg'),
(498, 177, 'upload/magaza_id-4/esarp-87/387b87a9-_jim6873.jpg'),
(499, 178, 'upload/magaza_id-4/esarp-88/720cad8c-_jim6874.jpg'),
(500, 178, 'upload/magaza_id-4/esarp-88/7f0b8ac8-_jim6875.jpg'),
(501, 179, 'upload/magaza_id-4/esarp-89/1aac5a92-_jim6876.jpg'),
(502, 179, 'upload/magaza_id-4/esarp-89/8868db0a-_jim6877.jpg'),
(503, 180, 'upload/magaza_id-4/esarp-90/a01214a3-_jim6878.jpg'),
(504, 180, 'upload/magaza_id-4/esarp-90/cdc1bc2f-_jim6879.jpg'),
(505, 181, 'upload/magaza_id-4/esarp-91/2a8cc2f5-_jim6880.jpg'),
(506, 181, 'upload/magaza_id-4/esarp-91/bb8b6739-_jim6881.jpg'),
(507, 182, 'upload/magaza_id-4/esarp-92/9ded6a44-_jim6882.jpg'),
(508, 182, 'upload/magaza_id-4/esarp-92/06f1294e-_jim6884.jpg'),
(509, 182, 'upload/magaza_id-4/esarp-92/ecb5dc19-_jim6885.jpg'),
(510, 183, 'upload/magaza_id-4/esarp-93/2de92ecb-_jim6832.jpg'),
(511, 183, 'upload/magaza_id-4/esarp-93/1dc22651-_jim6833.jpg'),
(512, 183, 'upload/magaza_id-4/esarp-93/6f27b1d0-_jim6834.jpg'),
(513, 185, 'upload/magaza_id-4/esarp-94/3e203f13-_jim6837.jpg'),
(514, 185, 'upload/magaza_id-4/esarp-94/9e63bc0b-_jim6838.jpg'),
(515, 185, 'upload/magaza_id-4/esarp-94/e79beb82-_jim6839.jpg'),
(516, 185, 'upload/magaza_id-4/esarp-94/23d57847-_jim6840.jpg'),
(517, 186, 'upload/magaza_id-4/esarp-95/e66c4cae-_jim6835.jpg'),
(518, 186, 'upload/magaza_id-4/esarp-95/22b89bff-_jim6836.jpg'),
(519, 187, 'upload/products/4/f387f3c9-gessi-33950-siyah-deri-kadin-cizme-0686688967088597.jpg'),
(520, 187, 'upload/products/4/c6c4249c-gessi-33950-siyah-deri-kadin-cizme-1054423127793491.jpg'),
(521, 187, 'upload/products/4/34a6f4e7-gessi-33950-siyah-deri-kadin-cizme-1070754696994387.jpg'),
(522, 187, 'upload/products/4/e68fe24b-gessi-33950-siyah-deri-kadin-cizme-1109224279978980.jpg'),
(523, 187, 'upload/products/4/70114a8c-gessi-33950-siyah-deri-kadin-cizme-1504725620223676.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `secenek`
--

DROP TABLE IF EXISTS `secenek`;
CREATE TABLE `secenek` (
  `id` int(11) NOT NULL,
  `urunID` int(11) NOT NULL,
  `label` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `secenek` varchar(100) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci COMMENT='ürün seçeneklerinin tutulduğu tablo';

--
-- Tablo döküm verisi `secenek`
--

INSERT INTO `secenek` (`id`, `urunID`, `label`, `secenek`) VALUES
(7, 21, 'RENK', 'KIRMIZI,YEŞİL,BEYAZ'),
(6, 21, 'BEDEN', 'L BEDEN,M BEDEN'),
(8, 187, 'Ayakkabı Numarası', '39'),
(9, 187, 'Renk', 'Siyah');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `title`, `value`) VALUES
(2, 'site_name', 'Qafia&#39;s'),
(3, 'description', 'E-Tic E-ticaret Yazılımı'),
(4, 'keywords', 'light, blog, basit, znframework'),
(6, 'theme_name', 'fashion'),
(7, 'adresss', 'İstanbul -TÜRKİYE'),
(8, 'telephone', '+90 (216) 000 00 00'),
(9, 'mail', 'site@site.com'),
(10, 'address', 'İstanbul -TÜRKİYE'),
(11, 'facebook', ''),
(12, 'twitter', ''),
(13, 'youtube', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `silinen_urunler`
--

DROP TABLE IF EXISTS `silinen_urunler`;
CREATE TABLE `silinen_urunler` (
  `urunID` int(11) NOT NULL,
  `magazaID` int(11) NOT NULL,
  `baslik` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `baslikseo` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `altbaslik` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kategori` int(11) NOT NULL,
  `aciklama` longtext COLLATE utf8_turkish_ci NOT NULL,
  `fiyat` decimal(11,2) NOT NULL,
  `kdv` int(11) NOT NULL,
  `fotolink` text COLLATE utf8_turkish_ci NOT NULL,
  `yildiz` int(11) NOT NULL,
  `begenilme` int(11) NOT NULL,
  `hit` int(11) NOT NULL,
  `stokAdet` int(11) NOT NULL,
  `stokKodu` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `onay` int(11) NOT NULL DEFAULT 0,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `yorum-id` int(11) NOT NULL,
  `beden` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `renk` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `marka` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ebat` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `store`
--

DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `id` int(11) NOT NULL,
  `store_name` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `shop_name` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `store_tel` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `shop_url` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `store_logo` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `address` text COLLATE utf8_turkish_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `description` text COLLATE utf8_turkish_ci NOT NULL,
  `authorized_person` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `company_type` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `mail` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `status` int(1) NOT NULL,
  `authorized` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `authorized_tel` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `kep_adresi` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `activity_category` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `mersis_no` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `chamber_of_commerce` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `tax_administration` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `tax_number` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `bank_name` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `iban_no` varchar(100) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `store`
--

INSERT INTO `store` (`id`, `store_name`, `shop_name`, `seo`, `store_tel`, `shop_url`, `store_logo`, `address`, `keyword`, `description`, `authorized_person`, `company_type`, `mail`, `password`, `status`, `authorized`, `authorized_tel`, `created_date`, `kep_adresi`, `activity_category`, `mersis_no`, `chamber_of_commerce`, `tax_administration`, `tax_number`, `bank_name`, `iban_no`) VALUES
(4, '', 'Prestige Mağazacılık', 'prestige-magazacilik', '05078326233', '', 'images/prestigelogo.jpg', 'üsküdar / İstanbul', '   ', 'kişiye özel modanın öncüsü', 'SAHİBİ', 'Tekstil', 'semakafiyeozturk@gmail.com', '29d8ff623093059487aa997bd888421e', 1, 'Sema Kafiye ÖZTÜRK', '05078326233', '2017-04-08 03:04:19', '', '', '', 'İSTANBUL TİCARET ODASI', 'istanbul', '00000000000', 'Kuveyt Türk Katılım Bankası A.Ş.', 'TR00 0000 0000 0000 0000'),
(9, '', 'kartal elektronik', 'kartal-elektronik', '0216 123 4 567', 'kartalelektronik.com', 'upload/magazalogo/72aeb454-king-eagle-logo-260nw-369467126.jpg', 'istanbul', 'elektrik,elektronik,malzeme,', 'Malzeme satıcısı', 'müdür', '1', 'info@kartalelektronik.com', '6d3f265c4c3b529709b9e46b145f4d64', 1, 'Erkan', '0542 480 22 80', '2018-12-28 08:17:16', '12345789', '0', '4154545', '33', 'üsküdar', '00000000', '82', 'TR00 0000 0000 0000 0000');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `store_cargo`
--

DROP TABLE IF EXISTS `store_cargo`;
CREATE TABLE `store_cargo` (
  `id` int(11) NOT NULL,
  `cargo_name` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `shop_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `store_category`
--

DROP TABLE IF EXISTS `store_category`;
CREATE TABLE `store_category` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tic_odalar`
--

DROP TABLE IF EXISTS `tic_odalar`;
CREATE TABLE `tic_odalar` (
  `id` int(11) NOT NULL,
  `oda_adi` varchar(100) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tic_odalar`
--

INSERT INTO `tic_odalar` (`id`, `oda_adi`) VALUES
(1, 'ACIPAYAM TİCARET ODASI'),
(2, 'ADANA TİCARET ODASI'),
(3, 'ALİAĞA TİCARET ODASI'),
(4, 'ANKARA TİCARET ODASI'),
(5, 'AYDIN TİCARET ODASI'),
(6, 'AYVALIK TİCARET ODASI'),
(7, 'BABADAG TİCARET ODASI'),
(8, 'BALIKESİR TİCARET ODASI'),
(9, 'BANDIRMA TİCARET ODASI'),
(10, 'BAYINDIR TİCARET ODASI'),
(11, 'BERGAMA TİCARET ODASI '),
(12, 'BEYPAZARI TİCARET ODASI'),
(13, 'BEYŞEHIR TİCARET ODASI'),
(14, 'BODRUM TİCARET ODASI'),
(15, 'BULDAN TİCARET ODASI'),
(16, 'BUNYAN TİCARET ODASI'),
(17, 'BURHANİYE TİCARET ODASI'),
(18, 'CEYHAN TİCARET ODASI'),
(19, 'CUMRA TİCARET ODASI'),
(20, 'DENİZLİ TİCARET ODASI'),
(21, 'DEVELİ TİCARET ODASI'),
(22, 'DOGANHİSAR TİCARET ODASI'),
(23, 'DİDİM TİCARET ODASI'),
(24, 'EDREMİT TİCARET ODASI'),
(25, 'ERDEK TİCARET ODASI'),
(26, 'ESKİŞEHİR TİCARET ODASI'),
(27, 'GAZİANTEP TİCARET ODASI'),
(28, 'GEBZE TİCARET ODASI'),
(29, 'GÖNEN TİCARET ODASI'),
(30, 'HAYMANA TİCARET ODASI'),
(31, 'ILGIN TİCARET ODASI'),
(32, 'ISLAHİYE TİCARET ODASI'),
(33, 'İSTANBUL TİCARET ODASI'),
(34, 'İZMİR TİCARET ODASI'),
(35, 'KADİRLİ TİCARET ODASI'),
(36, 'KAYSERİ TİCARET ODASI'),
(37, 'KOCAELİ TİCARET ODASI'),
(38, 'KONYA TİCARET ODASI'),
(39, 'KOZAN TİCARET ODASI'),
(40, 'KUŞADASI TİCARET ODASI'),
(41, 'KÖRFEZ TİCARET ODASI'),
(42, 'MARMARİS TİCARET ODASI'),
(43, 'MENEMEN TİCARET ODASI'),
(44, 'NAZİLLİ TİCARET ODASI'),
(45, 'NİZİP TİCARET ODASI'),
(46, 'ÖDEMİŞ TİCARET ODASI'),
(47, 'POLATLI TİCARET ODASI'),
(48, 'SARAYKÖY TİCARET ODASI'),
(49, 'SELÇUK TİCARET ODASI'),
(50, 'ŞEREFLİKOÇHİSAR TİCARET ODASI'),
(51, 'SEYDİŞEHİR TİCARET ODASI'),
(52, 'SÖKE TİCARET ODASI'),
(53, 'SUSURLUK TİCARET ODASI'),
(54, 'TAVAŞ TİCARET ODASI'),
(55, 'TİRE TİCARET ODASI'),
(56, 'TORBALI TİCARET ODASI'),
(57, 'YAHYALI TİCARET ODASI');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `tcno` varchar(12) COLLATE utf8_turkish_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `telephone` varchar(16) CHARACTER SET latin1 NOT NULL,
  `pass` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `createDate` timestamp NULL DEFAULT current_timestamp(),
  `mailOnay` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `status` int(1) DEFAULT 0,
  `adress_status` tinyint(1) DEFAULT 0,
  `birthdate` varchar(10) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`id`, `tcno`, `name`, `email`, `telephone`, `pass`, `createDate`, `mailOnay`, `status`, `adress_status`, `birthdate`) VALUES
(4, '69319049124', 'erkan ışık', 'erkanisik@yahoo.com', '0(542) 480 22 80', 'e10adc3949ba59abbe56e057f20f883e', '2017-05-13 22:58:46', '', 1, 0, ''),
(5, NULL, 'AHMET YASEVİ', 'erkanisik@yahoo.com', '0(542) 480 22 80', 'cbf710fbbf644015c3aa690935f647ee', '2019-04-24 18:43:03', '', 1, 0, '2001-1-1'),
(6, '12345678901', 'admin', 'admin@admin.com', '0(000) 000 00 00', 'e10adc3949ba59abbe56e057f20f883e', '2021-01-13 10:48:13', '', 1, 0, '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_adress`
--

DROP TABLE IF EXISTS `user_adress`;
CREATE TABLE `user_adress` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `adress_name` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `adress` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `il`
--
ALTER TABLE `il`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ilce`
--
ALTER TABLE `ilce`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ozellik`
--
ALTER TABLE `ozellik`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `products_category`
--
ALTER TABLE `products_category`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `products_img`
--
ALTER TABLE `products_img`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `secenek`
--
ALTER TABLE `secenek`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `silinen_urunler`
--
ALTER TABLE `silinen_urunler`
  ADD PRIMARY KEY (`urunID`);

--
-- Tablo için indeksler `store_cargo`
--
ALTER TABLE `store_cargo`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `store_category`
--
ALTER TABLE `store_category`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tic_odalar`
--
ALTER TABLE `tic_odalar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- Tablo için AUTO_INCREMENT değeri `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `ilce`
--
ALTER TABLE `ilce`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=969;

--
-- Tablo için AUTO_INCREMENT değeri `manager`
--
ALTER TABLE `manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `ozellik`
--
ALTER TABLE `ozellik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- Tablo için AUTO_INCREMENT değeri `products_category`
--
ALTER TABLE `products_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Tablo için AUTO_INCREMENT değeri `products_img`
--
ALTER TABLE `products_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=524;

--
-- Tablo için AUTO_INCREMENT değeri `secenek`
--
ALTER TABLE `secenek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `silinen_urunler`
--
ALTER TABLE `silinen_urunler`
  MODIFY `urunID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `store_cargo`
--
ALTER TABLE `store_cargo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `store_category`
--
ALTER TABLE `store_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `tic_odalar`
--
ALTER TABLE `tic_odalar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
