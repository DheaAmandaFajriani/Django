-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2024 at 07:45 AM
-- Server version: 11.5.2-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `presensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add mahasiswa', 1, 'add_mahasiswa'),
(2, 'Can change mahasiswa', 1, 'change_mahasiswa'),
(3, 'Can delete mahasiswa', 1, 'delete_mahasiswa'),
(4, 'Can view mahasiswa', 1, 'view_mahasiswa'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session'),
(29, 'Can add matkul', 8, 'add_matkul'),
(30, 'Can change matkul', 8, 'change_matkul'),
(31, 'Can delete matkul', 8, 'delete_matkul'),
(32, 'Can view matkul', 8, 'view_matkul'),
(33, 'Can add dosen', 9, 'add_dosen'),
(34, 'Can change dosen', 9, 'change_dosen'),
(35, 'Can delete dosen', 9, 'delete_dosen'),
(36, 'Can view dosen', 9, 'view_dosen'),
(37, 'Can add mahasiswaa', 10, 'add_mahasiswaa'),
(38, 'Can change mahasiswaa', 10, 'change_mahasiswaa'),
(39, 'Can delete mahasiswaa', 10, 'delete_mahasiswaa'),
(40, 'Can view mahasiswaa', 10, 'view_mahasiswaa'),
(41, 'Can add kontrak', 11, 'add_kontrak'),
(42, 'Can change kontrak', 11, 'change_kontrak'),
(43, 'Can delete kontrak', 11, 'delete_kontrak'),
(44, 'Can view kontrak', 11, 'view_kontrak'),
(45, 'Can add matkul2', 12, 'add_matkul2'),
(46, 'Can change matkul2', 12, 'change_matkul2'),
(47, 'Can delete matkul2', 12, 'delete_matkul2'),
(48, 'Can view matkul2', 12, 'view_matkul2'),
(49, 'Can add dosen2', 13, 'add_dosen2'),
(50, 'Can change dosen2', 13, 'change_dosen2'),
(51, 'Can delete dosen2', 13, 'delete_dosen2'),
(52, 'Can view dosen2', 13, 'view_dosen2'),
(53, 'Can add kelas', 14, 'add_kelas'),
(54, 'Can change kelas', 14, 'change_kelas'),
(55, 'Can delete kelas', 14, 'delete_kelas'),
(56, 'Can view kelas', 14, 'view_kelas');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$870000$T56FqL9JFw9XzfQ1p6iQHw$7CF2542a7EUrDorBc7h6f6leSFM1cum039ALIRVJ9Go=', '2024-10-30 19:11:26.661421', 1, 'dhea', '', '', 'dheamandaa203@gmail.com', 1, 1, '2024-10-30 19:10:14.589724');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `connectdb_kelas`
--

CREATE TABLE `connectdb_kelas` (
  `id_kelas` int(11) NOT NULL,
  `nm_kelas` varchar(100) NOT NULL,
  `id_dosen_id` int(11) NOT NULL,
  `id_matkul_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2, 'admin', 'logentry'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(9, 'connectdb', 'dosen'),
