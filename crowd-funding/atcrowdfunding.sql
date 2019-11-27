/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.1.62-community : Database - atcrowdfunding
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`atcrowdfunding` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `atcrowdfunding`;

/*Table structure for table `act_ge_bytearray` */

DROP TABLE IF EXISTS `act_ge_bytearray`;

CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_bytearray` */

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('2',1,'MyProcess2.bpmn','1','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"myProcess\" name=\"My process\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"User Task\" activiti:candidateGroups=\"team\"></userTask>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask1\" targetRef=\"endevent1\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_myProcess\">\n    <bpmndi:BPMNPlane bpmnElement=\"myProcess\" id=\"BPMNPlane_myProcess\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"360.0\" y=\"90.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"325.0\" y=\"190.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"360.0\" y=\"310.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"377.0\" y=\"125.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"377.0\" y=\"190.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"377.0\" y=\"245.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"377.0\" y=\"310.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('3',1,'MyProcess2.myProcess.png','1','âPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0x\0\0\0\0\0Bh”∫\0\0\rIDATx⁄Ìù}pÂ«∑íjƒt`0¶i&3çc,q‰Z”H\"ß	∆‘bÀ0HôëZ*P©FÅblhT¢ﬁH—ºòj—â%S20ﬁ\"ë\"Ü4H– Å8√	ø>œÊ…eoÔ&˜<∑õÛ˚ô˘Nróª›\'œÁûó}n˜N”\0\0\0\0\0\0∏,”XäX™YZY‹,$“ŒR«R¬2õ%U68Hd)gq±‘≥,bq∞ƒ±Ñ«Ö¶≤Ãg©èØa…2=ÿ.Ï-ññú¥»pñÈ‚E±ó%Uj¶	±Nñ·∂ó%∫r—’Y*∆◊L…€çÇõY¢QÕ÷ çS∏èßEÔèÍ~∑¨ZnŸb_h…AúPuy\"¥TÃ∂1√ˇ™`S/´Ä‚„‹I≥Â˛í ˆ	\rÍ(›•UââP\0?&ui÷.+∆ãVå±X—ÃπﬁÂ‡kÿ©–°¶{Ã∂A9r—M´Åø+‰∞A9xj°C>¡Zÿ∏ºÌ–!∑ç&7°]©åÎã1X\r¸îöâ6ôE◊Aáö„‡Ö69Œá˘L≠=Ià¬ﬂ≈È‘¨y\'…xÃÀj®“∫œc∂≤{.Åu≥8ö,:\\‚=GáÜì‰ï√œ[ûi¡~yÀ-@ı´g¢8çÚ>˘)¥8O:à≠È≠ u’=oÚ;PÌ¡#Lå≈™èG„DÀ]à*∑Ê∞âw’ã∂\\.oÓ[ü—∂*ê0QtÀhπ6i…bv=J¬°Pâhπsm∆|—esA£0÷ÊàV[ÑŸ≤}â¢⁄¥Ó30˘$å_ö`z\\¥h°|eäØ-wä1…BˆÂ>¬°Á¿«[¨-á8Ç @0Ä` @0Ä`\0¡\0Ç!@0Ä`\0¡\0Ç¡\0Ç @0 @0Ä`\0¡ @0Ä`\0¡\0ÇÜ`\0¡\0Ç Ç˚R•ı~ïŒÂ≤’4xI‘ºø/…_2QMÉõÍ>‰Ú/«\nC\r˛V|9¡Y®û–ãw¢ıÜˆXå±7ƒ®@Î\rmí\rÇ3P°=£ıÜ¯å\Z\\\"\n/,,Ãû5kVcRRí+<<¸J+E»\03d»êK7›tSGJJ ˚Ïgörπeees”““Œ≈≈≈QnÓ_©∂vπ\\ÁôÛKàÇ∫≠ØˇàÚÛW–»ë#ªbbb\ZôÜQJ‰ñññTFGGì”˘π›]¨\0ë ß†`%\r>¸¸–°CÔë.7>>ûΩö∂±}ãXò¶¶è)22Úki«Òee≈syÀ≠Øﬂ v‡ˆJqÒ* ÃÃ†ÙÙI4i“∫”ëF+ù>èC‰¶©©ëÆΩˆ⁄Sw◊|Bïñ6·ú”˘˚ıÇW _-¶)wß”ØÔù™gjÊdr8&“ÿ±ø§ï∫‰à¬‰Á?s2,,lS@Ç_Ãéã˚)sœ±çvy%#›°ãΩÛŒ4OÓ∫ÎJ7ÜINÚy<\"?#Fåh8c÷¨ôçππO≤ç}„ì‘îdz·˘g®ÍΩuT¯íSoπ„S«Í˜Ûﬂ›Ó≥~üá»ÀÇÛ¯ík˛Ä\'%%∫jk?ds˘‰ÅfQ˚mT∑ÂﬂT˝ØwÈı◊J©≤‚:‘¸)=Ù«9ÙÌ∑g˝>ëóÕõkæ‘9#Ö/b∏\\\'Ÿ∆Œ˘d…‚«i{˝⁄±ΩéˆÏn–√ﬂ±c-YÚ∏ﬂÁ r√›àw…ôgùıâ€}ö/Œ¶?õ\Z\Z>¢¶}{ıÏﬁΩÉÃˇ=˙»|˙Êõì~üã»M†KØl#ù^ÈÍ:Ik◊˛Éíí~AÕü†G˛<ﬂ+ªvmßƒ€F”õoî≤WXáœÛπë ¯kO.]:CÔΩªÜ∆±YrKÛA⁄˜Ò™Ÿ¯>U¨õVø˘w*-Y≈‰Ø÷ªÎ1cn£5k ŸX| kà‹H|∆ì∫-Ë«∫\\Í¶Mi˝∫5∫ÿÚW_°óãVíÛÖgÈÈºßÙ	W—™i‚ÑTz√;^€@‰FÇ‡”û,Y¸ò>SÊ\"ÀJãÙºÚr¨|ûûÀœ£ø-íñ˝ee?˙\'zrŸLn=ñ˝∞◊6πë ¯î\'\\0?$∫o⁄ØË≠’ØÈbπÏgü…•ÂπÀh≈≥Àu…\\zÊî⁄¯·!¯¢(ˇœì∆∆≠Ùƒ¢GÈ7˜eÈy◊Ï/……âtˇÃÈzkﬁµk≥◊6πë ¯§W‹æ¢≥g€(≈Sîë~•¶å—WÆí«$“X&v¬Ì)¥·πtÊÃÁ˙cÕœG‰FÇ‡àç#Apb„H|±q$˛\n±q$>Üÿ8∑#6é¡_\"6é¡_ ˝Ãú93Ùäw8∆+ﬂó¡G•gﬁºŸû≥˜˘Ì)S&y›ffÃ»Úπ¢ \'ÁëÄ∑À∑˚ÂÂó ∏MIz+†ç÷≠+÷oo›∫^Ÿ˛˙*GKÀ6˝gTT$π\\áH∆ˇm¸ˇTó?@¡Gî§∑éPEEâ~ª°°JøΩzu≈≈≈Úks-ª˚y«èÔ•…ì”<˜Û€¸˛ÆÆœ}••+|û˜] ÛcØ˚÷¨)§õoæ—≥≠ÊÊ-^Ô´ú=ˇ_gÁÅ~ó•øı†‡œï§WÁLp±¸ûÁoó€∑Òoyyè˚<ÆÁÔ\'N4ˆª<›ÇΩÔõ1„ˆ‚9‰∑LW*\'ˇˇöö6í”πå.^lUVè\n>¨$ΩÇø´ﬂ>zt;-^<ØÁ\n;:r§ﬁÛºq„nÛ3Õ€çä∫~@ÂÈ‹{_UU›zÎœÙVÍo_}ï≥Á≈¡\ZÔWQè\nnUíû\nªx±Ö,¯ù7˚<./Ô12ñ√¯<û˝˚7˙lwÿ∞\r®<◊]7‘Á>.ùÔßG÷â{¸>ﬂ_9cc£=ø-WYèÅ˛Øíl⁄Ù&•¶&zÑÒ€=õ2•wåçéæÅﬁx√È˘€±c\rîû~ªÁÔ[∂º≠ﬂﬂŸ˘âOÀÓÍ:¯ù 2gŒo=œy˝ıÁ=˜WWó{Ó7˛~•rŒõwø◊cÕœì	Ç[GÇ‡Càç#Ap3b„H¸b„H|±q$˛±q$>Äÿ8ˇ±q$ﬁèÿ8Çÿ87!6é¡˚GÇ‡è\' ¡◊\\sı%ók€P#b√ú?ø˝p@¬rÀ-7´≠-a€ãÿ0ïïŒ\r}å“¯Ò?_õõ˚€ÿƒÜô:u¸ÍÄ>-6ˆ˙§ÿÿ®nw€‡nƒ^iΩÍ™´ˆÙQÜúòòv9ù¸<·]àçíô9æòÈ©ëÒâ¬	√Ü]wÆæækì‘÷W2/Ì2?˝›5‚4$€C.Îö[4_ÏÂ∏˙Íû…Àõ“ÌﬁÅ ~ZE∑‹Æ)¸÷∂Ñ!C~aDƒ–„>xÔû>x©›Â˙ïØ(Áœo;\\Y˘‹>[™\Ze_ ab4K.Kã_Å£,nqúõl˘˚Ù’O® @0Ä`\0¡\0Ç!@0Ä`\0¡\0ÇÜ`\0¡\0Ç @0 @0Ä`\0¡ @0Ä`\0¡\0ÇC0Ä`\0¡\0Ç Ç @0Ä`lKïvÂØÆŸâj\Zº$j›ﬂ=‘ó‡LT”‡¶∫πı,a®¢¡ﬂä/\'8’∫cÒN¥ﬁ–ã1ˆÜhΩ°M≤Ap™#¥«b¥ﬁAN$Àt≠˚{wkY⁄L„oª8D*aô√á*8ƒX€ﬂ/≠v·≥—∫Ì;Kﬁ©…˘÷Ì¢Uõ¥üC ~õØ`Â∞Ldâgâè]2üt-èÛ◊‚˘˝±®^Îà„´QJßw˚;¶gYƒ“l⁄ﬁ)Ò»≠”|◊ï„‹.öz˛¢ôÜ*.Êñõ#yrî¿“dÿ>Ô¬±Úƒ1◊(wö¬^¢⁄‘íP˝ÍgÀnSÀU	üê’òéü#°A{µ‡øóÀÖvˆÎÑuã∆Ó2>à˚Œ4Ì;:‰c|O7ﬂÇ˝WXºˇê&“∞·∂®%öéèáCã<¶kﬁ+LVa\\¡È>…‚Ãπ/r1ŸRø∞ëja9¶ Q-Ú0æüoa9FôéâÅ$å+Wñ#‹T†@0 Çåå1c0f—òEèõÁ Q\0-Úò©Ÿc%Àx\0ŒÚê?˘Õ∏m≈{≤∆Ò◊•·}a•„Rˆ_nÿ9t®Ì¶€Ç|∏î†yüI2\Z:‰f\ZY‘{T@EpZ±;H-i°iü£†A-∆3;¯e&*ﬂxünÍöÁ¢˙’≠yü«¬…Ìƒƒ \Z¯uEßï_´…Ωé»|uCµfÌ\Z¯˜í,Õ˚¢1óòŸ≤˘í»µá©Ì“ﬂıÍQ¢6_•Xπ÷ì†˘^¡œ”™u_Ê2SÃ∂{∆Èp!î∑ˆÕ˚dz„l*!dvjÅ_\0^ÅC!˚¬\'Zπ¶	ÿwâKt«X°\Z$ÑãÒ9_å…˛>ÑÖ^à√!ºq\0\0\0\0\0\0\0\0\0Ñˇk^/4J¶±¿\0\0\0\0IENDÆB`Ç',1);

