INSERT INTO `tech9survey`.`user_role`(`type`) VALUES ('ROLE_ADMIN');
INSERT INTO `tech9survey`.`user_role`(`type`) VALUES ('ROLE_USER');

INSERT INTO `tech9survey`.`user_status`(`type`) VALUES ('STATUS_ACTIVE');
INSERT INTO `tech9survey`.`user_status`(`type`) VALUES ('STATUS_INACTIVE');

INSERT INTO tech9survey.image(id, url) VALUES(1, 'D:\\user_images\\default_user.jpg');

INSERT INTO `tech9survey`.`user`(`username`,`password`,`email`, `notify_by_email`, `registration_date`, `is_enabled`, `status_id`, `image_id`)
  VALUES ('admin','admin','tech9survey@gmail.com', TRUE , NOW(), TRUE, 1, 1);
INSERT INTO `tech9survey`.`user`(`username`,`password`,`email`, `notify_by_email`, `registration_date`, `is_enabled`, `status_id`, `image_id`)
  VALUES ('user1','user1','user1@tech9survey.com', TRUE, NOW(), TRUE, 1, 1);
INSERT INTO `tech9survey`.`user`(`username`,`password`,`email`, `notify_by_email`, `registration_date`, `is_enabled`, `status_id`, `image_id`)
  VALUES ('user2','user2','user2@tech9survey.com', TRUE, NOW(), TRUE, 1, 1);

INSERT INTO `tech9survey`.`user_roles`(`user_id`,`role_id`) VALUES (1, 1);
INSERT INTO `tech9survey`.`user_roles`(`user_id`,`role_id`) VALUES (1, 2);
INSERT INTO `tech9survey`.`user_roles`(`user_id`,`role_id`) VALUES (2, 2);
INSERT INTO `tech9survey`.`user_roles`(`user_id`,`role_id`) VALUES (3, 2);

INSERT INTO tech9survey.survey
(id, creation_date, creator, description, exit_message, expiration_date, hashed_id, is_active, is_flagged, is_public, name)
VALUES(1, '2017-09-08', 'user1', 'The purpose of this survey is to to better understand the challenges that companies face in business and define measures for improving the business environment in Serbia', 'Thank you for completing the survey!', '2019-02-03', 'f267bd7b09f97f4e0fd23dc67aac80e4', 1, 0, 1, 'Investors` satisfaction and confidence');

INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(1, 'Which group of legal entities does your company belong to?', NULL, 1, 1);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(2, 'How many employees does your company have?', NULL, 1, 1);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(3, 'How many of your employees receive the minimum wage mandated by Serbian regulations?', NULL, 2, 1);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(4, 'What do you expect to be the biggest challenges for your company in the next year?', NULL, 3, 1);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(5, 'Select priority areas you think should be the focus of AmCham in the future to assist your company�s growth:', NULL, 3, 1);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(6, 'In which industry does your company operate?', NULL, 1, 1);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(7, 'What is your position in the company?', NULL, 1, 1);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(8, 'What was the percentage of your products/services exported in the markets other than Serbian market, during last year?', NULL, 1, 1);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(9, 'How satisfied are you with the changes in the business environment in the last year?', NULL, 1, 1);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(10, 'If you would be deciding to invest in Serbia now, which of the following factors would you choose as the most important for assessing Serbia as investment destination', NULL, 3, 1);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(11, 'In the following year you expect your business to:', NULL, 1, 1);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(12, 'In the previous year, your expected growth was:', 1, 1, 1);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(13, 'How important is innovation friendly environment for your business development?', NULL, 1, 1);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(14, 'How can Government facilitate your business through innovation friendly environment?', 1, 1, 1);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(15, 'Please rate efficiency of Serbian courts:', NULL, 1, 1);

INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(1, 'Large', 1);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(2, 'Medium', 1);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(3, 'Small', 1);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(4, 'Micro', 1);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(5, 'Startup', 1);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(6, '< 50', 2);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(7, '51 - 100', 2);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(8, '101 - 250', 2);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(9, '251 - 500', 2);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(10, '> 500', 2);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(11, 'Unpredictability of the regulatory changes', 4);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(12, 'Unpredictability of fiscal and parafiscal burdens', 4);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(13, '�Silence of the administration�', 4);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(14, 'Quality of available workforce', 4);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(15, 'Payment discipline', 4);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(16, 'Access to additional financial sources', 4);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(17, 'Unfair competition', 4);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(18, 'Length of court processes', 4);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(19, 'Finding local partners', 4);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(20, 'Reducing the grey economy', 5);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(21, 'Reducing parafiscal charges and improving the work of Tax Administration', 5);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(22, 'Reducing red tape for import and export procedures', 5);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(23, 'Fostering less burdensome labor regulations', 5);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(24, 'Reducing burden for registering property and construction permitting', 5);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(25, 'Fostering expansion of eGovernment, eBusiness and eCommerce', 5);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(26, 'Improving regulations in the area of environmental protection and its implementation', 5);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(27, 'Improving regulations in the areas of public procurement and PPPs and its implementation', 5);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(28, 'Improve regulations in the health care area', 5);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(29, 'Improve energy sector related regulations and its implementation', 5);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(30, 'Fostering education reform', 5);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(31, 'Agriculture', 6);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(32, 'Consulting and Accounting', 6);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(33, 'Distribution and Logistics', 6);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(34, 'Education and HR', 6);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(35, 'Financial Services', 6);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(36, 'FMCG and Services', 6);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(37, 'Healthcare and Pharmaceutical', 6);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(38, 'ICT', 6);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(39, 'Manufacturing and Production', 6);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(40, 'Marketing and PR', 6);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(41, 'Media and Entertainment', 6);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(42, 'Real Estate', 6);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(43, 'Travel and Hospitality', 6);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(44, 'Top Management', 7);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(45, 'Middle Management', 7);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(46, '< 10%', 8);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(47, '10 - 30 %', 8);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(48, '30 - 50 %', 8);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(49, '50 - 70 %', 8);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(50, '> 70%', 8);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(51, 'Not at all satisfied', 9);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(52, 'Slightly unsatisfied', 9);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(53, 'Moderately satisfied', 9);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(54, 'Very satisfied', 9);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(55, 'Completely satisfied', 9);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(56, 'Political stability', 10);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(57, 'Macroeconomic stability', 10);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(58, 'Ease of trading across borders', 10);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(59, 'Policy on subsidies and incentives', 10);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(60, 'Tax policy, tax rates and non-tax burden', 10);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(61, 'Development of infrastructure', 10);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(62, 'Level of corruption', 10);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(63, 'Administrative burden', 10);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(64, 'Judicial efficiency', 10);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(65, 'Level of grey economy', 10);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(66, 'Human capital', 10);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(67, 'Investment subsidies', 10);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(68, 'Expand', 11);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(69, 'Remain the same', 11);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(70, 'Contract', 11);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(71, 'Exceeded', 12);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(72, 'Achieved', 12);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(73, 'Not at all', 13);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(74, 'Slightly', 13);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(75, 'Moderately', 13);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(76, 'Significantly', 13);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(77, 'Critically', 13);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(78, 'Protection of intellectual property rights', 14);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(79, 'Research & Development incentives', 14);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(80, 'Collaboration between business and academia', 14);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(81, 'Alternative sources of finance', 14);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(82, 'Very poor', 15);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(83, 'Poor', 15);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(84, 'Good', 15);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(85, 'Very good', 15);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(86, 'Excellent', 15);

INSERT INTO tech9survey.survey
(id, creation_date, creator, description, exit_message, expiration_date, hashed_id, is_active, is_flagged, is_public, name)
VALUES(2, '2017-09-08', 'user1', 'The purpose of this survey is to find out about your current experiences in college and at work, and to learn about your plans for the future.', 'Thank you for completing the survey!', '2019-01-09', '40cd54001068d3c7293459dd1eff58a6', 1, 0, 1, 'College Student Survey');

INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(16, 'How many classes have you completed in college?', NULL, 1, 2);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(17, 'When you graduate from this college, what do you plan to do?', NULL, 3, 2);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(18, 'Besides yourself, who has helped you most to make plans for the future?', NULL, 1, 2);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(19, 'In your opinion, how prepared are you to undertake the plans you have made for yourself after graduating from college?', NULL, 1, 2);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(20, 'Right now, how confident do you feel that your plans for after graduation will help you reach your ultimate career goals?', NULL, 1, 2);

INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(87, '1-5 classes', 16);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(88, '6-10 classes', 16);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(89, '11-15 classes', 16);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(90, '16-20 classes', 16);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(91, '21 or more classes', 16);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(92, 'Undecided', 17);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(93, 'Enter military service', 17);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(94, 'Participate in a formal apprenticeship program', 17);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(95, 'Work part time (less than 40 hours per week)', 17);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(96, 'Work full time (40 hours per week or more)', 17);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(97, 'Attend job training', 17);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(98, 'Attend 2-year community college or technical school', 17);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(99, 'Attend 4-year college or university', 17);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(100, 'Teacher', 18);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(101, 'Counselor', 18);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(102, 'Family member or guardian', 18);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(103, 'Friend', 18);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(104, 'Work supervisor, co-worker or work site mentor', 18);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(105, 'Not at all prepared', 19);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(106, 'Somewhat prepared', 19);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(107, 'Fairly well prepared', 19);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(108, 'Very well prepared', 19);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(109, 'Extremely well prepared', 19);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(110, 'Not at all confident', 20);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(111, 'Somewhat confident', 20);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(112, 'Fairly confident', 20);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(113, 'Very confident', 20);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(114, 'Extremely confident', 20);

INSERT INTO tech9survey.survey
(id, creation_date, creator, description, exit_message, expiration_date, hashed_id, is_active, is_flagged, is_public, name)
VALUES(3, '2017-09-08', 'user1', 'The purpose of this survey is to get statistic about learning foreign languages in Serbia.', 'Thank you for completing the survey!', '2021-05-01', '6dc243b7a1575308f300761508397ce4', 1, 0, 1, 'Learning foreign languages Survey');

INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(21, 'Are you male or female?', NULL, 1, 3);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(22, 'What is your age?', NULL, 1, 3);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(23, 'Which foreign languages did you learn in high school?', NULL, 3, 3);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(24, 'How do you learn foreign languages?', NULL, 1, 3);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(25, 'How often do you practise verbal conversation and grammatik?', NULL, 1, 3);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(26, 'Do you plan to keep on improving your knowledge of foreign language in the future?', NULL, 1, 3);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(27, 'What is your biggest motive for learning a new language?', NULL, 2, 3);

INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(115, 'Male', 21);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(116, 'Female', 21);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(117, 'Under 18', 22);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(118, '18 to 24', 22);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(119, '25 to 44', 22);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(120, '45 to 60', 22);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(121, 'Over 60', 22);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(122, 'English', 23);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(123, 'German', 23);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(124, 'French', 23);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(125, 'Italian', 23);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(126, 'Russian', 23);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(127, 'At school', 24);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(128, 'Attending a course', 24);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(129, 'Attendind online courses', 24);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(130, 'Styding at home', 24);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(131, 'Reading a book', 24);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(132, 'Watching movies', 24);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(133, 'Every dan', 25);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(134, 'Once a week', 25);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(135, 'Once a month', 25);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(136, 'Never', 25);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(137, 'Yes', 26);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(138, 'No', 26);

INSERT INTO tech9survey.survey
(id, creation_date, creator, description, exit_message, expiration_date, hashed_id, is_active, is_flagged, is_public, name)
VALUES(4, '2017-09-08', 'user2', 'The purpose of this survey is to get statistic about different supermarkets and their customers.', 'Thank you for completing the survey!', '2021-11-23', 'ced17a3db75827bdabb83b266794104e', 1, 0, 1, 'Supermarket Survey');

INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(28, 'Which national supermarket chains can you think of?', NULL, 3, 4);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(29, 'Have you heard of any of the following?', NULL, 3, 4);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(30, 'What is the MAXIMUM distance you are prepared to travel to your preferred store?', NULL, 1, 4);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(31, 'Are you male or female?', NULL, 1, 4);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(32, 'What is your age?', NULL, 1, 4);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(33, 'How many people do you buy for?', NULL, 2, 4);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(34, 'How much do you spend in an average week?', NULL, 2, 4);

INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(161, 'Male', 31);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(162, 'Female', 31);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(163, 'Under 18', 32);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(164, '18 to 24', 32);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(165, '25 to 44', 32);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(166, '45 to 60', 32);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(167, 'Over 60', 32);

INSERT INTO tech9survey.survey
(id, creation_date, creator, description, exit_message, expiration_date, hashed_id, is_active, is_flagged, is_public, name)
VALUES(5, '2017-09-08', 'user2', 'The purpose of this survey is to get statistic about transport to work.', 'Thank you for completing the survey!', '2020-03-11', 'b5be35adb663e7e7c86842daf1d14d6a', 1, 0, 1, 'Transport Survey');

INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(35, 'Which forms of transport do you use to get to work?', NULL, 3, 5);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(36, 'In an average week how many times do you travel to work walking?', NULL, 2, 5);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(37, 'Would you consider car sharing?', NULL, 1, 5);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(38, 'Are you male or female?', NULL, 1, 5);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(39, 'What is your age?', NULL, 1, 5);

INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(169, 'Cycle', 35);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(170, 'Motorcycle', 35);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(171, 'Taxi', 35);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(172, 'Train', 35);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(173, 'Car', 35);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(174, 'Underground', 35);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(175, 'Bus', 35);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(176, 'Walk', 35);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(177, 'Yes', 37);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(178, 'No', 37);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(179, 'Male', 38);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(180, 'Female', 38);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(181, 'Under 18', 39);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(182, '18 to 24', 39);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(183, '25 to 44', 39);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(184, '45 to 60', 39);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(185, 'Over 60', 39);

INSERT INTO tech9survey.survey
(id, creation_date, creator, description, exit_message, expiration_date, hashed_id, is_active, is_flagged, is_public, name)
VALUES(6, '2017-09-08', 'user2', 'Getting information about using different social media is the purpose of this survey.', 'Thank you for completing the survey!', '2018-06-23', 'a1032a32d229c65380700cc9c760adef', 1, 0, 1, 'Social Media Survey');

INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(40, 'Which of these social media sites do you use?', NULL, 3, 6);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(41, 'Which of the following do you use to acces them?', NULL, 3, 6);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(42, 'Where do you most access social media?', NULL, 1, 6);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(43, 'How often do you use social media?', NULL, 2, 6);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(44, 'Do you use social media for work?', NULL, 1, 6);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(45, 'Are you male or female?', NULL, 1, 6);
INSERT INTO tech9survey.question
(id, content, has_other_option, question_type, survey_id)
VALUES(46, 'What is your age?', NULL, 1, 6);

INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(186, 'Facebook', 40);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(187, 'Twitter', 40);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(188, 'Instagram', 40);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(189, 'Google +', 40);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(190, 'Linkedin', 40);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(191, 'YouTube', 40);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(192, 'Smartphone', 41);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(193, 'Tablet', 41);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(194, 'Laptop', 41);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(195, 'PC', 41);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(196, 'At home', 42);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(197, 'At work', 42);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(198, 'Out and about', 42);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(199, 'Yes', 44);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(200, 'No, but I expect to in the future', 44);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(201, 'No, and I don''t expect to', 44);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(202, 'Male', 45);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(203, 'Female', 45);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(204, 'Under 18', 46);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(205, '18 to 24', 46);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(206, '25 to 44', 46);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(207, '45 to 60', 46);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(208, 'Over 60', 46);