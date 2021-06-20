-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2020 at 06:34 PM
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
-- Database: `result_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_course`
--

CREATE TABLE `accounts_course` (
  `sec_id` int(11) NOT NULL,
  `course_id` varchar(50) NOT NULL,
  `course_title` varchar(50) NOT NULL,
  `sec_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts_course`
--

INSERT INTO `accounts_course` (`sec_id`, `course_id`, `course_title`, `sec_no`) VALUES
(2, 'cse411', 'Software Engineering', 1),
(3, 'cse411', 'Software Engineering', 2),
(4, 'cse411', 'Software Engineering', 2),
(5, 'cse411', 'Software Engineering', 3);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_marks`
--

CREATE TABLE `accounts_marks` (
  `id` int(11) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `course_id` varchar(20) NOT NULL,
  `sec_no` int(11) NOT NULL,
  `mid1` double NOT NULL,
  `mid2` double NOT NULL,
  `final` double NOT NULL,
  `quiz1` double NOT NULL,
  `quiz2` double NOT NULL,
  `quiz3` double NOT NULL,
  `avarage_quiz` double NOT NULL,
  `class_participation` double NOT NULL,
  `project_assisgnment` double NOT NULL,
  `lab` double NOT NULL,
  `total_marks` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts_marks`
--

INSERT INTO `accounts_marks` (`id`, `student_id`, `course_id`, `sec_no`, `mid1`, `mid2`, `final`, `quiz1`, `quiz2`, `quiz3`, `avarage_quiz`, `class_participation`, `project_assisgnment`, `lab`, `total_marks`) VALUES
(4, '2017-1-60-149', 'cse411', 1, 20, 25, 24, 10, 9, 10, 9.666666666666666, 5, 10, 5, 98.66666666666667),
(5, '2017-1-60-134', 'cse411', 1, 20, 24, 24, 9, 9, 10, 9.333333333333334, 5, 10, 5, 97.33333333333333),
(6, '2017-1-60-138', 'cse411', 1, 19, 24, 24, 9, 8, 10, 9, 4, 10, 4, 94),
(7, '2017-1-60-129', 'cse411', 2, 19, 24, 19, 10, 9, 10, 9.666666666666666, 5, 9, 5, 90.66666666666667),
(8, '2017-1-60-106', 'cse411', 2, 18, 23, 21, 10, 8, 7, 8.333333333333334, 5, 8, 5, 88.33333333333333),
(9, '2017-1-60-151', 'cse411', 2, 20, 23, 24, 9, 8, 7, 8, 4, 10, 5, 94),
(10, '2017-1-60-137', 'cse411', 3, 19, 23, 19, 9, 8, 7, 8, 3, 8, 3, 83),
(11, '2017-1-60-135', 'cse411', 3, 19, 20, 19, 9, 8, 6, 7.666666666666667, 3, 8, 3, 79.66666666666667);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_result`
--

CREATE TABLE `accounts_result` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_student_enroll`
--

CREATE TABLE `accounts_student_enroll` (
  `id` int(11) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `course_id` varchar(20) NOT NULL,
  `sec_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts_student_enroll`
--

INSERT INTO `accounts_student_enroll` (`id`, `student_id`, `course_id`, `sec_no`) VALUES
(2, '2017-1-60-134', 'cse411', 1),
(3, '2017-1-60-149', 'cse411', 1),
(4, '2017-1-60-138', 'cse411', 1),
(5, '2017-1-60-129', 'cse411', 2),
(6, '2017-1-60-106', 'cse411', 2),
(7, '2017-1-60-151', 'cse411', 2),
(8, '2017-1-60-137', 'cse411', 3),
(9, '2017-1-60-135', 'cse411', 3);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_student_list`
--

CREATE TABLE `accounts_student_list` (
  `s_id` int(11) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_email` varchar(254) NOT NULL,
  `student_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts_student_list`
--

INSERT INTO `accounts_student_list` (`s_id`, `student_id`, `student_name`, `student_email`, `student_number`) VALUES
(2, '2017-1-60-149', 'rimi', 'rimi@gmail.com', 2147483647),
(3, '2017-1-60-134', 'jugal', 'jugal@gmail.com', 1546995852),
(4, '2017-1-60-138', 'monir', 'monir@gmail.com', 1254684568),
(5, '2017-1-60-151', 'mushfiq', 'mushfiq@gmail.com', 1245868525),
(6, '2017-1-60-129', 'mithi', 'mithi', 2145684883),
(7, '2017-1-60-106', 'priota', 'priota@gmail.com', 1254564525),
(8, '2017-1-60-137', 'anik', 'anik@gmail.com', 125458684),
(9, '2017-1-60-135', 'shibu', 'shibu@gmail.com', 124584688);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add course', 1, 'add_course'),
(2, 'Can change course', 1, 'change_course'),
(3, 'Can delete course', 1, 'delete_course'),
(4, 'Can view course', 1, 'view_course'),
(5, 'Can add marks', 2, 'add_marks'),
(6, 'Can change marks', 2, 'change_marks'),
(7, 'Can delete marks', 2, 'delete_marks'),
(8, 'Can view marks', 2, 'view_marks'),
(9, 'Can add result', 3, 'add_result'),
(10, 'Can change result', 3, 'change_result'),
(11, 'Can delete result', 3, 'delete_result'),
(12, 'Can view result', 3, 'view_result'),
(13, 'Can add student_enroll', 4, 'add_student_enroll'),
(14, 'Can change student_enroll', 4, 'change_student_enroll'),
(15, 'Can delete student_enroll', 4, 'delete_student_enroll'),
(16, 'Can view student_enroll', 4, 'view_student_enroll'),
(17, 'Can add student_list', 5, 'add_student_list'),
(18, 'Can change student_list', 5, 'change_student_list'),
(19, 'Can delete student_list', 5, 'delete_student_list'),
(20, 'Can view student_list', 5, 'view_student_list'),
(21, 'Can add log entry', 6, 'add_logentry'),
(22, 'Can change log entry', 6, 'change_logentry'),
(23, 'Can delete log entry', 6, 'delete_logentry'),
(24, 'Can view log entry', 6, 'view_logentry'),
(25, 'Can add permission', 7, 'add_permission'),
(26, 'Can change permission', 7, 'change_permission'),
(27, 'Can delete permission', 7, 'delete_permission'),
(28, 'Can view permission', 7, 'view_permission'),
(29, 'Can add group', 8, 'add_group'),
(30, 'Can change group', 8, 'change_group'),
(31, 'Can delete group', 8, 'delete_group'),
(32, 'Can view group', 8, 'view_group'),
(33, 'Can add user', 9, 'add_user'),
(34, 'Can change user', 9, 'change_user'),
(35, 'Can delete user', 9, 'delete_user'),
(36, 'Can view user', 9, 'view_user'),
(37, 'Can add content type', 10, 'add_contenttype'),
(38, 'Can change content type', 10, 'change_contenttype'),
(39, 'Can delete content type', 10, 'delete_contenttype'),
(40, 'Can view content type', 10, 'view_contenttype'),
(41, 'Can add session', 11, 'add_session'),
(42, 'Can change session', 11, 'change_session'),
(43, 'Can delete session', 11, 'delete_session'),
(44, 'Can view session', 11, 'view_session');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$3dHLuZgOMQXD$FTL6SI9+3NFx9MmCaXKY146ytshfFsoCz9mzI5VslEc=', '2020-04-14 15:53:45.342263', 0, 'rimi', '', '', '', 0, 1, '2020-04-13 13:28:28.426587');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'accounts', 'course'),
(2, 'accounts', 'marks'),
(3, 'accounts', 'result'),
(4, 'accounts', 'student_enroll'),
(5, 'accounts', 'student_list'),
(6, 'admin', 'logentry'),
(8, 'auth', 'group'),
(7, 'auth', 'permission'),
(9, 'auth', 'user'),
(10, 'contenttypes', 'contenttype'),
(11, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'accounts', '0001_initial', '2020-04-13 13:27:02.999723'),
(2, 'contenttypes', '0001_initial', '2020-04-13 13:27:03.499688'),
(3, 'auth', '0001_initial', '2020-04-13 13:27:05.437160'),
(4, 'admin', '0001_initial', '2020-04-13 13:27:15.145891'),
(5, 'admin', '0002_logentry_remove_auto_add', '2020-04-13 13:27:17.129123'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2020-04-13 13:27:17.160371'),
(7, 'contenttypes', '0002_remove_content_type_name', '2020-04-13 13:27:18.355907'),
(8, 'auth', '0002_alter_permission_name_max_length', '2020-04-13 13:27:19.450423'),
(9, 'auth', '0003_alter_user_email_max_length', '2020-04-13 13:27:22.453026'),
(10, 'auth', '0004_alter_user_username_opts', '2020-04-13 13:27:22.649760'),
(11, 'auth', '0005_alter_user_last_login_null', '2020-04-13 13:27:24.641378'),
(12, 'auth', '0006_require_contenttypes_0002', '2020-04-13 13:27:24.781955'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2020-04-13 13:27:24.953787'),
(14, 'auth', '0008_alter_user_username_max_length', '2020-04-13 13:27:27.465653'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2020-04-13 13:27:29.193262'),
(16, 'auth', '0010_alter_group_name_max_length', '2020-04-13 13:27:30.083828'),
(17, 'auth', '0011_update_proxy_permissions', '2020-04-13 13:27:30.161876'),
(18, 'sessions', '0001_initial', '2020-04-13 13:27:30.365004');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('dcmmdd9qqdfwo2rxdktpqackwqm5sjv7', 'NTc0MjA3ZGE0MThjZDgwMzY1ZDQ3OTZiY2ZiNjQwNzM3ZTkyN2I1Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNjU4NmVmNjUzYmM4YWE1MTQ3MDI3MjUzYWVlYjk3YWNhZDU5NzliIn0=', '2020-04-27 13:28:40.809701');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_course`
--
ALTER TABLE `accounts_course`
  ADD PRIMARY KEY (`sec_id`);

--
-- Indexes for table `accounts_marks`
--
ALTER TABLE `accounts_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts_result`
--
ALTER TABLE `accounts_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts_student_enroll`
--
ALTER TABLE `accounts_student_enroll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts_student_list`
--
ALTER TABLE `accounts_student_list`
  ADD PRIMARY KEY (`s_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_course`
--
ALTER TABLE `accounts_course`
  MODIFY `sec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `accounts_marks`
--
ALTER TABLE `accounts_marks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `accounts_result`
--
ALTER TABLE `accounts_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts_student_enroll`
--
ALTER TABLE `accounts_student_enroll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `accounts_student_list`
--
ALTER TABLE `accounts_student_list`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