/*Table structure for table `act_ge_property` */

DROP TABLE IF EXISTS `act_ge_property`;

CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_property` */

insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('next.dbid','101',2),('schema.history','create(5.15.1)',1),('schema.version','5.15.1',1);

/*Table structure for table `act_hi_actinst` */

DROP TABLE IF EXISTS `act_hi_actinst`;

CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_actinst` */

/*Table structure for table `act_hi_attachment` */

DROP TABLE IF EXISTS `act_hi_attachment`;

CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_attachment` */

/*Table structure for table `act_hi_comment` */

DROP TABLE IF EXISTS `act_hi_comment`;

CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_comment` */

/*Table structure for table `act_hi_detail` */

DROP TABLE IF EXISTS `act_hi_detail`;

CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_detail` */

/*Table structure for table `act_hi_identitylink` */

DROP TABLE IF EXISTS `act_hi_identitylink`;

CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_identitylink` */

/*Table structure for table `act_hi_procinst` */

DROP TABLE IF EXISTS `act_hi_procinst`;

CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_procinst` */

/*Table structure for table `act_hi_taskinst` */

DROP TABLE IF EXISTS `act_hi_taskinst`;

CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `CLAIM_TIME_` datetime DEFAULT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_taskinst` */

/*Table structure for table `act_hi_varinst` */

