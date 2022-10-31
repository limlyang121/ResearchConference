drop database if exists csit314;

create database csit314;

use csit314;

DROP TABLE IF EXISTS `userprofile`;
CREATE TABLE `userprofile` (
	`profileID` int(11) primary key auto_increment, 
	`profilename` varchar(50) not null,
	`description` varchar(50) not null
);


INSERT INTO `userprofile` (`profileID`,`profilename`,`description`) VALUES
(1,"SystemAdmin", "Manage User Accounts and User Profile"),
(2,"Reviewer", "Review Book"),
(3,"Conference", "Allocate papers to reviewer"),
(4,"Author", "Publish his/her paper to be reviewed");

DROP TABLE IF EXISTS `systemadmin`;
CREATE TABLE `systemadmin` (
	`id` int(11) primary key auto_increment, 
	`username` varchar(50) not null,
	`fullname` varchar(50) not null,
	`password` varchar(50) not null,
	`email` varchar(70) not null,
	`profileID` int(11) not null,
	 FOREIGN KEY fk_systemadmin(`profileID`) REFERENCES userprofile(profileID)
	
);

DROP TABLE IF EXISTS `reviewer`;
CREATE TABLE `reviewer` (
	`id` int(11) primary key auto_increment, 
	`username` varchar(50)  not null,
	`fullname` varchar(50) not null,
	`password` varchar(50) not null,
	`email` varchar(70) not null,
	`profileID` int(11),
	`max_no_paper` int, 
	 FOREIGN KEY fk_reviewer(`profileID`) REFERENCES userprofile(profileID)
);

DROP TABLE IF EXISTS `conference`;
CREATE TABLE `conference` (
	`id` int(11) primary key auto_increment, 
	`username` varchar(50) not null,
	`fullname` varchar(50) not null,
	`password` varchar(50) not null,
	`email` varchar(70) not null,
	`profileID` int(11),
	 FOREIGN KEY fk_conference(`profileID`) REFERENCES userprofile(profileID)
);

DROP TABLE IF EXISTS `author`;
CREATE TABLE `author` (
	`id` int(11) primary key auto_increment, 
	`username` varchar(50)  not null,
	`fullname` varchar(50) not null,
	`password` varchar(50) not null,
	`email` varchar(70) not null,
	`profileID` int(11),
	 FOREIGN KEY fk_author(`profileID`) REFERENCES userprofile(profileID)
);


