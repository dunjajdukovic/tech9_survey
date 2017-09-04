INSERT INTO `tech9survey`.`user_role`(`type`) VALUES ('ROLE_ADMIN');
INSERT INTO `tech9survey`.`user_role`(`type`) VALUES ('ROLE_USER');

INSERT INTO `tech9survey`.`user_status`(`type`) VALUES ('STATUS_ACTIVE');
INSERT INTO `tech9survey`.`user_status`(`type`) VALUES ('STATUS_INACTIVE');

INSERT INTO `tech9survey`.`survey_privacy`(`type`) VALUES ('VISIBILITY_ALL');
INSERT INTO `tech9survey`.`survey_privacy`(`type`) VALUES ('VISIBILITY_REGISTERED');

INSERT INTO `tech9survey`.`user`(`username`,`password`,`email`, `registration_date`, `image_url`, `is_enabled`, `status_id`, `notify_by_email`)
  VALUES ('admin','admin','tech9survey@gmail.com', '2026-02-02', 'C:/Users/kurs/git/tech9_survey/src/main/resources/static/images/default_user.jpg', TRUE, 1, TRUE);
INSERT INTO `tech9survey`.`user`(`username`,`password`,`email`, `registration_date`, `is_enabled`, `status_id`, `notify_by_email`) VALUES ('user','user','user@tech9survey.com', '2026-02-02', TRUE, 1, FALSE);

INSERT INTO `tech9survey`.`user_roles`(`user_id`,`role_id`) VALUES (1, 1);
INSERT INTO `tech9survey`.`user_roles`(`user_id`,`role_id`) VALUES (1, 2);
INSERT INTO `tech9survey`.`user_roles`(`user_id`,`role_id`) VALUES (2, 2);

INSERT INTO tech9survey.survey
(id, creation_date, description, exit_message, hashed_id, is_active, name, expiration_date, is_public, creator)
VALUES(1, '2017-08-22', 'Test survey description', 'Test survey exit message', '23828029cea10d57429c68966cfacc8c', TRUE, 'Test survey', '2017-10-22', TRUE, 'admin');

INSERT INTO tech9survey.question
(id, content, survey_id)
VALUES(1, 'First question for test survey 1', 1);
INSERT INTO tech9survey.question
(id, content, survey_id)
VALUES(2, 'Second question for test survey 1', 1);

INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(1, 'First answer for first question for test survey 1', 1);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(2, 'Second answer for first question for test survey 1', 1);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(3, 'First answer for second question for test survey 1', 2);
INSERT INTO tech9survey.answer
(id, content, question_id)
VALUES(4, 'Second answer for second question for test survey 1', 2);