DROP TABLE IF EXISTS `act_hi_varinst`;

CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_varinst` */

/*Table structure for table `act_id_group` */

DROP TABLE IF EXISTS `act_id_group`;

CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_group` */

/*Table structure for table `act_id_info` */

DROP TABLE IF EXISTS `act_id_info`;

CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_info` */

/*Table structure for table `act_id_membership` */

DROP TABLE IF EXISTS `act_id_membership`;

CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_membership` */

/*Table structure for table `act_id_user` */

DROP TABLE IF EXISTS `act_id_user`;

CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_user` */

/*Table structure for table `act_re_deployment` */

DROP TABLE IF EXISTS `act_re_deployment`;

CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_deployment` */

insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`TENANT_ID_`,`DEPLOY_TIME_`) values ('1',NULL,NULL,'','2017-06-26 22:56:25');

/*Table structure for table `act_re_model` */

DROP TABLE IF EXISTS `act_re_model`;

CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_model` */

/*Table structure for table `act_re_procdef` */

DROP TABLE IF EXISTS `act_re_procdef`;

CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_procdef` */

insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`SUSPENSION_STATE_`,`TENANT_ID_`) values ('myProcess:1:4',1,'http://www.activiti.org/test','My process','myProcess',1,'1','MyProcess2.bpmn','MyProcess2.myProcess.png',NULL,0,1,'');