INSERT INTO `systemadmin` (`username`,`fullname`, `password`, `email` , `profileID`) VALUES
('admin', 'Admin', 'admin', 'admin1@asda.com', 1),
('admin1', 'Admin1', 'admin1', 'admin1@asda.com', 1),
('admin2', 'Admin2', 'admin2', 'admin2@asda.com', 1),
('admin3', 'Admin3', 'admin3', 'admin3@asda.com', 1),
('admin4', 'Admin4', 'admin4', 'admin4@asda.com', 1),
('admin5', 'Admin5', 'admin5', 'admin5@asda.com', 1),
('admin6', 'Admin6', 'admin6', 'admin6@asda.com', 1),
('admin7', 'Admin7', 'admin7', 'admin7@asda.com', 1),
('admin8', 'Admin8', 'admin8', 'admin8@asda.com', 1),
('admin9', 'Admin9', 'admin9', 'admin9@asda.com', 1),
('admin10', 'Admin10', 'admin10', 'admin10@asda.com', 1),
('admin11', 'Admin11', 'admin11', 'admin11@asda.com', 1),
('admin12', 'Admin12', 'admin12', 'admin12@asda.com', 1),
('admin13', 'Admin13', 'admin13', 'admin13@asda.com', 1),
('admin14', 'Admin14', 'admin14', 'admin14@asda.com', 1),
('admin15', 'Admin15', 'admin15', 'admin15@asda.com', 1),
('admin16', 'Admin16', 'admin16', 'admin16@asda.com', 1),
('admin17', 'Admin17', 'admin17', 'admin17@asda.com', 1),
('admin18', 'Admin18', 'admin18', 'admin18@asda.com', 1),
('admin19', 'Admin19', 'admin19', 'admin19@asda.com', 1),
('admin20', 'Admin20', 'admin20', 'admin20@asda.com', 1),
('admin21', 'Admin21', 'admin21', 'admin21@asda.com', 1),
('admin22', 'Admin22', 'admin22', 'admin22@asda.com', 1),
('admin23', 'Admin23', 'admin23', 'admin23@asda.com', 1),
('admin24', 'Admin24', 'admin24', 'admin24@asda.com', 1),
('admin25', 'Admin25', 'admin25', 'admin25@asda.com', 1),
('admin26', 'Admin26', 'admin26', 'admin26@asda.com', 1),
('admin27', 'Admin27', 'admin27', 'admin27@asda.com', 1),
('admin28', 'Admin28', 'admin28', 'admin28@asda.com', 1),
('admin29', 'Admin29', 'admin29', 'admin29@asda.com', 1),
('admin30', 'Admin30', 'admin30', 'admin30@asda.com', 1),
('admin31', 'Admin31', 'admin31', 'admin31@asda.com', 1),
('admin32', 'Admin32', 'admin32', 'admin32@asda.com', 1),
('admin33', 'Admin33', 'admin33', 'admin33@asda.com', 1),
('admin34', 'Admin34', 'admin34', 'admin34@asda.com', 1),
('admin35', 'Admin35', 'admin35', 'admin35@asda.com', 1),
('admin36', 'Admin36', 'admin36', 'admin36@asda.com', 1),
('admin37', 'Admin37', 'admin37', 'admin37@asda.com', 1),
('admin38', 'Admin38', 'admin38', 'admin38@asda.com', 1),
('admin39', 'Admin39', 'admin39', 'admin39@asda.com', 1),
('admin40', 'Admin40', 'admin40', 'admin40@asda.com', 1),
('admin41', 'Admin41', 'admin41', 'admin41@asda.com', 1),
('admin42', 'Admin42', 'admin42', 'admin42@asda.com', 1),
('admin43', 'Admin43', 'admin43', 'admin43@asda.com', 1),
('admin44', 'Admin44', 'admin44', 'admin44@asda.com', 1),
('admin45', 'Admin45', 'admin45', 'admin45@asda.com', 1),
('admin46', 'Admin46', 'admin46', 'admin46@asda.com', 1),
('admin47', 'Admin47', 'admin47', 'admin47@asda.com', 1),
('admin48', 'Admin48', 'admin48', 'admin48@asda.com', 1),
('admin49', 'Admin49', 'admin49', 'admin49@asda.com', 1),
('admin50', 'Admin50', 'admin50', 'admin50@asda.com', 1),
('admin51', 'Admin51', 'admin51', 'admin51@asda.com', 1),
('admin52', 'Admin52', 'admin52', 'admin52@asda.com', 1),
('admin53', 'Admin53', 'admin53', 'admin53@asda.com', 1),
('admin54', 'Admin54', 'admin54', 'admin54@asda.com', 1),
('admin55', 'Admin55', 'admin55', 'admin55@asda.com', 1),
('admin56', 'Admin56', 'admin56', 'admin56@asda.com', 1),
('admin57', 'Admin57', 'admin57', 'admin57@asda.com', 1),
('admin58', 'Admin58', 'admin58', 'admin58@asda.com', 1),
('admin59', 'Admin59', 'admin59', 'admin59@asda.com', 1),
('admin60', 'Admin60', 'admin60', 'admin60@asda.com', 1),
('admin61', 'Admin61', 'admin61', 'admin61@asda.com', 1),
('admin62', 'Admin62', 'admin62', 'admin62@asda.com', 1),
('admin63', 'Admin63', 'admin63', 'admin63@asda.com', 1),
('admin64', 'Admin64', 'admin64', 'admin64@asda.com', 1),
('admin65', 'Admin65', 'admin65', 'admin65@asda.com', 1),
('admin66', 'Admin66', 'admin66', 'admin66@asda.com', 1),
('admin67', 'Admin67', 'admin67', 'admin67@asda.com', 1),
('admin68', 'Admin68', 'admin68', 'admin68@asda.com', 1),
('admin69', 'Admin69', 'admin69', 'admin69@asda.com', 1),
('admin70', 'Admin70', 'admin70', 'admin70@asda.com', 1),
('admin71', 'Admin71', 'admin71', 'admin71@asda.com', 1),
('admin72', 'Admin72', 'admin72', 'admin72@asda.com', 1),
('admin73', 'Admin73', 'admin73', 'admin73@asda.com', 1),
('admin74', 'Admin74', 'admin74', 'admin74@asda.com', 1),
('admin75', 'Admin75', 'admin75', 'admin75@asda.com', 1),
('admin76', 'Admin76', 'admin76', 'admin76@asda.com', 1),
('admin77', 'Admin77', 'admin77', 'admin77@asda.com', 1),
('admin78', 'Admin78', 'admin78', 'admin78@asda.com', 1),
('admin79', 'Admin79', 'admin79', 'admin79@asda.com', 1),
('admin80', 'Admin80', 'admin80', 'admin80@asda.com', 1),
('admin81', 'Admin81', 'admin81', 'admin81@asda.com', 1),
('admin82', 'Admin82', 'admin82', 'admin82@asda.com', 1),
('admin83', 'Admin83', 'admin83', 'admin83@asda.com', 1),
('admin84', 'Admin84', 'admin84', 'admin84@asda.com', 1),
('admin85', 'Admin85', 'admin85', 'admin85@asda.com', 1),
('admin86', 'Admin86', 'admin86', 'admin86@asda.com', 1),
('admin87', 'Admin87', 'admin87', 'admin87@asda.com', 1),
('admin88', 'Admin88', 'admin88', 'admin88@asda.com', 1),
('admin89', 'Admin89', 'admin89', 'admin89@asda.com', 1),
('admin90', 'Admin90', 'admin90', 'admin90@asda.com', 1),
('admin91', 'Admin1', 'admin1', 'admin1@asda.com', 1),
('admin92', 'Admin2', 'admin2', 'admin2@asda.com', 1),
('admin93', 'Admin3', 'admin3', 'admin3@asda.com', 1),
('admin94', 'Admin4', 'admin4', 'admin4@asda.com', 1),
('admin95', 'Admin5', 'admin5', 'admin5@asda.com', 1),
('admin96', 'Admin6', 'admin6', 'admin6@asda.com', 1),
('admin97', 'Admin7', 'admin7', 'admin7@asda.com', 1),
('admin98', 'Admin8', 'admin8', 'admin8@asda.com', 1),
('admin99', 'Admin9', 'admin9', 'admin9@asda.com', 1);




