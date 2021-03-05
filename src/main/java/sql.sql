/*
 Navicat Premium Data Transfer

 Source Server         : ss
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : localhost:3306
 Source Schema         : myemployees

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 05/03/2021 09:44:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `id` int(11) NOT NULL,
  `cName` varchar(20) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments`  (
  `department_id` int(4) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(3) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `manager_id` int(6) NULL DEFAULT NULL,
  `location_id` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`department_id`) USING BTREE,
  INDEX `loc_id_fk`(`location_id`) USING BTREE,
  CONSTRAINT `loc_id_fk` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 271 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES (10, 'Adm', 200, 1700);
INSERT INTO `departments` VALUES (20, 'Mar', 201, 1800);
INSERT INTO `departments` VALUES (30, 'Pur', 114, 1700);
INSERT INTO `departments` VALUES (40, 'Hum', 203, 2400);
INSERT INTO `departments` VALUES (50, 'Shi', 121, 1500);
INSERT INTO `departments` VALUES (60, 'IT', 103, 1400);
INSERT INTO `departments` VALUES (70, 'Pub', 204, 2700);
INSERT INTO `departments` VALUES (80, 'Sal', 145, 2500);
INSERT INTO `departments` VALUES (90, 'Exe', 100, 1700);
INSERT INTO `departments` VALUES (100, 'Fin', 108, 1700);
INSERT INTO `departments` VALUES (110, 'Acc', 205, 1700);
INSERT INTO `departments` VALUES (120, 'Tre', NULL, 1700);
INSERT INTO `departments` VALUES (130, 'Cor', NULL, 1700);
INSERT INTO `departments` VALUES (140, 'Con', NULL, 1700);
INSERT INTO `departments` VALUES (150, 'Sha', NULL, 1700);
INSERT INTO `departments` VALUES (160, 'Ben', NULL, 1700);
INSERT INTO `departments` VALUES (170, 'Man', NULL, 1700);
INSERT INTO `departments` VALUES (180, 'Con', NULL, 1700);
INSERT INTO `departments` VALUES (190, 'Con', NULL, 1700);
INSERT INTO `departments` VALUES (200, 'Ope', NULL, 1700);
INSERT INTO `departments` VALUES (210, 'IT ', NULL, 1700);
INSERT INTO `departments` VALUES (220, 'NOC', NULL, 1700);
INSERT INTO `departments` VALUES (230, 'IT ', NULL, 1700);
INSERT INTO `departments` VALUES (240, 'Gov', NULL, 1700);
INSERT INTO `departments` VALUES (250, 'Ret', NULL, 1700);
INSERT INTO `departments` VALUES (260, 'Rec', NULL, 1700);
INSERT INTO `departments` VALUES (270, 'Pay', NULL, 1700);

-- ----------------------------
-- Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees`  (
  `employee_id` int(6) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `last_name` varchar(25) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `email` varchar(25) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `phone_number` varchar(20) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `job_id` varchar(10) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `salary` double(10, 2) NULL DEFAULT NULL,
  `commission_pct` double(4, 2) NULL DEFAULT NULL,
  `manager_id` int(6) NULL DEFAULT NULL,
  `department_id` int(4) NULL DEFAULT NULL,
  `hiredate` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`employee_id`) USING BTREE,
  INDEX `dept_id_fk`(`department_id`) USING BTREE,
  INDEX `job_id_fk`(`job_id`) USING BTREE,
  CONSTRAINT `dept_id_fk` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `job_id_fk` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`job_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 207 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO `employees` VALUES (100, 'Steven', 'K_ing', 'SKING', '515.123.4567', 'AD_PRES', 24000.00, NULL, NULL, 90, '1992-04-03 00:00:00');
INSERT INTO `employees` VALUES (101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', 'AD_VP', 17000.00, NULL, 100, 90, '1992-04-03 00:00:00');
INSERT INTO `employees` VALUES (102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', 'AD_VP', 17000.00, NULL, 100, 90, '1992-04-03 00:00:00');
INSERT INTO `employees` VALUES (103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', 'IT_PROG', 9000.00, NULL, 102, 60, '1992-04-03 00:00:00');
INSERT INTO `employees` VALUES (104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', 'IT_PROG', 6000.00, NULL, 103, 60, '1992-04-03 00:00:00');
INSERT INTO `employees` VALUES (105, 'David', 'Austin', 'DAUSTIN', '590.423.4569', 'IT_PROG', 4800.00, NULL, 103, 60, '1998-03-03 00:00:00');
INSERT INTO `employees` VALUES (106, 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', 'IT_PROG', 4800.00, NULL, 103, 60, '1998-03-03 00:00:00');
INSERT INTO `employees` VALUES (107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', 'IT_PROG', 4200.00, NULL, 103, 60, '1998-03-03 00:00:00');
INSERT INTO `employees` VALUES (108, 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', 'FI_MGR', 12000.00, NULL, 101, 100, '1998-03-03 00:00:00');
INSERT INTO `employees` VALUES (109, 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', 'FI_ACCOUNT', 9000.00, NULL, 108, 100, '1998-03-03 00:00:00');
INSERT INTO `employees` VALUES (110, 'John', 'Chen', 'JCHEN', '515.124.4269', 'FI_ACCOUNT', 8200.00, NULL, 108, 100, '2000-09-09 00:00:00');
INSERT INTO `employees` VALUES (111, 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', 'FI_ACCOUNT', 7700.00, NULL, 108, 100, '2000-09-09 00:00:00');
INSERT INTO `employees` VALUES (112, 'Jose Manuel', 'Urman', 'JMURMAN', '515.124.4469', 'FI_ACCOUNT', 7800.00, NULL, 108, 100, '2000-09-09 00:00:00');
INSERT INTO `employees` VALUES (113, 'Luis', 'Popp', 'LPOPP', '515.124.4567', 'FI_ACCOUNT', 6900.00, NULL, 108, 100, '2000-09-09 00:00:00');
INSERT INTO `employees` VALUES (114, 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', 'PU_MAN', 11000.00, NULL, 100, 30, '2000-09-09 00:00:00');
INSERT INTO `employees` VALUES (115, 'Alexander', 'Khoo', 'AKHOO', '515.127.4562', 'PU_CLERK', 3100.00, NULL, 114, 30, '2000-09-09 00:00:00');
INSERT INTO `employees` VALUES (116, 'Shelli', 'Baida', 'SBAIDA', '515.127.4563', 'PU_CLERK', 2900.00, NULL, 114, 30, '2000-09-09 00:00:00');
INSERT INTO `employees` VALUES (117, 'Sigal', 'Tobias', 'STOBIAS', '515.127.4564', 'PU_CLERK', 2800.00, NULL, 114, 30, '2000-09-09 00:00:00');
INSERT INTO `employees` VALUES (118, 'Guy', 'Himuro', 'GHIMURO', '515.127.4565', 'PU_CLERK', 2600.00, NULL, 114, 30, '2000-09-09 00:00:00');
INSERT INTO `employees` VALUES (119, 'Karen', 'Colmenares', 'KCOLMENA', '515.127.4566', 'PU_CLERK', 2500.00, NULL, 114, 30, '2000-09-09 00:00:00');
INSERT INTO `employees` VALUES (120, 'Matthew', 'Weiss', 'MWEISS', '650.123.1234', 'ST_MAN', 8000.00, NULL, 100, 50, '2004-02-06 00:00:00');
INSERT INTO `employees` VALUES (121, 'Adam', 'Fripp', 'AFRIPP', '650.123.2234', 'ST_MAN', 8200.00, NULL, 100, 50, '2004-02-06 00:00:00');
INSERT INTO `employees` VALUES (122, 'Payam', 'Kaufling', 'PKAUFLIN', '650.123.3234', 'ST_MAN', 7900.00, NULL, 100, 50, '2004-02-06 00:00:00');
INSERT INTO `employees` VALUES (123, 'Shanta', 'Vollman', 'SVOLLMAN', '650.123.4234', 'ST_MAN', 6500.00, NULL, 100, 50, '2004-02-06 00:00:00');
INSERT INTO `employees` VALUES (124, 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', 'ST_MAN', 5800.00, NULL, 100, 50, '2004-02-06 00:00:00');
INSERT INTO `employees` VALUES (125, 'Julia', 'Nayer', 'JNAYER', '650.124.1214', 'ST_CLERK', 3200.00, NULL, 120, 50, '2004-02-06 00:00:00');
INSERT INTO `employees` VALUES (126, 'Irene', 'Mikkilineni', 'IMIKKILI', '650.124.1224', 'ST_CLERK', 2700.00, NULL, 120, 50, '2004-02-06 00:00:00');
INSERT INTO `employees` VALUES (127, 'James', 'Landry', 'JLANDRY', '650.124.1334', 'ST_CLERK', 2400.00, NULL, 120, 50, '2004-02-06 00:00:00');
INSERT INTO `employees` VALUES (128, 'Steven', 'Markle', 'SMARKLE', '650.124.1434', 'ST_CLERK', 2200.00, NULL, 120, 50, '2004-02-06 00:00:00');
INSERT INTO `employees` VALUES (129, 'Laura', 'Bissot', 'LBISSOT', '650.124.5234', 'ST_CLERK', 3300.00, NULL, 121, 50, '2004-02-06 00:00:00');
INSERT INTO `employees` VALUES (130, 'Mozhe', 'Atkinson', 'MATKINSO', '650.124.6234', 'ST_CLERK', 2800.00, NULL, 121, 50, '2004-02-06 00:00:00');
INSERT INTO `employees` VALUES (131, 'James', 'Marlow', 'JAMRLOW', '650.124.7234', 'ST_CLERK', 2500.00, NULL, 121, 50, '2004-02-06 00:00:00');
INSERT INTO `employees` VALUES (132, 'TJ', 'Olson', 'TJOLSON', '650.124.8234', 'ST_CLERK', 2100.00, NULL, 121, 50, '2004-02-06 00:00:00');
INSERT INTO `employees` VALUES (133, 'Jason', 'Mallin', 'JMALLIN', '650.127.1934', 'ST_CLERK', 3300.00, NULL, 122, 50, '2004-02-06 00:00:00');
INSERT INTO `employees` VALUES (134, 'Michael', 'Rogers', 'MROGERS', '650.127.1834', 'ST_CLERK', 2900.00, NULL, 122, 50, '2002-12-23 00:00:00');
INSERT INTO `employees` VALUES (135, 'Ki', 'Gee', 'KGEE', '650.127.1734', 'ST_CLERK', 2400.00, NULL, 122, 50, '2002-12-23 00:00:00');
INSERT INTO `employees` VALUES (136, 'Hazel', 'Philtanker', 'HPHILTAN', '650.127.1634', 'ST_CLERK', 2200.00, NULL, 122, 50, '2002-12-23 00:00:00');
INSERT INTO `employees` VALUES (137, 'Renske', 'Ladwig', 'RLADWIG', '650.121.1234', 'ST_CLERK', 3600.00, NULL, 123, 50, '2002-12-23 00:00:00');
INSERT INTO `employees` VALUES (138, 'Stephen', 'Stiles', 'SSTILES', '650.121.2034', 'ST_CLERK', 3200.00, NULL, 123, 50, '2002-12-23 00:00:00');
INSERT INTO `employees` VALUES (139, 'John', 'Seo', 'JSEO', '650.121.2019', 'ST_CLERK', 2700.00, NULL, 123, 50, '2002-12-23 00:00:00');
INSERT INTO `employees` VALUES (140, 'Joshua', 'Patel', 'JPATEL', '650.121.1834', 'ST_CLERK', 2500.00, NULL, 123, 50, '2002-12-23 00:00:00');
INSERT INTO `employees` VALUES (141, 'Trenna', 'Rajs', 'TRAJS', '650.121.8009', 'ST_CLERK', 3500.00, NULL, 124, 50, '2002-12-23 00:00:00');
INSERT INTO `employees` VALUES (142, 'Curtis', 'Davies', 'CDAVIES', '650.121.2994', 'ST_CLERK', 3100.00, NULL, 124, 50, '2002-12-23 00:00:00');
INSERT INTO `employees` VALUES (143, 'Randall', 'Matos', 'RMATOS', '650.121.2874', 'ST_CLERK', 2600.00, NULL, 124, 50, '2002-12-23 00:00:00');
INSERT INTO `employees` VALUES (144, 'Peter', 'Vargas', 'PVARGAS', '650.121.2004', 'ST_CLERK', 2500.00, NULL, 124, 50, '2002-12-23 00:00:00');
INSERT INTO `employees` VALUES (145, 'John', 'Russell', 'JRUSSEL', '011.44.1344.429268', 'SA_MAN', 14000.00, 0.40, 100, 80, '2002-12-23 00:00:00');
INSERT INTO `employees` VALUES (146, 'Karen', 'Partners', 'KPARTNER', '011.44.1344.467268', 'SA_MAN', 13500.00, 0.30, 100, 80, '2002-12-23 00:00:00');
INSERT INTO `employees` VALUES (147, 'Alberto', 'Errazuriz', 'AERRAZUR', '011.44.1344.429278', 'SA_MAN', 12000.00, 0.30, 100, 80, '2002-12-23 00:00:00');
INSERT INTO `employees` VALUES (148, 'Gerald', 'Cambrault', 'GCAMBRAU', '011.44.1344.619268', 'SA_MAN', 11000.00, 0.30, 100, 80, '2002-12-23 00:00:00');
INSERT INTO `employees` VALUES (149, 'Eleni', 'Zlotkey', 'EZLOTKEY', '011.44.1344.429018', 'SA_MAN', 10500.00, 0.20, 100, 80, '2002-12-23 00:00:00');
INSERT INTO `employees` VALUES (150, 'Peter', 'Tucker', 'PTUCKER', '011.44.1344.129268', 'SA_REP', 10000.00, 0.30, 145, 80, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (151, 'David', 'Bernstein', 'DBERNSTE', '011.44.1344.345268', 'SA_REP', 9500.00, 0.25, 145, 80, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (152, 'Peter', 'Hall', 'PHALL', '011.44.1344.478968', 'SA_REP', 9000.00, 0.25, 145, 80, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (153, 'Christopher', 'Olsen', 'COLSEN', '011.44.1344.498718', 'SA_REP', 8000.00, 0.20, 145, 80, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (154, 'Nanette', 'Cambrault', 'NCAMBRAU', '011.44.1344.987668', 'SA_REP', 7500.00, 0.20, 145, 80, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (155, 'Oliver', 'Tuvault', 'OTUVAULT', '011.44.1344.486508', 'SA_REP', 7000.00, 0.15, 145, 80, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (156, 'Janette', 'K_ing', 'JKING', '011.44.1345.429268', 'SA_REP', 10000.00, 0.35, 146, 80, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (157, 'Patrick', 'Sully', 'PSULLY', '011.44.1345.929268', 'SA_REP', 9500.00, 0.35, 146, 80, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (158, 'Allan', 'McEwen', 'AMCEWEN', '011.44.1345.829268', 'SA_REP', 9000.00, 0.35, 146, 80, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (159, 'Lindsey', 'Smith', 'LSMITH', '011.44.1345.729268', 'SA_REP', 8000.00, 0.30, 146, 80, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (160, 'Louise', 'Doran', 'LDORAN', '011.44.1345.629268', 'SA_REP', 7500.00, 0.30, 146, 80, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (161, 'Sarath', 'Sewall', 'SSEWALL', '011.44.1345.529268', 'SA_REP', 7000.00, 0.25, 146, 80, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (162, 'Clara', 'Vishney', 'CVISHNEY', '011.44.1346.129268', 'SA_REP', 10500.00, 0.25, 147, 80, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (163, 'Danielle', 'Greene', 'DGREENE', '011.44.1346.229268', 'SA_REP', 9500.00, 0.15, 147, 80, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (164, 'Mattea', 'Marvins', 'MMARVINS', '011.44.1346.329268', 'SA_REP', 7200.00, 0.10, 147, 80, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (165, 'David', 'Lee', 'DLEE', '011.44.1346.529268', 'SA_REP', 6800.00, 0.10, 147, 80, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (166, 'Sundar', 'Ande', 'SANDE', '011.44.1346.629268', 'SA_REP', 6400.00, 0.10, 147, 80, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (167, 'Amit', 'Banda', 'ABANDA', '011.44.1346.729268', 'SA_REP', 6200.00, 0.10, 147, 80, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (168, 'Lisa', 'Ozer', 'LOZER', '011.44.1343.929268', 'SA_REP', 11500.00, 0.25, 148, 80, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (169, 'Harrison', 'Bloom', 'HBLOOM', '011.44.1343.829268', 'SA_REP', 10000.00, 0.20, 148, 80, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (170, 'Tayler', 'Fox', 'TFOX', '011.44.1343.729268', 'SA_REP', 9600.00, 0.20, 148, 80, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (171, 'William', 'Smith', 'WSMITH', '011.44.1343.629268', 'SA_REP', 7400.00, 0.15, 148, 80, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (172, 'Elizabeth', 'Bates', 'EBATES', '011.44.1343.529268', 'SA_REP', 7300.00, 0.15, 148, 80, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (173, 'Sundita', 'Kumar', 'SKUMAR', '011.44.1343.329268', 'SA_REP', 6100.00, 0.10, 148, 80, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (174, 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267', 'SA_REP', 11000.00, 0.30, 149, 80, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (175, 'Alyssa', 'Hutton', 'AHUTTON', '011.44.1644.429266', 'SA_REP', 8800.00, 0.25, 149, 80, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (176, 'Jonathon', 'Taylor', 'JTAYLOR', '011.44.1644.429265', 'SA_REP', 8600.00, 0.20, 149, 80, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (177, 'Jack', 'Livingston', 'JLIVINGS', '011.44.1644.429264', 'SA_REP', 8400.00, 0.20, 149, 80, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (178, 'Kimberely', 'Grant', 'KGRANT', '011.44.1644.429263', 'SA_REP', 7000.00, 0.15, 149, NULL, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (179, 'Charles', 'Johnson', 'CJOHNSON', '011.44.1644.429262', 'SA_REP', 6200.00, 0.10, 149, 80, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (180, 'Winston', 'Taylor', 'WTAYLOR', '650.507.9876', 'SH_CLERK', 3200.00, NULL, 120, 50, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (181, 'Jean', 'Fleaur', 'JFLEAUR', '650.507.9877', 'SH_CLERK', 3100.00, NULL, 120, 50, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (182, 'Martha', 'Sullivan', 'MSULLIVA', '650.507.9878', 'SH_CLERK', 2500.00, NULL, 120, 50, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (183, 'Girard', 'Geoni', 'GGEONI', '650.507.9879', 'SH_CLERK', 2800.00, NULL, 120, 50, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (184, 'Nandita', 'Sarchand', 'NSARCHAN', '650.509.1876', 'SH_CLERK', 4200.00, NULL, 121, 50, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (185, 'Alexis', 'Bull', 'ABULL', '650.509.2876', 'SH_CLERK', 4100.00, NULL, 121, 50, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (186, 'Julia', 'Dellinger', 'JDELLING', '650.509.3876', 'SH_CLERK', 3400.00, NULL, 121, 50, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (187, 'Anthony', 'Cabrio', 'ACABRIO', '650.509.4876', 'SH_CLERK', 3000.00, NULL, 121, 50, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (188, 'Kelly', 'Chung', 'KCHUNG', '650.505.1876', 'SH_CLERK', 3800.00, NULL, 122, 50, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (189, 'Jennifer', 'Dilly', 'JDILLY', '650.505.2876', 'SH_CLERK', 3600.00, NULL, 122, 50, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (190, 'Timothy', 'Gates', 'TGATES', '650.505.3876', 'SH_CLERK', 2900.00, NULL, 122, 50, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (191, 'Randall', 'Perkins', 'RPERKINS', '650.505.4876', 'SH_CLERK', 2500.00, NULL, 122, 50, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (192, 'Sarah', 'Bell', 'SBELL', '650.501.1876', 'SH_CLERK', 4000.00, NULL, 123, 50, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (193, 'Britney', 'Everett', 'BEVERETT', '650.501.2876', 'SH_CLERK', 3900.00, NULL, 123, 50, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (194, 'Samuel', 'McCain', 'SMCCAIN', '650.501.3876', 'SH_CLERK', 3200.00, NULL, 123, 50, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (195, 'Vance', 'Jones', 'VJONES', '650.501.4876', 'SH_CLERK', 2800.00, NULL, 123, 50, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (196, 'Alana', 'Walsh', 'AWALSH', '650.507.9811', 'SH_CLERK', 3100.00, NULL, 124, 50, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (197, 'Kevin', 'Feeney', 'KFEENEY', '650.507.9822', 'SH_CLERK', 3000.00, NULL, 124, 50, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (198, 'Donald', 'OConnell', 'DOCONNEL', '650.507.9833', 'SH_CLERK', 2600.00, NULL, 124, 50, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (199, 'Douglas', 'Grant', 'DGRANT', '650.507.9844', 'SH_CLERK', 2600.00, NULL, 124, 50, '2014-03-05 00:00:00');
INSERT INTO `employees` VALUES (200, 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', 'AD_ASST', 4400.00, NULL, 101, 10, '2016-03-03 00:00:00');
INSERT INTO `employees` VALUES (201, 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', 'MK_MAN', 13000.00, NULL, 100, 20, '2016-03-03 00:00:00');
INSERT INTO `employees` VALUES (202, 'Pat', 'Fay', 'PFAY', '603.123.6666', 'MK_REP', 6000.00, NULL, 201, 20, '2016-03-03 00:00:00');
INSERT INTO `employees` VALUES (203, 'Susan', 'Mavris', 'SMAVRIS', '515.123.7777', 'HR_REP', 6500.00, NULL, 101, 40, '2016-03-03 00:00:00');
INSERT INTO `employees` VALUES (204, 'Hermann', 'Baer', 'HBAER', '515.123.8888', 'PR_REP', 10000.00, NULL, 101, 70, '2016-03-03 00:00:00');
INSERT INTO `employees` VALUES (205, 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', 'AC_MGR', 12000.00, NULL, 101, 110, '2016-03-03 00:00:00');
INSERT INTO `employees` VALUES (206, 'William', 'Gietz', 'WGIETZ', '515.123.8181', 'AC_ACCOUNT', 8300.00, NULL, 205, 110, '2016-03-03 00:00:00');

-- ----------------------------
-- Table structure for enum_str
-- ----------------------------
DROP TABLE IF EXISTS `enum_str`;
CREATE TABLE `enum_str`  (
  `s1` enum('a','b','c') CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of enum_str
-- ----------------------------
INSERT INTO `enum_str` VALUES ('a');
INSERT INTO `enum_str` VALUES ('b');
INSERT INTO `enum_str` VALUES ('c');
INSERT INTO `enum_str` VALUES ('a');
INSERT INTO `enum_str` VALUES ('b');
INSERT INTO `enum_str` VALUES ('c');

-- ----------------------------
-- Table structure for job_grades
-- ----------------------------
DROP TABLE IF EXISTS `job_grades`;
CREATE TABLE `job_grades`  (
  `grade_level` varchar(3) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `lowest_sal` int(11) NULL DEFAULT NULL,
  `highest_sal` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job_grades
-- ----------------------------
INSERT INTO `job_grades` VALUES ('A', 1000, 2999);
INSERT INTO `job_grades` VALUES ('B', 3000, 5999);
INSERT INTO `job_grades` VALUES ('C', 6000, 9999);
INSERT INTO `job_grades` VALUES ('D', 10000, 14999);
INSERT INTO `job_grades` VALUES ('E', 15000, 24999);
INSERT INTO `job_grades` VALUES ('F', 25000, 40000);

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `job_id` varchar(10) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL,
  `job_title` varchar(35) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `min_salary` int(6) NULL DEFAULT NULL,
  `max_salary` int(6) NULL DEFAULT NULL,
  PRIMARY KEY (`job_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs
-- ----------------------------
INSERT INTO `jobs` VALUES ('AC_ACCOUNT', 'Public Accountant', 4200, 9000);
INSERT INTO `jobs` VALUES ('AC_MGR', 'Accounting Manager', 8200, 16000);
INSERT INTO `jobs` VALUES ('AD_ASST', 'Administration Assistant', 3000, 6000);
INSERT INTO `jobs` VALUES ('AD_PRES', 'President', 20000, 40000);
INSERT INTO `jobs` VALUES ('AD_VP', 'Administration Vice President', 15000, 30000);
INSERT INTO `jobs` VALUES ('FI_ACCOUNT', 'Accountant', 4200, 9000);
INSERT INTO `jobs` VALUES ('FI_MGR', 'Finance Manager', 8200, 16000);
INSERT INTO `jobs` VALUES ('HR_REP', 'Human Resources Representative', 4000, 9000);
INSERT INTO `jobs` VALUES ('IT_PROG', 'Programmer', 4000, 10000);
INSERT INTO `jobs` VALUES ('MK_MAN', 'Marketing Manager', 9000, 15000);
INSERT INTO `jobs` VALUES ('MK_REP', 'Marketing Representative', 4000, 9000);
INSERT INTO `jobs` VALUES ('PR_REP', 'Public Relations Representative', 4500, 10500);
INSERT INTO `jobs` VALUES ('PU_CLERK', 'Purchasing Clerk', 2500, 5500);
INSERT INTO `jobs` VALUES ('PU_MAN', 'Purchasing Manager', 8000, 15000);
INSERT INTO `jobs` VALUES ('SA_MAN', 'Sales Manager', 10000, 20000);
INSERT INTO `jobs` VALUES ('SA_REP', 'Sales Representative', 6000, 12000);
INSERT INTO `jobs` VALUES ('SH_CLERK', 'Shipping Clerk', 2500, 5500);
INSERT INTO `jobs` VALUES ('ST_CLERK', 'Stock Clerk', 2000, 5000);
INSERT INTO `jobs` VALUES ('ST_MAN', 'Stock Manager', 5500, 8500);

-- ----------------------------
-- Table structure for locations
-- ----------------------------
DROP TABLE IF EXISTS `locations`;
CREATE TABLE `locations`  (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `street_address` varchar(40) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `postal_code` varchar(12) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `city` varchar(30) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `state_province` varchar(25) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `country_id` varchar(2) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`location_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3201 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of locations
-- ----------------------------
INSERT INTO `locations` VALUES (1000, '1297 Via Cola di Rie', '00989', 'Roma', NULL, 'IT');
INSERT INTO `locations` VALUES (1100, '93091 Calle della Testa', '10934', 'Venice', NULL, 'IT');
INSERT INTO `locations` VALUES (1200, '2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo Prefecture', 'JP');
INSERT INTO `locations` VALUES (1300, '9450 Kamiya-cho', '6823', 'Hiroshima', NULL, 'JP');
INSERT INTO `locations` VALUES (1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US');
INSERT INTO `locations` VALUES (1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US');
INSERT INTO `locations` VALUES (1600, '2007 Zagora St', '50090', 'South Brunswick', 'New Jersey', 'US');
INSERT INTO `locations` VALUES (1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US');
INSERT INTO `locations` VALUES (1800, '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA');
INSERT INTO `locations` VALUES (1900, '6092 Boxwood St', 'YSW 9T2', 'Whitehorse', 'Yukon', 'CA');
INSERT INTO `locations` VALUES (2000, '40-5-12 Laogianggen', '190518', 'Beijing', NULL, 'CN');
INSERT INTO `locations` VALUES (2100, '1298 Vileparle (E)', '490231', 'Bombay', 'Maharashtra', 'IN');
INSERT INTO `locations` VALUES (2200, '12-98 Victoria Street', '2901', 'Sydney', 'New South Wales', 'AU');
INSERT INTO `locations` VALUES (2300, '198 Clementi North', '540198', 'Singapore', NULL, 'SG');
INSERT INTO `locations` VALUES (2400, '8204 Arthur St', NULL, 'London', NULL, 'UK');
INSERT INTO `locations` VALUES (2500, 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'UK');
INSERT INTO `locations` VALUES (2600, '9702 Chester Road', '09629850293', 'Stretford', 'Manchester', 'UK');
INSERT INTO `locations` VALUES (2700, 'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 'DE');
INSERT INTO `locations` VALUES (2800, 'Rua Frei Caneca 1360 ', '01307-002', 'Sao Paulo', 'Sao Paulo', 'BR');
INSERT INTO `locations` VALUES (2900, '20 Rue des Corps-Saints', '1730', 'Geneva', 'Geneve', 'CH');
INSERT INTO `locations` VALUES (3000, 'Murtenstrasse 921', '3095', 'Bern', 'BE', 'CH');
INSERT INTO `locations` VALUES (3100, 'Pieter Breughelstraat 837', '3029SK', 'Utrecht', 'Utrecht', 'NL');
INSERT INTO `locations` VALUES (3200, 'Mariano Escobedo 9991', '11932', 'Mexico City', 'Distrito Federal,', 'MX');

-- ----------------------------
-- Table structure for major1
-- ----------------------------
DROP TABLE IF EXISTS `major1`;
CREATE TABLE `major1`  (
  `id` int(11) NOT NULL,
  `majorName` varchar(20) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of major1
-- ----------------------------
INSERT INTO `major1` VALUES (2, '666');
INSERT INTO `major1` VALUES (4, '666');
INSERT INTO `major1` VALUES (6, '666');
INSERT INTO `major1` VALUES (8, '666');
INSERT INTO `major1` VALUES (10, '666');
INSERT INTO `major1` VALUES (12, '666');
INSERT INTO `major1` VALUES (14, '666');
INSERT INTO `major1` VALUES (16, '666');
INSERT INTO `major1` VALUES (18, '666');
INSERT INTO `major1` VALUES (20, '666');
INSERT INTO `major1` VALUES (22, '666');
INSERT INTO `major1` VALUES (24, '666');
INSERT INTO `major1` VALUES (26, '666');
INSERT INTO `major1` VALUES (28, '666');
INSERT INTO `major1` VALUES (30, '666');
INSERT INTO `major1` VALUES (32, '666');
INSERT INTO `major1` VALUES (34, '666');
INSERT INTO `major1` VALUES (36, '666');
INSERT INTO `major1` VALUES (38, '666');
INSERT INTO `major1` VALUES (40, '666');
INSERT INTO `major1` VALUES (42, '666');
INSERT INTO `major1` VALUES (44, '666');
INSERT INTO `major1` VALUES (46, '666');
INSERT INTO `major1` VALUES (48, '666');
INSERT INTO `major1` VALUES (50, '666');
INSERT INTO `major1` VALUES (52, '666');
INSERT INTO `major1` VALUES (54, '666');
INSERT INTO `major1` VALUES (56, '666');
INSERT INTO `major1` VALUES (58, '666');
INSERT INTO `major1` VALUES (60, '666');
INSERT INTO `major1` VALUES (62, '666');
INSERT INTO `major1` VALUES (64, '666');
INSERT INTO `major1` VALUES (66, '666');
INSERT INTO `major1` VALUES (68, '666');
INSERT INTO `major1` VALUES (70, '666');
INSERT INTO `major1` VALUES (72, '666');
INSERT INTO `major1` VALUES (74, '666');
INSERT INTO `major1` VALUES (76, '666');
INSERT INTO `major1` VALUES (78, '666');
INSERT INTO `major1` VALUES (80, '666');
INSERT INTO `major1` VALUES (82, '666');
INSERT INTO `major1` VALUES (84, '666');
INSERT INTO `major1` VALUES (86, '666');
INSERT INTO `major1` VALUES (88, '666');
INSERT INTO `major1` VALUES (90, '666');
INSERT INTO `major1` VALUES (92, '666');
INSERT INTO `major1` VALUES (94, '666');
INSERT INTO `major1` VALUES (96, '666');
INSERT INTO `major1` VALUES (98, '666');
INSERT INTO `major1` VALUES (100, '666');

-- ----------------------------
-- Table structure for major13
-- ----------------------------
DROP TABLE IF EXISTS `major13`;
CREATE TABLE `major13`  (
  `id` int(11) NOT NULL,
  `majorName` varchar(20) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for save_point
-- ----------------------------
DROP TABLE IF EXISTS `save_point`;
CREATE TABLE `save_point`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aName` varchar(20) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for stringcontent
-- ----------------------------
DROP TABLE IF EXISTS `stringcontent`;
CREATE TABLE `stringcontent`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(20) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 221 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stringcontent
-- ----------------------------
INSERT INTO `stringcontent` VALUES (1, 'rs');
INSERT INTO `stringcontent` VALUES (2, 'qrs');
INSERT INTO `stringcontent` VALUES (3, 'rst');
INSERT INTO `stringcontent` VALUES (4, '');
INSERT INTO `stringcontent` VALUES (5, 'u');
INSERT INTO `stringcontent` VALUES (6, 'u');
INSERT INTO `stringcontent` VALUES (7, 'opq');
INSERT INTO `stringcontent` VALUES (8, 'opq');
INSERT INTO `stringcontent` VALUES (9, 't');
INSERT INTO `stringcontent` VALUES (10, 'mno');
INSERT INTO `stringcontent` VALUES (11, 'defghijklmno');
INSERT INTO `stringcontent` VALUES (12, 'cdefghi');
INSERT INTO `stringcontent` VALUES (13, 'mno');
INSERT INTO `stringcontent` VALUES (14, 'cdefghijkl');
INSERT INTO `stringcontent` VALUES (15, 'mnopqr');
INSERT INTO `stringcontent` VALUES (16, 'hij');
INSERT INTO `stringcontent` VALUES (17, '');
INSERT INTO `stringcontent` VALUES (18, '');
INSERT INTO `stringcontent` VALUES (19, 'rst');
INSERT INTO `stringcontent` VALUES (20, 'ghijklmnop');
INSERT INTO `stringcontent` VALUES (21, 'pqrst');
INSERT INTO `stringcontent` VALUES (22, 'abcdef');
INSERT INTO `stringcontent` VALUES (23, 'ghijklm');
INSERT INTO `stringcontent` VALUES (24, 'qrst');
INSERT INTO `stringcontent` VALUES (25, '');
INSERT INTO `stringcontent` VALUES (26, 'rs');
INSERT INTO `stringcontent` VALUES (27, 'fghijklmnop');
INSERT INTO `stringcontent` VALUES (28, 'b');
INSERT INTO `stringcontent` VALUES (29, '');
INSERT INTO `stringcontent` VALUES (30, 'efg');
INSERT INTO `stringcontent` VALUES (31, 'fghijklmn');
INSERT INTO `stringcontent` VALUES (32, 'ijklmnopqrst');
INSERT INTO `stringcontent` VALUES (33, 'o');
INSERT INTO `stringcontent` VALUES (34, 'r');
INSERT INTO `stringcontent` VALUES (35, 'nop');
INSERT INTO `stringcontent` VALUES (36, 'defghijklm');
INSERT INTO `stringcontent` VALUES (37, 'klmno');
INSERT INTO `stringcontent` VALUES (38, '');
INSERT INTO `stringcontent` VALUES (39, '');
INSERT INTO `stringcontent` VALUES (40, 's');
INSERT INTO `stringcontent` VALUES (41, 'hijklmnopqrst');
INSERT INTO `stringcontent` VALUES (42, '');
INSERT INTO `stringcontent` VALUES (43, 's');
INSERT INTO `stringcontent` VALUES (44, '');
INSERT INTO `stringcontent` VALUES (45, 'mnop');
INSERT INTO `stringcontent` VALUES (46, 'qrst');
INSERT INTO `stringcontent` VALUES (47, 'ghijklmnopqr');
INSERT INTO `stringcontent` VALUES (48, 'ij');
INSERT INTO `stringcontent` VALUES (49, 'qrst');
INSERT INTO `stringcontent` VALUES (50, 'cde');
INSERT INTO `stringcontent` VALUES (51, 'ijk');
INSERT INTO `stringcontent` VALUES (52, 'defghijklmnopqrst');
INSERT INTO `stringcontent` VALUES (53, 'nopqr');
INSERT INTO `stringcontent` VALUES (54, '');
INSERT INTO `stringcontent` VALUES (55, 'efghijkl');
INSERT INTO `stringcontent` VALUES (56, 'r');
INSERT INTO `stringcontent` VALUES (57, 'm');
INSERT INTO `stringcontent` VALUES (58, '');
INSERT INTO `stringcontent` VALUES (59, '');
INSERT INTO `stringcontent` VALUES (60, 'ghijklmnop');
INSERT INTO `stringcontent` VALUES (61, 'mnop');
INSERT INTO `stringcontent` VALUES (62, '');
INSERT INTO `stringcontent` VALUES (63, '');
INSERT INTO `stringcontent` VALUES (64, 'qr');
INSERT INTO `stringcontent` VALUES (65, 'opqrst');
INSERT INTO `stringcontent` VALUES (66, 'defghijklmnop');
INSERT INTO `stringcontent` VALUES (67, 'hij');
INSERT INTO `stringcontent` VALUES (68, 'def');
INSERT INTO `stringcontent` VALUES (69, 'ghijklmnopqr');
INSERT INTO `stringcontent` VALUES (70, 'h');
INSERT INTO `stringcontent` VALUES (71, 'lmnopqrst');
INSERT INTO `stringcontent` VALUES (72, 'nopqrs');
INSERT INTO `stringcontent` VALUES (73, 'fghijklmnopqr');
INSERT INTO `stringcontent` VALUES (74, 'mnopqrst');
INSERT INTO `stringcontent` VALUES (75, 'kl');
INSERT INTO `stringcontent` VALUES (76, 'klmnop');
INSERT INTO `stringcontent` VALUES (77, 'qr');
INSERT INTO `stringcontent` VALUES (78, 'ijkl');
INSERT INTO `stringcontent` VALUES (79, 'kl');
INSERT INTO `stringcontent` VALUES (80, 't');
INSERT INTO `stringcontent` VALUES (81, 'op');
INSERT INTO `stringcontent` VALUES (82, '');
INSERT INTO `stringcontent` VALUES (83, 'pq');
INSERT INTO `stringcontent` VALUES (84, 'qr');
INSERT INTO `stringcontent` VALUES (85, 'st');
INSERT INTO `stringcontent` VALUES (86, 'st');
INSERT INTO `stringcontent` VALUES (87, '');
INSERT INTO `stringcontent` VALUES (88, 'mno');
INSERT INTO `stringcontent` VALUES (89, 'abcde');
INSERT INTO `stringcontent` VALUES (90, '');
INSERT INTO `stringcontent` VALUES (91, 'p');
INSERT INTO `stringcontent` VALUES (92, 'klmnopqrs');
INSERT INTO `stringcontent` VALUES (93, 'efghi');
INSERT INTO `stringcontent` VALUES (94, '');
INSERT INTO `stringcontent` VALUES (95, 'klmnopqrst');
INSERT INTO `stringcontent` VALUES (96, 'jk');
INSERT INTO `stringcontent` VALUES (97, 'no');
INSERT INTO `stringcontent` VALUES (98, 'jkl');
INSERT INTO `stringcontent` VALUES (99, 'ghijkl');
INSERT INTO `stringcontent` VALUES (100, 'fghijklmnopqr');
INSERT INTO `stringcontent` VALUES (101, 'op');
INSERT INTO `stringcontent` VALUES (102, 'pq');
INSERT INTO `stringcontent` VALUES (103, 't');
INSERT INTO `stringcontent` VALUES (104, 'klmnopqrs');
INSERT INTO `stringcontent` VALUES (105, 'fghijk');
INSERT INTO `stringcontent` VALUES (106, 'defghijklmno');
INSERT INTO `stringcontent` VALUES (107, '');
INSERT INTO `stringcontent` VALUES (108, 'hijklmnopqrs');
INSERT INTO `stringcontent` VALUES (109, 'nopqrst');
INSERT INTO `stringcontent` VALUES (110, 'k');
INSERT INTO `stringcontent` VALUES (111, 'efghijklmn');
INSERT INTO `stringcontent` VALUES (112, 'nopqrs');
INSERT INTO `stringcontent` VALUES (113, 'ijkl');
INSERT INTO `stringcontent` VALUES (114, 'mnop');
INSERT INTO `stringcontent` VALUES (115, '');
INSERT INTO `stringcontent` VALUES (116, 'k');
INSERT INTO `stringcontent` VALUES (117, 'defghij');
INSERT INTO `stringcontent` VALUES (118, 'opqr');
INSERT INTO `stringcontent` VALUES (119, 'mnopq');
INSERT INTO `stringcontent` VALUES (120, 'efghi');
INSERT INTO `stringcontent` VALUES (121, 'ab');
INSERT INTO `stringcontent` VALUES (122, 'lmnopqrs');
INSERT INTO `stringcontent` VALUES (123, 'd');
INSERT INTO `stringcontent` VALUES (124, 'q');
INSERT INTO `stringcontent` VALUES (125, 'r');
INSERT INTO `stringcontent` VALUES (126, 'lmnopqrs');
INSERT INTO `stringcontent` VALUES (127, '');
INSERT INTO `stringcontent` VALUES (128, 't');
INSERT INTO `stringcontent` VALUES (129, 'qrst');
INSERT INTO `stringcontent` VALUES (130, 'hijklmnopqrst');
INSERT INTO `stringcontent` VALUES (131, '');
INSERT INTO `stringcontent` VALUES (132, 'defghijklmn');
INSERT INTO `stringcontent` VALUES (133, 't');
INSERT INTO `stringcontent` VALUES (134, 'cdefghijklmnopqrs');
INSERT INTO `stringcontent` VALUES (135, 'jklmnopqrst');
INSERT INTO `stringcontent` VALUES (136, 'o');
INSERT INTO `stringcontent` VALUES (137, 'qrst');
INSERT INTO `stringcontent` VALUES (138, '');
INSERT INTO `stringcontent` VALUES (139, 'ijklmnopqr');
INSERT INTO `stringcontent` VALUES (140, 'abcdefghijklmnop');
INSERT INTO `stringcontent` VALUES (141, 'r');
INSERT INTO `stringcontent` VALUES (142, 'opq');
INSERT INTO `stringcontent` VALUES (143, 'ijklmno');
INSERT INTO `stringcontent` VALUES (144, 'n');
INSERT INTO `stringcontent` VALUES (145, 't');
INSERT INTO `stringcontent` VALUES (146, 'ij');
INSERT INTO `stringcontent` VALUES (147, 'm');
INSERT INTO `stringcontent` VALUES (148, '');
INSERT INTO `stringcontent` VALUES (149, 'qrs');
INSERT INTO `stringcontent` VALUES (150, 't');
INSERT INTO `stringcontent` VALUES (151, 'qr');
INSERT INTO `stringcontent` VALUES (152, 'abcdefghijklmnopqrst');
INSERT INTO `stringcontent` VALUES (153, 't');
INSERT INTO `stringcontent` VALUES (154, 'cdefghijklmnopqr');
INSERT INTO `stringcontent` VALUES (155, '');
INSERT INTO `stringcontent` VALUES (156, 'st');
INSERT INTO `stringcontent` VALUES (157, 'rst');
INSERT INTO `stringcontent` VALUES (158, 'mn');
INSERT INTO `stringcontent` VALUES (159, 'st');
INSERT INTO `stringcontent` VALUES (160, 'st');
INSERT INTO `stringcontent` VALUES (161, 'u');
INSERT INTO `stringcontent` VALUES (162, 'qrs');
INSERT INTO `stringcontent` VALUES (163, 'defghijklmnopqrs');
INSERT INTO `stringcontent` VALUES (164, 'bcdefghijklm');
INSERT INTO `stringcontent` VALUES (165, '');
INSERT INTO `stringcontent` VALUES (166, '');
INSERT INTO `stringcontent` VALUES (167, 'defghi');
INSERT INTO `stringcontent` VALUES (168, 'fg');
INSERT INTO `stringcontent` VALUES (169, '');
INSERT INTO `stringcontent` VALUES (170, 's');
INSERT INTO `stringcontent` VALUES (171, '');
INSERT INTO `stringcontent` VALUES (172, '');
INSERT INTO `stringcontent` VALUES (173, 'ijklmnop');
INSERT INTO `stringcontent` VALUES (174, 'ghijk');
INSERT INTO `stringcontent` VALUES (175, '');
INSERT INTO `stringcontent` VALUES (176, 'jklmnopq');
INSERT INTO `stringcontent` VALUES (177, 'defghijklmnop');
INSERT INTO `stringcontent` VALUES (178, 'efghijklmnopq');
INSERT INTO `stringcontent` VALUES (179, 'ghijklmnopqrst');
INSERT INTO `stringcontent` VALUES (180, '');
INSERT INTO `stringcontent` VALUES (181, 'cdefghijklm');
INSERT INTO `stringcontent` VALUES (182, 'lmnopq');
INSERT INTO `stringcontent` VALUES (183, 'mnopqr');
INSERT INTO `stringcontent` VALUES (184, '');
INSERT INTO `stringcontent` VALUES (185, 'u');
INSERT INTO `stringcontent` VALUES (186, 'fghijkl');
INSERT INTO `stringcontent` VALUES (187, 'rst');
INSERT INTO `stringcontent` VALUES (188, 'u');
INSERT INTO `stringcontent` VALUES (189, '');
INSERT INTO `stringcontent` VALUES (190, 'rs');
INSERT INTO `stringcontent` VALUES (191, 'cdefghijklmn');
INSERT INTO `stringcontent` VALUES (192, 'u');
INSERT INTO `stringcontent` VALUES (193, 't');
INSERT INTO `stringcontent` VALUES (194, 'qrst');
INSERT INTO `stringcontent` VALUES (195, 'fghijklm');
INSERT INTO `stringcontent` VALUES (196, '');
INSERT INTO `stringcontent` VALUES (197, 'u');
INSERT INTO `stringcontent` VALUES (198, '');
INSERT INTO `stringcontent` VALUES (199, 'q');
INSERT INTO `stringcontent` VALUES (200, 'klmnopqrst');
INSERT INTO `stringcontent` VALUES (201, 'ghijklmno');
INSERT INTO `stringcontent` VALUES (202, 'ijklmnopq');
INSERT INTO `stringcontent` VALUES (203, 'r');
INSERT INTO `stringcontent` VALUES (204, 't');
INSERT INTO `stringcontent` VALUES (205, 'e');
INSERT INTO `stringcontent` VALUES (206, 's');
INSERT INTO `stringcontent` VALUES (207, '');
INSERT INTO `stringcontent` VALUES (208, 'a');
INSERT INTO `stringcontent` VALUES (209, '');
INSERT INTO `stringcontent` VALUES (210, 'klmn');
INSERT INTO `stringcontent` VALUES (211, 'q');
INSERT INTO `stringcontent` VALUES (212, 'klmnopqrs');
INSERT INTO `stringcontent` VALUES (213, '');
INSERT INTO `stringcontent` VALUES (214, 'hijklm');
INSERT INTO `stringcontent` VALUES (215, 'ghijklmnopqrst');
INSERT INTO `stringcontent` VALUES (216, 'ghi');
INSERT INTO `stringcontent` VALUES (217, 'efghij');
INSERT INTO `stringcontent` VALUES (218, 'defghijklmno');
INSERT INTO `stringcontent` VALUES (219, '');
INSERT INTO `stringcontent` VALUES (220, '');

-- ----------------------------
-- Table structure for stuinfo1
-- ----------------------------
DROP TABLE IF EXISTS `stuinfo1`;
CREATE TABLE `stuinfo1`  (
  `id` int(11) NOT NULL,
  `stuName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `setId` int(11) NULL DEFAULT NULL,
  `majorId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `setId`(`setId`) USING BTREE,
  UNIQUE INDEX `uq`(`stuName`) USING BTREE,
  INDEX `fk1`(`majorId`) USING BTREE,
  CONSTRAINT `fk1` FOREIGN KEY (`majorId`) REFERENCES `major1` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for stuinfo12
-- ----------------------------
DROP TABLE IF EXISTS `stuinfo12`;
CREATE TABLE `stuinfo12`  (
  `id` int(11) NOT NULL,
  `stuName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `setId` int(11) NULL DEFAULT NULL,
  `classId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `setId`(`setId`) USING BTREE,
  UNIQUE INDEX `uq`(`stuName`) USING BTREE,
  INDEX `fk`(`classId`) USING BTREE,
  CONSTRAINT `fk` FOREIGN KEY (`classId`) REFERENCES `major13` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `id` int(11) NOT NULL,
  `ids` int(11) NOT NULL,
  `aname` varchar(22) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `ids`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- View structure for em_dep_loc
-- ----------------------------
DROP VIEW IF EXISTS `em_dep_loc`;
CREATE ALGORITHM = UNDEFINED DEFINER = `firmJfcw`@`localhost` SQL SECURITY DEFINER VIEW `em_dep_loc` AS select `employees`.`employee_id` AS `employee_id`,`employees`.`last_name` AS `last_name`,`departments`.`department_id` AS `department_id`,`locations`.`location_id` AS `location_id`,`locations`.`city` AS `city` from ((`employees` join `departments` on((`employees`.`department_id` = `departments`.`department_id`))) join `locations` on((`departments`.`location_id` = `locations`.`location_id`)));

-- ----------------------------
-- Procedure structure for content01
-- ----------------------------
DROP PROCEDURE IF EXISTS `content01`;
delimiter ;;
CREATE DEFINER=`firmJfcw`@`localhost` PROCEDURE `content01`(in number int)
BEGIN
    DECLARE i int DEFAULT 1;
    DECLARE startIndex int DEFAULT 1;
    DECLARE len int DEFAULT 1;
    DECLARE str VARCHAR(26) DEFAULT 'abcdefghigklmnopqrstuvwxyz';
    
		WHILE i<=number DO 
		
		set startIndex= FLOOR(RAND()*26+1);
		set len =floor(RAND()*(20-startIndex+1)+1);
		INSERT into stringContent(content) VALUES(SUBSTR(str,qs,len));
		set i=i+1;
	
END WHILE;

 
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for demo1
-- ----------------------------
DROP PROCEDURE IF EXISTS `demo1`;
delimiter ;;
CREATE DEFINER=`firmJfcw`@`localhost` PROCEDURE `demo1`()
BEGIN 
    SELECT * from major1 LIMIT 1;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for fun01
-- ----------------------------
DROP FUNCTION IF EXISTS `fun01`;
delimiter ;;
CREATE DEFINER=`firmJfcw`@`localhost` FUNCTION `fun01`() RETURNS int(11)
BEGIN
    DECLARE c int DEFAULT 0;
    SELECT count(*)  into c FROM employees;
    RETURN c;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for fun2
-- ----------------------------
DROP FUNCTION IF EXISTS `fun2`;
delimiter ;;
CREATE DEFINER=`firmJfcw`@`localhost` FUNCTION `fun2`(a VARCHAR(30)) RETURNS double
BEGIN
    set @sal=0;
		SELECT salary INTO @sal FROM employees
		WHERE last_name=a;
		return @sal;
end
;;
delimiter ;

-- ----------------------------
-- Function structure for fun3
-- ----------------------------
DROP FUNCTION IF EXISTS `fun3`;
delimiter ;;
CREATE DEFINER=`firmJfcw`@`localhost` FUNCTION `fun3`(num1 FLOAT,num2 FLOAT) RETURNS float
BEGIN
    DECLARE sum FLOAT DEFAULT 0;
		set sum=num1+num2;
		return sum;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for fun_case
-- ----------------------------
DROP PROCEDURE IF EXISTS `fun_case`;
delimiter ;;
CREATE DEFINER=`firmJfcw`@`localhost` PROCEDURE `fun_case`(in score int)
BEGIN
   CASE 
	WHEN score>=90 and score<=100 THEN select 'A';
	WHEN score>=80 and score<90 THEN select 'B';
	WHEN score>=60 THEN select 'C';
		
	ELSE SELECT 'D';
  END CASE;

END
;;
delimiter ;

-- ----------------------------
-- Function structure for if_test
-- ----------------------------
DROP FUNCTION IF EXISTS `if_test`;
delimiter ;;
CREATE DEFINER=`firmJfcw`@`localhost` FUNCTION `if_test`(score int) RETURNS char(1) CHARSET gb2312
BEGIN
     if score>=90 and score <=100 THEN return 'A';
		 ELSEIF score>=80 and score <90 THEN RETURN 'B';
		 ELSEIF score>=60 and score <800 then return 'C';
		 else  return 'D';
		 end if;

end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for major11
-- ----------------------------
DROP PROCEDURE IF EXISTS `major11`;
delimiter ;;
CREATE DEFINER=`firmJfcw`@`localhost` PROCEDURE `major11`(in id int,in majorNmae VARCHAR(20))
BEGIN
--    DECLARE result VARCHAR(20) DEFAULT '';
	 set @result=0;
    SELECT count(*) into @result 
		FROM major1 
		WHERE major1.id=id and major1.majorName=majorName;
		SELECT @result;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for major12
-- ----------------------------
DROP PROCEDURE IF EXISTS `major12`;
delimiter ;;
CREATE DEFINER=`firmJfcw`@`localhost` PROCEDURE `major12`(in id int,in majorNmae VARCHAR(20))
BEGIN
   DECLARE result1 int  DEFAULT 0;

    SELECT count(*) into result1
		FROM major1 
		WHERE major1.id=id and major1.majorName=majorName;
		SELECT if(result1>0,'登陆成功','登录失败');
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for myAnddepar
-- ----------------------------
DROP PROCEDURE IF EXISTS `myAnddepar`;
delimiter ;;
CREATE DEFINER=`firmJfcw`@`localhost` PROCEDURE `myAnddepar`(in id int)
BEGIN
   SELECT e.last_name,d.department_id
	 from departments d JOIN employees e 
	 on d.department_id = e.department_id
	 WHERE d.department_id=id;
 end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for pro_while
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_while`;
delimiter ;;
CREATE DEFINER=`firmJfcw`@`localhost` PROCEDURE `pro_while`(in count int)
BEGIN
   DECLARE i int DEFAULT 1;
	 a:WHILE i<count DO
	 INSERT INTO major1(id,majorName) VALUES(i,'666');
	        set i=i+1;    
END WHILE;


END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for pro_while01
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_while01`;
delimiter ;;
CREATE DEFINER=`firmJfcw`@`localhost` PROCEDURE `pro_while01`(in count int)
BEGIN
   DECLARE i int DEFAULT 1;
	 a:WHILE i<count DO
	 INSERT INTO major1(id,majorName) VALUES(i,'666');
	        set i=i+1;
	 IF i>=20 THEN
	  leave a;
   END IF;
				
END WHILE a;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for pro_while02
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_while02`;
delimiter ;;
CREATE DEFINER=`firmJfcw`@`localhost` PROCEDURE `pro_while02`(in count int)
BEGIN
   DECLARE i int DEFAULT 0;
	 a:WHILE i<count DO
	 
	        set i=i+1;
	 IF mod(i,2)!=0 THEN
	  ITERATE a;
   END IF;
		INSERT INTO major1(id,majorName) VALUES(i,'666');		
END WHILE a;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for str_content
-- ----------------------------
DROP PROCEDURE IF EXISTS `str_content`;
delimiter ;;
CREATE DEFINER=`firmJfcw`@`localhost` PROCEDURE `str_content`(in count int)
BEGIN
   DECLARE qs int DEFAULT 1;
   DECLARE i int DEFAULT 1;
	 DECLARE len int DEFAULT 1;
	 DECLARE str VARCHAR(26) DEFAULT 'abcdefghijklmnopqrstuvwxyz';
	 WHILE i<=count DO
		 set qs=FLOOR(rand()*26+1);
		 set len=FLOOR(rand()*(20-qs+1)+1);
		 INSERT into stringContent(content) VALUES(SUBSTR(str,qs,len));
		 set i=i+1;
END WHILE;

end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for test01
-- ----------------------------
DROP PROCEDURE IF EXISTS `test01`;
delimiter ;;
CREATE DEFINER=`firmJfcw`@`localhost` PROCEDURE `test01`(IN id int,out lastName VARCHAR(22),out firstName VARCHAR(50))
BEGIN 
   SELECT last_name,first_name into
	 lastName,firstName
	 FROM employees
	 WHERE employee_id=id;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for test02
-- ----------------------------
DROP PROCEDURE IF EXISTS `test02`;
delimiter ;;
CREATE DEFINER=`firmJfcw`@`localhost` PROCEDURE `test02`(INOUT a int,INOUT b int)
BEGIN
    set a=a*2;
		set b=b*2;
 
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for test03
-- ----------------------------
DROP PROCEDURE IF EXISTS `test03`;
delimiter ;;
CREATE DEFINER=`firmJfcw`@`localhost` PROCEDURE `test03`(in date1 DATETIME,in date2 DATETIME,out res INT)
BEGIN 
     SELECT DATEDIFF(date1,date2) into res;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for test04
-- ----------------------------
DROP PROCEDURE IF EXISTS `test04`;
delimiter ;;
CREATE DEFINER=`firmJfcw`@`localhost` PROCEDURE `test04`(in date datetime,out str VARCHAR(50))
BEGIN
         SELECT DATE_FORMAT(date,'%y年%m月%d天') into str ;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for tests
-- ----------------------------
DROP PROCEDURE IF EXISTS `tests`;
delimiter ;;
CREATE DEFINER=`firmJfcw`@`localhost` PROCEDURE `tests`()
BEGIN
INSERT into major1(id,majorName) VALUES(4,'zs'),(5,'ls'),(6,'ww');
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