/*Table structure for table `act_ru_event_subscr` */

DROP TABLE IF EXISTS `act_ru_event_subscr`;

CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_event_subscr` */

/*Table structure for table `act_ru_execution` */

DROP TABLE IF EXISTS `act_ru_execution`;

CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_execution` */

/*Table structure for table `act_ru_identitylink` */

DROP TABLE IF EXISTS `act_ru_identitylink`;

CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_identitylink` */

/*Table structure for table `act_ru_job` */

DROP TABLE IF EXISTS `act_ru_job`;

CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_job` */

/*Table structure for table `act_ru_task` */

DROP TABLE IF EXISTS `act_ru_task`;

CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DUE_DATE_` datetime DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_task` */

/*Table structure for table `act_ru_variable` */

DROP TABLE IF EXISTS `act_ru_variable`;

CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_variable` */

/*Table structure for table `t_account_type_cert` */

DROP TABLE IF EXISTS `t_account_type_cert`;

CREATE TABLE `t_account_type_cert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accttype` char(1) DEFAULT NULL,
  `certid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_account_type_cert` */

/*Table structure for table `t_advertisement` */

DROP TABLE IF EXISTS `t_advertisement`;

CREATE TABLE `t_advertisement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `iconpath` varchar(255) DEFAULT NULL,
  `status` char(1) DEFAULT NULL COMMENT '0 - ËçâÁ®øÔºå 1 - Êú™ÂÆ°Ê†∏Ôºå 2 - ÂÆ°Ê†∏ÂÆåÊàêÔºå 3 - ÂèëÂ∏É',
  `url` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