INSERT INTO `reviewer` (`username`,`fullname`, `password`, `email` , `profileID`, `max_no_paper`) VALUES
('reviewer', 'Reviewer', 'reviewer', 'reviewer1@asda.com', 2, 1),
('reviewer1', 'Reviewer1', 'reviewer1', 'reviewer1@asda.com', 2, 2),
('reviewer2', 'Reviewer2', 'reviewer2', 'reviewer2@asda.com', 2, 3),
('reviewer3', 'Reviewer3', 'reviewer3', 'reviewer3@asda.com', 2, 4),
('reviewer4', 'Reviewer4', 'reviewer4', 'reviewer4@asda.com', 2, 1),
('reviewer5', 'Reviewer5', 'reviewer5', 'reviewer5@asda.com', 2, 1),
('reviewer6', 'Reviewer6', 'reviewer6', 'reviewer6@asda.com', 2, 2),
('reviewer7', 'Reviewer7', 'reviewer7', 'reviewer7@asda.com', 2, 3),
('reviewer8', 'Reviewer8', 'reviewer8', 'reviewer8@asda.com', 2, 4),
('reviewer9', 'Reviewer9', 'reviewer9', 'reviewer9@asda.com', 2, 1),
('reviewer10', 'Reviewer10', 'reviewer10', 'reviewer10@asda.com', 2, 2 ),
('reviewer11', 'Reviewer11', 'reviewer11', 'reviewer11@asda.com', 2, 3),
('reviewer12', 'Reviewer12', 'reviewer12', 'reviewer12@asda.com', 2, 4),
('reviewer13', 'Reviewer13', 'reviewer13', 'reviewer13@asda.com', 2, 1),
('reviewer14', 'Reviewer14', 'reviewer14', 'reviewer14@asda.com', 2, 1),
('reviewer15', 'Reviewer15', 'reviewer15', 'reviewer15@asda.com', 2, 1),
('reviewer16', 'Reviewer16', 'reviewer16', 'reviewer16@asda.com', 2, 1),
('reviewer17', 'Reviewer17', 'reviewer17', 'reviewer17@asda.com', 2, 2),
('reviewer18', 'Reviewer18', 'reviewer18', 'reviewer18@asda.com', 2, 2),
('reviewer19', 'Reviewer19', 'reviewer19', 'reviewer19@asda.com', 2, 2),
('reviewer20', 'Reviewer20', 'reviewer20', 'reviewer20@asda.com', 2, 2),
('reviewer21', 'Reviewer21', 'reviewer21', 'reviewer21@asda.com', 2, 3),
('reviewer22', 'Reviewer22', 'reviewer22', 'reviewer22@asda.com', 2, 3),
('reviewer23', 'Reviewer23', 'reviewer23', 'reviewer23@asda.com', 2, 3),
('reviewer24', 'Reviewer24', 'reviewer24', 'reviewer24@asda.com', 2, 3),
('reviewer25', 'Reviewer25', 'reviewer25', 'reviewer25@asda.com', 2, 3),
('reviewer26', 'Reviewer26', 'reviewer26', 'reviewer26@asda.com', 2, 4),
('reviewer27', 'Reviewer27', 'reviewer27', 'reviewer27@asda.com', 2, 4),
('reviewer28', 'Reviewer28', 'reviewer28', 'reviewer28@asda.com', 2, 4),
('reviewer29', 'Reviewer29', 'reviewer29', 'reviewer29@asda.com', 2, 4),
('reviewer30', 'Reviewer30', 'reviewer30', 'reviewer30@asda.com', 2, 4),
('reviewer31', 'Reviewer31', 'reviewer31', 'reviewer31@asda.com', 2, 4),
('reviewer32', 'Reviewer32', 'reviewer32', 'reviewer32@asda.com', 2, 4),
('reviewer33', 'Reviewer33', 'reviewer33', 'reviewer33@asda.com', 2, 1),
('reviewer34', 'Reviewer34', 'reviewer34', 'reviewer34@asda.com', 2, 1),
('reviewer35', 'Reviewer35', 'reviewer35', 'reviewer35@asda.com', 2, 1),
('reviewer36', 'Reviewer36', 'reviewer36', 'reviewer36@asda.com', 2, 1),
('reviewer37', 'Reviewer37', 'reviewer37', 'reviewer37@asda.com', 2, 1),
('reviewer38', 'Reviewer38', 'reviewer38', 'reviewer38@asda.com', 2, 1),
('reviewer39', 'Reviewer39', 'reviewer39', 'reviewer39@asda.com', 2, 1),
('reviewer40', 'Reviewer40', 'reviewer40', 'reviewer40@asda.com', 2, 1),
('reviewer41', 'Reviewer41', 'reviewer41', 'reviewer41@asda.com', 2, 3),
('reviewer42', 'Reviewer42', 'reviewer42', 'reviewer42@asda.com', 2, 3),
('reviewer43', 'Reviewer43', 'reviewer43', 'reviewer43@asda.com', 2, 3),
('reviewer44', 'Reviewer44', 'reviewer44', 'reviewer44@asda.com', 2, 3),
('reviewer45', 'Reviewer45', 'reviewer45', 'reviewer45@asda.com', 2, 3),
('reviewer46', 'Reviewer46', 'reviewer46', 'reviewer46@asda.com', 2, 3),
('reviewer47', 'Reviewer47', 'reviewer47', 'reviewer47@asda.com', 2, 3),
('reviewer48', 'Reviewer48', 'reviewer48', 'reviewer48@asda.com', 2, 3),
('reviewer49', 'Reviewer49', 'reviewer49', 'reviewer49@asda.com', 2, 4),
('reviewer50', 'Reviewer50', 'reviewer50', 'reviewer50@asda.com', 2, 4),
('reviewer51', 'Reviewer51', 'reviewer51', 'reviewer51@asda.com', 2, 4),
('reviewer52', 'Reviewer52', 'reviewer52', 'reviewer52@asda.com', 2, 4),
('reviewer53', 'Reviewer53', 'reviewer53', 'reviewer53@asda.com', 2, 4),
('reviewer54', 'Reviewer54', 'reviewer54', 'reviewer54@asda.com', 2, 4),
('reviewer55', 'Reviewer55', 'reviewer55', 'reviewer55@asda.com', 2, 4),
('reviewer56', 'Reviewer56', 'reviewer56', 'reviewer56@asda.com', 2, 4),
('reviewer57', 'Reviewer57', 'reviewer57', 'reviewer57@asda.com', 2, 4),
('reviewer58', 'Reviewer58', 'reviewer58', 'reviewer58@asda.com', 2, 1),
('reviewer59', 'Reviewer59', 'reviewer59', 'reviewer59@asda.com', 2, 1),
('reviewer60', 'Reviewer60', 'reviewer60', 'reviewer60@asda.com', 2, 1),
('reviewer61', 'Reviewer61', 'reviewer61', 'reviewer61@asda.com', 2, 1),
('reviewer62', 'Reviewer62', 'reviewer62', 'reviewer62@asda.com', 2, 1),
('reviewer63', 'Reviewer63', 'reviewer63', 'reviewer63@asda.com', 2, 2),
('reviewer64', 'Reviewer64', 'reviewer64', 'reviewer64@asda.com', 2, 2),
('reviewer65', 'Reviewer65', 'reviewer65', 'reviewer65@asda.com', 2, 2),
('reviewer66', 'Reviewer66', 'reviewer66', 'reviewer66@asda.com', 2, 2),
('reviewer67', 'Reviewer67', 'reviewer67', 'reviewer67@asda.com', 2, 2),
('reviewer68', 'Reviewer68', 'reviewer68', 'reviewer68@asda.com', 2, 2),
('reviewer69', 'Reviewer69', 'reviewer69', 'reviewer69@asda.com', 2, 2),
('reviewer70', 'Reviewer70', 'reviewer70', 'reviewer70@asda.com', 2, 3),
('reviewer71', 'Reviewer71', 'reviewer71', 'reviewer71@asda.com', 2, 3),
('reviewer72', 'Reviewer72', 'reviewer72', 'reviewer72@asda.com', 2, 3),
('reviewer73', 'Reviewer73', 'reviewer73', 'reviewer73@asda.com', 2, 3),
('reviewer74', 'Reviewer74', 'reviewer74', 'reviewer74@asda.com', 2, 3),
('reviewer75', 'Reviewer75', 'reviewer75', 'reviewer75@asda.com', 2, 3),
('reviewer76', 'Reviewer76', 'reviewer76', 'reviewer76@asda.com', 2, 1),
('reviewer77', 'Reviewer77', 'reviewer77', 'reviewer77@asda.com', 2, 1),
('reviewer78', 'Reviewer78', 'reviewer78', 'reviewer78@asda.com', 2, 1),
('reviewer79', 'Reviewer79', 'reviewer79', 'reviewer79@asda.com', 2, 1),
('reviewer80', 'Reviewer80', 'reviewer80', 'reviewer80@asda.com', 2, 1),
('reviewer81', 'Reviewer81', 'reviewer81', 'reviewer81@asda.com', 2, 4),
('reviewer82', 'Reviewer82', 'reviewer82', 'reviewer82@asda.com', 2, 4),
('reviewer83', 'Reviewer83', 'reviewer83', 'reviewer83@asda.com', 2, 4),
('reviewer84', 'Reviewer84', 'reviewer84', 'reviewer84@asda.com', 2, 4),
('reviewer85', 'Reviewer85', 'reviewer85', 'reviewer85@asda.com', 2, 4),
('reviewer86', 'Reviewer86', 'reviewer86', 'reviewer86@asda.com', 2, 4),
('reviewer87', 'Reviewer87', 'reviewer87', 'reviewer87@asda.com', 2, 4),
('reviewer88', 'Reviewer88', 'reviewer88', 'reviewer88@asda.com', 2, 4),
('reviewer89', 'Reviewer89', 'reviewer89', 'reviewer89@asda.com', 2, 2),
('reviewer90', 'Reviewer90', 'reviewer90', 'reviewer90@asda.com', 2, 2),
('reviewer91', 'Reviewer91', 'reviewer91', 'reviewer91@asda.com', 2, 2),
('reviewer92', 'Reviewer92', 'reviewer92', 'reviewer92@asda.com', 2, 2),
('reviewer93', 'Reviewer93', 'reviewer93', 'reviewer93@asda.com', 2, 2),
('reviewer94', 'Reviewer94', 'reviewer94', 'reviewer94@asda.com', 2, 2),
('reviewer95', 'Reviewer95', 'reviewer95', 'reviewer95@asda.com', 2, 2),
('reviewer96', 'Reviewer96', 'reviewer96', 'reviewer96@asda.com', 2, 2),
('reviewer97', 'Reviewer97', 'reviewer97', 'reviewer97@asda.com', 2, 1),
('reviewer98', 'Reviewer98', 'reviewer98', 'reviewer98@asda.com', 2, 2),
('reviewer99', 'Reviewer99', 'reviewer99', 'reviewer99@asda.com', 2  3);