(13, 'connectdb', 'dosen2'),
(14, 'connectdb', 'kelas'),
(11, 'connectdb', 'kontrak'),
(1, 'connectdb', 'mahasiswa'),
(10, 'connectdb', 'mahasiswaa'),
(8, 'connectdb', 'matkul'),
(12, 'connectdb', 'matkul2'),
(6, 'contenttypes', 'contenttype'),
(7, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-10-20 20:31:15.874630'),
(2, 'auth', '0001_initial', '2024-10-20 20:31:16.358688'),
(3, 'admin', '0001_initial', '2024-10-20 20:31:16.437731'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-10-20 20:31:16.444817'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-10-20 20:31:16.451638'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-10-20 20:31:16.507494'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-10-20 20:31:16.609197'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-10-20 20:31:16.641959'),
(9, 'auth', '0004_alter_user_username_opts', '2024-10-20 20:31:16.648943'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-10-20 20:31:16.679575'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-10-20 20:31:16.682080'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-10-20 20:31:16.689761'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-10-20 20:31:16.712034'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-10-20 20:31:16.739545'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-10-20 20:31:16.767693'),
(16, 'auth', '0011_update_proxy_permissions', '2024-10-20 20:31:16.778898'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-10-20 20:31:16.811635'),
(18, 'sessions', '0001_initial', '2024-10-20 20:31:16.840365'),
(19, 'connectdb', '0001_initial', '2024-10-28 16:18:33.029573'),
(20, 'connectdb', '0002_alter_matkul_table', '2024-10-28 16:19:37.599214'),
(21, 'connectdb', '0003_dosen_mahasiswaa', '2024-10-28 16:29:52.772949'),
(22, 'connectdb', '0004_kontrak', '2024-10-28 21:16:23.670198'),
(23, 'connectdb', '0005_delete_mahasiswa', '2024-10-30 14:28:08.024898'),
(24, 'connectdb', '0006_matkul_dosen', '2024-10-30 20:19:07.720849'),
(25, 'connectdb', '0007_dosen2_matkul2', '2024-10-31 21:05:49.771221'),
(26, 'connectdb', '0008_alter_matkul2_dosen2', '2024-10-31 21:07:55.041313'),
(27, 'connectdb', '0009_remove_matkul2_dosen2_delete_dosen2_delete_matkul2', '2024-11-02 15:26:02.678992'),
(28, 'connectdb', '0010_alter_matkul_dosen', '2024-11-04 14:35:10.743987'),
(29, 'connectdb', '0011_kelas', '2024-11-07 04:30:07.047371'),
(30, 'connectdb', '0012_alter_kelas_table', '2024-11-07 04:49:45.640118'),
(31, 'connectdb', '0013_kontrak_id_kelas', '2024-11-07 04:49:45.643530'),
(32, 'connectdb', '0014_remove_matkul_dosen_alter_kelas_id_dosen_and_more', '2024-11-07 04:49:45.646784'),
(33, 'connectdb', '0015_alter_matkul_table', '2024-11-07 05:16:36.484921'),
(34, 'connectdb', '0016_alter_kontrak_id_dosen_alter_kontrak_id_kelas_and_more', '2024-11-07 05:43:44.156861');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('podl66gnn6757uci63548y4bct0d0bz7', '.eJxVjMsKwyAQAP_FcxFdsz567D3fIGtWatqiEJNT6b8XIYf2OjPMW0Q69hKPnre4srgKLS6_LNHyzHUIflC9N7m0um9rkiORp-1ybpxft7P9GxTqZWwZnXZImPzCmSeLKQROwGys9px0BgcOTdbkDVinQAFMwSrrgAmt-HwB2Mo23w:1t6E6I:S-cjfIlCjHPqyWoD-z-sXMhxGvxdnJKNe74psnctpUg', '2024-11-13 19:11:26.665264');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nama`) VALUES
(1, 'Dhea Amanda Fajriani'),
(2, 'labubu'),
(3, 'dolala');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(10) NOT NULL,
  `id_matkul` int(10) NOT NULL,
  `id_dosen` int(10) NOT NULL,
  `nm_kelas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `id_matkul`, `id_dosen`, `nm_kelas`) VALUES
(1, 4, 1, 'kewirausahaan A'),
(2, 3, 3, 'mobile A'),
(3, 5, 1, 'struktur data A'),
(4, 2, 2, 'webside B'),
(5, 1, 1, 'pemrograman B');

-- --------------------------------------------------------

--
-- Table structure for table `kontrak`
--

CREATE TABLE `kontrak` (
  `id_kontrak` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `id_matkul` int(11) NOT NULL,
  `id_mhs` int(11) NOT NULL,
  `id_kelas` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `kontrak`
--

INSERT INTO `kontrak` (`id_kontrak`, `id_dosen`, `id_matkul`, `id_mhs`, `id_kelas`) VALUES
(1, 1, 1, 202165001, 5),
(2, 2, 2, 202165001, 4),
(3, 3, 3, 202165001, 2),
(4, 1, 5, 202165001, 3),
(5, 1, 5, 202165001, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswaa`
--

CREATE TABLE `mahasiswaa` (
  `nim` int(11) NOT NULL,
  `nokartu` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `mahasiswaa`
--

INSERT INTO `mahasiswaa` (`nim`, `nokartu`, `nama`) VALUES
(202165001, 1234567890, 'Dhea Amanda Fajriani');

-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE `matkul` (
  `id_matkul` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`id_matkul`, `nama`) VALUES
(1, 'pemrograman'),
(2, 'webside'),
(3, 'mobile'),
(4, 'kewirausahaan'),
(5, 'struktur data');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `connectdb_kelas`
--
ALTER TABLE `connectdb_kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `connectdb_kelas_id_dosen_id_e397f537_fk_dosen_id_dosen` (`id_dosen_id`),
  ADD KEY `connectdb_kelas_id_matkul_id_85256117_fk_matkul_id_matkul` (`id_matkul_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `id_matkul` (`id_matkul`,`id_dosen`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indexes for table `kontrak`
--
ALTER TABLE `kontrak`
  ADD PRIMARY KEY (`id_kontrak`),
  ADD KEY `kontrak_id_dosen_id_24a5379b_fk_dosen_id_dosen` (`id_dosen`),
  ADD KEY `kontrak_id_matkul_id_94e46399_fk_matkul_id_matkul` (`id_matkul`),
  ADD KEY `kontrak_id_mhs_id_61faeee7_fk_mahasiswaa_nim` (`id_mhs`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `mahasiswaa`
--
ALTER TABLE `mahasiswaa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`id_matkul`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `connectdb_kelas`
--
ALTER TABLE `connectdb_kelas`
  ADD CONSTRAINT `connectdb_kelas_id_dosen_id_e397f537_fk_dosen_id_dosen` FOREIGN KEY (`id_dosen_id`) REFERENCES `dosen` (`id_dosen`),
  ADD CONSTRAINT `connectdb_kelas_id_matkul_id_85256117_fk_matkul_id_matkul` FOREIGN KEY (`id_matkul_id`) REFERENCES `matkul` (`id_matkul`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_ibfk_1` FOREIGN KEY (`id_matkul`) REFERENCES `matkul` (`id_matkul`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kelas_ibfk_2` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kontrak`
--
ALTER TABLE `kontrak`
  ADD CONSTRAINT `kontrak_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kontrak_id_dosen_id_24a5379b_fk_dosen_id_dosen` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`),
  ADD CONSTRAINT `kontrak_id_matkul_id_94e46399_fk_matkul_id_matkul` FOREIGN KEY (`id_matkul`) REFERENCES `matkul` (`id_matkul`),
  ADD CONSTRAINT `kontrak_id_mhs_id_61faeee7_fk_mahasiswaa_nim` FOREIGN KEY (`id_mhs`) REFERENCES `mahasiswaa` (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
