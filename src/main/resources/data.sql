INSERT INTO `tech9survey`.`user_role`(`type`) VALUES ('ROLE_ADMIN');
INSERT INTO `tech9survey`.`user_role`(`type`) VALUES ('ROLE_USER');

INSERT INTO `tech9survey`.`user_status`(`type`) VALUES ('STATUS_ACTIVE');
INSERT INTO `tech9survey`.`user_status`(`type`) VALUES ('STATUS_INACTIVE');

INSERT INTO `tech9survey`.`survey_privacy`(`type`) VALUES ('VISIBILITY_ALL');
INSERT INTO `tech9survey`.`survey_privacy`(`type`) VALUES ('VISIBILITY_REGISTERED');

INSERT INTO `tech9survey`.`user`(`username`,`password`,`email`, `image_url`, `registration_date`, `is_enabled`, `status_id`)
  VALUES ('admin','admin','admin@tech9survey.com', 0xFFD8FFE000104A46494600010100000100010000FFFE003B43524541544F523A2067642D6A7065672076312E3020287573696E6720494A47204A50454720763632292C207175616C697479203D2039300AFFDB0043000302020302020303030304030304050805050404050A070706080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F171816141812141514FFDB00430103040405040509050509140D0B0D1414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414FFC00011080113011303012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FD34FC297AF6A28E3DA800A4FC28E296800A4FC2978F6A2800A4FC297AD1400527E14B49C5002D27E147F0D2D00149F85666B7E26D33C3D16FBFBB48091958F3976FA28E6BCF359F8D8D964D2AC063B4D747FF006507FAD007AB353659A3857748EA8BEAC702BE79D4BE20F8835427CDD4A6894FF041FBB1FF008EE3F5AC19AE25B872D2C8F2B9FE27624D007D2EFE20D2E3243EA368A7FDA9D47F5A58F5ED3652026A368E7D16753FD6BE64A2803EA8491655DC8C194F753914AD5F2DDBDDCF66FBE09A481BFBD1B153FA5743A6FC48F10E9846DD41EE107F05C81267F13CFEB401F42515E5FA27C6B8642B1EAB64613D0CD6C772FF00DF2791F99AF41D275CB0D72DFCEB0BA8EE63EFB0F2BF51D47E34017E8A4E296800A28A2800A28A2800A28A2800A28A28013752D1450027E1452D14005149B68DB400B4526DA36D002D14514005149B68DB400B4526DA36D001C01CE2BCB7C71F15CC124963A232965F95EF3A8CFA27F8FE5EB57BE2C78C8E9566349B4936DD5C2E66753CA467B7D4FF002FAD78C63DE8025B9B89AF2769A795E695CE59E462C49F726A3C0A4DB4B8F7A005A4E7DA931EF4B8F7A005A4E7DA8C7BD18F7A0030296931EF48462801D562C351BAD2AE56E2D2E1EDE65E8F19C1FF00EBFD2AB63DE8C0A00F68F027C504D6E48EC3540B0DF3711CC38494FA63B37E87F4AF43AF95149521949047208ED5EF3F0D7C61FF0009369261B97CEA16A02C84F575ECFF00D0FBFD6803B2A2936D1B680168C7149B696800A4DB46DA36D001B68DB46DA36D001B6968A46A0036D146DA280168A4DD4B4005149BA96800A293752D0021FAD2D14500273506A17B1E9B61717731C45046646FA019A9F75713F17752365E10784361AEA548B8EB8FBC7FF41FD6803C5F58D526D6F53B9BE9CE659DCB1F61D80F60303F0AA5B69D4500371CD1B69D4500376D2E051CFB52D00376D2E052D14009814B451400DDB46DA752751400DADBF086BEFE1AD7ED6F413E506D9328EE87AFF8FD40AC7A2803EA84612286560548C823BD3AB9DF87DA89D4FC1FA64A5B2EB1F94DEB953B7F9015D0EEA005A4E6968A0028E7DA8A4DD4007347E346EA375001CD2D26EA375002E0FAD14993E9450019E2968A3228013F86979F6A29375001BA8DD4B450026EA5A28A002BC9FE38DD9F3349B51D0092423FEF903F91AF57FE2AF1CF8DC0FF006D69C7B7D9C8FF00C78D0079C64519146452D001499147414039A003228C8A5A4C8A0032296938F6A38F6A003228C8A5A4E3DA800C8A322968A004C8A322969322803D9BE0A5E197C3F796E4E7CAB8C8FA328FEA0D7A26EAF31F81A08B3D58F6324607E4D5E9DC5001BA8CE38A5A28013751BA968A004DD46EA3752D0026EA3752D1400514514009BA96936D1B6801693751B68DB400034B49B68C73400B4526DA36D002D7937C728312E8F30EEB2A1FC3691FCCD7AC6DAE0BE32E9DF6AF0B4572065AD67524FA2B654FEBB6803C4B228C8A3028C0A005A4C8A3028C0A005A4C8A3028C0A003229690014605001914645181460500191464518146050019146451814605007B3FC13836787AF66C7DFBA2BF922FF8D7A2572DF0CB4EFECFF0669F91879834EDEFB89C7FE3BB6BA8DB400B49BA96931CD002D149B68DB400B4514980680168A4C7146DA00375146051400B49B6968A004DB46DA5A280100A31CD1CD2D0026DA36D2D14009B6B23C5BA77F6AF86354B5C6E67B762A3D580DCBFA815B1483F3A00F95A8ABDAFE9C749D72FECF18104EF1AFD0138FD315430280168A28A0028A28A0028A28A006FE74EA4C0A30280169BF9D3A8A006FE752410BDC4D1C518DCF230551EA49C0A6605747F0EF4FF00ED2F19E99191958E4F39BD3E405BF981401F40D9DA2D8DA416D1FF00AB82358D7E8A001FCAA6DB4B450026DA36D1CD2D0026DA5A28A004DB46DA5A4FBD40060FAD1B6968A006FE1452F345002D14514008B47E14B450027E147F152D14009BA8DD4B49BA8016AA6ABA8C7A4E99757B28FDDC11B4847AE074FC6ADD715F176F0DAF83654071F6899223FF00A17FECB401E23A85FCDAA5F4F7770DBE699CBB1F726A0A29074A005A28A43D280168A28A0028A4C0A3A8A005A293A8A5A0028A293B5002D69786B5B97C3BADDA5FC64E2271BD47F121E187E5599DA96803EA78A449A34910EF46019587420D3EB9EF87F786FBC1BA54AC72C22F2F3FEE92BFD2BA0DD400B451450027E14B49FC54B4009F852D26452D001452714B400993E9452D140051451400514514005145140051451400579FFC6942DE16B661D16ED73FF7C3D7A0572FF12B4D3A9783350551978544E07FBA413FF8EEEA00F9F68A6FE54A3AF6A005A29BF951F95003A8A6FE547E5400EA29BF951F95003A8A6FE547E5400EA41D293F2A5EDDA800ED4B4DFCA8FCA803E80F85A853C0DA767B9908FA798D5D656678634D3A478774EB361B5E281038F46C65BF526B4E800A28E3DA8A0028A38F6A46A005A293F1A38A005A28A46A005A293028A005A28A3F0A0028A4FC28FC280168A3F0A3F0A004E69693F0A3F0A005A6BC69223248A248D815653D083C114BF852D007CD9E2CF0F4BE18D7AEAC24C9446DD139FE38CF2ADF97EB9AC7C0AFA17C79E084F1AE98AB1958B52B704DBC8DC071DE36F63D8F635E05A869F73A4DE4B6B7903DBDC4470D1B8C11FE7D6802BE051814B450026052D14CA007D26052D14005145277A003028ED4B4500276AEABE1B7869BC47E26803A6EB3B52279C9E980785FC4E07D33589A1E837DE23D423B2B0B769E67EB8E8A3D58F615F427853C2B6DE0FD1D6C60225998EFB89C0FF58FEDEC3A0FFEBD006C1249CF7A28A2800A293F0A5FC2800A28A2800A28A4FE2A005A28FC28FC2800E7DA8A39F4A280138A370F5A39A5A0028A28E7DA800A4FC6979F6A28011A968A2800A28A4FE1A005E95C2FC68B017FE178EECC6A67B4997F7B8F9B636548CFA64AD773CD63F8CACBFB47C29AB418C936EECA3D4A8DC3F502803E6EA293228C8A005A293228CFBD002D14991477A005A293229680139F6A5A4CF19A7468657545E5988007A9A00FA0FE19580D2BC1562AA8B1CB72A6695C2FCCFB892B93FEEE2BA6A82CAD458D95BDB27DC82358863D1401FD2A7A0028A28A0028A28E7DA800A28A2800A28A2800A4FC6968A004E28A5E7DA8A0028A28FC6800A293B75A5A0028A45A5A0028A293F1A003F8A968A2800A6BC6B2A3230CAB0208F6A751401F2C5CC26DAE6589BEF46E50FD41C547C7B56AF8AE1F23C4FAB20E8B772E3E9BCD65D0021E9471ED41E94B4009C7B52D1450027E3471ED4B450015ABE11B617BE28D2A12321AE63C8F60C09FD0565574FF000C621378E34C07A02EDF946C6803E83A28A2800A28FC68A00293F86968A0028A28A0028A4FC696800A28A2800A28A2800A28A2800A293F8696800A28A2800A28A2800A4FE1A5A280136D0B4B45007CDBE3521BC5DAB91FF3F527FE846B176D5ED72EC5F6B57F720E566B892407D8B1354E8013028E3DA968A004C0A302969302800C0A5A28A004C0AEBBE146078E2C7DD64FFD01AB92AE83E1F5D8B3F19E952138065F2FFEFA057FAD007D13FC34B45140051451400514514005145140051451400514514009F8514B45002352D149FC3400B451450014514500145145001476E94527F0D002815CFF008EB5E5F0F7866F2E370599D4C508EE5DB81F9727F0AD0D6B5DB1F0FD9B5CDF4EB047D81FBCE7D147735E0FE36F19CFE2FD444854C567164410E7A7A93EE68039BFE2A5C8A33ED47E1400B45267DA8EDD2800E3DA96901CD1F85003697752E451F850036A58277B69E39633B648D83AB7A10720D33228CFB5007D37A16AF16BDA3DADF4246C9903103F85BB8FC0E45685782FC3EF1EBF84EE1ADEE434BA6CCD9655EB1B7F787F515EE1A76A56BAB5AA5CD9CE97103F474391FF00D63ED401676D2D14500145145001451450026DA31ED4B450027E14BF851450018F6A28A2800A28A2800A28A2800A28A466080B31000E492680168AE6759F88BA0E8A0892F96E251FF2CADBF787F31C0FC4D705AE7C69BEB9DD1E976A9669D04B2FCEFF0080E83F5A00F5ABFD4AD74BB769EEEE23B684757918015E71E25F8CD1441E1D161F39FA7DA671851FEEAF53F8E3E95E5DA8EAB79ABCE66BDB996E65FEF48D9C7D3D3F0AAD4016B53D5AF35ABA6B8BDB87B998FF00139E83D00E807B0AA54FA280194FA28A0028A293A8A005A28A4FC680168A28A0028A28A002B4344F10EA1E1DB9F3EC2E5E063F79472ADEC474359F49DE803D93C35F18ECAF42C3AB47F619BA79D182D19FAF75FD7EB5E836B7705F40B35BCD1CF137DD78D8303F88AF96EAEE95AE5FE89379B61772DAB77D8DC37D4743F8D007D3B45790689F1AAEA0DB1EA9669729DE580EC6FC8F07F4AEEF48F887A0EB3B4477E904A7FE595CFEEDBF5E0FE06803A4A2915830054E41E410734B400522D2D14005148D4B4009CD14B45001505CDFDB592E6E2E21807ACAE17F9D7CD571E21D52EFFD76A577283D9E763FD6A83316392493DC9A00FA22F7E21F876C321F5586461DA1CC9FFA0835CEEA1F1B34B801169657374C3BBE2353FCCFE95E2F4EE7DA803BED4BE336B3760ADA456F62BD885DEDF99E3F4AE4753F10EA7AD126F6FA7B91D76BB9DA3FE03D0550A65003E8A6F34EA00293B52D14005149F852D00149C7B507A52D0026452D1450026452D329F4005149DE96800A28A403140076A5A653E800A28A2800A28A4FC2803434CF106A5A3B66CAFA7B61FDD473B7F11D0D757A77C63D72D00172B6F7CBEAE9B1BF35E3F4AE1693A0A00F62B0F8DD612E05E69F3DB9F5898483F5C574365F133C397B803515858FF0CE8C98FC48C7EB5F3ED27E1401F4F5A6B3A7DF01F66BEB6B8CFF00CF2955BF91ABB5F2AD59B7D56F6D31E45DDC43FF005CE565FE46803EA1A2BE6E8FC5BAE6C1FF00138BEFFC086FF1A28031A8A653B0280168A4C0A4DB400EA293028C0A005A29BB6970280168A4C0A30280168A4C0A30280168A4C0A302800C8A5A4C0A30280168A4C0A30280168A4C0A30280168A4C0A302801693BD369D81400B452605181400B452605181400B452605181400B45260526DA0075149814B401227DD14509F74514011D329F4500329F4514009914B4CA7D00145277A30280168A2933C6680168A28A004C8A5A28A006514FA4C8A005A28A28013A8A4FE2A5C8A5A00293B52D140051451400CA7D1499E33400B451450014CA7D1400514514009C7B51914B49DA80254FBA28A727DC145005FFB041FF3CFF534FF00ECFB7FF9E63F33451400CFB041FF003CFF005347D820FF009E7FA9A28A003EC107FCF3FD4D3FFB3EDFFE798FCCD145001FD9F6FF00F3CC7E6699F6083FE79FEA68A2801FFD9F6FFF003CC7E668FECFB7FF009E63F334514007D820FF009E7FA9A3FB3EDFFE798FCCD145001FD9F6FF00F3CC7E668FECFB7FF9E63F334514007D820FF9E7FA9A3FB3EDFF00E798FCCD145001FD9F6FFF003CC7E668FECFB7FF009E63F334514007D820FF009E7FA9A3EC107FCF3FD4D145001F6083FE79FEA68FECFB7FF9E63F334514007F67DBFF00CF31F99A3EC107FCF3FD4D145001FD9F6FFF003CC7E668FECFB7FF009E63F334514007F67DBFFCF31F99A3EC107FCF3FD4D145001FD9F6FF00F3CC7E6699F6083FE79FEA68A2801FFD9F6FFF003CC7E668FECFB7FF009E63F334514007F67DBFFCF31F99A3FB3EDFFE798FCCD14500392C60D83E4FD4D1451401FFD9 ,'2026-02-02', TRUE, 1);