INSERT INTO `conference` (`username`,`fullname`, `password`, `email` , `profileID`) VALUES
('conference', 'Conference', 'conference', 'conference3@asda.com', 3),
('conference1', 'Conference1', 'conference1', 'conference1@asda.com', 3),
('conference2', 'Conference2', 'conference2', 'conference2@asda.com', 3),
('conference3', 'Conference3', 'conference3', 'conference3@asda.com', 3),
('conference4', 'Conference4', 'conference4', 'conference4@asda.com', 3),
('conference5', 'Conference5', 'conference5', 'conference5@asda.com', 3),
('conference6', 'Conference6', 'conference6', 'conference6@asda.com', 3),
('conference7', 'Conference7', 'conference7', 'conference7@asda.com', 3),
('conference8', 'Conference8', 'conference8', 'conference8@asda.com', 3),
('conference9', 'Conference9', 'conference9', 'conference9@asda.com', 3),
('conference10', 'Conference10', 'conference10', 'conference10@asda.com', 3),
('conference11', 'Conference11', 'conference11', 'conference11@asda.com', 3),
('conference12', 'Conference12', 'conference12', 'conference12@asda.com', 3),
('conference13', 'Conference13', 'conference13', 'conference13@asda.com', 3),
('conference14', 'Conference14', 'conference14', 'conference14@asda.com', 3),
('conference15', 'Conference15', 'conference15', 'conference15@asda.com', 3),
('conference16', 'Conference16', 'conference16', 'conference16@asda.com', 3),
('conference17', 'Conference17', 'conference17', 'conference17@asda.com', 3),
('conference18', 'Conference18', 'conference18', 'conference18@asda.com', 3),
('conference19', 'Conference19', 'conference19', 'conference19@asda.com', 3),
('conference20', 'Conference20', 'conference20', 'conference20@asda.com', 3),
('conference21', 'Conference21', 'conference21', 'conference21@asda.com', 3),
('conference22', 'Conference22', 'conference22', 'conference22@asda.com', 3),
('conference23', 'Conference23', 'conference23', 'conference23@asda.com', 3),
('conference24', 'Conference24', 'conference24', 'conference24@asda.com', 3),
('conference25', 'Conference25', 'conference25', 'conference25@asda.com', 3),
('conference26', 'Conference26', 'conference26', 'conference26@asda.com', 3),
('conference27', 'Conference27', 'conference27', 'conference27@asda.com', 3),
('conference28', 'Conference28', 'conference28', 'conference28@asda.com', 3),
('conference29', 'Conference29', 'conference29', 'conference29@asda.com', 3),
('conference30', 'Conference30', 'conference30', 'conference30@asda.com', 3),
('conference31', 'Conference31', 'conference31', 'conference31@asda.com', 3),
('conference32', 'Conference32', 'conference32', 'conference32@asda.com', 3),
('conference33', 'Conference33', 'conference33', 'conference33@asda.com', 3),
('conference34', 'Conference34', 'conference34', 'conference34@asda.com', 3),
('conference35', 'Conference35', 'conference35', 'conference35@asda.com', 3),
('conference36', 'Conference36', 'conference36', 'conference36@asda.com', 3),
('conference37', 'Conference37', 'conference37', 'conference37@asda.com', 3),
('conference38', 'Conference38', 'conference38', 'conference38@asda.com', 3),
('conference39', 'Conference39', 'conference39', 'conference39@asda.com', 3),
('conference40', 'Conference40', 'conference40', 'conference40@asda.com', 3),
('conference41', 'Conference41', 'conference41', 'conference41@asda.com', 3),
('conference42', 'Conference42', 'conference42', 'conference42@asda.com', 3),
('conference43', 'Conference43', 'conference43', 'conference43@asda.com', 3),
('conference44', 'Conference44', 'conference44', 'conference44@asda.com', 3),
('conference45', 'Conference45', 'conference45', 'conference45@asda.com', 3),
('conference46', 'Conference46', 'conference46', 'conference46@asda.com', 3),
('conference47', 'Conference47', 'conference47', 'conference47@asda.com', 3),
('conference48', 'Conference48', 'conference48', 'conference48@asda.com', 3),
('conference49', 'Conference49', 'conference49', 'conference49@asda.com', 3),
('conference50', 'Conference50', 'conference50', 'conference50@asda.com', 3),
('conference51', 'Conference51', 'conference51', 'conference51@asda.com', 3),
('conference52', 'Conference52', 'conference52', 'conference52@asda.com', 3),
('conference53', 'Conference53', 'conference53', 'conference53@asda.com', 3),
('conference54', 'Conference54', 'conference54', 'conference54@asda.com', 3),
('conference55', 'Conference55', 'conference55', 'conference55@asda.com', 3),
('conference56', 'Conference56', 'conference56', 'conference56@asda.com', 3),
('conference57', 'Conference57', 'conference57', 'conference57@asda.com', 3),
('conference58', 'Conference58', 'conference58', 'conference58@asda.com', 3),
('conference59', 'Conference59', 'conference59', 'conference59@asda.com', 3),
('conference60', 'Conference60', 'conference60', 'conference60@asda.com', 3),
('conference61', 'Conference61', 'conference61', 'conference61@asda.com', 3),
('conference62', 'Conference62', 'conference62', 'conference62@asda.com', 3),
('conference63', 'Conference63', 'conference63', 'conference63@asda.com', 3),
('conference64', 'Conference64', 'conference64', 'conference64@asda.com', 3),
('conference65', 'Conference65', 'conference65', 'conference65@asda.com', 3),
('conference66', 'Conference66', 'conference66', 'conference66@asda.com', 3),
('conference67', 'Conference67', 'conference67', 'conference67@asda.com', 3),
('conference68', 'Conference68', 'conference68', 'conference68@asda.com', 3),
('conference69', 'Conference69', 'conference69', 'conference69@asda.com', 3),
('conference70', 'Conference70', 'conference70', 'conference70@asda.com', 3),
('conference71', 'Conference71', 'conference71', 'conference71@asda.com', 3),
('conference72', 'Conference72', 'conference72', 'conference72@asda.com', 3),
('conference73', 'Conference73', 'conference73', 'conference73@asda.com', 3),
('conference74', 'Conference74', 'conference74', 'conference74@asda.com', 3),
('conference75', 'Conference75', 'conference75', 'conference75@asda.com', 3),
('conference76', 'Conference76', 'conference76', 'conference76@asda.com', 3),
('conference77', 'Conference77', 'conference77', 'conference77@asda.com', 3),
('conference78', 'Conference78', 'conference78', 'conference78@asda.com', 3),
('conference79', 'Conference79', 'conference79', 'conference79@asda.com', 3),
('conference80', 'Conference80', 'conference80', 'conference80@asda.com', 3),
('conference81', 'Conference81', 'conference81', 'conference81@asda.com', 3),
('conference82', 'Conference82', 'conference82', 'conference82@asda.com', 3),
('conference83', 'Conference83', 'conference83', 'conference83@asda.com', 3),
('conference84', 'Conference84', 'conference84', 'conference84@asda.com', 3),
('conference85', 'Conference85', 'conference85', 'conference85@asda.com', 3),
('conference86', 'Conference86', 'conference86', 'conference86@asda.com', 3),
('conference87', 'Conference87', 'conference87', 'conference87@asda.com', 3),
('conference88', 'Conference88', 'conference88', 'conference88@asda.com', 3),
('conference89', 'Conference89', 'conference89', 'conference89@asda.com', 3),
('conference90', 'Conference90', 'conference90', 'conference90@asda.com', 3),
('conference91', 'Conference1', 'conference1', 'conference1@asda.com', 3),
('conference92', 'Conference2', 'conference2', 'conference2@asda.com', 3),
('conference93', 'Conference3', 'conference3', 'conference3@asda.com', 3),
('conference94', 'Conference4', 'conference4', 'conference4@asda.com', 3),
('conference95', 'Conference5', 'conference5', 'conference5@asda.com', 3),
('conference96', 'Conference6', 'conference6', 'conference6@asda.com', 3),
('conference97', 'Conference7', 'conference7', 'conference7@asda.com', 3),
('conference98', 'Conference8', 'conference8', 'conference8@asda.com', 3),
('conference99', 'Conference9', 'conference9', 'conference9@asda.com', 3);