/*Data for the table `t_advertisement` */

insert  into `t_advertisement`(`id`,`name`,`iconpath`,`status`,`url`,`userid`) values (18,'gg',NULL,'0','hh',1),(20,'aa',NULL,'0','aaa',NULL),(21,'bb',NULL,'0','bb',1),(22,'ddd',NULL,'0','ddd',1),(23,'eee',NULL,'0','eee',1),(24,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(25,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(26,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(27,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(28,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(29,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(30,'ee333',NULL,'0','ee',NULL),(31,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(32,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(33,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(34,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(35,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(36,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(37,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(38,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(39,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(40,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(41,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(42,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(43,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(44,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(45,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(46,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(47,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(48,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(49,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(50,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(51,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(52,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(53,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(54,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(55,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(56,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(57,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(58,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(59,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(60,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(61,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(62,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(63,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(64,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(65,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(66,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(67,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(68,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(69,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(70,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(71,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(72,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(73,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(74,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(75,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(76,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(77,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(78,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(79,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(80,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(81,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(82,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(83,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(84,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(85,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(86,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(87,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(88,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(89,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(90,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(91,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(92,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(93,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(94,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(95,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(96,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(97,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(98,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(99,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(100,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(101,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(102,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(103,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(104,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(105,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(106,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(107,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(108,'ee%','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(109,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(110,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(111,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(112,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(113,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(114,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(115,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(116,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(117,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(118,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(119,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(120,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(121,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(122,'ddd','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(123,'ee','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(124,'yyy','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(125,'ddd8','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(126,'ee7','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(127,'yyy6','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1),(128,'ddd5','71c8ba06-9a2b-4998-8b97-09d85c6c570a.jpg','1','ffff',1),(129,'ee4','9f967203-5e20-459d-8e6c-fb44956a3717.jpg','1','ee',1),(130,'yyy3','08c0e2ab-d421-486d-a64b-e7a537f3da04.jpg','1','yyy',1);

/*Table structure for table `t_cert` */

DROP TABLE IF EXISTS `t_cert`;

CREATE TABLE `t_cert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `t_cert` */

insert  into `t_cert`(`id`,`name`) values (1,'Ëê•‰∏öÊâßÁÖßÂâØÊú¨'),(2,'Á®éÂä°ÁôªËÆ∞ËØÅ'),(3,'ÁªÑÁªáÊú∫ÊûÑ‰ª£Á†ÅËØÅ'),(4,'Âçï‰ΩçÁôªËÆ∞ËØÅ‰ª∂'),(5,'	Ê≥ïÂÆö‰ª£Ë°®‰∫∫ËØÅ‰ª∂'),(6,'ÁªèËê•ËÄÖËØÅ‰ª∂'),(7,'ÊâãÊâßË∫´‰ªΩËØÅÁÖßÁâá');

/*Table structure for table `t_dictionary` */

DROP TABLE IF EXISTS `t_dictionary`;

CREATE TABLE `t_dictionary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `subcode` varchar(255) DEFAULT NULL,
  `val` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_dictionary` */

/*Table structure for table `t_member` */

DROP TABLE IF EXISTS `t_member`;

CREATE TABLE `t_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginacct` varchar(255) NOT NULL,
  `userpswd` char(32) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `authstatus` char(1) NOT NULL COMMENT 'ÂÆûÂêçËÆ§ËØÅÁä∂ÊÄÅ 0 - Êú™ÂÆûÂêçËÆ§ËØÅÔºå 1 - ÂÆûÂêçËÆ§ËØÅÁî≥ËØ∑‰∏≠Ôºå 2 - Â∑≤ÂÆûÂêçËÆ§ËØÅ',
  `usertype` char(1) NOT NULL COMMENT ' 0 - ‰∏™‰∫∫Ôºå 1 - ‰ºÅ‰∏ö',
  `realname` varchar(255) DEFAULT NULL,
  `cardnum` varchar(255) DEFAULT NULL,
  `accttype` char(1) DEFAULT NULL COMMENT '0 - ‰ºÅ‰∏öÔºå 1 - ‰∏™‰ΩìÔºå 2 - ‰∏™‰∫∫Ôºå 3 - ÊîøÂ∫ú',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_member` */

/*Table structure for table `t_member_address` */

DROP TABLE IF EXISTS `t_member_address`;

CREATE TABLE `t_member_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_member_address` */

/*Table structure for table `t_member_cert` */

DROP TABLE IF EXISTS `t_member_cert`;

CREATE TABLE `t_member_cert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) DEFAULT NULL,
  `certid` int(11) DEFAULT NULL,
  `iconpath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_member_cert` */

/*Table structure for table `t_member_project_follow` */

DROP TABLE IF EXISTS `t_member_project_follow`;

CREATE TABLE `t_member_project_follow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectid` int(11) DEFAULT NULL,
  `memberid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_member_project_follow` */

/*Table structure for table `t_message` */

DROP TABLE IF EXISTS `t_message`;

CREATE TABLE `t_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `senddate` char(19) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_message` */

/*Table structure for table `t_order` */

DROP TABLE IF EXISTS `t_order`;

CREATE TABLE `t_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) DEFAULT NULL,
  `projectid` int(11) DEFAULT NULL,
  `returnid` int(11) DEFAULT NULL,
  `ordernum` varchar(255) DEFAULT NULL,
  `createdate` char(19) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `rtncount` int(11) DEFAULT NULL,
  `status` char(1) DEFAULT NULL COMMENT '0 - ÂæÖ‰ªòÊ¨æÔºå 1 - ‰∫§ÊòìÂÆåÊàêÔºå 9 - ‰∫§ÊòìÂÖ≥Èó≠',
  `address` varchar(255) DEFAULT NULL,
  `invoice` char(1) DEFAULT NULL COMMENT '0 - ‰∏çÂºÄÂèëÁ•®Ôºå 1 - ÂºÄÂèëÁ•®',
  `invoictitle` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_order` */

/*Table structure for table `t_param` */

DROP TABLE IF EXISTS `t_param`;

CREATE TABLE `t_param` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `val` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `t_param` */

insert  into `t_param`(`id`,`name`,`code`,`val`) values (1,'È°πÁõÆÂàóË°®ÊòæÁ§∫Êï∞Èáè','project-list-size','12'),(2,'È¶ñÈ°µÈ°πÁõÆÊòæÁ§∫Êï∞Èáè','home-project-list-size','4');

/*Table structure for table `t_permission` */

DROP TABLE IF EXISTS `t_permission`;

CREATE TABLE `t_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `t_permission` */

insert  into `t_permission`(`id`,`pid`,`name`,`icon`,`url`) values (1,0,'Á≥ªÁªüÊùÉÈôêËèúÂçï','glyphicon glyphicon-th-list',NULL),(2,1,'ÊéßÂà∂Èù¢Êùø','glyphicon glyphicon-dashboard','main.htm'),(3,1,'ÊùÉÈôêÁÆ°ÁêÜ','glyphicon glyphicon glyphicon-tasks',NULL),(4,3,'Áî®Êà∑Áª¥Êä§','glyphicon glyphicon-user','user/index.htm'),(5,3,'ËßíËâ≤Áª¥Êä§','glyphicon glyphicon-king','role/index.htm'),(6,3,'ËÆ∏ÂèØÁª¥Êä§','glyphicon glyphicon-lock','permission/index.htm'),(7,1,'‰∏öÂä°ÂÆ°Ê†∏','glyphicon glyphicon-ok',NULL),(8,7,'ÂÆûÂêçËÆ§ËØÅÂÆ°Ê†∏','glyphicon glyphicon-check','auth_cert/index.htm'),(9,7,'ÂπøÂëäÂÆ°Ê†∏','glyphicon glyphicon-check','auth_adv/index.htm'),(10,7,'È°πÁõÆÂÆ°Ê†∏','glyphicon glyphicon-check','auth_project/index.htm'),(11,1,'‰∏öÂä°ÁÆ°ÁêÜ','glyphicon glyphicon-th-large',NULL),(12,11,'ËµÑË¥®Áª¥Êä§','glyphicon glyphicon-picture','cert/index.htm'),(13,11,'ÂàÜÁ±ªÁÆ°ÁêÜ','glyphicon glyphicon-equalizer','type/index.htm'),(14,11,'ÊµÅÁ®ãÁÆ°ÁêÜ','glyphicon glyphicon-random','process/index.htm'),(15,11,'ÂπøÂëäÁÆ°ÁêÜ','glyphicon glyphicon-hdd','advert/index.htm'),(16,11,'Ê∂àÊÅØÊ®°Êùø','glyphicon glyphicon-comment','message/index.htm'),(17,11,'È°πÁõÆÂàÜÁ±ª','glyphicon glyphicon-list','projectType/index.htm'),(18,11,'È°πÁõÆÊ†áÁ≠æ','glyphicon glyphicon-tags','tag/index.htm'),(19,1,'ÂèÇÊï∞ÁÆ°ÁêÜ','glyphicon glyphicon-list-alt','param/index.htm');

/*Table structure for table `t_project` */

DROP TABLE IF EXISTS `t_project`;

CREATE TABLE `t_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `money` bigint(11) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `status` char(1) DEFAULT NULL COMMENT '0 - Âç≥Â∞ÜÂºÄÂßãÔºå 1 - ‰ºóÁ≠π‰∏≠Ôºå 2 - ‰ºóÁ≠πÊàêÂäüÔºå 3 - ‰ºóÁ≠πÂ§±Ë¥•',
  `deploydate` char(10) DEFAULT NULL,
  `supportmoney` bigint(11) DEFAULT NULL,
  `supporter` int(11) DEFAULT NULL,
  `completion` int(3) DEFAULT NULL,
  `memberid` int(11) DEFAULT NULL,
  `createdate` char(19) DEFAULT NULL,
  `follower` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_project` */

/*Table structure for table `t_project_tag` */

DROP TABLE IF EXISTS `t_project_tag`;

CREATE TABLE `t_project_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectid` int(11) DEFAULT NULL,
  `tagid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_7` (`projectid`),
  KEY `FK_Reference_8` (`tagid`),
  CONSTRAINT `FK_Reference_7` FOREIGN KEY (`projectid`) REFERENCES `t_project` (`id`),
  CONSTRAINT `FK_Reference_8` FOREIGN KEY (`tagid`) REFERENCES `t_tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_project_tag` */

/*Table structure for table `t_project_type` */

DROP TABLE IF EXISTS `t_project_type`;

CREATE TABLE `t_project_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectid` int(11) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_5` (`projectid`),
  KEY `FK_Reference_6` (`typeid`),
  CONSTRAINT `FK_Reference_5` FOREIGN KEY (`projectid`) REFERENCES `t_project` (`id`),
  CONSTRAINT `FK_Reference_6` FOREIGN KEY (`typeid`) REFERENCES `t_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_project_type` */

/*Table structure for table `t_return` */

DROP TABLE IF EXISTS `t_return`;

CREATE TABLE `t_return` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectid` int(11) DEFAULT NULL,
  `type` char(1) DEFAULT NULL COMMENT '0 - ÂÆûÁâ©ÂõûÊä•Ôºå 1 ËôöÊãüÁâ©ÂìÅÂõûÊä•',
  `supportmoney` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL COMMENT '‚Äú0‚Äù‰∏∫‰∏çÈôêÂõûÊä•Êï∞Èáè',
  `signalpurchase` int(11) DEFAULT NULL,
  `purchase` int(11) DEFAULT NULL,
  `freight` int(11) DEFAULT NULL,
  `invoice` char(1) DEFAULT NULL COMMENT '0 - ‰∏çÂºÄÂèëÁ•®Ôºå 1 - ÂºÄÂèëÁ•®',
  `rtndate` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_return` */

/*Table structure for table `t_role` */

DROP TABLE IF EXISTS `t_role`;

CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `t_role` */

insert  into `t_role`(`id`,`name`) values (1,'PM - È°πÁõÆÁªèÁêÜ'),(2,'	SE - ËΩØ‰ª∂Â∑•Á®ãÂ∏à'),(3,'PG - Á®ãÂ∫èÂëò'),(4,'TL - ÁªÑÈïø'),(5,'GL - ÁªÑÈïø'),(6,'QA - ÂìÅË¥®‰øùËØÅ'),(7,'QC - ÂìÅË¥®ÊéßÂà∂'),(8,'	SA - ËΩØ‰ª∂Êû∂ÊûÑÂ∏à'),(9,'	CMO / CMS - ÈÖçÁΩÆÁÆ°ÁêÜÂëò');

/*Table structure for table `t_role_permission` */

DROP TABLE IF EXISTS `t_role_permission`;

CREATE TABLE `t_role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) DEFAULT NULL,
  `permissionid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_3` (`roleid`),
  KEY `FK_Reference_4` (`permissionid`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`roleid`) REFERENCES `t_role` (`id`),
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`permissionid`) REFERENCES `t_permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

/*Data for the table `t_role_permission` */

insert  into `t_role_permission`(`id`,`roleid`,`permissionid`) values (38,2,1),(39,2,2),(40,2,4),(41,2,5),(42,2,6),(43,1,1),(44,1,2),(45,1,3),(46,1,4),(47,1,5),(48,1,6),(49,1,7),(50,1,8),(51,1,9),(52,1,10),(53,1,11),(54,1,12),(55,1,13),(56,1,14),(57,1,15),(58,1,16),(59,1,17),(60,1,18),(61,1,19),(71,3,1),(72,3,2),(85,4,1),(86,4,2),(87,4,11),(88,4,12),(89,4,13),(90,4,14),(91,4,15),(92,4,16),(93,4,17),(94,4,18),(95,5,1),(96,5,2),(97,5,11),(98,5,12),(99,5,13),(100,5,14),(101,5,15),(102,5,16),(103,5,17),(104,5,18),(105,5,19),(106,6,1),(107,6,2),(108,8,1),(109,8,2),(110,9,1),(111,9,2),(112,7,1),(113,7,2);

/*Table structure for table `t_tag` */

DROP TABLE IF EXISTS `t_tag`;

CREATE TABLE `t_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_tag` */

/*Table structure for table `t_type` */

DROP TABLE IF EXISTS `t_type`;

CREATE TABLE `t_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_type` */

insert  into `t_type`(`id`,`name`,`remark`) values (1,'ÁßëÊäÄ','sss'),(2,'ÂÜú‰∏ö','xxx'),(3,'ÁîµÂ≠ê','xxx');

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginacct` varchar(255) NOT NULL,
  `userpswd` char(32) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `createtime` char(19) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`loginacct`,`userpswd`,`username`,`email`,`createtime`) values (1,'zhangsan','4297f44b13955235245b2497399d7a93','Âº†‰∏â','zhangsan@163.com','2017-06-15 13:27:38'),(17,'lisi','4297f44b13955235245b2497399d7a93','ÊùéÂõõ','lisi@163.com','2017-06-18 11:25:00');

/*Table structure for table `t_user_role` */

DROP TABLE IF EXISTS `t_user_role`;

CREATE TABLE `t_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_1` (`userid`),
  KEY `FK_Reference_2` (`roleid`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`roleid`) REFERENCES `t_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `t_user_role` */

insert  into `t_user_role`(`id`,`userid`,`roleid`) values (4,1,2),(5,1,1),(11,1,5),(14,17,6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