INSERT INTO `tech9survey`.`user`(`username`,`password`,`email`, `registration_date`, `is_enabled`, `status_id`)
  VALUES ('user','user','user@tech9survey.com', '2026-02-02', TRUE, 1);
INSERT INTO `tech9survey`.`user`(`username`,`password`,`email`, `registration_date`, `is_enabled`, `status_id`)
  VALUES ('milos','milos','milos@tech9survey.com', '2026-02-02', TRUE, 1);

INSERT INTO `tech9survey`.`user_roles`(`user_id`,`role_id`) VALUES (1, 1);
INSERT INTO `tech9survey`.`user_roles`(`user_id`,`role_id`) VALUES (1, 2);
INSERT INTO `tech9survey`.`user_roles`(`user_id`,`role_id`) VALUES (2, 2);
INSERT INTO `tech9survey`.`user_roles`(`user_id`,`role_id`) VALUES (3, 2);

INSERT INTO tech9survey.survey(id, creation_date, description, exit_message, hashed_id, is_active, name, expiration_date, survey_privacy_id, creator)
    VALUES(1, '2017-08-22', 'Test survey description', 'Test survey exit message', '23828029cea10d57429c68966cfacc8c', 1, 'Test survey', '2017-10-22', 2, 'admin');

INSERT INTO tech9survey.question(id, content, survey_id)
  VALUES(1, 'First question for test survey 1', 1);
INSERT INTO tech9survey.question(id, content, survey_id)
  VALUES(2, 'Second question for test survey 1', 1);

INSERT INTO tech9survey.answer(id, content, question_id)
  VALUES(1, 'First answer for first question for test survey 1', 1);
INSERT INTO tech9survey.answer(id, content, question_id)
  VALUES(2, 'Second answer for first question for test survey 1', 1);
INSERT INTO tech9survey.answer(id, content, question_id)
  VALUES(3, 'First answer for second question for test survey 1', 2);
INSERT INTO tech9survey.answer(id, content, question_id)
  VALUES(4, 'Second answer for second question for test survey 1', 2);