INSERT INTO `author` (`username`,`fullname`, `password`, `email` , `profileID`) VALUES
('author', 'Author', 'author', 'author1@asda.com', 4),
('author1', 'Author1', 'author1', 'author1@asda.com', 4),
('author2', 'Author2', 'author2', 'author2@asda.com', 4),
('author3', 'Author3', 'author3', 'author3@asda.com', 4),
('author4', 'Author4', 'author4', 'author4@asda.com', 4),
('author5', 'Author5', 'author5', 'author5@asda.com', 4),
('author6', 'Author6', 'author6', 'author6@asda.com', 4),
('author7', 'Author7', 'author7', 'author7@asda.com', 4),
('author8', 'Author8', 'author8', 'author8@asda.com', 4),
('author9', 'Author9', 'author9', 'author9@asda.com', 4),
('author10', 'Author10', 'author10', 'author10@asda.com', 4),
('author11', 'Author11', 'author11', 'author11@asda.com', 4),
('author12', 'Author12', 'author12', 'author12@asda.com', 4),
('author13', 'Author13', 'author13', 'author13@asda.com', 4),
('author14', 'Author14', 'author14', 'author14@asda.com', 4),
('author15', 'Author15', 'author15', 'author15@asda.com', 4),
('author16', 'Author16', 'author16', 'author16@asda.com', 4),
('author17', 'Author17', 'author17', 'author17@asda.com', 4),
('author18', 'Author18', 'author18', 'author18@asda.com', 4),
('author19', 'Author19', 'author19', 'author19@asda.com', 4),
('author20', 'Author20', 'author20', 'author20@asda.com', 4),
('author21', 'Author21', 'author21', 'author21@asda.com', 4),
('author22', 'Author22', 'author22', 'author22@asda.com', 4),
('author23', 'Author23', 'author23', 'author23@asda.com', 4),
('author24', 'Author24', 'author24', 'author24@asda.com', 4),
('author25', 'Author25', 'author25', 'author25@asda.com', 4),
('author26', 'Author26', 'author26', 'author26@asda.com', 4),
('author27', 'Author27', 'author27', 'author27@asda.com', 4),
('author28', 'Author28', 'author28', 'author28@asda.com', 4),
('author29', 'Author29', 'author29', 'author29@asda.com', 4),
('author30', 'Author30', 'author30', 'author30@asda.com', 4),
('author31', 'Author31', 'author31', 'author31@asda.com', 4),
('author32', 'Author32', 'author32', 'author32@asda.com', 4),
('author33', 'Author33', 'author33', 'author33@asda.com', 4),
('author34', 'Author34', 'author34', 'author34@asda.com', 4),
('author35', 'Author35', 'author35', 'author35@asda.com', 4),
('author36', 'Author36', 'author36', 'author36@asda.com', 4),
('author37', 'Author37', 'author37', 'author37@asda.com', 4),
('author38', 'Author38', 'author38', 'author38@asda.com', 4),
('author39', 'Author39', 'author39', 'author39@asda.com', 4),
('author40', 'Author40', 'author40', 'author40@asda.com', 4),
('author41', 'Author41', 'author41', 'author41@asda.com', 4),
('author42', 'Author42', 'author42', 'author42@asda.com', 4),
('author43', 'Author43', 'author43', 'author43@asda.com', 4),
('author44', 'Author44', 'author44', 'author44@asda.com', 4),
('author45', 'Author45', 'author45', 'author45@asda.com', 4),
('author46', 'Author46', 'author46', 'author46@asda.com', 4),
('author47', 'Author47', 'author47', 'author47@asda.com', 4),
('author48', 'Author48', 'author48', 'author48@asda.com', 4),
('author49', 'Author49', 'author49', 'author49@asda.com', 4),
('author50', 'Author50', 'author50', 'author50@asda.com', 4),
('author51', 'Author51', 'author51', 'author51@asda.com', 4),
('author52', 'Author52', 'author52', 'author52@asda.com', 4),
('author53', 'Author53', 'author53', 'author53@asda.com', 4),
('author54', 'Author54', 'author54', 'author54@asda.com', 4),
('author55', 'Author55', 'author55', 'author55@asda.com', 4),
('author56', 'Author56', 'author56', 'author56@asda.com', 4),
('author57', 'Author57', 'author57', 'author57@asda.com', 4),
('author58', 'Author58', 'author58', 'author58@asda.com', 4),
('author59', 'Author59', 'author59', 'author59@asda.com', 4),
('author60', 'Author60', 'author60', 'author60@asda.com', 4),
('author61', 'Author61', 'author61', 'author61@asda.com', 4),
('author62', 'Author62', 'author62', 'author62@asda.com', 4),
('author63', 'Author63', 'author63', 'author63@asda.com', 4),
('author64', 'Author64', 'author64', 'author64@asda.com', 4),
('author65', 'Author65', 'author65', 'author65@asda.com', 4),
('author66', 'Author66', 'author66', 'author66@asda.com', 4),
('author67', 'Author67', 'author67', 'author67@asda.com', 4),
('author68', 'Author68', 'author68', 'author68@asda.com', 4),
('author69', 'Author69', 'author69', 'author69@asda.com', 4),
('author70', 'Author70', 'author70', 'author70@asda.com', 4),
('author71', 'Author71', 'author71', 'author71@asda.com', 4),
('author72', 'Author72', 'author72', 'author72@asda.com', 4),
('author73', 'Author73', 'author73', 'author73@asda.com', 4),
('author74', 'Author74', 'author74', 'author74@asda.com', 4),
('author75', 'Author75', 'author75', 'author75@asda.com', 4),
('author76', 'Author76', 'author76', 'author76@asda.com', 4),
('author77', 'Author77', 'author77', 'author77@asda.com', 4),
('author78', 'Author78', 'author78', 'author78@asda.com', 4),
('author79', 'Author79', 'author79', 'author79@asda.com', 4),
('author80', 'Author80', 'author80', 'author80@asda.com', 4),
('author81', 'Author81', 'author81', 'author81@asda.com', 4),
('author82', 'Author82', 'author82', 'author82@asda.com', 4),
('author83', 'Author83', 'author83', 'author83@asda.com', 4),
('author84', 'Author84', 'author84', 'author84@asda.com', 4),
('author85', 'Author85', 'author85', 'author85@asda.com', 4),
('author86', 'Author86', 'author86', 'author86@asda.com', 4),
('author87', 'Author87', 'author87', 'author87@asda.com', 4),
('author88', 'Author88', 'author88', 'author88@asda.com', 4),
('author89', 'Author89', 'author89', 'author89@asda.com', 4),
('author90', 'Author90', 'author90', 'author90@asda.com', 4),
('author91', 'Author1', 'author1', 'author1@asda.com', 4),
('author92', 'Author2', 'author2', 'author2@asda.com', 4),
('author93', 'Author3', 'author3', 'author3@asda.com', 4),
('author94', 'Author4', 'author4', 'author4@asda.com', 4),
('author95', 'Author5', 'author5', 'author5@asda.com', 4),
('author96', 'Author6', 'author6', 'author6@asda.com', 4),
('author97', 'Author7', 'author7', 'author7@asda.com', 4),
('author98', 'Author8', 'author8', 'author8@asda.com', 4),
('author99', 'Author9', 'author9', 'author9@asda.com', 4);

DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper` (
	`paper_id` int not null auto_increment primary key,
	 paperName varchar(50) not null,
	`fileContent` longblob not null,
	`Status` varchar(50)not null
);

DROP TABLE IF EXISTS `paperinfo`;
CREATE TABLE `paperinfo` (
	 `paper_id` int not null auto_increment primary key,
	`paperidfk` int(11) not null,
	`Author` int(11) not null,
	`Coauthor` int(11) not null,
	 FOREIGN KEY fk_authorname(`Author`) REFERENCES author(id),
	 FOREIGN KEY fk_coauthorname(`Coauthor`) REFERENCES author(id),
	 FOREIGN KEY fk_paper(`paperidfk`) REFERENCES paper(paper_id)
);


DROP TABLE IF EXISTS `bid`;
CREATE TABLE `bid` (
	 bid_id int not null auto_increment primary key,
	`reviewName` int(11) not null,
	`paperidfk` int(11) not null,
	`allocateStatus` varchar(50) default 'unallocated',
	 FOREIGN KEY fk_reviewbidname(`reviewName`) REFERENCES reviewer(id),
	 FOREIGN KEY fk_paperbidname(`paperidfk`) REFERENCES paper(paper_id)
);

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews` (
	 review_id int not null auto_increment primary key,
	`bid_id` int (11) not null,
	`reviewContent` varchar(50) ,
	`paperidfk` int(11) not null,
	`reviewer` int(11) not null,
    `rating` int null,
	 FOREIGN KEY fk_bidid(`bid_id`) REFERENCES bid(bid_id),
	 FOREIGN KEY fk_reviewername(`reviewer`) REFERENCES reviewer(id),
	 FOREIGN KEY fk_papername(`paperidfk`) REFERENCES paper(paper_id)
	 
);








