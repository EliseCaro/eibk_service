/*
Navicat MySQL Data Transfer

Source Server         : 钱老板阿里云
Source Server Version : 50643
Source Host           : 127.0.0.1:3306
Source Database       : eibk

Target Server Type    : MYSQL
Target Server Version : 50643
File Encoding         : 65001

Date: 2021-04-01 20:11:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ek_admin_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `ek_admin_attachment`;
CREATE TABLE `ek_admin_attachment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '文件路径',
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '缩略图路径',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '文件链接',
  `mime` varchar(64) NOT NULL DEFAULT '' COMMENT '文件mime类型',
  `ext` char(4) NOT NULL DEFAULT '' COMMENT '文件类型',
  `size` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `md5` char(32) NOT NULL DEFAULT '' COMMENT '文件md5',
  `md5_key` char(40) NOT NULL DEFAULT '' COMMENT 'sha1 散列值',
  `driver` varchar(16) NOT NULL DEFAULT 'local' COMMENT '上传驱动',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=222 DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of ek_admin_attachment
-- ----------------------------
INSERT INTO `ek_admin_attachment` VALUES ('3', '1', 'about_me.png', 'FhmS88UbEI0EnGPEiNlJ5RUCWhQL', 'FhmS88UbEI0EnGPEiNlJ5RUCWhQL', 'FhmS88UbEI0EnGPEiNlJ5RUCWhQL', 'image/png', 'png', '179836', '', 'FhmS88UbEI0EnGPEiNlJ5RUCWhQL', 'qiniu', '1549947199', '1549947199', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('4', '1', '%E3%80%90%E5%89%91%E7%BD%91%E4%B8%89%E3%80%91%E6%A1%83%E8%8A%B1%E9%85%92%E5%87%89%5B%E9%AB%98%E6%B8%85%E7%89%88%5D.mp4', 'V6rprd1oRbLfRVdpp0nYgOajxOA=/ls_L3v_Xc8xNdHkN5uR6HnWLMIpA', 'Fc-gSAYyzBr7g02HfqrmoGN9pGI=/ls_L3v_Xc8xNdHkN5uR6HnWLMIpA', 'ls_L3v_Xc8xNdHkN5uR6HnWLMIpA', 'video/mp4', 'mp4', '62516238', '', 'ls_L3v_Xc8xNdHkN5uR6HnWLMIpA', 'qiniu', '1549947794', '1549947837', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('5', '1', 'Hoaprox+-+Ng%E1%BA%ABu+H%E1%BB%A9ng.mp4', 'V6rprd1oRbLfRVdpp0nYgOajxOA=/liQ7caFaUeXAECRCnYF9RZfewT0o', 'Fc-gSAYyzBr7g02HfqrmoGN9pGI=/liQ7caFaUeXAECRCnYF9RZfewT0o', 'liQ7caFaUeXAECRCnYF9RZfewT0o', 'video/mp4', 'mp4', '70348212', '', 'liQ7caFaUeXAECRCnYF9RZfewT0o', 'qiniu', '1549947828', '1549947852', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('6', '1', '%E5%A4%A7%E7%90%86%E4%B8%80%E6%97%A5%E6%B8%B8.mp4', 'V6rprd1oRbLfRVdpp0nYgOajxOA=/lvSIuY0BISWb7z5HTB_h_VvtEEPf', 'Fc-gSAYyzBr7g02HfqrmoGN9pGI=/lvSIuY0BISWb7z5HTB_h_VvtEEPf', 'lvSIuY0BISWb7z5HTB_h_VvtEEPf', 'video/mp4', 'mp4', '67927251', '', 'lvSIuY0BISWb7z5HTB_h_VvtEEPf', 'qiniu', '1549947859', '1549947877', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('7', '1', '%E5%A4%A7%E9%B1%BC%E6%B5%B7%E6%A3%A0.mp4', 'V6rprd1oRbLfRVdpp0nYgOajxOA=/lhGjYRc5zLPbNkSYM8mwr16_6q4Y', 'Fc-gSAYyzBr7g02HfqrmoGN9pGI=/lhGjYRc5zLPbNkSYM8mwr16_6q4Y', 'lhGjYRc5zLPbNkSYM8mwr16_6q4Y', 'video/mp4', 'mp4', '16347232', '', 'lhGjYRc5zLPbNkSYM8mwr16_6q4Y', 'qiniu', '1549947873', '1549947899', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('8', '1', '%E7%8B%AC%E7%AB%8B%E5%AF%92%E6%B1%9F.mp4', 'V6rprd1oRbLfRVdpp0nYgOajxOA=/lsDbgWMc0Mxixq6RoK3XVjSaDnx_', 'Fc-gSAYyzBr7g02HfqrmoGN9pGI=/lsDbgWMc0Mxixq6RoK3XVjSaDnx_', 'lsDbgWMc0Mxixq6RoK3XVjSaDnx_', 'video/mp4', 'mp4', '75118060', '', 'lsDbgWMc0Mxixq6RoK3XVjSaDnx_', 'qiniu', '1549947895', '1549947955', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('9', '1', '%E5%89%91%E4%B8%89%E3%80%8A%E6%8B%82%E9%9B%AA%E3%80%8B.mp4', 'V6rprd1oRbLfRVdpp0nYgOajxOA=/lqGhTLwI0ryCEg6e-cA66Gg-qeRj', 'Fc-gSAYyzBr7g02HfqrmoGN9pGI=/lqGhTLwI0ryCEg6e-cA66Gg-qeRj', 'lqGhTLwI0ryCEg6e-cA66Gg-qeRj', 'video/mp4', 'mp4', '156680788', '', 'lqGhTLwI0ryCEg6e-cA66Gg-qeRj', 'qiniu', '1549947937', '1549947987', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('10', '1', '%E5%89%91%E7%BD%91%E5%8F%81%E5%89%A7%E6%83%85%E6%AD%8C%E3%80%8A%E7%9C%89%E9%97%B4%E9%9B%AA%E3%80%8B.mp4', 'V6rprd1oRbLfRVdpp0nYgOajxOA=/lszjtWpI7BD7kwLV7UfeZCvjajM1', 'Fc-gSAYyzBr7g02HfqrmoGN9pGI=/lszjtWpI7BD7kwLV7UfeZCvjajM1', 'lszjtWpI7BD7kwLV7UfeZCvjajM1', 'video/mp4', 'mp4', '67636229', '', 'lszjtWpI7BD7kwLV7UfeZCvjajM1', 'qiniu', '1549947967', '1549947999', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('11', '1', '%E5%A4%A9%E6%B6%AF%EF%BC%8C%E8%87%AA%E5%B7%B1%E6%8A%8A%E8%87%AA%E5%B7%B1%E7%BE%8E%E5%93%AD%E7%9A%84%E4%B8%80%E9%A6%96%E6%AD%8C.mp4', 'V6rprd1oRbLfRVdpp0nYgOajxOA=/lj3tfDMnfWvPkzv8G-oOaSD_J3mC', 'Fc-gSAYyzBr7g02HfqrmoGN9pGI=/lj3tfDMnfWvPkzv8G-oOaSD_J3mC', 'lj3tfDMnfWvPkzv8G-oOaSD_J3mC', 'video/mp4', 'mp4', '132233578', '', 'lj3tfDMnfWvPkzv8G-oOaSD_J3mC', 'qiniu', '1549948001', '1549948049', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('12', '1', '%E5%85%94%E7%BA%B8%E9%85%B1%E3%80%91+%E7%9B%B8%E6%80%9D%E5%BC%95+%E2%80%94%E3%80%8A%E5%A4%A9%E6%B6%AF%E6%98%8E%E6%9C%88%E5%88%80OL%E3%80%8B%E8%87%AA%E5%88%B6GMV+%E3%80%90QAQ%E6%B6%88%E5%A4%B1%E4%BA%86%E5%8D%8A%E4%B8%AA%E5%A4%9A%E6%9C%88%E6%88%91%E5%8F%88%', 'V6rprd1oRbLfRVdpp0nYgOajxOA=/lrKnWoG_VgO7lWtQ7-Gjyb4Qdk1Z', 'Fc-gSAYyzBr7g02HfqrmoGN9pGI=/lrKnWoG_VgO7lWtQ7-Gjyb4Qdk1Z', 'lrKnWoG_VgO7lWtQ7-Gjyb4Qdk1Z', 'video/mp4', 'mp4', '150498266', '', 'lrKnWoG_VgO7lWtQ7-Gjyb4Qdk1Z', 'qiniu', '1549948039', '1549948086', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('13', '1', '%E5%8B%BF%E5%BF%98%E5%B8%88%E6%81%A9%E3%80%8A%E5%A6%82%E5%AF%84%E3%80%8B.mp4', 'V6rprd1oRbLfRVdpp0nYgOajxOA=/lpp6Zzilj0jwlEJ_YFlKBDakE6ca', 'Fc-gSAYyzBr7g02HfqrmoGN9pGI=/lpp6Zzilj0jwlEJ_YFlKBDakE6ca', 'lpp6Zzilj0jwlEJ_YFlKBDakE6ca', 'video/mp4', 'mp4', '113370560', '', 'lpp6Zzilj0jwlEJ_YFlKBDakE6ca', 'qiniu', '1549948075', '1549948116', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('14', '1', 'APICloud-Studio.rar', 'ls53RO6TxKZO8WTmLUGuTCd4-FPR', 'ls53RO6TxKZO8WTmLUGuTCd4-FPR', 'ls53RO6TxKZO8WTmLUGuTCd4-FPR', 'application/x-rar-compressed', 'rar', '268112141', '', 'ls53RO6TxKZO8WTmLUGuTCd4-FPR', 'qiniu', '1549948188', '1549948188', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('15', '1', 'APICLOUD%E6%A8%A1%E5%9D%97.rar', 'liesvgcVVkziZpfGpx6277qxi00u', 'liesvgcVVkziZpfGpx6277qxi00u', 'liesvgcVVkziZpfGpx6277qxi00u', 'application/x-rar-compressed', 'rar', '256733760', '', 'liesvgcVVkziZpfGpx6277qxi00u', 'qiniu', '1549948270', '1549948270', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('16', '1', 'C++%E7%8E%AF%E5%A2%83.rar', 'lnIKN_Mh8TSLFoqmPL2ynVnjnt1t', 'lnIKN_Mh8TSLFoqmPL2ynVnjnt1t', 'lnIKN_Mh8TSLFoqmPL2ynVnjnt1t', 'application/x-rar-compressed', 'rar', '83259621', '', 'lnIKN_Mh8TSLFoqmPL2ynVnjnt1t', 'qiniu', '1549948341', '1549948341', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('17', '1', 'eibk.com_%E4%BA%91%E7%AC%94%E8%AE%B0%E6%89%93%E5%8C%85%E7%A8%8B%E5%BA%8F_electron.rar', 'Flpll286S0wZZ1D8a5DUetvh7Hqo', 'Flpll286S0wZZ1D8a5DUetvh7Hqo', 'Flpll286S0wZZ1D8a5DUetvh7Hqo', 'application/x-rar-compressed', 'rar', '21363', '', 'Flpll286S0wZZ1D8a5DUetvh7Hqo', 'qiniu', '1549948354', '1549948354', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('18', '1', 'eibkGo%E8%AF%AD%E8%A8%80.rar', 'loCCbs6RsM-_h4mSbXCMxbHX4Trb', 'loCCbs6RsM-_h4mSbXCMxbHX4Trb', 'loCCbs6RsM-_h4mSbXCMxbHX4Trb', 'application/x-rar-compressed', 'rar', '8722304', '', 'loCCbs6RsM-_h4mSbXCMxbHX4Trb', 'qiniu', '1549948367', '1549948367', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('19', '1', 'git%E5%AF%86%E9%92%A5.rar', 'FlZK0DUjWTpb6238OdZ9NnH2yGzF', 'FlZK0DUjWTpb6238OdZ9NnH2yGzF', 'FlZK0DUjWTpb6238OdZ9NnH2yGzF', 'application/x-rar-compressed', 'rar', '1858', '', 'FlZK0DUjWTpb6238OdZ9NnH2yGzF', 'qiniu', '1549948377', '1549948377', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('20', '1', 'Landui.rar', 'lpMQtU4UHYUikty0nnjIsjvahp11', 'lpMQtU4UHYUikty0nnjIsjvahp11', 'lpMQtU4UHYUikty0nnjIsjvahp11', 'application/x-rar-compressed', 'rar', '109771927', '', 'lpMQtU4UHYUikty0nnjIsjvahp11', 'qiniu', '1549948401', '1549948401', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('21', '1', 'navicat%E7%BB%BF%E8%89%B2+%E5%AF%86%E7%A0%81.zip', 'lgfjucMkUoeavoSlHfUiirU8zDHp', 'lgfjucMkUoeavoSlHfUiirU8zDHp', 'lgfjucMkUoeavoSlHfUiirU8zDHp', 'application/x-zip-compressed', 'zip', '21551354', '', 'lgfjucMkUoeavoSlHfUiirU8zDHp', 'qiniu', '1549948463', '1549948463', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('22', '1', 'Phalcon+%E6%96%87%E6%A1%A3.rar', 'Fm2d94JBUWL1gEMztJH7aKWN3ecd', 'Fm2d94JBUWL1gEMztJH7aKWN3ecd', 'Fm2d94JBUWL1gEMztJH7aKWN3ecd', 'application/x-rar-compressed', 'rar', '547628', '', 'Fm2d94JBUWL1gEMztJH7aKWN3ecd', 'qiniu', '1549948472', '1549948472', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('23', '1', 'phalcon-devtools-master.rar', 'FmPx9_e95a2JD7VhhPPxOML5Qbv8', 'FmPx9_e95a2JD7VhhPPxOML5Qbv8', 'FmPx9_e95a2JD7VhhPPxOML5Qbv8', 'application/x-rar-compressed', 'rar', '1823526', '', 'FmPx9_e95a2JD7VhhPPxOML5Qbv8', 'qiniu', '1549948479', '1549948479', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('24', '1', 'PhalconYang-Phalcon%E9%AA%A8%E6%9E%B6.rar', 'Fsh_0iBSO1IqYwpPSnECb8yog9Bf', 'Fsh_0iBSO1IqYwpPSnECb8yog9Bf', 'Fsh_0iBSO1IqYwpPSnECb8yog9Bf', 'application/x-rar-compressed', 'rar', '41549', '', 'Fsh_0iBSO1IqYwpPSnECb8yog9Bf', 'qiniu', '1549948484', '1549948484', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('25', '1', 'PingFang+SC_%E5%AD%97%E4%BD%93.zip', 'lvfR8CKxOoA2T5SJTaUbbUp3zBdy', 'lvfR8CKxOoA2T5SJTaUbbUp3zBdy', 'lvfR8CKxOoA2T5SJTaUbbUp3zBdy', 'application/x-zip-compressed', 'zip', '104930164', '', 'lvfR8CKxOoA2T5SJTaUbbUp3zBdy', 'qiniu', '1549948506', '1549948506', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('26', '1', 'react%E6%9C%AC%E5%9C%B0%E5%82%A8%E5%AD%98.txt', 'FrQoCuJ_tUnEl274051bS4kg-L5v', 'FrQoCuJ_tUnEl274051bS4kg-L5v', 'FrQoCuJ_tUnEl274051bS4kg-L5v', 'text/plain', 'txt', '68', '', 'FrQoCuJ_tUnEl274051bS4kg-L5v', 'qiniu', '1549948516', '1549948516', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('27', '1', 'react%E5%BC%80%E5%8F%91%E8%B1%86%E7%93%A3fm%E9%9F%B3%E4%B9%90%E6%92%AD%E6%94%BE%E5%99%A8.zip', 'FvI8TpqDTKWM7PScelYfhtGoMd12', 'FvI8TpqDTKWM7PScelYfhtGoMd12', 'FvI8TpqDTKWM7PScelYfhtGoMd12', 'application/x-zip-compressed', 'zip', '78584', '', 'FvI8TpqDTKWM7PScelYfhtGoMd12', 'qiniu', '1549948525', '1549948525', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('28', '1', 'Win+Mysql5.7+PHP7.1+VC%E5%BA%932013+32%E4%BD%8D64%E4%BD%8D+VC14%2C64%E4%BD%8D.rar', 'lmMVz0XMDbHXBOFOi76oThg740_n', 'lmMVz0XMDbHXBOFOi76oThg740_n', 'lmMVz0XMDbHXBOFOi76oThg740_n', 'application/x-rar-compressed', 'rar', '437912124', '', 'lmMVz0XMDbHXBOFOi76oThg740_n', 'qiniu', '1549948615', '1549948615', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('29', '1', '%E9%98%BF%E9%87%8C%E4%BA%91%E7%9F%AD%E4%BF%A1.rar', 'FpoT6CpLjhAbGblm82-gPLi2hmWh', 'FpoT6CpLjhAbGblm82-gPLi2hmWh', 'FpoT6CpLjhAbGblm82-gPLi2hmWh', 'application/x-rar-compressed', 'rar', '1466980', '', 'FpoT6CpLjhAbGblm82-gPLi2hmWh', 'qiniu', '1549948623', '1549948623', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('30', '1', '%E7%88%B1%E8%B4%9D%E5%A3%B3golang%E7%89%88.rar', 'lhf2BK8MFHhsqO--P8jotALoqxN8', 'lhf2BK8MFHhsqO--P8jotALoqxN8', 'lhf2BK8MFHhsqO--P8jotALoqxN8', 'application/x-rar-compressed', 'rar', '14783703', '', 'lhf2BK8MFHhsqO--P8jotALoqxN8', 'qiniu', '1549948642', '1549948642', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('31', '1', '%E7%88%B1%E8%B4%9D%E5%A3%B3Icon.png', 'Fv0eWcY6DOZWUe7WlpsX3_cnpr58', 'Fv0eWcY6DOZWUe7WlpsX3_cnpr58', 'Fv0eWcY6DOZWUe7WlpsX3_cnpr58', 'image/png', 'png', '22955', '', 'Fv0eWcY6DOZWUe7WlpsX3_cnpr58', 'qiniu', '1549948649', '1549948649', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('32', '1', '%E7%88%B1%E8%B4%9D%E5%A3%B3%E6%B5%B7%E6%8A%A5.rar', 'loRYXubDEZum0NuyEpR0cEGtihDj', 'loRYXubDEZum0NuyEpR0cEGtihDj', 'loRYXubDEZum0NuyEpR0cEGtihDj', 'application/x-rar-compressed', 'rar', '19552302', '', 'loRYXubDEZum0NuyEpR0cEGtihDj', 'qiniu', '1549948665', '1549948665', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('33', '1', '%E7%88%B1%E8%B4%9D%E5%A3%B3%E8%BD%AE%E6%92%AD%E5%9B%BE.rar', 'FmPzI560XVK8DCqDRcNRZxhPUJzP', 'FmPzI560XVK8DCqDRcNRZxhPUJzP', 'FmPzI560XVK8DCqDRcNRZxhPUJzP', 'application/x-rar-compressed', 'rar', '56843', '', 'FmPzI560XVK8DCqDRcNRZxhPUJzP', 'qiniu', '1549948672', '1549948672', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('34', '1', '%E8%B4%9D%E5%A3%B3%E4%BA%91%E6%95%B4%E5%A5%97%E5%A4%87%E4%BB%BD.zip', 'lmNOzU9_s16e01HJdJVhVvzMJY0k', 'lmNOzU9_s16e01HJdJVhVvzMJY0k', 'lmNOzU9_s16e01HJdJVhVvzMJY0k', 'application/x-zip-compressed', 'zip', '109063112', '', 'lmNOzU9_s16e01HJdJVhVvzMJY0k', 'qiniu', '1549948718', '1549948718', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('35', '1', '%E5%8D%9A%E5%AE%A2psd.zip', 'lpQSbzicPx24vg0XULTlldq3FpNn', 'lpQSbzicPx24vg0XULTlldq3FpNn', 'lpQSbzicPx24vg0XULTlldq3FpNn', 'application/x-zip-compressed', 'zip', '28605431', '', 'lpQSbzicPx24vg0XULTlldq3FpNn', 'qiniu', '1549948730', '1549948730', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('36', '1', '%E4%B8%8D%E6%89%93%E5%B9%BF%E5%91%8A%E7%9A%84rar.rar', 'FuCTSmCNb4nE3uT4bykcLgMKtF-e', 'FuCTSmCNb4nE3uT4bykcLgMKtF-e', 'FuCTSmCNb4nE3uT4bykcLgMKtF-e', 'application/x-rar-compressed', 'rar', '3144685', '', 'FuCTSmCNb4nE3uT4bykcLgMKtF-e', 'qiniu', '1549948743', '1549948743', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('37', '1', '%E7%AC%AC%E4%B8%89%E6%96%B9%E7%99%BB%E5%BD%95%E6%8E%A5%E5%8F%A3%E5%A4%A7%E5%85%A8.rar', 'FrhDPbHO9GQiSMWnniqyf0kZr1Kh', 'FrhDPbHO9GQiSMWnniqyf0kZr1Kh', 'FrhDPbHO9GQiSMWnniqyf0kZr1Kh', 'application/x-rar-compressed', 'rar', '30301', '', 'FrhDPbHO9GQiSMWnniqyf0kZr1Kh', 'qiniu', '1549948759', '1549948759', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('38', '1', '%E8%B4%B9%E5%B0%94%E5%BA%B7%E9%AA%A8%E6%9E%B6.rar', 'FvoGfZ1os-ajkBKYh96Vk3oetvXy', 'FvoGfZ1os-ajkBKYh96Vk3oetvXy', 'FvoGfZ1os-ajkBKYh96Vk3oetvXy', 'application/x-rar-compressed', 'rar', '12917', '', 'FvoGfZ1os-ajkBKYh96Vk3oetvXy', 'qiniu', '1549948766', '1549948766', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('39', '1', '%E6%90%9E%E7%AC%91%E7%AC%94%E8%AE%B0%E7%AC%91%E8%AF%9D%E7%A8%8B%E5%BA%8F%28%E5%86%85%E5%90%AB%E6%9B%B4%E6%96%B0%E6%96%87%E4%BB%B6%29.zip', 'lhNPlooAqSVse1OOwGqzKHFonsW8', 'lhNPlooAqSVse1OOwGqzKHFonsW8', 'lhNPlooAqSVse1OOwGqzKHFonsW8', 'application/x-zip-compressed', 'zip', '57751170', '', 'lhNPlooAqSVse1OOwGqzKHFonsW8', 'qiniu', '1549948787', '1549948787', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('40', '1', '%E8%B0%B7%E6%AD%8C%E8%AE%BF%E9%97%AE%E5%8A%A9%E6%89%8B2.zip', 'Fm9KblCHUZ8W9EagfvM0owBkmOU7', 'Fm9KblCHUZ8W9EagfvM0owBkmOU7', 'Fm9KblCHUZ8W9EagfvM0owBkmOU7', 'application/x-zip-compressed', 'zip', '246371', '', 'Fm9KblCHUZ8W9EagfvM0owBkmOU7', 'qiniu', '1549948794', '1549948794', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('41', '1', '%E6%B5%B7%E8%B1%9A%E4%B8%80%E6%9C%B5%E8%8A%B1%E7%89%88%E6%9C%AC.rar', 'ltjBkXjG_DwBXZggPlQwDUGuPMOK', 'ltjBkXjG_DwBXZggPlQwDUGuPMOK', 'ltjBkXjG_DwBXZggPlQwDUGuPMOK', 'application/x-rar-compressed', 'rar', '17957876', '', 'ltjBkXjG_DwBXZggPlQwDUGuPMOK', 'qiniu', '1549948809', '1549948809', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('42', '1', '%E6%9C%BA%E5%9C%BA+%E7%89%A9%E6%B5%81+%E6%B1%A1%E6%B0%B4.rar', 'liLBhKxrgd5jY74uCuRUP8pEpHci', 'liLBhKxrgd5jY74uCuRUP8pEpHci', 'liLBhKxrgd5jY74uCuRUP8pEpHci', 'application/x-rar-compressed', 'rar', '313369002', '', 'liLBhKxrgd5jY74uCuRUP8pEpHci', 'qiniu', '1549948857', '1549948857', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('43', '1', '%E7%AE%80%E7%B9%81%E5%88%87%E6%8D%A2%E5%AE%9E%E7%8E%B0.zip', 'FooGUartujT53RBgN4aCn0fO4iLQ', 'FooGUartujT53RBgN4aCn0fO4iLQ', 'FooGUartujT53RBgN4aCn0fO4iLQ', 'application/x-zip-compressed', 'zip', '12186', '', 'FooGUartujT53RBgN4aCn0fO4iLQ', 'qiniu', '1549948872', '1549948872', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('44', '1', '%E6%88%AA%E5%9B%BE%E5%AE%9A%E4%BD%8D%E8%BD%AF%E4%BB%B6.zip', 'Fudumn8zOAv3PlHywKfmtvJcQ4Rx', 'Fudumn8zOAv3PlHywKfmtvJcQ4Rx', 'Fudumn8zOAv3PlHywKfmtvJcQ4Rx', 'application/x-zip-compressed', 'zip', '411285', '', 'Fudumn8zOAv3PlHywKfmtvJcQ4Rx', 'qiniu', '1549948880', '1549948880', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('45', '1', '%E8%93%9D%E9%98%9F%E5%BE%AE%E4%BF%A1%E5%B0%8F%E7%A8%8B%E5%BA%8F.rar', 'FmoIubsfmW_I25fxtIKgQ-TXI_yq', 'FmoIubsfmW_I25fxtIKgQ-TXI_yq', 'FmoIubsfmW_I25fxtIKgQ-TXI_yq', 'application/x-rar-compressed', 'rar', '918094', '', 'FmoIubsfmW_I25fxtIKgQ-TXI_yq', 'qiniu', '1549948888', '1549948888', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('46', '1', '%E9%BA%BB%E7%89%87.rar', 'lpyTgnUFoVX4rVC2mcbRhmi3BN9L', 'lpyTgnUFoVX4rVC2mcbRhmi3BN9L', 'lpyTgnUFoVX4rVC2mcbRhmi3BN9L', 'application/x-rar-compressed', 'rar', '51826138', '', 'lpyTgnUFoVX4rVC2mcbRhmi3BN9L', 'qiniu', '1549948904', '1549948904', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('47', '1', '%E9%B8%9F%E4%BA%91%E4%BB%A3%E7%90%86%E5%B9%B3%E5%8F%B0.rar', 'lr4z35-ay3MbqbFBCbuXuLhHdYbD', 'lr4z35-ay3MbqbFBCbuXuLhHdYbD', 'lr4z35-ay3MbqbFBCbuXuLhHdYbD', 'application/x-rar-compressed', 'rar', '47235345', '', 'lr4z35-ay3MbqbFBCbuXuLhHdYbD', 'qiniu', '1549948918', '1549948918', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('48', '1', '%E9%92%B1%E8%80%81%E6%9D%BF%E9%98%9F%E5%88%97%E4%BB%BB%E5%8A%A1.rar', 'FiW6fFmWRoxqzdysKNCPjexXKzoW', 'FiW6fFmWRoxqzdysKNCPjexXKzoW', 'FiW6fFmWRoxqzdysKNCPjexXKzoW', 'application/x-rar-compressed', 'rar', '3235', '', 'FiW6fFmWRoxqzdysKNCPjexXKzoW', 'qiniu', '1549948929', '1549948929', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('49', '1', '%E8%BA%AB%E4%BB%BD%E8%AF%81+%E5%90%8D%E7%89%87.rar', 'FukDrmVLHSafv8IqoMD0gKyft5yE', 'FukDrmVLHSafv8IqoMD0gKyft5yE', 'FukDrmVLHSafv8IqoMD0gKyft5yE', 'application/x-rar-compressed', 'rar', '369231', '', 'FukDrmVLHSafv8IqoMD0gKyft5yE', 'qiniu', '1549948937', '1549948937', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('50', '1', '%E6%95%B0%E6%8D%AE%E5%BA%93%E8%AE%BE%E8%AE%A1%E2%80%94%E2%80%94%E8%AF%84%E8%AE%BA%E5%9B%9E%E5%A4%8D%E5%8A%9F%E8%83%BD.png', 'FrzOXlZCa2LquLsCsS0Ec4x2mLKu', 'FrzOXlZCa2LquLsCsS0Ec4x2mLKu', 'FrzOXlZCa2LquLsCsS0Ec4x2mLKu', 'image/png', 'png', '527767', '', 'FrzOXlZCa2LquLsCsS0Ec4x2mLKu', 'qiniu', '1549948944', '1549948944', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('51', '1', '%E7%BD%91%E7%AB%99%E7%82%B9%E8%B5%9E+%E8%AF%84%E8%AE%BA+%E5%9B%9E%E5%A4%8D+%E6%95%B0%E6%8D%AE%E5%BA%93%E8%AE%BE%E8%AE%A1.png', 'FjUljpT2Uzdo0OTKGOsKVE6K-7sj', 'FjUljpT2Uzdo0OTKGOsKVE6K-7sj', 'FjUljpT2Uzdo0OTKGOsKVE6K-7sj', 'image/png', 'png', '205836', '', 'FjUljpT2Uzdo0OTKGOsKVE6K-7sj', 'qiniu', '1549948951', '1549948951', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('52', '1', '%E6%B8%A9%E9%A6%A8%E6%B5%AA%E6%BC%AB%E7%9A%84%E8%A1%A8%E7%99%BD%E7%A5%9E%E5%99%A8HTML5%E7%88%B1%E5%BF%83%E5%8A%A8%E7%94%BB%E7%89%B9%E6%95%88.zip', 'FqLyQXvGKTJJxqHsAKYCY9Lvpogd', 'FqLyQXvGKTJJxqHsAKYCY9Lvpogd', 'FqLyQXvGKTJJxqHsAKYCY9Lvpogd', 'application/x-zip-compressed', 'zip', '144329', '', 'FqLyQXvGKTJJxqHsAKYCY9Lvpogd', 'qiniu', '1549948961', '1549948961', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('53', '1', '%E5%B0%8F%E9%A3%9E%E6%9C%BA.rar', 'FiAvvGG0q5u50XUDdzrH8NN7UTKG', 'FiAvvGG0q5u50XUDdzrH8NN7UTKG', 'FiAvvGG0q5u50XUDdzrH8NN7UTKG', 'application/x-rar-compressed', 'rar', '777259', '', 'FiAvvGG0q5u50XUDdzrH8NN7UTKG', 'qiniu', '1549948969', '1549948969', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('54', '1', '%E8%AE%B8%E5%8D%9A%E5%A3%AB%E7%88%AC%E8%99%AB.rar', 'FvT3oLTKiKDrH3mngK6ypG_-bWM1', 'FvT3oLTKiKDrH3mngK6ypG_-bWM1', 'FvT3oLTKiKDrH3mngK6ypG_-bWM1', 'application/x-rar-compressed', 'rar', '14568', '', 'FvT3oLTKiKDrH3mngK6ypG_-bWM1', 'qiniu', '1549948975', '1549948975', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('55', '1', '%E6%9D%A8%E6%B0%B8%E9%A3%9E%E5%A4%B4%E5%83%8FPSD.rar', 'loGXW1qi95tJ38gbaocry3LFg04F', 'loGXW1qi95tJ38gbaocry3LFg04F', 'loGXW1qi95tJ38gbaocry3LFg04F', 'application/x-rar-compressed', 'rar', '4256799', '', 'loGXW1qi95tJ38gbaocry3LFg04F', 'qiniu', '1549948982', '1549948982', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('56', '1', '%E5%BC%A0%E4%BF%A1%E5%8D%8E%E6%BA%90%E4%BB%A3%E7%A0%81.rar', 'lstwgAsfMkqtPFZQtNcD2-A-lpUn', 'lstwgAsfMkqtPFZQtNcD2-A-lpUn', 'lstwgAsfMkqtPFZQtNcD2-A-lpUn', 'application/x-rar-compressed', 'rar', '453914401', '', 'lstwgAsfMkqtPFZQtNcD2-A-lpUn', 'qiniu', '1549949116', '1549949116', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('57', '1', '%E7%9B%B4%E6%92%AD%E5%86%85%E5%AE%B9.rar', 'FsFY1ivA9r1tO8KBw_zMHASyQYuE', 'FsFY1ivA9r1tO8KBw_zMHASyQYuE', 'FsFY1ivA9r1tO8KBw_zMHASyQYuE', 'application/x-rar-compressed', 'rar', '96558', '', 'FsFY1ivA9r1tO8KBw_zMHASyQYuE', 'qiniu', '1549949125', '1549949125', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('58', '1', '%E4%B8%AD%E6%96%87%E6%B1%89%E5%AD%97%E8%BD%AC%E5%8C%96%E6%88%90%E6%8B%BC%E9%9F%B3js%E4%BB%A3%E7%A0%81.zip', 'FkN5Wc6CCFJqVNhT4d_SIYgneA9F', 'FkN5Wc6CCFJqVNhT4d_SIYgneA9F', 'FkN5Wc6CCFJqVNhT4d_SIYgneA9F', 'application/x-zip-compressed', 'zip', '77363', '', 'FkN5Wc6CCFJqVNhT4d_SIYgneA9F', 'qiniu', '1549949132', '1549949132', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('59', '1', '%E6%B3%A8%E5%86%8C%E8%A1%A8%E5%8D%95%E5%AF%86%E7%A0%81%E9%AA%8C%E8%AF%81%E6%8F%90%E7%A4%BA%E4%BB%A3%E7%A0%81.zip', 'FhQghjBOP-wl_Zb1POn1BMmE9so0', 'FhQghjBOP-wl_Zb1POn1BMmE9so0', 'FhQghjBOP-wl_Zb1POn1BMmE9so0', 'application/x-zip-compressed', 'zip', '19107', '', 'FhQghjBOP-wl_Zb1POn1BMmE9so0', 'qiniu', '1549949139', '1549949139', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('60', '1', '%E8%87%AA%E9%80%82%E5%BA%94%E5%9B%BE%E7%89%87%E5%A4%A7%E5%B0%8F.zip', 'Fq8A_nPolO9IOveMFKf2-ZtBZ-B7', 'Fq8A_nPolO9IOveMFKf2-ZtBZ-B7', 'Fq8A_nPolO9IOveMFKf2-ZtBZ-B7', 'application/x-zip-compressed', 'zip', '638802', '', 'Fq8A_nPolO9IOveMFKf2-ZtBZ-B7', 'qiniu', '1549949146', '1549949146', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('61', '1', 'lh79zV9GgCa_cAImbFXQwqcqXHK8.jpg', 'FmioyYCSxURxbCFBdo5cR1922FRZ', 'FmioyYCSxURxbCFBdo5cR1922FRZ', 'FmioyYCSxURxbCFBdo5cR1922FRZ', 'image/jpeg', 'jpg', '38207', '', 'FmioyYCSxURxbCFBdo5cR1922FRZ', 'qiniu', '1549949203', '1549949203', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('62', '1', 'FuOPQb0Ue7YCIIGwb7riDL0WhjtM.jpg', 'FveRLQenR0YHyBhleypd66syJy3p', 'FveRLQenR0YHyBhleypd66syJy3p', 'FveRLQenR0YHyBhleypd66syJy3p', 'image/jpeg', 'jpg', '34916', '', 'FveRLQenR0YHyBhleypd66syJy3p', 'qiniu', '1549949217', '1549949217', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('63', '1', 'FkiIRMXF1e5VdLPSEpMUVY-1dk7K.jpg', 'FotPFrF8XU6rFqXi_ge1sA2lxVf6', 'FotPFrF8XU6rFqXi_ge1sA2lxVf6', 'FotPFrF8XU6rFqXi_ge1sA2lxVf6', 'image/jpeg', 'jpg', '68363', '', 'FotPFrF8XU6rFqXi_ge1sA2lxVf6', 'qiniu', '1549949311', '1549949311', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('64', '1', 'FgeQrgq6tkfhO7_78BY3_kgWv7Ro.jpg', 'FnY3Hcnblx2ywQGwElTHhQXu1VlM', 'FnY3Hcnblx2ywQGwElTHhQXu1VlM', 'FnY3Hcnblx2ywQGwElTHhQXu1VlM', 'image/jpeg', 'jpg', '40169', '', 'FnY3Hcnblx2ywQGwElTHhQXu1VlM', 'qiniu', '1549949533', '1549949533', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('65', '1', 'FgWX0Vl_bhTFEWMIuvcALsRohq2u.jpg', 'FtbT07lPLv8ijLTtT5JDxjbi8N_b', 'FtbT07lPLv8ijLTtT5JDxjbi8N_b', 'FtbT07lPLv8ijLTtT5JDxjbi8N_b', 'image/jpeg', 'jpg', '40867', '', 'FtbT07lPLv8ijLTtT5JDxjbi8N_b', 'qiniu', '1549949533', '1549949533', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('66', '1', 'Fh-5mktGBw-7IPsxn1gH8cFj6MN5.jpg', 'FvP_nQV_V-FWQcjvRPQl9upi1QiU', 'FvP_nQV_V-FWQcjvRPQl9upi1QiU', 'FvP_nQV_V-FWQcjvRPQl9upi1QiU', 'image/jpeg', 'jpg', '44775', '', 'FvP_nQV_V-FWQcjvRPQl9upi1QiU', 'qiniu', '1549949533', '1549949533', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('67', '1', 'FgZiJ1OOeoo5kE3F2sHEDsiccDm7.jpg', 'Fhr9_vJ2T4Yxz1dybuW69DWN7EiJ', 'Fhr9_vJ2T4Yxz1dybuW69DWN7EiJ', 'Fhr9_vJ2T4Yxz1dybuW69DWN7EiJ', 'image/jpeg', 'jpg', '48606', '', 'Fhr9_vJ2T4Yxz1dybuW69DWN7EiJ', 'qiniu', '1549949533', '1549949533', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('68', '1', 'FhDcdofEIy2I7pK0rVGp5L2km80o.jpg', 'FiBBBeUX7MLeXHOxaf0XGuVCj9do', 'FiBBBeUX7MLeXHOxaf0XGuVCj9do', 'FiBBBeUX7MLeXHOxaf0XGuVCj9do', 'image/jpeg', 'jpg', '43334', '', 'FiBBBeUX7MLeXHOxaf0XGuVCj9do', 'qiniu', '1549949533', '1549949533', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('69', '1', 'FgEY3TzzDM5dbY3-gOsDKSRpyJin.jpg', 'FnF7N-QVXx7VVt1i7diPKQXP1KdU', 'FnF7N-QVXx7VVt1i7diPKQXP1KdU', 'FnF7N-QVXx7VVt1i7diPKQXP1KdU', 'image/jpeg', 'jpg', '98471', '', 'FnF7N-QVXx7VVt1i7diPKQXP1KdU', 'qiniu', '1549949533', '1549949533', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('70', '1', 'FjB1QPDKcTJZ-T_EyfrVPkIHe6uh.jpg', 'FiVwSlTnnPOs0AeRX8-aQrIsN4Oo', 'FiVwSlTnnPOs0AeRX8-aQrIsN4Oo', 'FiVwSlTnnPOs0AeRX8-aQrIsN4Oo', 'image/jpeg', 'jpg', '39390', '', 'FiVwSlTnnPOs0AeRX8-aQrIsN4Oo', 'qiniu', '1549949534', '1549949534', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('71', '1', 'FiHpX2m_HQzSBKURZnGxXcYsdmRt.jpg', 'FvcPJ0XpCZkMelx6O98_EKlwiOWR', 'FvcPJ0XpCZkMelx6O98_EKlwiOWR', 'FvcPJ0XpCZkMelx6O98_EKlwiOWR', 'image/jpeg', 'jpg', '65955', '', 'FvcPJ0XpCZkMelx6O98_EKlwiOWR', 'qiniu', '1549949534', '1549949534', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('72', '1', 'FiLytpjKhD2tCRxxasddNMF6_3KE.jpg', 'FuBTyNKbbooRVj9O3cbuIc_RoRJM', 'FuBTyNKbbooRVj9O3cbuIc_RoRJM', 'FuBTyNKbbooRVj9O3cbuIc_RoRJM', 'image/jpeg', 'jpg', '158215', '', 'FuBTyNKbbooRVj9O3cbuIc_RoRJM', 'qiniu', '1549949534', '1549949534', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('73', '1', 'FjWfQMgboWhVCB2cZnbePPLY_DSg.jpg', 'FiJJeI-IWQM6HCqJwy2jWrgmQSHF', 'FiJJeI-IWQM6HCqJwy2jWrgmQSHF', 'FiJJeI-IWQM6HCqJwy2jWrgmQSHF', 'image/jpeg', 'jpg', '41849', '', 'FiJJeI-IWQM6HCqJwy2jWrgmQSHF', 'qiniu', '1549949534', '1549949534', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('74', '1', 'Flz9nwDUpW6dBAMhpTdTxaT-qDuA.jpg', 'FrMiDFAyScRsI0xN-bC8KGXMlYmb', 'FrMiDFAyScRsI0xN-bC8KGXMlYmb', 'FrMiDFAyScRsI0xN-bC8KGXMlYmb', 'image/jpeg', 'jpg', '102949', '', 'FrMiDFAyScRsI0xN-bC8KGXMlYmb', 'qiniu', '1549949534', '1549949534', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('75', '1', 'Fn_ce1WWqnrk3AWxWhXCWfjD2TdL.jpg', 'Fj1NQqq2NrgxopCkFwfbCKl1WpDN', 'Fj1NQqq2NrgxopCkFwfbCKl1WpDN', 'Fj1NQqq2NrgxopCkFwfbCKl1WpDN', 'image/jpeg', 'jpg', '30478', '', 'Fj1NQqq2NrgxopCkFwfbCKl1WpDN', 'qiniu', '1549949534', '1549949534', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('76', '1', 'Fn8Y-8JkbZt3Bnyf4juFy0I8q4bz.jpg', 'FkjeaNMfSo1iVGXeuaopw7G6EBHe', 'FkjeaNMfSo1iVGXeuaopw7G6EBHe', 'FkjeaNMfSo1iVGXeuaopw7G6EBHe', 'image/jpeg', 'jpg', '48309', '', 'FkjeaNMfSo1iVGXeuaopw7G6EBHe', 'qiniu', '1549949534', '1549949534', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('77', '1', 'FoO3A62epB7E_Qy7SmrEZxUBgQSK.jpg', 'FutIvlZ2PoqaEpDQnEgionaO6cJo', 'FutIvlZ2PoqaEpDQnEgionaO6cJo', 'FutIvlZ2PoqaEpDQnEgionaO6cJo', 'image/jpeg', 'jpg', '42062', '', 'FutIvlZ2PoqaEpDQnEgionaO6cJo', 'qiniu', '1549949646', '1549949646', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('78', '1', 'FpvvAEhYgBBax756_8B_bM6vnW4O.jpg', 'FjBchgiYkPUISGoq12Slrtc4z4a2', 'FjBchgiYkPUISGoq12Slrtc4z4a2', 'FjBchgiYkPUISGoq12Slrtc4z4a2', 'image/jpeg', 'jpg', '30255', '', 'FjBchgiYkPUISGoq12Slrtc4z4a2', 'qiniu', '1549949679', '1549949679', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('79', '1', 'Fp79phwWLXumXKg2ds3xGHFk4TYy.jpg', 'Fusb3DNHubTwH_s4BIS4SNGsqE4_', 'Fusb3DNHubTwH_s4BIS4SNGsqE4_', 'Fusb3DNHubTwH_s4BIS4SNGsqE4_', 'image/jpeg', 'jpg', '85949', '', 'Fusb3DNHubTwH_s4BIS4SNGsqE4_', 'qiniu', '1549949679', '1549949679', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('80', '1', 'FpGvJ9RDeddcuDIJB18nJv4nE4h6.jpg', 'Fi6-Kd2VrXt40d1OdTZirX9YRXU4', 'Fi6-Kd2VrXt40d1OdTZirX9YRXU4', 'Fi6-Kd2VrXt40d1OdTZirX9YRXU4', 'image/jpeg', 'jpg', '60920', '', 'Fi6-Kd2VrXt40d1OdTZirX9YRXU4', 'qiniu', '1549949679', '1549949679', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('81', '1', 'FqasWx-2fITGTaJY7JeJy1pX6Nfc.jpg', 'FkK0zrFLXZeuGM5JCiMcPq1ZhEF5', 'FkK0zrFLXZeuGM5JCiMcPq1ZhEF5', 'FkK0zrFLXZeuGM5JCiMcPq1ZhEF5', 'image/jpeg', 'jpg', '46156', '', 'FkK0zrFLXZeuGM5JCiMcPq1ZhEF5', 'qiniu', '1549949679', '1549949679', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('82', '1', 'Fuybcj8LeHeOYmSOOnjUa1bCByNQ.jpg', 'FjskZxnnoI13aeA2kBqt2xL93l7W', 'FjskZxnnoI13aeA2kBqt2xL93l7W', 'FjskZxnnoI13aeA2kBqt2xL93l7W', 'image/jpeg', 'jpg', '119253', '', 'FjskZxnnoI13aeA2kBqt2xL93l7W', 'qiniu', '1549949679', '1549949679', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('83', '1', 'Fvw62nqFZUd_DUf6YZZpDbx4WUAA.jpg', 'FgNT-ftAhx_UE6UH8ugHlgo93Ans', 'FgNT-ftAhx_UE6UH8ugHlgo93Ans', 'FgNT-ftAhx_UE6UH8ugHlgo93Ans', 'image/jpeg', 'jpg', '58403', '', 'FgNT-ftAhx_UE6UH8ugHlgo93Ans', 'qiniu', '1549949716', '1549949716', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('84', '1', 'lpKn-6lwUqv40R_WBMbHALdUsRlJ.jpg', 'Flbe8PoPA4ESdY6fsHvk-XmtO0aS', 'Flbe8PoPA4ESdY6fsHvk-XmtO0aS', 'Flbe8PoPA4ESdY6fsHvk-XmtO0aS', 'image/jpeg', 'jpg', '31538', '', 'Flbe8PoPA4ESdY6fsHvk-XmtO0aS', 'qiniu', '1549949716', '1549949716', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('85', '1', 'lie9wjrJOzib-9at9O3Tgy1koJAS.jpg', 'FkFPyFYlFVN5v0inbR40tYDIJ6a_', 'FkFPyFYlFVN5v0inbR40tYDIJ6a_', 'FkFPyFYlFVN5v0inbR40tYDIJ6a_', 'image/jpeg', 'jpg', '31864', '', 'FkFPyFYlFVN5v0inbR40tYDIJ6a_', 'qiniu', '1549949716', '1549949716', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('86', '1', 'FvyVCYXPxWVa1vawt1HlT8eMTnsi.jpg', 'Fou88YQdefM2QIQTQjt07PgIH75Y', 'Fou88YQdefM2QIQTQjt07PgIH75Y', 'Fou88YQdefM2QIQTQjt07PgIH75Y', 'image/jpeg', 'jpg', '64444', '', 'Fou88YQdefM2QIQTQjt07PgIH75Y', 'qiniu', '1549949716', '1549949716', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('87', '1', '20181215_165233278_iOS.jpg', 'FqncuEpnBnCmcmI9C-sDCz9NC6a6', 'FqncuEpnBnCmcmI9C-sDCz9NC6a6', 'FqncuEpnBnCmcmI9C-sDCz9NC6a6', 'image/jpeg', 'jpg', '18283', '', 'FqncuEpnBnCmcmI9C-sDCz9NC6a6', 'qiniu', '1549949824', '1549949824', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('88', '1', '20181215_165239380_iOS.jpg', 'FvDpFFD0HQtZc1W-FvylYBKvGMRK', 'FvDpFFD0HQtZc1W-FvylYBKvGMRK', 'FvDpFFD0HQtZc1W-FvylYBKvGMRK', 'image/jpeg', 'jpg', '28677', '', 'FvDpFFD0HQtZc1W-FvylYBKvGMRK', 'qiniu', '1549949869', '1549949869', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('89', '1', '20181226_143338162_iOS.png', 'FhikcKi3tvmGbywcM-dukybm9x2D', 'FhikcKi3tvmGbywcM-dukybm9x2D', 'FhikcKi3tvmGbywcM-dukybm9x2D', 'image/png', 'png', '1992331', '', 'FhikcKi3tvmGbywcM-dukybm9x2D', 'qiniu', '1549949869', '1549949869', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('90', '1', '20180405_073342006_iOS.jpg', 'FnSDgEOzGHQG8IzcJY-VXfH8_qmC', 'FnSDgEOzGHQG8IzcJY-VXfH8_qmC', 'FnSDgEOzGHQG8IzcJY-VXfH8_qmC', 'image/jpeg', 'jpg', '3649223', '', 'FnSDgEOzGHQG8IzcJY-VXfH8_qmC', 'qiniu', '1549950447', '1549950447', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('91', '1', '20181015_051621421_iOS.jpg', 'lj14tfIFk05fMDTS1h9VYRTh0CDa', 'lj14tfIFk05fMDTS1h9VYRTh0CDa', 'lj14tfIFk05fMDTS1h9VYRTh0CDa', 'image/jpeg', 'jpg', '5286034', '', 'lj14tfIFk05fMDTS1h9VYRTh0CDa', 'qiniu', '1549950462', '1549950462', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('92', '1', '20181015_012313077_iOS.jpg', 'FsVsDeZ3gPip-alFZ-QsiW1xNpNb', 'FsVsDeZ3gPip-alFZ-QsiW1xNpNb', 'FsVsDeZ3gPip-alFZ-QsiW1xNpNb', 'image/jpeg', 'jpg', '1445555', '', 'FsVsDeZ3gPip-alFZ-QsiW1xNpNb', 'qiniu', '1549950543', '1549950543', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('93', '1', '20180311_065246301_iOS.jpg', 'FjTMrt7CACeu66RRaBH6ddN2ufyz', 'FjTMrt7CACeu66RRaBH6ddN2ufyz', 'FjTMrt7CACeu66RRaBH6ddN2ufyz', 'image/jpeg', 'jpg', '4098781', '', 'FjTMrt7CACeu66RRaBH6ddN2ufyz', 'qiniu', '1549950543', '1549950543', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('94', '1', '20181015_045725176_iOS.jpg', 'lk21tcmTie-bTkPISfNPaay8s32m', 'lk21tcmTie-bTkPISfNPaay8s32m', 'lk21tcmTie-bTkPISfNPaay8s32m', 'image/jpeg', 'jpg', '4336059', '', 'lk21tcmTie-bTkPISfNPaay8s32m', 'qiniu', '1549950543', '1549950543', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('95', '1', '20181015_053841630_iOS.jpg', 'lmXvs7BlqEujF9SEjO10oupnWZm7', 'lmXvs7BlqEujF9SEjO10oupnWZm7', 'lmXvs7BlqEujF9SEjO10oupnWZm7', 'image/jpeg', 'jpg', '5237452', '', 'lmXvs7BlqEujF9SEjO10oupnWZm7', 'qiniu', '1549950544', '1549950544', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('96', '1', '20180311_065648526_iOS.jpg', 'FrTJvu4IZdcjdCygPBwzaxW2HWm2', 'FrTJvu4IZdcjdCygPBwzaxW2HWm2', 'FrTJvu4IZdcjdCygPBwzaxW2HWm2', 'image/jpeg', 'jpg', '2634778', '', 'FrTJvu4IZdcjdCygPBwzaxW2HWm2', 'qiniu', '1549950545', '1549950545', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('97', '1', '20181015_053157134_iOS.jpg', 'loTjdAEcCMSt_vRzkTf64Jp9GJ21', 'loTjdAEcCMSt_vRzkTf64Jp9GJ21', 'loTjdAEcCMSt_vRzkTf64Jp9GJ21', 'image/jpeg', 'jpg', '4792578', '', 'loTjdAEcCMSt_vRzkTf64Jp9GJ21', 'qiniu', '1549950546', '1549950546', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('98', '1', '20181015_053826507_iOS.jpg', 'loqRaCiAm4KmEJ_eyhbkj9I2L_pA', 'loqRaCiAm4KmEJ_eyhbkj9I2L_pA', 'loqRaCiAm4KmEJ_eyhbkj9I2L_pA', 'image/jpeg', 'jpg', '4980255', '', 'loqRaCiAm4KmEJ_eyhbkj9I2L_pA', 'qiniu', '1549950552', '1549950552', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('99', '1', '547f44080e1c593f95c765ee995c6884.jpg', 'Fsnmt7FOfvYdp7rbmWWP5EgqJOD7', 'Fsnmt7FOfvYdp7rbmWWP5EgqJOD7', 'Fsnmt7FOfvYdp7rbmWWP5EgqJOD7', 'image/jpeg', 'jpg', '88181', '', 'Fsnmt7FOfvYdp7rbmWWP5EgqJOD7', 'qiniu', '1549953150', '1549953150', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('100', '1', '%E6%B0%B4%E5%8D%B0.jpg', 'FthkUkn8pgillTkTQry4-nJ2oDyr', 'FthkUkn8pgillTkTQry4-nJ2oDyr', 'FthkUkn8pgillTkTQry4-nJ2oDyr', 'image/jpeg', 'jpg', '287900', '', 'FthkUkn8pgillTkTQry4-nJ2oDyr', 'qiniu', '1549953836', '1549953836', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('101', '1', 'e1b7eaa3ff9722fbfd5d368ef9e5cc66.jpg', 'FkPU90wlg6h2fp-g1wsKoeLWGlB8', 'FkPU90wlg6h2fp-g1wsKoeLWGlB8', 'FkPU90wlg6h2fp-g1wsKoeLWGlB8', 'image/jpeg', 'jpg', '221179', '', 'FkPU90wlg6h2fp-g1wsKoeLWGlB8', 'qiniu', '1549953971', '1549953971', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('102', '1', '3383610695139295435.jpg', 'FiYBoZgbEldAf9qIypDoDz8HGF3H', 'FiYBoZgbEldAf9qIypDoDz8HGF3H', 'FiYBoZgbEldAf9qIypDoDz8HGF3H', 'image/jpeg', 'jpg', '1088706', '', 'FiYBoZgbEldAf9qIypDoDz8HGF3H', 'qiniu', '1549953971', '1549953971', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('103', '1', '6631609824935831644.jpg', 'Ftb2LnfgaOEA3HKIN0BhMmA_KirK', 'Ftb2LnfgaOEA3HKIN0BhMmA_KirK', 'Ftb2LnfgaOEA3HKIN0BhMmA_KirK', 'image/jpeg', 'jpg', '1436620', '', 'Ftb2LnfgaOEA3HKIN0BhMmA_KirK', 'qiniu', '1549953971', '1549953971', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('104', '1', '6599305073797567601.jpg', 'FnJ0-38SgKYvsjjfuZ7eXsKWLRt_', 'FnJ0-38SgKYvsjjfuZ7eXsKWLRt_', 'FnJ0-38SgKYvsjjfuZ7eXsKWLRt_', 'image/jpeg', 'jpg', '2006365', '', 'FnJ0-38SgKYvsjjfuZ7eXsKWLRt_', 'qiniu', '1549953972', '1549953972', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('105', '1', '6600371600074599680.jpg', 'Fj4r_Yk1U3WAagx1-6l2RhWmXm-b', 'Fj4r_Yk1U3WAagx1-6l2RhWmXm-b', 'Fj4r_Yk1U3WAagx1-6l2RhWmXm-b', 'image/jpeg', 'jpg', '1737435', '', 'Fj4r_Yk1U3WAagx1-6l2RhWmXm-b', 'qiniu', '1549953972', '1549953972', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('106', '1', '6c413176ca.jpg', 'FvsTGajXCjBLgZhZENFfMqLFyDX6', 'FvsTGajXCjBLgZhZENFfMqLFyDX6', 'FvsTGajXCjBLgZhZENFfMqLFyDX6', 'image/jpeg', 'jpg', '625998', '', 'FvsTGajXCjBLgZhZENFfMqLFyDX6', 'qiniu', '1549954949', '1549954949', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('107', '1', '91bc179f5a.jpg', 'FnA1Kzh5K1EngQ1HFQ8bByaUCczI', 'FnA1Kzh5K1EngQ1HFQ8bByaUCczI', 'FnA1Kzh5K1EngQ1HFQ8bByaUCczI', 'image/jpeg', 'jpg', '230554', '', 'FnA1Kzh5K1EngQ1HFQ8bByaUCczI', 'qiniu', '1549954975', '1549954975', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('108', '1', '%E9%83%81%E5%8F%AF%E5%94%AF+-+%E6%80%9D%E6%85%95.mkv', 'V6rprd1oRbLfRVdpp0nYgOajxOA=/lmBIeqEvd7gMjrtCUinBUWqIXgpV', 'Fc-gSAYyzBr7g02HfqrmoGN9pGI=/lmBIeqEvd7gMjrtCUinBUWqIXgpV', 'lmBIeqEvd7gMjrtCUinBUWqIXgpV', 'video/x-matroska', 'mkv', '25286657', '', 'lmBIeqEvd7gMjrtCUinBUWqIXgpV', 'qiniu', '1549955987', '1549956008', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('109', '1', '%E5%B8%A6%E6%B3%AA%E7%9A%84%E9%B1%BC+-+%E4%B8%80%E4%B8%AA%E4%BA%BA%E5%94%B1%E6%83%85%E6%AD%8C.mkv', 'V6rprd1oRbLfRVdpp0nYgOajxOA=/lnZwBq1-ZX9lHioetJyKPOKvQO9t', 'Fc-gSAYyzBr7g02HfqrmoGN9pGI=/lnZwBq1-ZX9lHioetJyKPOKvQO9t', 'lnZwBq1-ZX9lHioetJyKPOKvQO9t', 'video/x-matroska', 'mkv', '13445212', '', 'lnZwBq1-ZX9lHioetJyKPOKvQO9t', 'qiniu', '1549956094', '1549956118', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('110', '1', '%E5%BC%A0%E6%9D%B0%E3%80%81%E5%BC%A0%E7%A2%A7%E6%99%A8+-+%E5%8F%AA%E8%A6%81%E5%B9%B3%E5%87%A1.mkv', 'V6rprd1oRbLfRVdpp0nYgOajxOA=/luu-GHyVQ36KPoV97HBiww6ZZPqX', 'Fc-gSAYyzBr7g02HfqrmoGN9pGI=/luu-GHyVQ36KPoV97HBiww6ZZPqX', 'luu-GHyVQ36KPoV97HBiww6ZZPqX', 'video/x-matroska', 'mkv', '35785109', '', 'luu-GHyVQ36KPoV97HBiww6ZZPqX', 'qiniu', '1549956393', '1549956468', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('111', '1', '%E5%BC%A0%E6%9D%B0+-+%E5%89%91%E5%BF%83.mkv', 'V6rprd1oRbLfRVdpp0nYgOajxOA=/li74bALCPQ3XIK8496A_kUkr3gEP', 'Fc-gSAYyzBr7g02HfqrmoGN9pGI=/li74bALCPQ3XIK8496A_kUkr3gEP', 'li74bALCPQ3XIK8496A_kUkr3gEP', 'video/x-matroska', 'mkv', '16137202', '', 'li74bALCPQ3XIK8496A_kUkr3gEP', 'qiniu', '1549956848', '1549956885', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('112', '1', '%E8%B4%9D%E5%85%8B%E4%BA%91%E7%AC%94%E8%AE%B0icon.zip', 'Fj2KHhgEOrrN0GsF8mt47pMsFaAj', 'Fj2KHhgEOrrN0GsF8mt47pMsFaAj', 'Fj2KHhgEOrrN0GsF8mt47pMsFaAj', 'application/x-zip-compressed', 'zip', '1461840', '', 'Fj2KHhgEOrrN0GsF8mt47pMsFaAj', 'qiniu', '1550136434', '1550136434', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('113', '1', 'ludashi.jpg', 'FgUhoNtBiNQaCdTgrVnNhVwu0k6T', 'FgUhoNtBiNQaCdTgrVnNhVwu0k6T', 'FgUhoNtBiNQaCdTgrVnNhVwu0k6T', 'image/jpeg', 'jpg', '104751', '', 'FgUhoNtBiNQaCdTgrVnNhVwu0k6T', 'qiniu', '1550136662', '1550136662', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('115', '1', '%E3%80%90MV%E3%80%91%E6%A8%A1%E4%BB%BF%E7%BF%BB%E5%94%B1+-%E7%88%B1%E7%9A%84%E6%95%85%E4%BA%8B%E4%B8%8A%E9%9B%86+%E6%AD%8C%E8%AF%8D%E7%89%88+-+%E9%AB%98%E6%B8%85MV%E5%9C%A8%E7%BA%BF%E6%92%AD%E6%94%BE+-+%E9%9F%B3%E6%82%A6Tai+-+%E8%AE%A9%E5%A8%B1%E4%B9%90%E', 'V6rprd1oRbLfRVdpp0nYgOajxOA=/lrQ9RIvLN2NXk4PvmPTrcMNDQTo7', 'Fc-gSAYyzBr7g02HfqrmoGN9pGI=/lrQ9RIvLN2NXk4PvmPTrcMNDQTo7', 'lrQ9RIvLN2NXk4PvmPTrcMNDQTo7', 'video/mp4', 'mp4', '7120172', '', 'lrQ9RIvLN2NXk4PvmPTrcMNDQTo7', 'qiniu', '1550142938', '1550142941', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('116', '2', '568a7538372b0543991055eafdc1816b.jpg', 'Fusg71xat6vfrnZreed9dy17ZZgZ', 'Fusg71xat6vfrnZreed9dy17ZZgZ', 'Fusg71xat6vfrnZreed9dy17ZZgZ', 'image/jpeg', 'jpg', '50002', '', 'Fusg71xat6vfrnZreed9dy17ZZgZ', 'qiniu', '1550144006', '1550144006', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('117', '2', 'phalcon-devtools-master.zip', 'FtlCqAtWIcwxXqltvoqGzyGJY-wn', 'FtlCqAtWIcwxXqltvoqGzyGJY-wn', 'FtlCqAtWIcwxXqltvoqGzyGJY-wn', 'application/x-zip-compressed', 'zip', '1759780', '', 'FtlCqAtWIcwxXqltvoqGzyGJY-wn', 'qiniu', '1550144426', '1550144426', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('118', '1', 'PythonPip%E5%AE%89%E8%A3%85%E5%8C%85.rar', 'lmVL3bFjeEKLxXepRaJ9r79_BTkN', 'lmVL3bFjeEKLxXepRaJ9r79_BTkN', 'lmVL3bFjeEKLxXepRaJ9r79_BTkN', 'application/x-rar-compressed', 'rar', '32947060', '', 'lmVL3bFjeEKLxXepRaJ9r79_BTkN', 'qiniu', '1550157255', '1550157255', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('119', '1', '%E8%B4%9D%E5%85%8B%E4%BA%91%E7%AC%94%E8%AE%B0%E8%80%81%E7%89%88%E6%9C%AC%E4%BB%A3%E7%A0%81.rar', 'ljO9BeUUO-DdbxIq2v52bHEwQpcP', 'ljO9BeUUO-DdbxIq2v52bHEwQpcP', 'ljO9BeUUO-DdbxIq2v52bHEwQpcP', 'application/x-rar-compressed', 'rar', '116014123', '', 'ljO9BeUUO-DdbxIq2v52bHEwQpcP', 'qiniu', '1550157291', '1550157291', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('120', '1', '%E6%8B%9B%E5%95%86%E5%B1%80.zip', 'liAL4lxuvHqCRReCm5sQsyXUsv6P', 'liAL4lxuvHqCRReCm5sQsyXUsv6P', 'liAL4lxuvHqCRReCm5sQsyXUsv6P', 'application/x-zip-compressed', 'zip', '112821169', '', 'liAL4lxuvHqCRReCm5sQsyXUsv6P', 'qiniu', '1550157334', '1550157334', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('121', '1', '%E6%B5%99%E5%A4%A7%E4%BC%81%E4%B8%9A%E7%AB%99.zip', 'lrrdx_F1hqa_-5nMQy347yU5xt_6', 'lrrdx_F1hqa_-5nMQy347yU5xt_6', 'lrrdx_F1hqa_-5nMQy347yU5xt_6', 'application/x-zip-compressed', 'zip', '78912903', '', 'lrrdx_F1hqa_-5nMQy347yU5xt_6', 'qiniu', '1550157390', '1550157390', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('122', '1', '%E6%B5%99%E5%A4%A7%E6%99%BA%E8%83%BD%E7%97%85%E5%BA%8AAPP%E7%89%88%E6%9C%AC.zip', 'liP66V9qKBHuhkjTDUNe4k14KpNn', 'liP66V9qKBHuhkjTDUNe4k14KpNn', 'liP66V9qKBHuhkjTDUNe4k14KpNn', 'application/x-zip-compressed', 'zip', '212501593', '', 'liP66V9qKBHuhkjTDUNe4k14KpNn', 'qiniu', '1550157468', '1550157468', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('123', '1', '%E6%B5%99%E5%A4%A7%E6%99%BA%E8%83%BD%E7%97%85%E5%BA%8A%E5%8C%BB%E9%99%A2%E7%89%88%E6%9C%AC.zip', 'lrX5gkAiycLmRK1pd4Iiq_JmBTfM', 'lrX5gkAiycLmRK1pd4Iiq_JmBTfM', 'lrX5gkAiycLmRK1pd4Iiq_JmBTfM', 'application/x-zip-compressed', 'zip', '310082218', '', 'lrX5gkAiycLmRK1pd4Iiq_JmBTfM', 'qiniu', '1550157529', '1550157529', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('124', '1', '%E6%8B%9B%E5%95%86%E5%B1%80%E4%BC%9A%E8%AE%AE%E7%B3%BB%E7%BB%9F.zip', 'lts1KHR-tWub6u1O31ViKKX6j38A', 'lts1KHR-tWub6u1O31ViKKX6j38A', 'lts1KHR-tWub6u1O31ViKKX6j38A', 'application/x-zip-compressed', 'zip', '354993584', '', 'lts1KHR-tWub6u1O31ViKKX6j38A', 'qiniu', '1550157634', '1550157634', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('125', '2', 'Flying+Steps+-+We+Are+Electric.mkv', 'V6rprd1oRbLfRVdpp0nYgOajxOA=/lvJun4O3gxq0Ifr4sRDnEtc0lcH7', 'Fc-gSAYyzBr7g02HfqrmoGN9pGI=/lvJun4O3gxq0Ifr4sRDnEtc0lcH7', 'lvJun4O3gxq0Ifr4sRDnEtc0lcH7', 'video/x-matroska', 'mkv', '15802928', '', 'lvJun4O3gxq0Ifr4sRDnEtc0lcH7', 'qiniu', '1550158558', '1550158580', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('126', '2', 'Justin+Bieber%E3%80%81Big+Sean+-+As+Long+as+You+Love+Me.mkv', 'V6rprd1oRbLfRVdpp0nYgOajxOA=/lvzkcWWYzSIqnaXU_QMLKqh79d9S', 'Fc-gSAYyzBr7g02HfqrmoGN9pGI=/lvzkcWWYzSIqnaXU_QMLKqh79d9S', 'lvzkcWWYzSIqnaXU_QMLKqh79d9S', 'video/x-matroska', 'mkv', '24670667', '', 'lvzkcWWYzSIqnaXU_QMLKqh79d9S', 'qiniu', '1550158574', '1550158613', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('127', '2', 'K-391%E3%80%81Alan+Walker%E3%80%81Julie+Bergan%E3%80%81%E8%83%9C%E5%88%A9+-+Ignite.mkv', 'V6rprd1oRbLfRVdpp0nYgOajxOA=/lq-4hfHUz6QfQh7NABoh5QKBDa8g', 'Fc-gSAYyzBr7g02HfqrmoGN9pGI=/lq-4hfHUz6QfQh7NABoh5QKBDa8g', 'lq-4hfHUz6QfQh7NABoh5QKBDa8g', 'video/x-matroska', 'mkv', '16800153', '', 'lq-4hfHUz6QfQh7NABoh5QKBDa8g', 'qiniu', '1550158592', '1550158618', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('128', '2', 'The+Daydream+-+Tears.mkv', 'V6rprd1oRbLfRVdpp0nYgOajxOA=/libmpkiRi9gMPnH6ahU-UOShcKVN', 'Fc-gSAYyzBr7g02HfqrmoGN9pGI=/libmpkiRi9gMPnH6ahU-UOShcKVN', 'libmpkiRi9gMPnH6ahU-UOShcKVN', 'video/x-matroska', 'mkv', '17665961', '', 'libmpkiRi9gMPnH6ahU-UOShcKVN', 'qiniu', '1550158614', '1550158644', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('129', '2', '%E5%BC%A0%E9%9F%B6%E6%B6%B5+-+%E6%B2%A1%E7%A6%BB%E5%BC%80%E8%BF%87.mkv', 'V6rprd1oRbLfRVdpp0nYgOajxOA=/lk9wM5TfVvV3Jgrk8U-OM9wm4YSh', 'Fc-gSAYyzBr7g02HfqrmoGN9pGI=/lk9wM5TfVvV3Jgrk8U-OM9wm4YSh', 'lk9wM5TfVvV3Jgrk8U-OM9wm4YSh', 'video/x-matroska', 'mkv', '15101582', '', 'lk9wM5TfVvV3Jgrk8U-OM9wm4YSh', 'qiniu', '1550158628', '1550158651', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('130', '2', '%E3%80%90MV%E3%80%91Zion+-I+Need+You+-+%E9%AB%98%E6%B8%85MV%E5%9C%A8%E7%BA%BF%E6%92%AD%E6%94%BE+-+%E9%9F%B3%E6%82%A6Tai+-+%E8%AE%A9%E5%A8%B1%E4%B9%90%E6%9B%B4%E7%BE%8E%E5%A5%BD.mp4', 'V6rprd1oRbLfRVdpp0nYgOajxOA=/lqpbL95O43gwTX_-L9cp7PmsN4GB', 'Fc-gSAYyzBr7g02HfqrmoGN9pGI=/lqpbL95O43gwTX_-L9cp7PmsN4GB', 'lqpbL95O43gwTX_-L9cp7PmsN4GB', 'video/mp4', 'mp4', '23237487', '', 'lqpbL95O43gwTX_-L9cp7PmsN4GB', 'qiniu', '1550743087', '1550743134', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('131', '1', '0001.%E5%93%94%E5%93%A9%E5%93%94%E5%93%A9-%E3%80%90%E5%89%91%E7%BD%91%E4%B8%89%E4%B9%9D%E5%91%A8%E5%B9%B4_%E6%88%90%E5%A5%B3%E7%BE%A4%E5%83%8F%E3%80%91%E5%89%91%E7%BD%91%E4%B8%89%E7%9A%84%E6%88%90%E5%A5%B3%E8%83%BD%E6%9C%89%E5%A4%9A%E5%A5%BD%E7%9C%8B%EF%B', 'V6rprd1oRbLfRVdpp0nYgOajxOA=/ljWwMi5wfdmQOjRhreu2x_TOOQHy', 'Fc-gSAYyzBr7g02HfqrmoGN9pGI=/ljWwMi5wfdmQOjRhreu2x_TOOQHy', 'ljWwMi5wfdmQOjRhreu2x_TOOQHy', 'video/x-flv', 'flv', '109064528', '', 'ljWwMi5wfdmQOjRhreu2x_TOOQHy', 'qiniu', '1551018757', '1551018802', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('132', '1', 'layim.pro.zip', 'FuWviYXbfNHncDWYekPwXhblTZ9M', 'FuWviYXbfNHncDWYekPwXhblTZ9M', 'FuWviYXbfNHncDWYekPwXhblTZ9M', 'application/x-zip-compressed', 'zip', '1581929', '', 'FuWviYXbfNHncDWYekPwXhblTZ9M', 'qiniu', '1551864955', '1551864955', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('133', '1', '%E6%B8%85%E7%90%86SVN%E6%B3%A8%E5%86%8C%E8%A1%A8.rar', 'Fje3Rrk6O0wuhfsxKYlxkhavwC_K', 'Fje3Rrk6O0wuhfsxKYlxkhavwC_K', 'Fje3Rrk6O0wuhfsxKYlxkhavwC_K', 'application/x-rar-compressed', 'rar', '305', '', 'Fje3Rrk6O0wuhfsxKYlxkhavwC_K', 'qiniu', '1553149621', '1553149621', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('134', '1', 'AdminLTE-2.4.10.zip', 'loEP_kzXwFVykG4n2W5nBn7hfiJl', 'loEP_kzXwFVykG4n2W5nBn7hfiJl', 'loEP_kzXwFVykG4n2W5nBn7hfiJl', 'application/x-zip-compressed', 'zip', '19935292', '', 'loEP_kzXwFVykG4n2W5nBn7hfiJl', 'qiniu', '1553676664', '1553676664', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('135', '1', 'layuiAdmin.pack.zip', 'loXXJgEkOLsbEpVeei1jXNTECAJH', 'loXXJgEkOLsbEpVeei1jXNTECAJH', 'loXXJgEkOLsbEpVeei1jXNTECAJH', 'application/x-zip-compressed', 'zip', '6729364', '', 'loXXJgEkOLsbEpVeei1jXNTECAJH', 'qiniu', '1554191182', '1554191182', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('136', '1', 'eibk.zip', 'll6VaqCWDMT0NsLosgfCiW3gD0Xr', 'll6VaqCWDMT0NsLosgfCiW3gD0Xr', 'll6VaqCWDMT0NsLosgfCiW3gD0Xr', 'application/x-zip-compressed', 'zip', '63538468', '', 'll6VaqCWDMT0NsLosgfCiW3gD0Xr', 'qiniu', '1554963550', '1554963550', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('137', '1', '%E6%B5%8B%E8%AF%95%E5%9B%BE%E7%89%871.jpeg', 'FpndVoIKlpyPNPqPkXyNZlGUPjdp', 'FpndVoIKlpyPNPqPkXyNZlGUPjdp', 'FpndVoIKlpyPNPqPkXyNZlGUPjdp', 'image/jpeg', 'jpeg', '63623', '', 'FpndVoIKlpyPNPqPkXyNZlGUPjdp', 'qiniu', '1555563603', '1555563603', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('138', '1', '%E6%B5%8B%E8%AF%95%E5%9B%BE%E7%89%871.jpg', 'FrRbN5P5ocyXar9WC1EBhqVbYyOK', 'FrRbN5P5ocyXar9WC1EBhqVbYyOK', 'FrRbN5P5ocyXar9WC1EBhqVbYyOK', 'image/jpeg', 'jpg', '35323', '', 'FrRbN5P5ocyXar9WC1EBhqVbYyOK', 'qiniu', '1555563605', '1555563605', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('139', '1', '%E6%B5%8B%E8%AF%95%E5%9B%BE%E7%89%872.jpg', 'Fu3TRyZhsnwAAxAIJsfLTX3VxYpc', 'Fu3TRyZhsnwAAxAIJsfLTX3VxYpc', 'Fu3TRyZhsnwAAxAIJsfLTX3VxYpc', 'image/jpeg', 'jpg', '133217', '', 'Fu3TRyZhsnwAAxAIJsfLTX3VxYpc', 'qiniu', '1555563605', '1555563605', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('140', '1', 'xuelang%E7%AE%80%E5%8D%95%E4%BC%97%E7%AD%B9.zip', 'lsjpGcrLKKhQg2A_bv2GNY_EjyPb', 'lsjpGcrLKKhQg2A_bv2GNY_EjyPb', 'lsjpGcrLKKhQg2A_bv2GNY_EjyPb', 'application/zip', 'zip', '16240177', '', 'lsjpGcrLKKhQg2A_bv2GNY_EjyPb', 'qiniu', '1556417377', '1556417377', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('141', '1', '%E7%AE%80%E5%8D%95%E4%BC%97%E7%AD%B9.zip', 'lisdPB636eyw5MHL6nfEfhMH3acB', 'lisdPB636eyw5MHL6nfEfhMH3acB', 'lisdPB636eyw5MHL6nfEfhMH3acB', 'application/zip', 'zip', '18095590', '', 'lisdPB636eyw5MHL6nfEfhMH3acB', 'qiniu', '1556418201', '1556418201', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('142', '1', 'PHPOS-OT.rar', 'lsVh1Cdeq_jSoUPrPNxj7PDISxCs', 'lsVh1Cdeq_jSoUPrPNxj7PDISxCs', 'lsVh1Cdeq_jSoUPrPNxj7PDISxCs', 'application/x-rar-compressed', 'rar', '9002119', '', 'lsVh1Cdeq_jSoUPrPNxj7PDISxCs', 'qiniu', '1566381034', '1566381034', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('143', '1', 'phpos.zip', 'FgMnVfXqO_pm9Ttdkmc9r_5C5kIn', 'FgMnVfXqO_pm9Ttdkmc9r_5C5kIn', 'FgMnVfXqO_pm9Ttdkmc9r_5C5kIn', 'application/x-zip-compressed', 'zip', '492665', '', 'FgMnVfXqO_pm9Ttdkmc9r_5C5kIn', 'qiniu', '1566381047', '1566381047', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('144', '1', 'Tianqu.zip', 'lrzQSvI9pNsu3j4gxxzkCeFjX8Ah', 'lrzQSvI9pNsu3j4gxxzkCeFjX8Ah', 'lrzQSvI9pNsu3j4gxxzkCeFjX8Ah', 'application/x-zip-compressed', 'zip', '24235546', '', 'lrzQSvI9pNsu3j4gxxzkCeFjX8Ah', 'qiniu', '1566381061', '1566381061', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('145', '1', 'PhalconYangAuth.zip', 'Fg0zmSed4VbfVoW-sd6Vx6gBZG6I', 'Fg0zmSed4VbfVoW-sd6Vx6gBZG6I', 'Fg0zmSed4VbfVoW-sd6Vx6gBZG6I', 'application/x-zip-compressed', 'zip', '3658571', '', 'Fg0zmSed4VbfVoW-sd6Vx6gBZG6I', 'qiniu', '1566381068', '1566381068', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('146', '2', '15673054955782746_27779551_H1920.jpg', 'FuMedtJPZc0ig0S7_0ig29ARNLg1', 'FuMedtJPZc0ig0S7_0ig29ARNLg1', 'FuMedtJPZc0ig0S7_0ig29ARNLg1', 'image/jpeg', 'jpg', '1634645', '', 'FuMedtJPZc0ig0S7_0ig29ARNLg1', 'qiniu', '1567748527', '1567748527', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('147', '2', '15673054951502694_27779551_H800.jpg', 'FpcfhjWM-hlvk9-YtGrz5F_dU_VP', 'FpcfhjWM-hlvk9-YtGrz5F_dU_VP', 'FpcfhjWM-hlvk9-YtGrz5F_dU_VP', 'image/jpeg', 'jpg', '550413', '', 'FpcfhjWM-hlvk9-YtGrz5F_dU_VP', 'qiniu', '1567748755', '1567748755', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('148', '2', '15673054956542076_27779551_H1920.jpg', 'FkYNaYoV9ix8L2oKliM5m3m__6J5', 'FkYNaYoV9ix8L2oKliM5m3m__6J5', 'FkYNaYoV9ix8L2oKliM5m3m__6J5', 'image/jpeg', 'jpg', '1947974', '', 'FkYNaYoV9ix8L2oKliM5m3m__6J5', 'qiniu', '1567748755', '1567748755', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('149', '2', '15673054953312571_27779551_H800.jpg', 'FkYe0WeXueoCqys8fGNWrWt1N0Xq', 'FkYe0WeXueoCqys8fGNWrWt1N0Xq', 'FkYe0WeXueoCqys8fGNWrWt1N0Xq', 'image/jpeg', 'jpg', '555232', '', 'FkYe0WeXueoCqys8fGNWrWt1N0Xq', 'qiniu', '1567748755', '1567748755', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('150', '2', '15673054956223445_27779551_H1920.jpg', 'FvTVNoD-A5WsF7RGDEm6HI-YYRQV', 'FvTVNoD-A5WsF7RGDEm6HI-YYRQV', 'FvTVNoD-A5WsF7RGDEm6HI-YYRQV', 'image/jpeg', 'jpg', '1401634', '', 'FvTVNoD-A5WsF7RGDEm6HI-YYRQV', 'qiniu', '1567748755', '1567748755', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('151', '2', '15673054959375439_27779551_H800.jpg', 'FmsaUHmlb82xXzjTu_NmtpH4obdP', 'FmsaUHmlb82xXzjTu_NmtpH4obdP', 'FmsaUHmlb82xXzjTu_NmtpH4obdP', 'image/jpeg', 'jpg', '375582', '', 'FmsaUHmlb82xXzjTu_NmtpH4obdP', 'qiniu', '1567748755', '1567748755', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('152', '2', '15673054958256938_27779551_H800.jpg', 'FspebazqluuN4_uaXEcwEsL3jIUP', 'FspebazqluuN4_uaXEcwEsL3jIUP', 'FspebazqluuN4_uaXEcwEsL3jIUP', 'image/jpeg', 'jpg', '533701', '', 'FspebazqluuN4_uaXEcwEsL3jIUP', 'qiniu', '1567748755', '1567748755', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('153', '2', '15673055401014160_27779551_H800.jpg', 'FlFY0EJRvUiDdw9d5PziE-pqbubK', 'FlFY0EJRvUiDdw9d5PziE-pqbubK', 'FlFY0EJRvUiDdw9d5PziE-pqbubK', 'image/jpeg', 'jpg', '443203', '', 'FlFY0EJRvUiDdw9d5PziE-pqbubK', 'qiniu', '1567748755', '1567748755', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('154', '2', '15673055097010649_27779551_H800.jpg', 'FrTTvltjs681279dsTo27u3TFAo7', 'FrTTvltjs681279dsTo27u3TFAo7', 'FrTTvltjs681279dsTo27u3TFAo7', 'image/jpeg', 'jpg', '501817', '', 'FrTTvltjs681279dsTo27u3TFAo7', 'qiniu', '1567748755', '1567748755', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('155', '2', '15673055406511431_27779551_H800.jpg', 'FvtlqqabFNUeRXnoLeoaBuyRT6Bo', 'FvtlqqabFNUeRXnoLeoaBuyRT6Bo', 'FvtlqqabFNUeRXnoLeoaBuyRT6Bo', 'image/jpeg', 'jpg', '705097', '', 'FvtlqqabFNUeRXnoLeoaBuyRT6Bo', 'qiniu', '1567748756', '1567748756', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('156', '2', '15673060498667051_46196999_H1920.jpg', 'FquRiqF60vLPOb1HvoGOlvUw2slz', 'FquRiqF60vLPOb1HvoGOlvUw2slz', 'FquRiqF60vLPOb1HvoGOlvUw2slz', 'image/jpeg', 'jpg', '962723', '', 'FquRiqF60vLPOb1HvoGOlvUw2slz', 'qiniu', '1567749175', '1567749175', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('157', '2', '15673061987928119_46196999_H1920.jpg', 'FnUiYbStx8MmmFpiSy-4hIQIfDYN', 'FnUiYbStx8MmmFpiSy-4hIQIfDYN', 'FnUiYbStx8MmmFpiSy-4hIQIfDYN', 'image/jpeg', 'jpg', '662954', '', 'FnUiYbStx8MmmFpiSy-4hIQIfDYN', 'qiniu', '1567749175', '1567749175', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('158', '2', '15673062383150801_46196999_H1920.jpg', 'FqNVXKfSN6cBwAHZ-CI0uf_d5rmq', 'FqNVXKfSN6cBwAHZ-CI0uf_d5rmq', 'FqNVXKfSN6cBwAHZ-CI0uf_d5rmq', 'image/jpeg', 'jpg', '2402447', '', 'FqNVXKfSN6cBwAHZ-CI0uf_d5rmq', 'qiniu', '1567749175', '1567749175', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('159', '2', '15673061888927951_46196999_H1920.jpg', 'Fh2WYXqlfjV1KGJSkopt7-8Id_l6', 'Fh2WYXqlfjV1KGJSkopt7-8Id_l6', 'Fh2WYXqlfjV1KGJSkopt7-8Id_l6', 'image/jpeg', 'jpg', '2867427', '', 'Fh2WYXqlfjV1KGJSkopt7-8Id_l6', 'qiniu', '1567749176', '1567749176', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('160', '2', '15673061943493942_46196999_H1920.jpg', 'FtE9bYoAQDSZAO1QpJLyOVs4Q7DT', 'FtE9bYoAQDSZAO1QpJLyOVs4Q7DT', 'FtE9bYoAQDSZAO1QpJLyOVs4Q7DT', 'image/jpeg', 'jpg', '2565861', '', 'FtE9bYoAQDSZAO1QpJLyOVs4Q7DT', 'qiniu', '1567749176', '1567749176', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('161', '2', '15673062088704084_46196999_H1920.jpg', 'Fs9Nl77UHtRGp-yMrtxskeyFoY2L', 'Fs9Nl77UHtRGp-yMrtxskeyFoY2L', 'Fs9Nl77UHtRGp-yMrtxskeyFoY2L', 'image/jpeg', 'jpg', '2856372', '', 'Fs9Nl77UHtRGp-yMrtxskeyFoY2L', 'qiniu', '1567749176', '1567749176', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('162', '2', '15673062629798213_46196999_H1920.jpg', 'FmCbTcw-RobQ0t7ICaTLFO2dD7ez', 'FmCbTcw-RobQ0t7ICaTLFO2dD7ez', 'FmCbTcw-RobQ0t7ICaTLFO2dD7ez', 'image/jpeg', 'jpg', '3335246', '', 'FmCbTcw-RobQ0t7ICaTLFO2dD7ez', 'qiniu', '1567749176', '1567749176', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('163', '2', '15673062662196548_46196999_H1920.jpg', 'FoqhWF__HpgP6R0bsUyYQ3Y2cQ2a', 'FoqhWF__HpgP6R0bsUyYQ3Y2cQ2a', 'FoqhWF__HpgP6R0bsUyYQ3Y2cQ2a', 'image/jpeg', 'jpg', '3008836', '', 'FoqhWF__HpgP6R0bsUyYQ3Y2cQ2a', 'qiniu', '1567749176', '1567749176', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('164', '2', '15673062722172100_46196999_H1920.jpg', 'FskOjnk5IH2XrqcAdRR310_ql1M1', 'FskOjnk5IH2XrqcAdRR310_ql1M1', 'FskOjnk5IH2XrqcAdRR310_ql1M1', 'image/jpeg', 'jpg', '3388997', '', 'FskOjnk5IH2XrqcAdRR310_ql1M1', 'qiniu', '1567749176', '1567749176', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('165', '2', '15673062827717227_46196999_H1920.jpg', 'FlmI2ifqmpcF_7xfft8Jk84DikXG', 'FlmI2ifqmpcF_7xfft8Jk84DikXG', 'FlmI2ifqmpcF_7xfft8Jk84DikXG', 'image/jpeg', 'jpg', '2873392', '', 'FlmI2ifqmpcF_7xfft8Jk84DikXG', 'qiniu', '1567749177', '1567749177', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('166', '2', '15673069424176407_46196999_H1920.jpg', 'Fo0yzDhGpqyESFseF8VOlZFFEMAD', 'Fo0yzDhGpqyESFseF8VOlZFFEMAD', 'Fo0yzDhGpqyESFseF8VOlZFFEMAD', 'image/jpeg', 'jpg', '2856673', '', 'Fo0yzDhGpqyESFseF8VOlZFFEMAD', 'qiniu', '1567749177', '1567749177', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('167', '2', '15673069536874748_46196999_H1920.jpg', 'FjDsxFRDGZeTN5vuKTuSqGnPh072', 'FjDsxFRDGZeTN5vuKTuSqGnPh072', 'FjDsxFRDGZeTN5vuKTuSqGnPh072', 'image/jpeg', 'jpg', '2916642', '', 'FjDsxFRDGZeTN5vuKTuSqGnPh072', 'qiniu', '1567749177', '1567749177', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('168', '2', '15673067769985715_46196999_H1920.jpg', 'FksDDiyyHiCJNpe07yE4jvDKAzSj', 'FksDDiyyHiCJNpe07yE4jvDKAzSj', 'FksDDiyyHiCJNpe07yE4jvDKAzSj', 'image/jpeg', 'jpg', '2626415', '', 'FksDDiyyHiCJNpe07yE4jvDKAzSj', 'qiniu', '1567749177', '1567749177', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('169', '2', 'timg.jpg', 'Ft03v1e-SfLlaKCXcxwuIUiOdlU2', 'Ft03v1e-SfLlaKCXcxwuIUiOdlU2', 'Ft03v1e-SfLlaKCXcxwuIUiOdlU2', 'image/jpeg', 'jpg', '227036', '', 'Ft03v1e-SfLlaKCXcxwuIUiOdlU2', 'qiniu', '1567749325', '1567749325', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('170', '2', '15619409219596830_30747052_H1920.jpg', 'Fol6pphC3kzEK7g26iY3QRtPUX4-', 'Fol6pphC3kzEK7g26iY3QRtPUX4-', 'Fol6pphC3kzEK7g26iY3QRtPUX4-', 'image/jpeg', 'jpg', '459602', '', 'Fol6pphC3kzEK7g26iY3QRtPUX4-', 'qiniu', '1567749399', '1567749399', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('171', '2', '15619408941984901_30747052_H1920.jpg', 'Fk6Z0sfnhuvUSLVn9O1ufWxrKmTE', 'Fk6Z0sfnhuvUSLVn9O1ufWxrKmTE', 'Fk6Z0sfnhuvUSLVn9O1ufWxrKmTE', 'image/jpeg', 'jpg', '907221', '', 'Fk6Z0sfnhuvUSLVn9O1ufWxrKmTE', 'qiniu', '1567749399', '1567749399', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('172', '2', '15619408943990944_30747052_H1920.jpg', 'FvwqaoZtcrticxCutnT-jBik1OHb', 'FvwqaoZtcrticxCutnT-jBik1OHb', 'FvwqaoZtcrticxCutnT-jBik1OHb', 'image/jpeg', 'jpg', '1162562', '', 'FvwqaoZtcrticxCutnT-jBik1OHb', 'qiniu', '1567749400', '1567749400', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('173', '2', '15619408944845504_30747052_H1920.jpg', 'Fi4t6eSlWCOEs0j9ZgFi_8BTv9BT', 'Fi4t6eSlWCOEs0j9ZgFi_8BTv9BT', 'Fi4t6eSlWCOEs0j9ZgFi_8BTv9BT', 'image/jpeg', 'jpg', '369120', '', 'Fi4t6eSlWCOEs0j9ZgFi_8BTv9BT', 'qiniu', '1567749477', '1567749477', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('174', '2', '15619409335510608_30747052_H1920.jpg', 'FgNssFOWMvVzHfTFHqC1wcY7uEPQ', 'FgNssFOWMvVzHfTFHqC1wcY7uEPQ', 'FgNssFOWMvVzHfTFHqC1wcY7uEPQ', 'image/jpeg', 'jpg', '423121', '', 'FgNssFOWMvVzHfTFHqC1wcY7uEPQ', 'qiniu', '1567749477', '1567749477', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('175', '2', '15604070279571360_46196999_H1920.jpg', 'FuOaHvkJu9J2YepaHlR-eaXw6qxM', 'FuOaHvkJu9J2YepaHlR-eaXw6qxM', 'FuOaHvkJu9J2YepaHlR-eaXw6qxM', 'image/jpeg', 'jpg', '1571572', '', 'FuOaHvkJu9J2YepaHlR-eaXw6qxM', 'qiniu', '1567749699', '1567749699', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('176', '2', '15604070304692816_46196999_H1920.jpg', 'FtPbwJLw9YakWZ6dj2jr9Jh0bUOT', 'FtPbwJLw9YakWZ6dj2jr9Jh0bUOT', 'FtPbwJLw9YakWZ6dj2jr9Jh0bUOT', 'image/jpeg', 'jpg', '474367', '', 'FtPbwJLw9YakWZ6dj2jr9Jh0bUOT', 'qiniu', '1567749747', '1567749747', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('177', '2', '15604075836965531_46196999_H1920.jpg', 'FrVokPdRpgnN9au4sJyH_xqmjdEz', 'FrVokPdRpgnN9au4sJyH_xqmjdEz', 'FrVokPdRpgnN9au4sJyH_xqmjdEz', 'image/jpeg', 'jpg', '1762333', '', 'FrVokPdRpgnN9au4sJyH_xqmjdEz', 'qiniu', '1567749747', '1567749747', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('178', '2', '15604070426362191_46196999_H1920.jpg', 'Fq-UKmRC2N_sKyWaaayG9Dm6K9xZ', 'Fq-UKmRC2N_sKyWaaayG9Dm6K9xZ', 'Fq-UKmRC2N_sKyWaaayG9Dm6K9xZ', 'image/jpeg', 'jpg', '1831977', '', 'Fq-UKmRC2N_sKyWaaayG9Dm6K9xZ', 'qiniu', '1567749748', '1567749748', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('179', '2', '15604070665640404_46196999_H1920.jpg', 'FjQjbFtJYBcTVbuGGDk2gZfIGEb0', 'FjQjbFtJYBcTVbuGGDk2gZfIGEb0', 'FjQjbFtJYBcTVbuGGDk2gZfIGEb0', 'image/jpeg', 'jpg', '2541943', '', 'FjQjbFtJYBcTVbuGGDk2gZfIGEb0', 'qiniu', '1567749748', '1567749748', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('180', '2', '15604070618044637_46196999_H1920.jpg', 'FlyvLPJI1JXgbZILxyHyoip_ClQb', 'FlyvLPJI1JXgbZILxyHyoip_ClQb', 'FlyvLPJI1JXgbZILxyHyoip_ClQb', 'image/jpeg', 'jpg', '2452693', '', 'FlyvLPJI1JXgbZILxyHyoip_ClQb', 'qiniu', '1567749748', '1567749748', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('181', '2', '15604070395403887_46196999_H1920.jpg', 'FgnLMYzlxHvlxlQPVXL_GP3Fnpow', 'FgnLMYzlxHvlxlQPVXL_GP3Fnpow', 'FgnLMYzlxHvlxlQPVXL_GP3Fnpow', 'image/jpeg', 'jpg', '2378067', '', 'FgnLMYzlxHvlxlQPVXL_GP3Fnpow', 'qiniu', '1567749748', '1567749748', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('182', '2', '4619699920150113112244032_46196999_W1920.jpg', 'FpGJ7HnqDzSgM4l5iYjIOZHTlFg0', 'FpGJ7HnqDzSgM4l5iYjIOZHTlFg0', 'FpGJ7HnqDzSgM4l5iYjIOZHTlFg0', 'image/jpeg', 'jpg', '94762', '', 'FpGJ7HnqDzSgM4l5iYjIOZHTlFg0', 'qiniu', '1567751540', '1567751540', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('183', '2', '4619699920150113112028046_46196999_W1920.jpg', 'FhzkmXGGKHGk9lkxeRWnEZ9qTMAm', 'FhzkmXGGKHGk9lkxeRWnEZ9qTMAm', 'FhzkmXGGKHGk9lkxeRWnEZ9qTMAm', 'image/jpeg', 'jpg', '123686', '', 'FhzkmXGGKHGk9lkxeRWnEZ9qTMAm', 'qiniu', '1567751645', '1567751645', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('184', '2', '4619699920150113112348098_46196999_W1920.jpg', 'FgV63rQOrpN9mpuRBBNbhY_uZ_I9', 'FgV63rQOrpN9mpuRBBNbhY_uZ_I9', 'FgV63rQOrpN9mpuRBBNbhY_uZ_I9', 'image/jpeg', 'jpg', '154531', '', 'FgV63rQOrpN9mpuRBBNbhY_uZ_I9', 'qiniu', '1567751647', '1567751647', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('185', '2', '4619699920150113112131010_46196999_H1920.jpg', 'Fj65SprZocDKOsGtl0TmMzgm5SZL', 'Fj65SprZocDKOsGtl0TmMzgm5SZL', 'Fj65SprZocDKOsGtl0TmMzgm5SZL', 'image/jpeg', 'jpg', '116845', '', 'Fj65SprZocDKOsGtl0TmMzgm5SZL', 'qiniu', '1567751647', '1567751647', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('186', '2', '4619699920150113112116026_46196999_W1920.jpg', 'Fn_vHKLdpAi9JshgBZI2Nh7Keckl', 'Fn_vHKLdpAi9JshgBZI2Nh7Keckl', 'Fn_vHKLdpAi9JshgBZI2Nh7Keckl', 'image/jpeg', 'jpg', '265542', '', 'Fn_vHKLdpAi9JshgBZI2Nh7Keckl', 'qiniu', '1567751647', '1567751647', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('187', '2', '4619699920160503165418061_46196999_H1920.jpg', 'Fu3X3iyNAQYMZVO4hCUIhfjstN4z', 'Fu3X3iyNAQYMZVO4hCUIhfjstN4z', 'Fu3X3iyNAQYMZVO4hCUIhfjstN4z', 'image/jpeg', 'jpg', '613989', '', 'Fu3X3iyNAQYMZVO4hCUIhfjstN4z', 'qiniu', '1567751966', '1567751966', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('188', '2', '4619699920160503165140049_46196999_W1920.jpg', 'Fl1gB1EShCfKegtXAA1o_vkWJWPj', 'Fl1gB1EShCfKegtXAA1o_vkWJWPj', 'Fl1gB1EShCfKegtXAA1o_vkWJWPj', 'image/jpeg', 'jpg', '857895', '', 'Fl1gB1EShCfKegtXAA1o_vkWJWPj', 'qiniu', '1567751980', '1567751980', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('189', '2', '4619699920160503165319099_46196999_H1920.jpg', 'FmnJSTXjmKtiFQGVU773HjIqngDv', 'FmnJSTXjmKtiFQGVU773HjIqngDv', 'FmnJSTXjmKtiFQGVU773HjIqngDv', 'image/jpeg', 'jpg', '770061', '', 'FmnJSTXjmKtiFQGVU773HjIqngDv', 'qiniu', '1567751981', '1567751981', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('190', '2', '4619699920160503165435029_46196999_H1920.jpg', 'FkJ4GmIkPKd9NLk1AvbelkKi_Zj3', 'FkJ4GmIkPKd9NLk1AvbelkKi_Zj3', 'FkJ4GmIkPKd9NLk1AvbelkKi_Zj3', 'image/jpeg', 'jpg', '749672', '', 'FkJ4GmIkPKd9NLk1AvbelkKi_Zj3', 'qiniu', '1567751981', '1567751981', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('191', '2', '461969992016050317063602_46196999_H1920.jpg', 'FmzWpNDmQeiQ-lTfT9Iyk15W1RGG', 'FmzWpNDmQeiQ-lTfT9Iyk15W1RGG', 'FmzWpNDmQeiQ-lTfT9Iyk15W1RGG', 'image/jpeg', 'jpg', '1304879', '', 'FmzWpNDmQeiQ-lTfT9Iyk15W1RGG', 'qiniu', '1567751981', '1567751981', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('192', '2', '4619699920160503165345043_46196999_H1920.jpg', 'Fiok_6-WHjzD6CWEP7Tw4fDp2tlK', 'Fiok_6-WHjzD6CWEP7Tw4fDp2tlK', 'Fiok_6-WHjzD6CWEP7Tw4fDp2tlK', 'image/jpeg', 'jpg', '1515671', '', 'Fiok_6-WHjzD6CWEP7Tw4fDp2tlK', 'qiniu', '1567751981', '1567751981', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('193', '1', '%E8%8B%A5%E6%B0%B4%E5%A4%87%E4%BB%BD.zip', 'lvRlTt1DHHxgLhtCi94kCjZfhYu8', 'lvRlTt1DHHxgLhtCi94kCjZfhYu8', 'lvRlTt1DHHxgLhtCi94kCjZfhYu8', 'application/x-zip-compressed', 'zip', '234212743', '', 'lvRlTt1DHHxgLhtCi94kCjZfhYu8', 'qiniu', '1569388760', '1569388760', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('194', '2', '592543.jpg', 'FvUF_qInm1GqZy4VCXCU6pZ_JkXb', 'FvUF_qInm1GqZy4VCXCU6pZ_JkXb', 'FvUF_qInm1GqZy4VCXCU6pZ_JkXb', 'image/jpeg', 'jpg', '1029660', '', 'FvUF_qInm1GqZy4VCXCU6pZ_JkXb', 'qiniu', '1577012101', '1577012101', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('195', '2', '75408.jpg', 'FrtIXiG9LMyhVm5XbMDv2DPygQ-E', 'FrtIXiG9LMyhVm5XbMDv2DPygQ-E', 'FrtIXiG9LMyhVm5XbMDv2DPygQ-E', 'image/jpeg', 'jpg', '363582', '', 'FrtIXiG9LMyhVm5XbMDv2DPygQ-E', 'qiniu', '1577012106', '1577012106', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('196', '2', '699675.jpg', 'FvtAd0L7mS0BxoqWYcNpgQ1uYxZs', 'FvtAd0L7mS0BxoqWYcNpgQ1uYxZs', 'FvtAd0L7mS0BxoqWYcNpgQ1uYxZs', 'image/jpeg', 'jpg', '1795725', '', 'FvtAd0L7mS0BxoqWYcNpgQ1uYxZs', 'qiniu', '1577012111', '1577012111', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('197', '2', 'QQ_headIcon.jpg', 'FsWlvaXU289FX6GJ4lnPG9m-q44i', 'FsWlvaXU289FX6GJ4lnPG9m-q44i', 'FsWlvaXU289FX6GJ4lnPG9m-q44i', 'image/jpeg', 'jpg', '6138', '', 'FsWlvaXU289FX6GJ4lnPG9m-q44i', 'qiniu', '1578571231', '1578571231', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('198', '2', 'aoligei.gif', 'lkCcheo8lkZRoeP6Jpw7jRtP_DUg', 'lkCcheo8lkZRoeP6Jpw7jRtP_DUg', 'lkCcheo8lkZRoeP6Jpw7jRtP_DUg', 'image/gif', 'gif', '38463422', '', 'lkCcheo8lkZRoeP6Jpw7jRtP_DUg', 'qiniu', '1581862636', '1581862636', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('199', '2', 'bg1.jpg', 'Fn5eGOt9j_Sp2o4JHZribPkR7RW-', 'Fn5eGOt9j_Sp2o4JHZribPkR7RW-', 'Fn5eGOt9j_Sp2o4JHZribPkR7RW-', 'image/jpeg', 'jpg', '285574', '', 'Fn5eGOt9j_Sp2o4JHZribPkR7RW-', 'qiniu', '1582270416', '1582270416', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('200', '2', 'bg2.jpg', 'Fn4eXXi8mtckFGfr0PlJs1jna0v1', 'Fn4eXXi8mtckFGfr0PlJs1jna0v1', 'Fn4eXXi8mtckFGfr0PlJs1jna0v1', 'image/jpeg', 'jpg', '212544', '', 'Fn4eXXi8mtckFGfr0PlJs1jna0v1', 'qiniu', '1582270421', '1582270421', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('201', '2', 'bg0.jpg', 'FiQBhePKbG63So8ApQZMkXi0-QKC', 'FiQBhePKbG63So8ApQZMkXi0-QKC', 'FiQBhePKbG63So8ApQZMkXi0-QKC', 'image/jpeg', 'jpg', '116587', '', 'FiQBhePKbG63So8ApQZMkXi0-QKC', 'qiniu', '1582270428', '1582270428', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('202', '2', 'eibk.exe', 'lqkaCaR9FhpuZcXhP_d1ge7_owN3', 'lqkaCaR9FhpuZcXhP_d1ge7_owN3', 'lqkaCaR9FhpuZcXhP_d1ge7_owN3', 'application/x-msdownload', 'exe', '80133632', '', 'lqkaCaR9FhpuZcXhP_d1ge7_owN3', 'qiniu', '1582770550', '1582770550', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('203', '2', '20200311_20-19-1583929156.png', 'FpOUHwIjmyMIyZ_I78D5VJa5zFkr', 'FpOUHwIjmyMIyZ_I78D5VJa5zFkr', 'FpOUHwIjmyMIyZ_I78D5VJa5zFkr', 'image/png', 'png', '142265', '', 'FpOUHwIjmyMIyZ_I78D5VJa5zFkr', 'qiniu', '1584674328', '1584674328', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('204', '2', '20200320_11-19-1584674344.png', 'FtSN-_Ja_dCcH9QtRin2Mru-dk4R', 'FtSN-_Ja_dCcH9QtRin2Mru-dk4R', 'FtSN-_Ja_dCcH9QtRin2Mru-dk4R', 'image/png', 'png', '311254', '', 'FtSN-_Ja_dCcH9QtRin2Mru-dk4R', 'qiniu', '1584674359', '1584674359', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('205', '2', '20200320_11-39-1584675578.png', 'FoBNGQQ4cQS1oNwiPQVliidIN6BM', 'FoBNGQQ4cQS1oNwiPQVliidIN6BM', 'FoBNGQQ4cQS1oNwiPQVliidIN6BM', 'image/png', 'png', '653', '', 'FoBNGQQ4cQS1oNwiPQVliidIN6BM', 'qiniu', '1584675582', '1584675582', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('206', '2', '%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_20191221142904.png', 'Fg1FbbQM9rFjorNPexOpNaRC0fbX', 'Fg1FbbQM9rFjorNPexOpNaRC0fbX', 'Fg1FbbQM9rFjorNPexOpNaRC0fbX', 'image/png', 'png', '517738', '', 'Fg1FbbQM9rFjorNPexOpNaRC0fbX', 'qiniu', '1586865734', '1586865734', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('207', '2', '140245.jpg', 'FpoNMMMHr_4uMW_Ss77h2rtTMugb', 'FpoNMMMHr_4uMW_Ss77h2rtTMugb', 'FpoNMMMHr_4uMW_Ss77h2rtTMugb', 'image/jpeg', 'jpg', '18189', '', 'FpoNMMMHr_4uMW_Ss77h2rtTMugb', 'qiniu', '1589779539', '1589779539', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('208', '1', 'JB%E5%85%A8%E5%AE%B6%E6%A1%B6%E7%A0%B4%E8%A7%A3%E6%96%87%E4%BB%B6.zip', 'FuN8vQNTQXtq4OjOzF2JaxAk8q6c', 'FuN8vQNTQXtq4OjOzF2JaxAk8q6c', 'FuN8vQNTQXtq4OjOzF2JaxAk8q6c', 'application/zip', 'zip', '2459965', '', 'FuN8vQNTQXtq4OjOzF2JaxAk8q6c', 'qiniu', '1590540287', '1590540287', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('209', '2', 'vlcsnap-2018-12-18-21h49m22s782.png', 'FjRuc_YQrs6H6CdrEyxqm0Xvnd_0', 'FjRuc_YQrs6H6CdrEyxqm0Xvnd_0', 'FjRuc_YQrs6H6CdrEyxqm0Xvnd_0', 'image/png', 'png', '681838', '', 'FjRuc_YQrs6H6CdrEyxqm0Xvnd_0', 'qiniu', '1591597067', '1591597067', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('210', '2', '5cdbe06231c35.jpg', 'FpjaZCLFNigyKZrcPabDwNabopTm', 'FpjaZCLFNigyKZrcPabDwNabopTm', 'FpjaZCLFNigyKZrcPabDwNabopTm', 'image/jpeg', 'jpg', '319714', '', 'FpjaZCLFNigyKZrcPabDwNabopTm', 'qiniu', '1592556034', '1592556034', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('211', '2', 'Snowstorm-forest.jpg', 'lgeobRe0IhK1Y8M6Cw01fukiByZd', 'lgeobRe0IhK1Y8M6Cw01fukiByZd', 'lgeobRe0IhK1Y8M6Cw01fukiByZd', 'image/jpeg', 'jpg', '12023207', '', 'lgeobRe0IhK1Y8M6Cw01fukiByZd', 'qiniu', '1592556048', '1592556048', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('212', '2', 'timg+%281%29.jpg', 'FibByK7pbXWHhLCXDB0nM99gbAWX', 'FibByK7pbXWHhLCXDB0nM99gbAWX', 'FibByK7pbXWHhLCXDB0nM99gbAWX', 'image/jpeg', 'jpg', '25329', '', 'FibByK7pbXWHhLCXDB0nM99gbAWX', 'qiniu', '1599025514', '1599025514', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('213', '2', 'timg.jpg', 'FmndS0azlcxQLunXzzJ-mEVhxvrM', 'FmndS0azlcxQLunXzzJ-mEVhxvrM', 'FmndS0azlcxQLunXzzJ-mEVhxvrM', 'image/jpeg', 'jpg', '76170', '', 'FmndS0azlcxQLunXzzJ-mEVhxvrM', 'qiniu', '1599025539', '1599025539', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('214', '1', '%E5%B1%8F%E5%B9%95%E5%BD%95%E5%83%8F.zip', 'lp_NcdNYGSiMmvlqJrEee1DhwbQH', 'lp_NcdNYGSiMmvlqJrEee1DhwbQH', 'lp_NcdNYGSiMmvlqJrEee1DhwbQH', 'application/zip', 'zip', '283212885', '', 'lp_NcdNYGSiMmvlqJrEee1DhwbQH', 'qiniu', '1599970632', '1599970632', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('215', '1', '%E8%9C%98%E8%9B%9B%E6%B1%A0%E6%BC%94%E7%A4%BA.mp4', 'V6rprd1oRbLfRVdpp0nYgOajxOA=/luJ7-SzbU8iQl255B6bhAPuex8na', 'Fc-gSAYyzBr7g02HfqrmoGN9pGI=/luJ7-SzbU8iQl255B6bhAPuex8na', 'luJ7-SzbU8iQl255B6bhAPuex8na', 'video/mp4', 'mp4', '12872605', '', 'luJ7-SzbU8iQl255B6bhAPuex8na', 'qiniu', '1602209276', '1602209310', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('216', '1', 'araneid.zip', 'lttcqjYGAA9aDy3kS2BLwUxKu9MT', 'lttcqjYGAA9aDy3kS2BLwUxKu9MT', 'lttcqjYGAA9aDy3kS2BLwUxKu9MT', 'application/zip', 'zip', '216465836', '', 'lttcqjYGAA9aDy3kS2BLwUxKu9MT', 'qiniu', '1604630686', '1604630686', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('217', '1', 'ccsetup572.exe', 'lgfBsbCje7gT6QvudGNNIg5FBx0h', 'lgfBsbCje7gT6QvudGNNIg5FBx0h', 'lgfBsbCje7gT6QvudGNNIg5FBx0h', 'application/x-msdownload', 'exe', '29069888', '', 'lgfBsbCje7gT6QvudGNNIg5FBx0h', 'qiniu', '1604630791', '1604630791', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('218', '2', '886043428%281%29.jpeg', 'FhXxm4tOcdiWHytm7-YRPTsMG156', 'FhXxm4tOcdiWHytm7-YRPTsMG156', 'FhXxm4tOcdiWHytm7-YRPTsMG156', 'image/jpeg', 'jpeg', '93095', '', 'FhXxm4tOcdiWHytm7-YRPTsMG156', 'qiniu', '1606133047', '1606133047', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('219', '2', 'LICENSE.electron.txt', 'FrXKXCrxGiNfjWR3vuh_n12-xJbh', 'FrXKXCrxGiNfjWR3vuh_n12-xJbh', 'FrXKXCrxGiNfjWR3vuh_n12-xJbh', 'text/plain', 'txt', '1060', '', 'FrXKXCrxGiNfjWR3vuh_n12-xJbh', 'qiniu', '1612369362', '1612369362', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('220', '2', '455.jpg', 'Fu-MuFLuRB1a-4drNX-YM4B-6EGf', 'Fu-MuFLuRB1a-4drNX-YM4B-6EGf', 'Fu-MuFLuRB1a-4drNX-YM4B-6EGf', 'image/jpeg', 'jpg', '107919', '', 'Fu-MuFLuRB1a-4drNX-YM4B-6EGf', 'qiniu', '1617258618', '1617258618', '100', '1');
INSERT INTO `ek_admin_attachment` VALUES ('221', '2', '456.jpg', 'FqZWlZBwohNGEPOXuRLQoTv9UOYn', 'FqZWlZBwohNGEPOXuRLQoTv9UOYn', 'FqZWlZBwohNGEPOXuRLQoTv9UOYn', 'image/jpeg', 'jpg', '86805', '', 'FqZWlZBwohNGEPOXuRLQoTv9UOYn', 'qiniu', '1617258621', '1617258621', '100', '1');

-- ----------------------------
-- Table structure for `ek_admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `ek_admin_menu`;
CREATE TABLE `ek_admin_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上级菜单id',
  `module` varchar(16) NOT NULL DEFAULT '' COMMENT '模块名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '菜单标题',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `url_type` varchar(16) NOT NULL DEFAULT '' COMMENT '链接类型（link：外链，module：模块）',
  `url_value` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `url_target` varchar(16) NOT NULL DEFAULT '_self' COMMENT '链接打开方式：_blank,_self',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

-- ----------------------------
-- Records of ek_admin_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `ek_admin_production`
-- ----------------------------
DROP TABLE IF EXISTS `ek_admin_production`;
CREATE TABLE `ek_admin_production` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `des` varchar(150) NOT NULL DEFAULT '' COMMENT '描述',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '访问地址',
  `cover` varchar(100) NOT NULL DEFAULT '' COMMENT '封面',
  `content` text NOT NULL COMMENT '内容',
  `time` int(11) NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ek_admin_production
-- ----------------------------

-- ----------------------------
-- Table structure for `ek_admin_role`
-- ----------------------------
DROP TABLE IF EXISTS `ek_admin_role`;
CREATE TABLE `ek_admin_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '角色名称',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '角色描述',
  `menu_auth` text NOT NULL COMMENT '菜单权限',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `access` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否可登录后台',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of ek_admin_role
-- ----------------------------

-- ----------------------------
-- Table structure for `ek_admin_user`
-- ----------------------------
DROP TABLE IF EXISTS `ek_admin_user`;
CREATE TABLE `ek_admin_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户名',
  `username` varchar(32) NOT NULL,
  `nickname` varchar(32) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(96) NOT NULL DEFAULT '' COMMENT '密码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱地址',
  `auth_qq` varchar(100) DEFAULT NULL,
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号码',
  `avatar` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '头像',
  `role` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色ID',
  `sing` varchar(200) NOT NULL DEFAULT '' COMMENT '签名',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '最后一次登录时间',
  `last_login_ip` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '登录ip',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `is_client` int(1) NOT NULL DEFAULT '0' COMMENT '是否可以登录客户端',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态：0禁用，1启用',
  `api_open` int(2) NOT NULL DEFAULT '0' COMMENT '是否申请api',
  `api_secret` varchar(50) DEFAULT '' COMMENT 'secret',
  `api_openid` varchar(50) DEFAULT NULL COMMENT '开放接口openid',
  `bg` varchar(150) NOT NULL DEFAULT 'http://api.bkybj.com/client/image/userbg.png' COMMENT '用户主题',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of ek_admin_user
-- ----------------------------
INSERT INTO `ek_admin_user` VALUES ('1', 'beatrice950201', '一根小腿毛', '$2y$10$J9pXFcC42Mr240/fFANmmOSRpfJtL/nzgIjlPmSjCLVC91imHiSDW', '1368213727@qq.com', 'E8E86579524873BC62E21C747149AD00', '18213571053', '99', '2', '莫失莫忘，莫惆怅，莫提前生。。。', '1503488647', '1617076942', '1617076942', '248258144', '100', '1', '1', '1', '809b403b9bd566ad92b29f0643d29a18', '393c62bc406055bf25961450d0a58d1d', 'http://api.bkybj.com/client/image/userbg.png');
INSERT INTO `ek_admin_user` VALUES ('2', 'test', '测试账号', '$2y$10$wRmwnrZOR5krsUGi2nHu4O3hqGMcgC8Ql7cwEEnUeXLwjDiDh6YSW', '32922565@qq.com', null, '18213571053', '212', '2', '莫失莫忘，莫惆怅，莫提前生。。。', '1503488647', '1617258441', '1617258358', '737348692', '100', '1', '1', '1', '809b403b9bd566ad92b29f0643d29a18', '393c62bc406055bf25961450d0a58d1d', 'http://api.bkybj.com/client/image/theme01.jpg');

-- ----------------------------
-- Table structure for `ek_common_column`
-- ----------------------------
DROP TABLE IF EXISTS `ek_common_column`;
CREATE TABLE `ek_common_column` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '分类所属用户',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '栏目名称',
  `description` char(150) NOT NULL DEFAULT '' COMMENT '描述',
  `model` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '1:视频,2:音乐,3:图片,4:笔记,5:案例,6:文件,7:接口文档',
  `cover` int(11) NOT NULL DEFAULT '0' COMMENT '封面图',
  `good` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `bad` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '踩数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `rank_auth` int(11) NOT NULL DEFAULT '0' COMMENT '0:私人,1:公开',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of ek_common_column
-- ----------------------------
INSERT INTO `ek_common_column` VALUES ('1', '0', '1', '收藏屏保壁纸', '收藏屏保壁纸', '3', '65', '0', '0', '1549949509', '1566277236', '100', '1', '1');
INSERT INTO `ek_common_column` VALUES ('4', '0', '1', '风景留念', '风景留念', '3', '87', '0', '0', '1549949856', '1549949856', '100', '1', '1');
INSERT INTO `ek_common_column` VALUES ('5', '0', '1', '我的相册', '我的相册', '3', '90', '0', '0', '1549950449', '1554522012', '100', '1', '1');
INSERT INTO `ek_common_column` VALUES ('6', '0', '1', '逆水寒壁纸', '逆水寒壁纸', '3', '100', '0', '0', '1549953855', '1549953855', '100', '1', '1');
INSERT INTO `ek_common_column` VALUES ('7', '0', '1', '下载来的', '下载来的', '3', '106', '0', '0', '1549954965', '1549954965', '100', '1', '1');
INSERT INTO `ek_common_column` VALUES ('8', '0', '1', '下载来的一', '下载来的一', '3', '107', '0', '0', '1549954983', '1549954983', '100', '1', '1');
INSERT INTO `ek_common_column` VALUES ('20', '0', '2', '测试相册', '测试相册', '3', '212', '0', '0', '1599025532', '1617258375', '100', '1', '1');

-- ----------------------------
-- Table structure for `ek_common_comment`
-- ----------------------------
DROP TABLE IF EXISTS `ek_common_comment`;
CREATE TABLE `ek_common_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` int(6) unsigned NOT NULL DEFAULT '0' COMMENT '主题id',
  `topic_type` int(1) unsigned NOT NULL DEFAULT '1' COMMENT '主题类型:1:作品',
  `content` text COMMENT '评论内容',
  `from_uid` int(5) unsigned NOT NULL DEFAULT '0' COMMENT '评论用户id',
  `to_uid` int(5) unsigned NOT NULL DEFAULT '0' COMMENT '评论目标用户id',
  `update_time` int(10) NOT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58492 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ek_common_comment
-- ----------------------------
INSERT INTO `ek_common_comment` VALUES ('2', '144', '1', '好叼的系统啊；哈哈哈哈~<img src=\"/static/comment/img/tieba/48.jpg\" alt=\"\" data-alias=\"damuzhi\" title=\"大拇指\"><img src=\"/static/comment/img/tieba/48.jpg\" alt=\"\" data-alias=\"damuzhi\" title=\"大拇指\"><img src=\"/static/comment/img/tieba/48.jpg\" alt=\"\" data-alias=\"damuzhi\" title=\"大拇指\">', '1', '0', '1516274524');
INSERT INTO `ek_common_comment` VALUES ('4', '144', '1', '是我见过最好用的程序。GOOD<img src=\"/static/comment/img/tieba/13.jpg\" alt=\"\" data-alias=\"zhenbang\" title=\"真棒\">', '1', '0', '1516695223');
INSERT INTO `ek_common_comment` VALUES ('5', '144', '1', '测试一下啊啊 啊<img src=\"/static/comment/img/tieba/32.jpg\" alt=\"\" data-alias=\"jinya\" title=\"惊讶\"><img src=\"/static/comment/img/tieba/36.jpg\" alt=\"\" data-alias=\"meigui\" title=\"玫瑰\"><img src=\"/static/comment/img/AcFun/35.png\" alt=\"\" data-alias=\"35.png\" title=\"\"><img src=\"/static/comment/img/AcFun/38.png\" alt=\"\" data-alias=\"38.png\" title=\"\">', '1', '0', '1516695565');
INSERT INTO `ek_common_comment` VALUES ('6', '144', '1', '这是我见过最好的程序', '1', '0', '1516695611');
INSERT INTO `ek_common_comment` VALUES ('7', '144', '1', '还在测试阶段？', '1', '0', '1517238568');
INSERT INTO `ek_common_comment` VALUES ('8', '144', '1', '评论一下啊', '1', '0', '1519803229');
INSERT INTO `ek_common_comment` VALUES ('9', '144', '1', '看你年纪不大，做的项目挺不错的，你是参入，还是主力开发？', '1', '0', '1534214273');
INSERT INTO `ek_common_comment` VALUES ('10', '144', '1', '看着url，是TP吧', '1', '0', '1534214335');

-- ----------------------------
-- Table structure for `ek_common_document`
-- ----------------------------
DROP TABLE IF EXISTS `ek_common_document`;
CREATE TABLE `ek_common_document` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '栏目id',
  `model` enum('4','3','2','5','6','1') NOT NULL DEFAULT '1' COMMENT '1:视频,2:音乐,3:图片,4:笔记,5:案例,6:文件,7:接口文档',
  `title` varchar(256) NOT NULL DEFAULT '' COMMENT '标题',
  `shorttitle` varchar(32) NOT NULL DEFAULT '' COMMENT '简略标题',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `flag` set('j','p','b','s','a','f','c','h') DEFAULT NULL COMMENT '自定义属性',
  `view` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '阅读量',
  `comment` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `good` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `bad` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '踩数',
  `mark` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数量',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `trash` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '回收站',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=420 DEFAULT CHARSET=utf8 COMMENT='文档基础表';

-- ----------------------------
-- Records of ek_common_document
-- ----------------------------
INSERT INTO `ek_common_document` VALUES ('1', '0', '1', '【剑网三】桃花酒凉[高清版]', '【剑网三】桃花酒凉[高清版]', '1', null, '0', '0', '0', '0', '0', '1549947809', '1549947809', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('2', '0', '1', 'Hoaprox - Ngẫu Hứng', 'Hoaprox - Ngẫu Hứng', '1', null, '0', '0', '0', '0', '0', '1549947837', '1549947837', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('3', '0', '1', '大理一日游', '大理一日游', '1', null, '0', '0', '0', '0', '0', '1549947864', '1549947864', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('4', '0', '1', '大鱼海棠', '大鱼海棠', '1', null, '0', '0', '0', '0', '0', '1549947878', '1549947878', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('5', '0', '1', '独立寒江', '独立寒江', '1', null, '0', '0', '0', '0', '0', '1549947899', '1549947899', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('6', '0', '1', '剑三《拂雪》', '剑三《拂雪》', '1', null, '0', '0', '0', '0', '0', '1549947945', '1549947945', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('7', '0', '1', '剑网叁剧情歌《眉间雪》', '剑网叁剧情歌《眉间雪》', '1', null, '0', '0', '0', '0', '0', '1549947973', '1549947973', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('8', '0', '1', '天涯，自己把自己美哭的一首歌', '天涯，自己把自己美哭的一首歌', '1', null, '0', '0', '0', '0', '0', '1549948013', '1549948013', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('9', '0', '1', '相思引 —《天涯明月刀OL》', '相思引 —《天涯明月刀OL》', '1', null, '0', '0', '0', '0', '0', '1549948055', '1549948055', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('10', '0', '1', '勿忘师恩《如寄》', '勿忘师恩《如寄》', '1', null, '0', '0', '0', '0', '0', '1549948083', '1549948083', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('11', '0', '6', 'APICloud-Studio.rar', 'APICloud-Studio.rar', '1', null, '0', '0', '0', '0', '0', '1549948206', '1549948206', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('12', '0', '6', 'APICLOUD模块.rar', 'APICLOUD模块.rar', '1', null, '0', '0', '0', '0', '0', '1549948323', '1549948323', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('13', '0', '6', 'C  环境.rar', 'C  环境.rar', '1', null, '0', '0', '0', '0', '0', '1549948343', '1549948343', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('15', '0', '6', 'eibkGo语言.rar', 'eibkGo语言.rar', '1', null, '0', '0', '0', '0', '0', '1549948368', '1549948368', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('16', '0', '6', 'git密钥.rar', 'git密钥.rar', '1', null, '0', '0', '0', '0', '0', '1549948379', '1549948379', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('17', '0', '6', 'Landui代码全套', 'Landui代码全套', '1', null, '0', '0', '0', '0', '0', '1549948443', '1549948443', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('18', '0', '6', 'navicat绿色 密码.zip', 'navicat绿色 密码.zip', '1', null, '0', '0', '0', '0', '0', '1549948466', '1549948466', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('19', '0', '6', 'Phalcon 文档.rar', 'Phalcon 文档.rar', '1', null, '0', '0', '0', '0', '0', '1549948473', '1549948473', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('20', '0', '6', 'phalcon-devtools-master.rar', 'phalcon-devtools-master.rar', '1', null, '0', '0', '0', '0', '0', '1549948480', '1549948480', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('22', '0', '6', 'PingFang SC_字体.zip', 'PingFang SC_字体.zip', '1', null, '0', '0', '0', '0', '0', '1549948507', '1549948507', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('23', '0', '6', 'react本地储存.txt', 'react本地储存.txt', '1', null, '0', '0', '0', '0', '0', '1549948517', '1549948517', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('24', '0', '6', 'react开发豆瓣fm音乐播放器.zip', 'react开发豆瓣fm音乐播放器.zip', '1', null, '0', '0', '0', '0', '0', '1549948526', '1549948526', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('25', '0', '6', 'Win Mysql5.7 PHP7.1 VC库2013 32位64位 VC14,64位.rar', 'Win Mysql5.7 PHP7.1 VC库2013 32位6', '1', null, '0', '0', '0', '0', '0', '1549948617', '1549948617', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('26', '0', '6', '阿里云短信.rar', '阿里云短信.rar', '1', null, '0', '0', '0', '0', '0', '1549948624', '1549948624', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('27', '0', '6', '爱贝壳golang版.rar', '爱贝壳golang版.rar', '1', null, '0', '0', '0', '0', '0', '1549948643', '1549948643', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('29', '0', '6', '爱贝壳海报.rar', '爱贝壳海报.rar', '1', null, '0', '0', '0', '0', '0', '1549948666', '1549948666', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('30', '0', '6', '爱贝壳轮播图.rar', '爱贝壳轮播图.rar', '1', null, '0', '0', '0', '0', '0', '1549948673', '1549948673', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('31', '0', '6', '贝壳云整套备份.zip', '贝壳云整套备份.zip', '1', null, '0', '0', '0', '0', '0', '1549948719', '1549948719', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('32', '0', '6', '博客psd.zip', '博客psd.zip', '1', null, '0', '0', '0', '0', '0', '1549948730', '1549948730', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('33', '0', '6', '不打广告的rar', '不打广告的rar.rar', '1', null, '0', '0', '0', '0', '0', '1549948744', '1549948753', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('34', '0', '6', '第三方登录接口大全.rar', '第三方登录接口大全.rar', '1', null, '0', '0', '0', '0', '0', '1549948761', '1549948761', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('35', '0', '6', '费尔康骨架.rar', '费尔康骨架.rar', '1', null, '0', '0', '0', '0', '0', '1549948767', '1549948767', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('36', '0', '6', '搞笑笔记笑话程序(内含更新文件).zip', '搞笑笔记笑话程序(内含更新文件).zip', '1', null, '0', '0', '0', '0', '0', '1549948788', '1549948788', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('37', '0', '6', '谷歌访问助手2.zip', '谷歌访问助手2.zip', '1', null, '0', '0', '0', '0', '0', '1549948795', '1549948795', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('38', '0', '6', '海豚一朵花版本.rar', '海豚一朵花版本.rar', '1', null, '0', '0', '0', '0', '0', '1549948809', '1549948809', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('39', '0', '6', '机场 物流 污水.rar', '机场 物流 污水.rar', '1', null, '0', '0', '0', '0', '0', '1549948858', '1549948858', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('40', '0', '6', '简繁切换实现.zip', '简繁切换实现.zip', '1', null, '0', '0', '0', '0', '0', '1549948873', '1549948873', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('41', '0', '6', '截图定位软件.zip', '截图定位软件.zip', '1', null, '0', '0', '0', '0', '0', '1549948881', '1549948881', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('42', '0', '6', '蓝队微信小程序.rar', '蓝队微信小程序.rar', '1', null, '0', '0', '0', '0', '0', '1549948890', '1549948890', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('43', '0', '6', '麻片.rar', '麻片.rar', '1', null, '0', '0', '0', '0', '0', '1549948906', '1549948906', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('44', '0', '6', '鸟云代理平台.rar', '鸟云代理平台.rar', '1', null, '0', '0', '0', '0', '0', '1549948918', '1549948918', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('45', '0', '6', '钱老板队列任务.rar', '钱老板队列任务.rar', '1', null, '0', '0', '0', '0', '0', '1549948930', '1549948930', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('46', '0', '6', '身份证 名片.rar', '身份证 名片.rar', '1', null, '0', '0', '0', '0', '0', '1549948938', '1549948938', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('47', '0', '6', '数据库设计——评论回复功能.png', '数据库设计——评论回复功能.png', '1', null, '0', '0', '0', '0', '0', '1549948945', '1549948945', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('48', '0', '6', '网站点赞 评论 回复 数据库设计.png', '网站点赞 评论 回复 数据库设计.png', '1', null, '0', '0', '0', '0', '0', '1549948952', '1549948952', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('50', '0', '6', '小飞机.rar', '小飞机.rar', '1', null, '0', '0', '0', '0', '0', '1549948970', '1549948970', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('51', '0', '6', '许博士爬虫.rar', '许博士爬虫.rar', '1', null, '0', '0', '0', '0', '0', '1549948975', '1549948975', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('52', '0', '6', '杨永飞头像PSD.rar', '杨永飞头像PSD.rar', '1', null, '0', '0', '0', '0', '0', '1549948983', '1549948983', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('53', '0', '6', '张信华源代码.rar', '张信华源代码.rar', '1', null, '0', '0', '0', '0', '0', '1549949118', '1549949118', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('55', '0', '6', '中文汉字转化成拼音js代码.zip', '中文汉字转化成拼音js代码.zip', '1', null, '0', '0', '0', '0', '0', '1549949133', '1549949133', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('56', '0', '6', '注册表单密码验证提示代码.zip', '注册表单密码验证提示代码.zip', '1', null, '0', '0', '0', '0', '0', '1549949140', '1549949140', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('57', '0', '6', '自适应图片大小.zip', '自适应图片大小.zip', '1', null, '0', '0', '0', '0', '0', '1549949147', '1549949147', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('58', '1', '3', 'FgeQrgq6tkfhO7_78BY3_kgWv7Ro.jpg', 'FgeQrgq6tkfhO7_78BY3_kgWv7Ro.jpg', '1', null, '0', '0', '0', '0', '0', '1549949533', '1549949533', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('59', '1', '3', 'FgWX0Vl_bhTFEWMIuvcALsRohq2u.jpg', 'FgWX0Vl_bhTFEWMIuvcALsRohq2u.jpg', '1', null, '0', '0', '0', '0', '0', '1549949533', '1549949533', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('60', '1', '3', 'Fh-5mktGBw-7IPsxn1gH8cFj6MN5.jpg', 'Fh-5mktGBw-7IPsxn1gH8cFj6MN5.jpg', '1', null, '0', '0', '0', '0', '0', '1549949533', '1549949533', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('61', '1', '3', 'FgZiJ1OOeoo5kE3F2sHEDsiccDm7.jpg', 'FgZiJ1OOeoo5kE3F2sHEDsiccDm7.jpg', '1', null, '0', '0', '0', '0', '0', '1549949533', '1549949533', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('62', '1', '3', 'FhDcdofEIy2I7pK0rVGp5L2km80o.jpg', 'FhDcdofEIy2I7pK0rVGp5L2km80o.jpg', '1', null, '0', '0', '0', '0', '0', '1549949533', '1549949533', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('63', '1', '3', 'FgEY3TzzDM5dbY3-gOsDKSRpyJin.jpg', 'FgEY3TzzDM5dbY3-gOsDKSRpyJin.jpg', '1', null, '0', '0', '0', '0', '0', '1549949533', '1549949533', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('64', '1', '3', 'FjB1QPDKcTJZ-T_EyfrVPkIHe6uh.jpg', 'FjB1QPDKcTJZ-T_EyfrVPkIHe6uh.jpg', '1', null, '0', '0', '0', '0', '0', '1549949534', '1549949534', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('65', '1', '3', 'FkiIRMXF1e5VdLPSEpMUVY-1dk7K.jpg', 'FkiIRMXF1e5VdLPSEpMUVY-1dk7K.jpg', '1', null, '0', '0', '0', '0', '0', '1549949534', '1549949534', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('66', '1', '3', 'FiHpX2m_HQzSBKURZnGxXcYsdmRt.jpg', 'FiHpX2m_HQzSBKURZnGxXcYsdmRt.jpg', '1', null, '0', '0', '0', '0', '0', '1549949534', '1549949534', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('67', '1', '3', 'FiLytpjKhD2tCRxxasddNMF6_3KE.jpg', 'FiLytpjKhD2tCRxxasddNMF6_3KE.jpg', '1', null, '0', '0', '0', '0', '0', '1549949534', '1549949534', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('68', '1', '3', 'FjWfQMgboWhVCB2cZnbePPLY_DSg.jpg', 'FjWfQMgboWhVCB2cZnbePPLY_DSg.jpg', '1', null, '0', '0', '0', '0', '0', '1549949534', '1549949534', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('69', '1', '3', 'Flz9nwDUpW6dBAMhpTdTxaT-qDuA.jpg', 'Flz9nwDUpW6dBAMhpTdTxaT-qDuA.jpg', '1', null, '0', '0', '0', '0', '0', '1549949534', '1549949534', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('70', '1', '3', 'Fn_ce1WWqnrk3AWxWhXCWfjD2TdL.jpg', 'Fn_ce1WWqnrk3AWxWhXCWfjD2TdL.jpg', '1', null, '0', '0', '0', '0', '0', '1549949534', '1549949534', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('71', '1', '3', 'Fn8Y-8JkbZt3Bnyf4juFy0I8q4bz.jpg', 'Fn8Y-8JkbZt3Bnyf4juFy0I8q4bz.jpg', '1', null, '0', '0', '0', '0', '0', '1549949534', '1549949534', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('84', '4', '3', '20181215_165233278_iOS.jpg', '20181215_165233278_iOS.jpg', '1', null, '0', '0', '0', '0', '0', '1549949868', '1549949868', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('85', '4', '3', '20181215_165239380_iOS.jpg', '20181215_165239380_iOS.jpg', '1', null, '0', '0', '0', '0', '0', '1549949869', '1549949869', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('87', '1', '3', 'FuOPQb0Ue7YCIIGwb7riDL0WhjtM.jpg', 'FuOPQb0Ue7YCIIGwb7riDL0WhjtM.jpg', '1', null, '0', '0', '0', '0', '0', '1549950037', '1549950037', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('88', '1', '3', 'FpvvAEhYgBBax756_8B_bM6vnW4O.jpg', 'FpvvAEhYgBBax756_8B_bM6vnW4O.jpg', '1', null, '0', '0', '0', '0', '0', '1549950038', '1549950038', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('89', '1', '3', 'FoO3A62epB7E_Qy7SmrEZxUBgQSK.jpg', 'FoO3A62epB7E_Qy7SmrEZxUBgQSK.jpg', '1', null, '0', '0', '0', '0', '0', '1549950038', '1549950038', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('90', '1', '3', 'Fp79phwWLXumXKg2ds3xGHFk4TYy.jpg', 'Fp79phwWLXumXKg2ds3xGHFk4TYy.jpg', '1', null, '0', '0', '0', '0', '0', '1549950038', '1549950038', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('91', '1', '3', 'FqasWx-2fITGTaJY7JeJy1pX6Nfc.jpg', 'FqasWx-2fITGTaJY7JeJy1pX6Nfc.jpg', '1', null, '0', '0', '0', '0', '0', '1549950038', '1549950038', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('92', '1', '3', 'FpGvJ9RDeddcuDIJB18nJv4nE4h6.jpg', 'FpGvJ9RDeddcuDIJB18nJv4nE4h6.jpg', '1', null, '0', '0', '0', '0', '0', '1549950038', '1549950038', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('93', '1', '3', 'lh79zV9GgCa_cAImbFXQwqcqXHK8.jpg', 'lh79zV9GgCa_cAImbFXQwqcqXHK8.jpg', '1', null, '0', '0', '0', '0', '0', '1549950038', '1549950038', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('94', '1', '3', 'lie9wjrJOzib-9at9O3Tgy1koJAS.jpg', 'lie9wjrJOzib-9at9O3Tgy1koJAS.jpg', '1', null, '0', '0', '0', '0', '0', '1549950038', '1549950038', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('95', '1', '3', 'lpKn-6lwUqv40R_WBMbHALdUsRlJ.jpg', 'lpKn-6lwUqv40R_WBMbHALdUsRlJ.jpg', '1', null, '0', '0', '0', '0', '0', '1549950038', '1549950038', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('96', '1', '3', 'Fuybcj8LeHeOYmSOOnjUa1bCByNQ.jpg', 'Fuybcj8LeHeOYmSOOnjUa1bCByNQ.jpg', '1', null, '0', '0', '0', '0', '0', '1549950038', '1549950038', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('97', '1', '3', 'Fvw62nqFZUd_DUf6YZZpDbx4WUAA.jpg', 'Fvw62nqFZUd_DUf6YZZpDbx4WUAA.jpg', '1', null, '0', '0', '0', '0', '0', '1549950038', '1549950038', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('98', '1', '3', 'FvyVCYXPxWVa1vawt1HlT8eMTnsi.jpg', 'FvyVCYXPxWVa1vawt1HlT8eMTnsi.jpg', '1', null, '0', '0', '0', '0', '0', '1549950038', '1549950038', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('99', '5', '3', '20180405_073342006_iOS.jpg', '20180405_073342006_iOS.jpg', '1', null, '0', '0', '0', '0', '0', '1549950460', '1549950460', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('100', '5', '3', '20181015_051621421_iOS.jpg', '20181015_051621421_iOS.jpg', '1', null, '0', '0', '0', '0', '0', '1549950462', '1549950462', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('101', '4', '3', '20181015_012313077_iOS.jpg', '20181015_012313077_iOS.jpg', '1', null, '0', '0', '0', '0', '0', '1549950543', '1549950543', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('102', '4', '3', '20180311_065246301_iOS.jpg', '20180311_065246301_iOS.jpg', '1', null, '0', '0', '0', '0', '0', '1549950543', '1549950543', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('103', '4', '3', '20181015_045725176_iOS.jpg', '20181015_045725176_iOS.jpg', '1', null, '0', '0', '0', '0', '0', '1549950543', '1549950543', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('104', '4', '3', '20181015_053841630_iOS.jpg', '20181015_053841630_iOS.jpg', '1', null, '0', '0', '0', '0', '0', '1549950544', '1549950544', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('105', '4', '3', '20180311_065648526_iOS.jpg', '20180311_065648526_iOS.jpg', '1', null, '0', '0', '0', '0', '0', '1549950545', '1549950545', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('106', '4', '3', '20181015_053157134_iOS.jpg', '20181015_053157134_iOS.jpg', '1', null, '0', '0', '0', '0', '0', '1549950546', '1549950546', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('107', '4', '3', '20181015_053826507_iOS.jpg', '20181015_053826507_iOS.jpg', '1', null, '0', '0', '0', '0', '0', '1549950552', '1549950552', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('108', '0', '2', 'Eh, Eh (Nothing Else I Can Say)', 'Eh, Eh (Nothing Else I Can Say) ', '1', null, '0', '0', '0', '0', '0', '1549950811', '1549950811', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('109', '0', '2', 'River Flows In You (Original Mix)', 'River Flows In You (Original Mix', '1', null, '0', '0', '0', '0', '0', '1549950906', '1549950906', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('110', '0', '2', 'Won\'t Let You Go', 'Won\'t Let You Go - Julia Bergwal', '1', null, '0', '0', '0', '0', '0', '1549950932', '1549950932', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('111', '0', '2', 'I Want You to Know', 'I Want You to Know - Zedd,Selena', '1', null, '0', '0', '0', '0', '0', '1549950997', '1549950997', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('112', '0', '2', 'Undo', 'Undo - Sanna Nielsen', '1', null, '0', '0', '0', '0', '0', '1549951062', '1549951062', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('113', '0', '2', '心愿', '心愿 - 四个女生', '1', null, '0', '0', '0', '0', '0', '1549951103', '1549951103', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('114', '0', '2', 'Are You With Me', 'Are You With Me - Lost Frequenci', '1', null, '0', '0', '0', '0', '0', '1549951156', '1549951156', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('115', '0', '2', 'Lost & Found', 'Lost & Found - Embody,Claire Rid', '1', null, '0', '0', '0', '0', '0', '1549951178', '1549951178', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('116', '0', '2', '我已经爱上你 (抖音版)', '我已经爱上你 (抖音版) - 刘旭阳', '1', null, '0', '0', '0', '0', '0', '1549951230', '1549951230', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('117', '0', '2', '往后余生', '往后余生 - 孙茜茹,马良', '1', null, '0', '0', '0', '0', '0', '1549951257', '1549951257', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('118', '0', '2', '盛夏的果实', '盛夏的果实 - 莫文蔚', '1', null, '0', '0', '0', '0', '0', '1549951279', '1549951279', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('119', '0', '2', '你在终点等我', '你在终点等我 - 王菲', '1', null, '0', '0', '0', '0', '0', '1549951327', '1549951327', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('120', '0', '2', '全世界谁倾听你 ', '全世界谁倾听你  - 林宥嘉', '1', null, '0', '0', '0', '0', '0', '1549951379', '1549951379', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('121', '0', '2', '《从你的全世界路过》插曲扒带完整版', '《从你的全世界路过》插曲扒带完整版 - UlysseC', '1', null, '0', '0', '0', '0', '0', '1549951435', '1549951435', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('123', '0', '2', '騎士王の誇り', '騎士王の誇り - 川井憲次', '1', null, '0', '0', '0', '0', '0', '1549951589', '1549951589', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('124', '0', '2', '阿刁（cover张韶涵live版）（Cover：赵雷）', '阿刁（cover张韶涵live版）（Cover：赵雷） - 颜素', '1', null, '0', '0', '0', '0', '0', '1549951824', '1549951824', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('125', '0', '2', 'Fly', 'Fly - Ludovico Einaudi', '1', null, '0', '0', '0', '0', '0', '1549951986', '1549951986', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('126', '0', '2', '三生三世十里桃花', '三生三世十里桃花 - 那英', '1', null, '0', '0', '0', '0', '0', '1549952132', '1549952132', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('127', '0', '2', '乔双花', '乔双花 - HITA,玄觞', '1', null, '0', '0', '0', '0', '0', '1549952299', '1549952299', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('128', '0', '2', '一个人', '一个人 - 夏婉安', '1', null, '0', '0', '0', '0', '0', '1549952344', '1549952344', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('129', '0', '2', '胭脂雪', '胭脂雪 - 范冰冰', '1', null, '0', '0', '0', '0', '0', '1549952381', '1549952381', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('130', '0', '2', 'Ta Main', 'Ta Main - Grégoire', '1', null, '0', '0', '0', '0', '0', '1549952430', '1549952430', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('131', '0', '2', 'Won\'t Surrender', 'Won\'t Surrender - Otilia,Revolt ', '1', null, '0', '0', '0', '0', '0', '1549952475', '1549952475', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('132', '0', '2', '爱超越', '爱超越 - 范冰冰', '1', null, '0', '0', '0', '0', '0', '1549952536', '1549952536', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('133', '0', '2', 'A Woodland Night', 'A Woodland Night - Bandari', '1', null, '0', '0', '0', '0', '0', '1549952593', '1549952593', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('134', '6', '3', 'e1b7eaa3ff9722fbfd5d368ef9e5cc66.jpg', 'e1b7eaa3ff9722fbfd5d368ef9e5cc66', '1', null, '0', '0', '0', '0', '0', '1549953971', '1549953971', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('135', '6', '3', '3383610695139295435.jpg', '3383610695139295435.jpg', '1', null, '0', '0', '0', '0', '0', '1549953971', '1549953971', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('136', '6', '3', '6631609824935831644.jpg', '6631609824935831644.jpg', '1', null, '0', '0', '0', '0', '0', '1549953971', '1549953971', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('137', '6', '3', '6599305073797567601.jpg', '6599305073797567601.jpg', '1', null, '0', '0', '0', '0', '0', '1549953972', '1549953972', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('138', '6', '3', '6600371600074599680.jpg', '6600371600074599680.jpg', '1', null, '0', '0', '0', '0', '0', '1549953972', '1549953972', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('139', '0', '1', '郁可唯 - 思慕', '郁可唯 - 思慕', '1', null, '0', '0', '0', '0', '0', '1549955993', '1549955993', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('140', '0', '1', '带泪的鱼 - 一个人唱情歌', '带泪的鱼 - 一个人唱情歌', '1', null, '0', '0', '0', '0', '0', '1549956099', '1549956099', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('141', '0', '1', '张杰、张碧晨 - 只要平凡.mkv', '张杰、张碧晨 - 只要平凡.mkv', '1', null, '0', '0', '0', '0', '0', '1549956394', '1549956394', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('142', '0', '1', '张杰 - 剑心.mkv', '张杰 - 剑心.mkv', '1', null, '0', '0', '0', '0', '0', '1549956882', '1549956882', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('143', '0', '4', '一朵花工作笔记水利服务器项目：\n地址：1', '一朵花工作笔记水利服务器项目：\n地址：1', '1', null, '0', '0', '0', '0', '0', '1549960593', '1558948939', '0', '0', '0');
INSERT INTO `ek_common_document` VALUES ('144', '0', '4', '完整配置CentOS6安装LAMP安装和', '完整配置CentOS6安装LAMP安装和', '1', null, '0', '0', '0', '0', '0', '1549961565', '1553577394', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('145', '0', '4', '费尔康安装1:安装php-devel\n2', '费尔康安装1:安装php-devel\n2', '1', null, '0', '0', '0', '0', '0', '1554090615', '1554090615', '0', '0', '0');
INSERT INTO `ek_common_document` VALUES ('146', '0', '4', '安装树莓派控制面板git clone h', '安装树莓派控制面板git clone h', '1', null, '0', '0', '0', '0', '0', '1549961745', '1550157664', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('147', '0', '4', 'Linux平台的SVN服务器的配置及搭建', 'Linux平台的SVN服务器的配置及搭建', '1', null, '0', '0', '0', '0', '0', '1549963339', '1563255159', '0', '0', '0');
INSERT INTO `ek_common_document` VALUES ('148', '0', '4', '简单配置nginx使之支持pathinf', '简单配置nginx使之支持pathinf', '1', null, '0', '0', '0', '0', '0', '1549963528', '1551019769', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('149', '0', '4', 'windows+Phpstorm编辑器激', 'windows+Phpstorm编辑器激', '1', null, '0', '0', '0', '0', '0', '1571461750', '1591175999', '0', '0', '0');
INSERT INTO `ek_common_document` VALUES ('150', '0', '4', 'phalcon自定义模型操作方法$ekw', 'phalcon自定义模型操作方法$ekw', '1', null, '0', '0', '0', '0', '0', '1549963826', '1560914901', '0', '0', '0');
INSERT INTO `ek_common_document` VALUES ('151', '0', '4', '初次运行 Git 前的配置$ git c', '初次运行 Git 前的配置$ git c', '1', null, '0', '0', '0', '0', '0', '1554107748', '1598863454', '0', '0', '0');
INSERT INTO `ek_common_document` VALUES ('152', '0', '4', '安装Swoole框架和扩展先安装 ：ph', '安装Swoole框架和扩展先安装 ：ph', '1', null, '0', '0', '0', '0', '0', '1549963919', '1598863453', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('153', '0', '4', 'PHP使用swoole来实现实时异步任务', 'PHP使用swoole来实现实时异步任务', '1', null, '0', '0', '0', '0', '0', '1549964105', '1598863448', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('154', '0', '4', 'phpstudy php5.4以上版本伪', 'phpstudy php5.4以上版本伪', '1', null, '0', '0', '0', '0', '0', '1549964170', '1598863451', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('155', '0', '4', 'php7-APC 安装\nlinux\nAP', 'php7-APC 安装\nlinux\nAP', '1', null, '0', '0', '0', '0', '0', '1549964293', '1598863452', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('156', '0', '4', 'Guzzle基本使用发送请求\nuse G', 'Guzzle基本使用发送请求\nuse G', '1', null, '0', '0', '0', '0', '0', '1549964379', '1598863462', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('157', '0', '4', 'eletron安装卡在 node ins', 'eletron安装卡在 node ins', '1', null, '0', '0', '0', '0', '0', '1549964413', '1598863461', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('158', '0', '6', '贝克云笔记icon.zip', '贝克云笔记icon.zip', '1', null, '0', '0', '0', '0', '0', '1550136436', '1550136436', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('161', '0', '1', '爱的故事上集 歌词版', '爱的故事上集 歌词版', '1', null, '0', '0', '0', '0', '0', '1550142948', '1550142948', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('163', '0', '6', 'PythonPip安装包', 'PythonPip安装包', '1', null, '0', '0', '0', '0', '0', '1550157262', '1550157262', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('165', '0', '6', '招商局代码', '招商局代码', '1', null, '0', '0', '0', '0', '0', '1550157371', '1550157371', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('166', '0', '6', '浙大企业站', '浙大企业站', '1', null, '0', '0', '0', '0', '0', '1550157394', '1550157394', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('167', '0', '6', '浙大智能病床APP版本', '浙大智能病床APP版本', '1', null, '0', '0', '0', '0', '0', '1550157474', '1550157474', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('168', '0', '6', '浙大智能病床医院版本', '浙大智能病床医院版本', '1', null, '0', '0', '0', '0', '0', '1550157537', '1550157537', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('169', '0', '6', '招商局会议系统', '招商局会议系统', '1', null, '0', '0', '0', '0', '0', '1550157642', '1550157642', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('170', '0', '2', '可惜没如果', '可惜没如果 - 林俊杰', '2', null, '0', '0', '0', '0', '0', '1550157800', '1550157800', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('171', '0', '2', '修炼爱情', '修炼爱情 - 林俊杰', '2', null, '0', '0', '0', '0', '0', '1550157847', '1550157847', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('172', '0', '2', '不死之身', '不死之身 - 林俊杰', '2', null, '0', '0', '0', '0', '0', '1550157893', '1550157893', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('173', '0', '2', '美人鱼', '美人鱼 - 林俊杰', '2', null, '0', '0', '0', '0', '0', '1550157929', '1550157929', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('175', '0', '2', '天下', '天下 - 张杰', '2', null, '0', '0', '0', '0', '0', '1550158074', '1550158074', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('249', '0', '1', 'Flying Steps - We Are Electric', 'Flying Steps - We Are Electric', '2', null, '0', '0', '0', '0', '0', '1550158565', '1550158565', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('250', '0', '1', 'As Long as You Love Me', 'Justin Bieber、Big Sean - As Long', '2', null, '0', '0', '0', '0', '0', '1550158582', '1550158682', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('251', '0', '1', 'K-391、Alan Walker', 'K-391、Alan Walker、Julie Bergan、胜', '2', null, '0', '0', '0', '0', '0', '1550158603', '1550158656', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('252', '0', '1', 'The Daydream - Tears', 'The Daydream - Tears', '2', null, '0', '0', '0', '0', '0', '1550158620', '1550158620', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('253', '0', '1', '张韶涵 - 没离开过', '张韶涵 - 没离开过', '2', null, '0', '0', '0', '0', '0', '1550158634', '1550158634', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('254', '0', '2', '不爱又何必纠缠', '不爱又何必纠缠 - Mc敏少,Mc娜娜', '1', null, '0', '0', '0', '0', '0', '1550160619', '1550160619', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('255', '8', '3', 'FiHpX2m_HQzSBKURZnGxXcYsdmRt.jpg', 'FiHpX2m_HQzSBKURZnGxXcYsdmRt.jpg', '1', null, '0', '0', '0', '0', '0', '1550162816', '1550162816', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('256', '8', '3', 'FgZiJ1OOeoo5kE3F2sHEDsiccDm7.jpg', 'FgZiJ1OOeoo5kE3F2sHEDsiccDm7.jpg', '1', null, '0', '0', '0', '0', '0', '1550162816', '1550162816', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('257', '8', '3', 'Fh-5mktGBw-7IPsxn1gH8cFj6MN5.jpg', 'Fh-5mktGBw-7IPsxn1gH8cFj6MN5.jpg', '1', null, '0', '0', '0', '0', '0', '1550162816', '1550162816', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('258', '8', '3', 'FgWX0Vl_bhTFEWMIuvcALsRohq2u.jpg', 'FgWX0Vl_bhTFEWMIuvcALsRohq2u.jpg', '1', null, '0', '0', '0', '0', '0', '1550162816', '1550162816', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('259', '8', '3', 'FhDcdofEIy2I7pK0rVGp5L2km80o.jpg', 'FhDcdofEIy2I7pK0rVGp5L2km80o.jpg', '1', null, '0', '0', '0', '0', '0', '1550162816', '1550162816', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('260', '8', '3', 'FgEY3TzzDM5dbY3-gOsDKSRpyJin.jpg', 'FgEY3TzzDM5dbY3-gOsDKSRpyJin.jpg', '1', null, '0', '0', '0', '0', '0', '1550162816', '1550162816', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('263', '0', '2', '只要平凡', '只要平凡 - 张杰,张碧晨', '2', null, '0', '0', '0', '0', '0', '1550742208', '1550742208', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('264', '0', '1', '【MV】Zion -I Need You - 高清MV在线播放 - 音悦Tai - 让娱乐更美好.mp4', '【MV】Zion -I Need You - 高清MV在线播放 ', '2', null, '0', '0', '0', '0', '0', '1550743090', '1550743090', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('265', '0', '2', '阿刁', '阿刁 - 赵雷', '2', null, '0', '0', '0', '0', '0', '1550751802', '1550751802', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('267', '0', '2', '不害怕', '不害怕 - 张韶涵', '1', null, '0', '0', '0', '0', '0', '1550837170', '1550837170', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('268', '0', '2', '出山', '出山 - 花粥,胜娚', '1', null, '0', '0', '0', '0', '0', '1550940243', '1550940243', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('269', '0', '2', '盗将行', '盗将行 - 花粥,马雨阳', '1', null, '0', '0', '0', '0', '0', '1550940866', '1550940866', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('270', '0', '2', 'Fade', 'Fade - Alan Walker', '1', null, '0', '0', '0', '0', '0', '1550946091', '1550946091', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('271', '0', '2', 'Hymn For The Weekend [Remix]', 'Hymn For The Weekend [Remix] - C', '1', null, '0', '0', '0', '0', '0', '1550946633', '1550946633', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('272', '0', '2', '盗将行（Cover：花粥）', '盗将行（Cover：花粥） - 如果遇到周柯臻,阿三asan', '1', null, '0', '0', '0', '0', '0', '1550956777', '1550956777', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('273', '0', '1', '成女群像[超清版]', '成女群像[超清版]', '1', null, '0', '0', '0', '0', '0', '1551018847', '1551018847', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('274', '0', '2', '再见', '再见 - G.E.M.邓紫棋', '1', null, '0', '0', '0', '0', '0', '1551107423', '1551107423', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('275', '0', '2', '爱不可及', '爱不可及 - 王菲', '1', null, '0', '0', '0', '0', '0', '1551275949', '1551275949', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('276', '0', '2', '红色高跟鞋', '红色高跟鞋 - 蔡健雅', '1', null, '0', '0', '0', '0', '0', '1551275971', '1551275971', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('277', '0', '2', 'Human Legacy', 'Human Legacy - Ivan Torrent', '1', null, '0', '0', '0', '0', '0', '1551439613', '1551439613', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('278', '0', '2', 'Victory', 'Victory - Two Steps From Hell', '1', null, '0', '0', '0', '0', '0', '1551440210', '1551440210', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('280', '0', '6', 'layim.pro.zip', 'layim.pro.zip', '1', null, '0', '0', '0', '0', '0', '1551864956', '1551864956', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('281', '0', '4', 'Phalcon Mysql插入，更新，事', 'Phalcon Mysql插入，更新，事', '1', null, '0', '0', '0', '0', '0', '1552465167', '1598863460', '0', '0', '0');
INSERT INTO `ek_common_document` VALUES ('282', '0', '4', 'Phalcon分析 SQL 语句:\nus', 'Phalcon分析 SQL 语句:\nus', '1', null, '0', '0', '0', '0', '0', '1552464995', '1557728793', '0', '0', '0');
INSERT INTO `ek_common_document` VALUES ('283', '0', '4', 'Phalcon获取数据库表与视图信息:\n', 'Phalcon获取数据库表与视图信息:\n', '1', null, '0', '0', '0', '0', '0', '1552467601', '1566276645', '0', '0', '0');
INSERT INTO `ek_common_document` VALUES ('284', '0', '6', '清理SVN注册表.rar', '清理SVN注册表.rar', '1', null, '0', '0', '0', '0', '0', '1553149621', '1553149621', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('286', '0', '6', 'layuiAdmin.pack.zip', 'layuiAdmin.pack.zip', '1', null, '0', '0', '0', '0', '0', '1554191183', '1554191183', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('287', '0', '2', '梦田', '梦田 - S.H.E', '1', null, '0', '0', '0', '0', '0', '1554467585', '1554467585', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('288', '0', '2', '我的楼兰（Cover 云朵）', '我的楼兰（Cover 云朵） - 丽栗', '1', null, '0', '0', '0', '0', '0', '1554532955', '1554532955', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('289', '0', '2', '我的楼兰（Cover：云朵）', '我的楼兰（Cover：云朵） - 杨静', '1', null, '0', '0', '0', '0', '0', '1554533056', '1554533056', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('290', '0', '2', '问', '问 - 简弘亦', '1', null, '0', '0', '0', '0', '0', '1554533288', '1554533288', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('291', '0', '2', '骨生花', '骨生花 - 奡雪', '1', null, '0', '0', '0', '0', '0', '1554533364', '1554533364', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('292', '0', '2', '犯贱', '犯贱 - 徐良', '1', null, '0', '0', '0', '0', '0', '1554533554', '1554533554', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('295', '0', '2', 'Creep', 'Creep - Gamper & Dadoni,Ember Is', '2', null, '0', '0', '0', '0', '0', '1555237695', '1555237695', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('296', '0', '2', 'Creep', 'Creep - Gamper & Dadoni,Ember Is', '1', null, '0', '0', '0', '0', '0', '1555408485', '1555408485', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('297', '0', '2', '青花', '青花 - 周传雄', '1', null, '0', '0', '0', '0', '0', '1555487097', '1555487097', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('298', '0', '2', 'Take me hand', 'Take me hand - DAISHI DANCE,Ceci', '1', null, '0', '0', '0', '0', '0', '1555562698', '1555562698', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('299', '0', '2', 'Silent express', 'Silent express - 出羽良彰', '1', null, '0', '0', '0', '0', '0', '1555562975', '1555562975', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('300', '0', '2', 'Move Your Body (Alan Walker Remix)', 'Move Your Body (Alan Walker Remi', '1', null, '0', '0', '0', '0', '0', '1555563014', '1555563014', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('301', '7', '3', '%E6%B5%8B%E8%AF%95%E5%9B%BE%E7%89%871.jpeg', '%E6%B5%8B%E8%AF%95%E5%9B%BE%E7%8', '1', null, '0', '0', '0', '0', '0', '1555563603', '1555563603', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('302', '7', '3', '%E6%B5%8B%E8%AF%95%E5%9B%BE%E7%89%871.jpg', '%E6%B5%8B%E8%AF%95%E5%9B%BE%E7%8', '1', null, '0', '0', '0', '0', '0', '1555563605', '1555563605', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('303', '7', '3', '%E6%B5%8B%E8%AF%95%E5%9B%BE%E7%89%872.jpg', '%E6%B5%8B%E8%AF%95%E5%9B%BE%E7%8', '1', null, '0', '0', '0', '0', '0', '1555563605', '1555563605', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('305', '0', '6', '简单众筹.zip', '简单众筹.zip', '1', null, '0', '0', '0', '0', '0', '1556418203', '1556418203', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('306', '0', '2', '美丽的神话', '美丽的神话 - 胡歌,白冰', '2', null, '0', '0', '0', '0', '0', '1556700060', '1556700060', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('307', '0', '4', '若水网络笔记\n\n\n泰国房地产：\n PC原', '若水网络笔记\n\n\n泰国房地产：\n PC原', '1', null, '0', '0', '0', '0', '0', '1559187863', '1568082700', '0', '0', '0');
INSERT INTO `ek_common_document` VALUES ('308', '0', '4', 'windows Ubuntu\nUbunt', 'windows Ubuntu\nUbunt', '1', null, '0', '0', '0', '0', '0', '1560494458', '1617101747', '0', '0', '0');
INSERT INTO `ek_common_document` VALUES ('309', '0', '4', 'Ubuntu18.04彻底删除MySQL', 'Ubuntu18.04彻底删除MySQL', '1', null, '0', '0', '0', '0', '0', '1560822104', '1617101745', '0', '0', '0');
INSERT INTO `ek_common_document` VALUES ('310', '0', '2', '赤伶', '赤伶 - HITA', '1', null, '0', '0', '0', '0', '0', '1565082290', '1565082290', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('311', '0', '4', 'PHP加密算法https://githu', 'PHP加密算法https://githu', '1', null, '0', '0', '0', '0', '0', '1565344028', '1617101744', '0', '0', '0');
INSERT INTO `ek_common_document` VALUES ('313', '0', '2', '归去来兮', '归去来兮 - 花粥', '1', null, '0', '0', '0', '0', '0', '1566374137', '1566374137', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('314', '0', '2', '纸短情长', '纸短情长 - 花粥', '1', null, '0', '0', '0', '0', '0', '1566374435', '1566374435', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('315', '0', '2', '归去来兮', '归去来兮 - 花粥', '2', null, '0', '0', '0', '0', '0', '1566374982', '1566374982', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('316', '0', '6', 'PHPOS-OT', 'PHPOS-OT', '1', null, '0', '0', '0', '0', '0', '1566381039', '1566381039', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('317', '0', '6', 'phpos', 'phpos', '1', null, '0', '0', '0', '0', '0', '1566381054', '1566381054', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('318', '0', '6', 'Tianqu', 'Tianqu', '1', null, '0', '0', '0', '0', '0', '1566381065', '1566381065', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('319', '0', '6', 'PhalconYangAuth', 'PhalconYangAuth', '1', null, '0', '0', '0', '0', '0', '1566381073', '1566381073', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('321', '0', '2', '单身情歌', '单身情歌 - 林志炫', '1', null, '0', '0', '0', '0', '0', '1566467828', '1566467828', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('322', '0', '2', 'The Cure', 'The Cure - Lady Gaga', '1', null, '0', '0', '0', '0', '0', '1567136492', '1567136492', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('323', '0', '2', '【钢琴】下一站天后', '【钢琴】下一站天后 - 昼夜', '1', null, '0', '0', '0', '0', '0', '1567731945', '1567731945', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('373', '0', '4', '谷歌翻墙插件WindmillVPN', '谷歌翻墙插件WindmillVPN', '1', null, '0', '0', '0', '0', '0', '1569388619', '1599024264', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('374', '0', '6', '若水备份.zip', '若水备份.zip', '1', null, '0', '0', '0', '0', '0', '1569388762', '1569388762', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('389', '0', '2', '布拉格广场', '布拉格广场 - 蔡依林,周杰伦', '1', null, '0', '0', '0', '0', '0', '1589779349', '1589779349', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('391', '0', '6', 'JB全家桶破解文件.zip', 'JB全家桶破解文件.zip', '1', null, '0', '0', '0', '0', '0', '1590540289', '1590540289', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('392', '20', '3', 'timg+%281%29.jpg', 'timg+%281%29.jpg', '2', null, '0', '0', '0', '0', '0', '1599025539', '1599025539', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('394', '0', '4', '您想说点什么？', '您想说点什么？', '2', null, '0', '0', '0', '0', '0', '1599025607', '1616562590', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('398', '0', '4', '您想说点什么？dasfasdfasdfa', '您想说点什么？dasfasdfasdfa', '2', null, '0', '0', '0', '0', '0', '1606567687', '1610001099', '0', '1', '0');
INSERT INTO `ek_common_document` VALUES ('399', '0', '6', '屏幕录像', '屏幕录像', '1', null, '0', '0', '0', '0', '0', '1599970640', '1599970640', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('400', '0', '1', '蜘蛛池演示', '蜘蛛池演示', '1', null, '0', '0', '0', '0', '0', '1602209282', '1602209282', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('401', '0', '6', '蜘蛛池二级制源码', '蜘蛛池二级制源码', '1', null, '0', '0', '0', '0', '0', '1604630729', '1604630729', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('402', '0', '6', 'ccsetup572.exe', 'ccsetup572.exe', '1', null, '0', '0', '0', '0', '0', '1604630799', '1604630799', '100', '0', '0');
INSERT INTO `ek_common_document` VALUES ('404', '0', '4', '基本使用方法：有关数据库对函数定义在./', '基本使用方法：有关数据库对函数定义在./', '2', null, '0', '0', '0', '0', '0', '1608529512', '1617258687', '0', '0', '0');
INSERT INTO `ek_common_document` VALUES ('405', '0', '4', '您想说点什么？基本使用方法：有关数据库对', '您想说点什么？基本使用方法：有关数据库对', '2', null, '0', '0', '0', '0', '0', '1608529524', '1617258686', '0', '0', '0');
INSERT INTO `ek_common_document` VALUES ('407', '0', '2', '我们的无奈', '我们的无奈 - 山野', '2', null, '0', '0', '0', '0', '0', '1609765426', '1609765426', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('410', '0', '2', '七月七日晴', '七月七日晴 - 许慧欣', '2', null, '0', '0', '0', '0', '0', '1610000997', '1610000997', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('411', '0', '2', '可惜我是水瓶座', '可惜我是水瓶座 - 杨千嬅', '1', null, '0', '0', '0', '0', '0', '1610805891', '1610805891', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('412', '0', '2', '野孩子', '野孩子 - 杨千嬅', '1', null, '0', '0', '0', '0', '0', '1610805906', '1610805906', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('413', '0', '2', '你应该很快乐', '你应该很快乐 - 虎二', '1', null, '0', '0', '0', '0', '0', '1610805947', '1610805947', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('414', '0', '6', 'LICENSE.electron.txt', 'LICENSE.electron.txt', '2', null, '0', '0', '0', '0', '0', '1612369365', '1615694004', '100', '1', '0');
INSERT INTO `ek_common_document` VALUES ('415', '0', '4', '今天有事一个开心日子，让我们看一下吧。', '今天有事一个开心日子，让我们看一下吧。', '2', null, '0', '0', '0', '0', '0', '1617258678', '1617258686', '0', '0', '0');
INSERT INTO `ek_common_document` VALUES ('416', '0', '4', '您想说点12321321312什么？', '您想说点12321321312什么？', '2', null, '0', '0', '0', '0', '0', '1614417805', '1617258684', '100', '0', '0');

-- ----------------------------
-- Table structure for `ek_common_document_file`
-- ----------------------------
DROP TABLE IF EXISTS `ek_common_document_file`;
CREATE TABLE `ek_common_document_file` (
  `aid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文档id',
  `file_id` int(11) unsigned NOT NULL COMMENT '文件',
  `description` varchar(256) NOT NULL COMMENT '描述',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文件模型模型扩展表';

-- ----------------------------
-- Records of ek_common_document_file
-- ----------------------------
INSERT INTO `ek_common_document_file` VALUES ('11', '14', 'APICloud-Studio老版本编辑器');
INSERT INTO `ek_common_document_file` VALUES ('12', '15', 'APICLOUD模块(爱尔目，趣拍，天趣播放器)');
INSERT INTO `ek_common_document_file` VALUES ('13', '16', 'C  环境.rar');
INSERT INTO `ek_common_document_file` VALUES ('316', '142', 'PHPOS-OT');
INSERT INTO `ek_common_document_file` VALUES ('15', '18', 'eibkGo语言.rar');
INSERT INTO `ek_common_document_file` VALUES ('16', '19', 'git密钥.rar');
INSERT INTO `ek_common_document_file` VALUES ('17', '20', 'Landui代码全套');
INSERT INTO `ek_common_document_file` VALUES ('18', '21', 'navicat绿色 密码.zip');
INSERT INTO `ek_common_document_file` VALUES ('19', '22', 'Phalcon 文档.rar');
INSERT INTO `ek_common_document_file` VALUES ('20', '23', 'phalcon-devtools-master.rar');
INSERT INTO `ek_common_document_file` VALUES ('374', '193', '若水备份.zip');
INSERT INTO `ek_common_document_file` VALUES ('22', '25', 'PingFang SC_字体.zip');
INSERT INTO `ek_common_document_file` VALUES ('23', '26', 'react本地储存.txt');
INSERT INTO `ek_common_document_file` VALUES ('24', '27', 'react开发豆瓣fm音乐播放器.zip');
INSERT INTO `ek_common_document_file` VALUES ('25', '28', 'Win Mysql5.7 PHP7.1 VC库2013 32位64位 VC14,64位.rar');
INSERT INTO `ek_common_document_file` VALUES ('26', '29', '阿里云短信.rar');
INSERT INTO `ek_common_document_file` VALUES ('27', '30', '爱贝壳golang版.rar');
INSERT INTO `ek_common_document_file` VALUES ('158', '112', '贝克云笔记icon.zip');
INSERT INTO `ek_common_document_file` VALUES ('29', '32', '爱贝壳海报.rar');
INSERT INTO `ek_common_document_file` VALUES ('30', '33', '爱贝壳轮播图.rar');
INSERT INTO `ek_common_document_file` VALUES ('31', '34', '贝壳云整套备份.zip');
INSERT INTO `ek_common_document_file` VALUES ('32', '35', '博客psd.zip');
INSERT INTO `ek_common_document_file` VALUES ('33', '36', '不打广告的rar');
INSERT INTO `ek_common_document_file` VALUES ('34', '37', '第三方登录接口大全.rar');
INSERT INTO `ek_common_document_file` VALUES ('35', '38', '费尔康骨架.rar');
INSERT INTO `ek_common_document_file` VALUES ('36', '39', '搞笑笔记笑话程序(内含更新文件).zip');
INSERT INTO `ek_common_document_file` VALUES ('37', '40', '谷歌访问助手2.zip');
INSERT INTO `ek_common_document_file` VALUES ('38', '41', '海豚一朵花版本.rar');
INSERT INTO `ek_common_document_file` VALUES ('39', '42', '机场 物流 污水.rar');
INSERT INTO `ek_common_document_file` VALUES ('40', '43', '简繁切换实现.zip');
INSERT INTO `ek_common_document_file` VALUES ('41', '44', '截图定位软件.zip');
INSERT INTO `ek_common_document_file` VALUES ('42', '45', '蓝队微信小程序.rar');
INSERT INTO `ek_common_document_file` VALUES ('43', '46', '麻片.rar');
INSERT INTO `ek_common_document_file` VALUES ('44', '47', '鸟云代理平台.rar');
INSERT INTO `ek_common_document_file` VALUES ('45', '48', '钱老板队列任务.rar');
INSERT INTO `ek_common_document_file` VALUES ('46', '49', '身份证 名片.rar');
INSERT INTO `ek_common_document_file` VALUES ('47', '50', '数据库设计——评论回复功能.png');
INSERT INTO `ek_common_document_file` VALUES ('48', '51', '网站点赞 评论 回复 数据库设计.png');
INSERT INTO `ek_common_document_file` VALUES ('317', '143', 'phpos');
INSERT INTO `ek_common_document_file` VALUES ('318', '144', 'Tianqu');
INSERT INTO `ek_common_document_file` VALUES ('50', '53', '小飞机.rar');
INSERT INTO `ek_common_document_file` VALUES ('51', '54', '许博士爬虫.rar');
INSERT INTO `ek_common_document_file` VALUES ('52', '55', '杨永飞头像PSD.rar');
INSERT INTO `ek_common_document_file` VALUES ('53', '56', '张信华源代码.rar');
INSERT INTO `ek_common_document_file` VALUES ('319', '145', 'PhalconYangAuth');
INSERT INTO `ek_common_document_file` VALUES ('55', '58', '中文汉字转化成拼音js代码.zip');
INSERT INTO `ek_common_document_file` VALUES ('56', '59', '注册表单密码验证提示代码.zip');
INSERT INTO `ek_common_document_file` VALUES ('57', '60', '自适应图片大小.zip');
INSERT INTO `ek_common_document_file` VALUES ('401', '216', '蜘蛛池二级制源码');
INSERT INTO `ek_common_document_file` VALUES ('399', '214', '屏幕录像');
INSERT INTO `ek_common_document_file` VALUES ('163', '118', 'PythonPip安装包');
INSERT INTO `ek_common_document_file` VALUES ('165', '120', '招商局代码');
INSERT INTO `ek_common_document_file` VALUES ('166', '121', '浙大企业站');
INSERT INTO `ek_common_document_file` VALUES ('167', '122', '浙大智能病床APP版本');
INSERT INTO `ek_common_document_file` VALUES ('168', '123', '浙大智能病床医院版本');
INSERT INTO `ek_common_document_file` VALUES ('169', '124', '招商局会议系统');
INSERT INTO `ek_common_document_file` VALUES ('280', '132', 'layim.pro.zip');
INSERT INTO `ek_common_document_file` VALUES ('284', '133', '清理SVN注册表.rar');
INSERT INTO `ek_common_document_file` VALUES ('286', '135', 'layuiAdmin.pack.zip');
INSERT INTO `ek_common_document_file` VALUES ('414', '219', 'LICENSE.electron.txt');
INSERT INTO `ek_common_document_file` VALUES ('305', '141', '简单众筹.zip');
INSERT INTO `ek_common_document_file` VALUES ('402', '217', 'ccsetup572.exe');
INSERT INTO `ek_common_document_file` VALUES ('391', '208', 'JB全家桶破解文件.zip');

-- ----------------------------
-- Table structure for `ek_common_document_music`
-- ----------------------------
DROP TABLE IF EXISTS `ek_common_document_music`;
CREATE TABLE `ek_common_document_music` (
  `aid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文档id',
  `file_id` int(11) unsigned NOT NULL COMMENT '视频文件',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ek_common_document_music
-- ----------------------------
INSERT INTO `ek_common_document_music` VALUES ('108', '1');
INSERT INTO `ek_common_document_music` VALUES ('109', '8');
INSERT INTO `ek_common_document_music` VALUES ('110', '9');
INSERT INTO `ek_common_document_music` VALUES ('111', '10');
INSERT INTO `ek_common_document_music` VALUES ('112', '18');
INSERT INTO `ek_common_document_music` VALUES ('113', '26');
INSERT INTO `ek_common_document_music` VALUES ('114', '33');
INSERT INTO `ek_common_document_music` VALUES ('115', '44');
INSERT INTO `ek_common_document_music` VALUES ('116', '45');
INSERT INTO `ek_common_document_music` VALUES ('117', '47');
INSERT INTO `ek_common_document_music` VALUES ('118', '48');
INSERT INTO `ek_common_document_music` VALUES ('119', '52');
INSERT INTO `ek_common_document_music` VALUES ('120', '64');
INSERT INTO `ek_common_document_music` VALUES ('121', '76');
INSERT INTO `ek_common_document_music` VALUES ('123', '79');
INSERT INTO `ek_common_document_music` VALUES ('124', '85');
INSERT INTO `ek_common_document_music` VALUES ('125', '100');
INSERT INTO `ek_common_document_music` VALUES ('126', '104');
INSERT INTO `ek_common_document_music` VALUES ('127', '117');
INSERT INTO `ek_common_document_music` VALUES ('128', '126');
INSERT INTO `ek_common_document_music` VALUES ('129', '131');
INSERT INTO `ek_common_document_music` VALUES ('130', '132');
INSERT INTO `ek_common_document_music` VALUES ('131', '144');
INSERT INTO `ek_common_document_music` VALUES ('132', '145');
INSERT INTO `ek_common_document_music` VALUES ('133', '146');
INSERT INTO `ek_common_document_music` VALUES ('170', '147');
INSERT INTO `ek_common_document_music` VALUES ('171', '159');
INSERT INTO `ek_common_document_music` VALUES ('172', '169');
INSERT INTO `ek_common_document_music` VALUES ('173', '175');
INSERT INTO `ek_common_document_music` VALUES ('175', '198');
INSERT INTO `ek_common_document_music` VALUES ('254', '209');
INSERT INTO `ek_common_document_music` VALUES ('263', '186');
INSERT INTO `ek_common_document_music` VALUES ('265', '235');
INSERT INTO `ek_common_document_music` VALUES ('267', '257');
INSERT INTO `ek_common_document_music` VALUES ('268', '280');
INSERT INTO `ek_common_document_music` VALUES ('269', '285');
INSERT INTO `ek_common_document_music` VALUES ('270', '297');
INSERT INTO `ek_common_document_music` VALUES ('271', '308');
INSERT INTO `ek_common_document_music` VALUES ('272', '309');
INSERT INTO `ek_common_document_music` VALUES ('274', '333');
INSERT INTO `ek_common_document_music` VALUES ('275', '357');
INSERT INTO `ek_common_document_music` VALUES ('276', '345');
INSERT INTO `ek_common_document_music` VALUES ('277', '361');
INSERT INTO `ek_common_document_music` VALUES ('278', '362');
INSERT INTO `ek_common_document_music` VALUES ('287', '395');
INSERT INTO `ek_common_document_music` VALUES ('288', '401');
INSERT INTO `ek_common_document_music` VALUES ('289', '400');
INSERT INTO `ek_common_document_music` VALUES ('290', '412');
INSERT INTO `ek_common_document_music` VALUES ('291', '423');
INSERT INTO `ek_common_document_music` VALUES ('292', '428');
INSERT INTO `ek_common_document_music` VALUES ('295', '453');
INSERT INTO `ek_common_document_music` VALUES ('296', '453');
INSERT INTO `ek_common_document_music` VALUES ('297', '456');
INSERT INTO `ek_common_document_music` VALUES ('298', '458');
INSERT INTO `ek_common_document_music` VALUES ('299', '463');
INSERT INTO `ek_common_document_music` VALUES ('300', '464');
INSERT INTO `ek_common_document_music` VALUES ('306', '467');
INSERT INTO `ek_common_document_music` VALUES ('310', '486');
INSERT INTO `ek_common_document_music` VALUES ('313', '505');
INSERT INTO `ek_common_document_music` VALUES ('314', '516');
INSERT INTO `ek_common_document_music` VALUES ('315', '505');
INSERT INTO `ek_common_document_music` VALUES ('321', '532');
INSERT INTO `ek_common_document_music` VALUES ('322', '261');
INSERT INTO `ek_common_document_music` VALUES ('323', '538');
INSERT INTO `ek_common_document_music` VALUES ('389', '603');
INSERT INTO `ek_common_document_music` VALUES ('407', '616');
INSERT INTO `ek_common_document_music` VALUES ('410', '497');
INSERT INTO `ek_common_document_music` VALUES ('411', '641');
INSERT INTO `ek_common_document_music` VALUES ('412', '629');
INSERT INTO `ek_common_document_music` VALUES ('413', '652');

-- ----------------------------
-- Table structure for `ek_common_document_note`
-- ----------------------------
DROP TABLE IF EXISTS `ek_common_document_note`;
CREATE TABLE `ek_common_document_note` (
  `aid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文档id',
  `content` mediumtext NOT NULL COMMENT '内容',
  `descriptions` varchar(256) NOT NULL COMMENT '描述',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='笔记模型模型扩展表';

-- ----------------------------
-- Records of ek_common_document_note
-- ----------------------------
INSERT INTO `ek_common_document_note` VALUES ('143', '<h2 class=\"ql-align-center\">一朵花工作笔记</h2><pre class=\"ql-syntax\" spellcheck=\"false\">水利服务器项目：\n地址：183.224.152.120:13389\n账号：Administrator\n密码：lhyspy@123\n\n物流项目：\n地址：http://47.93.30.75/system.php/order/index.html\n后台账号：administrator\n后台密码：solerose2017\n服务器密码：ZXLydh123\n</pre><p><br></p><pre class=\"ql-syntax\" spellcheck=\"false\">一朵花服务器：\n地址：101.200.213.86\n后台账号：root\n后台密码：ZXLydh123\n</pre><p><br></p><pre class=\"ql-syntax\" spellcheck=\"false\">医疗服务器：\n&nbsp;solerose2017\n&nbsp;solerose123ydh&nbsp;\nSSH\n39.106.170.47\nroot\nBeatrice123\n\n医疗app数据：\n\n&nbsp;极光推送：\n&nbsp;&nbsp;549354820@qq.com\n&nbsp;&nbsp;Aafuzhiyiliao2018\n\n&nbsp;阿里云：\n&nbsp;&nbsp;&nbsp;杭州福祉医疗\n&nbsp;&nbsp;&nbsp;fuzhiyiliao2017\n\n&nbsp;微信开放平台：\n&nbsp;&nbsp;&nbsp;linpengxiang@fuzhiyiliao.cn\n&nbsp;&nbsp;&nbsp;lpx.3140102777\n\n&nbsp;杭州福祉医疗服务器：\n&nbsp;&nbsp;47.98.217.192\n&nbsp;&nbsp;Hzfzyl2018\n\n&nbsp;研究所正式服务器：\n&nbsp;&nbsp;&nbsp;ip:10.203.7.57\n&nbsp;&nbsp;&nbsp;账号：administrator\n&nbsp;&nbsp;&nbsp;密码：zju0425!\n&nbsp;&nbsp;&nbsp;数据库用户名：root;\n&nbsp;&nbsp;&nbsp;数据库密码：FuzhiyiliaoMysql；\n&nbsp;&nbsp;&nbsp;域名：http://imnp.zju.edu.cn/\n&nbsp;&nbsp;&nbsp;后台地址：http://imnp.zju.edu.cn/admin.php\n&nbsp;&nbsp;&nbsp;后台账号(最高)：admin@SoleroseYdh123\n&nbsp;&nbsp;&nbsp;后台账号(使用者)：administrator@admin2016\n\n西部数码域名：\nsoleroseydh\nsolerosezxlydh123\n</pre><p><br></p><pre class=\"ql-syntax\" spellcheck=\"false\">小鳥云服務器启动项：\nservice nginx start\nservice php-fpm restart\nservice mysqld restart\nsvnserve -d -r /application/svndata/\nservice vsftpd restart\n\ncd /wwwroot/eibk/app/common/behavior/\nphp SwooleServer.php\nhttp://www.eibk.com/api/inittask/init （记得打开哦）\n\ncomposer require \"foo/bar:1.0.0\"\n</pre>', '一朵花工作笔记水利服务器项目：\n地址：183.224.152.120:13389\n账号：Administrator\n密码：lhyspy@123\n\n物流项目：\n地...');
INSERT INTO `ek_common_document_note` VALUES ('144', '<h2 class=\"ql-align-center\">完整配置CentOS6安装LAMP</h2><pre class=\"ql-syntax\" spellcheck=\"false\">安装和配置Apache服务器：\nyum update\nyum install httpd\n安装当前版本的Apache配置环境，然后配置httpd.conf（位置在/etc/httpd/conf/httpd.conf）文件，一般如何类似Linode 1GB方案可以这样的设置，也可以默认。\n\n设置、绑定站点目录文件：\n手工安装LAMP不同于用一键包直接用命令就可以添加域名建立站点，这些所有都要用手工操作，比如我们这里需要添加域名建立站点。\n/etc/httpd/conf.d/vhost.conf\n在上述的目录下建立vhost.conf文件，然后配置站点\n&lt;VirtualHost *:80&gt;\nServerAdmin admin@laozuo.org\nServerNamelaozuo.org\nServerAlias www.laozuo.org\nDocumentRoot /srv/www/laozuo.org/public_html/\nErrorLog /srv/www/laozuo.org/logs/error.log\nCustomLog /srv/www/laozuo.org/logs/access.log combined\n&lt;/VirtualHost&gt;\n我们在上面文件中可以看到是添加2个站点，如果是添加多个站点类似的复制修改对应的目录。同样的，我们需要对应的目录创建没有的目录路径。\nmkdir -p /srv/www/laozuo.org/public_html\nmkdir /srv/www/laozuo.org/logs\n启动httpd以及设置开机启动。\n/etc/init.d/httpd start\n/sbin/chkconfig --levels 235 httpd on\n/etc/init.d/httpd reload\n\n第三步、安装MYSQL数据库：\nyum install mysql-server #安装MYSQL服务\n/sbin/chkconfig --levels 235 mysqld on # 设置开机启动\n/etc/init.d/mysqld start # 启动MYSQL\nmysql_secure_installation #安装设置ROOT权限，根据提示设置ROOT密码\n可以移除默认的其他用户和其他默认数据。\n开启远程链接：\n1：使用“use mysql”命令，选择要使用的数据库，修改远程连接的基本信息，保存在mysql数据库中，因此使用mysql数据库。\n2：使用“GRANT ALL PRIVILEGES ON *.* TO \'root\'@\'%\' IDENTIFIED BY \'root\' WITH GRANT OPTION;”命令可以更改远程连接的设置。\n3：使用“flush privileges;”命令刷新刚才修改的权限，使其生效。\n\n第四步、安装PHP环境：\n  CentOS/RHEL 7.x:\n     rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm\n     rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm\n  CentOS/RHEL 6.x:\n     rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm\n  安装：\n  yum install php70w php70w-opcache\n  Packages：\n</pre><p class=\"ql-align-center\"><img src=\"http://static.bkybj.com/FiEPRJntP-NJ-YpIR4TrpAlQ2TcM\"></p><p class=\"ql-align-center\"><img src=\"http://static.bkybj.com/FoBXygwuQNEGgACo7mYztghplF7W\"></p>', '完整配置CentOS6安装LAMP安装和配置Apache服务器：\nyum update\nyum install httpd\n安装当前版本的Apache配置环境，...');
INSERT INTO `ek_common_document_note` VALUES ('145', '<h2 class=\"ql-align-center\">费尔康安装</h2><pre class=\"ql-syntax\" spellcheck=\"false\">1:安装php-devel\n2:git clone --depth=1 git://github.com/phalcon/cphalcon.git\ncd cphalcon/build\nsudo ./install\n3:extension=phalcon.so\n\nphalcon安装-遇坑php-config is not installed 解决方法\n1 cd /opt/cphalcon-3.2.1/build/php7/64bits\n2 &amp;&amp; phpize --enable-phalcon \\\n3 --with-phpconfig=/usr/local/src/php7/bin/php-config\n4 &amp;&amp; ./configure --with-php-config=/usr/local/src/php7/bin/php-config\n5 &amp;&amp; make &amp;&amp; make install\n\n</pre>', '费尔康安装1:安装php-devel\n2:git clone --depth=1 git://github.com/phalcon/cphalcon.git\nc...');
INSERT INTO `ek_common_document_note` VALUES ('146', '<h2 class=\"ql-align-center\">安装树莓派控制面板</h2><pre class=\"ql-syntax\" spellcheck=\"false\">git clone https://github.com/Beatrice950201/pi-dashboard.git\n</pre>', '安装树莓派控制面板git clone https://github.com/Beatrice950201/pi-dashboard.git\n...');
INSERT INTO `ek_common_document_note` VALUES ('147', '<h2 class=\"ql-align-center\">Linux平台的SVN服务器的配置及搭建</h2><p class=\"ql-align-center\"><br></p><h4><span style=\"color: rgb(51, 51, 51);\" class=\"ql-font-serif\">SVN是Subversion的简称，是一个开放源代码的版本控制系统，相较于RCS、CVS，它采用了分支管理系统，它的设计目标就是取代CVS。适合中小公司的开发人员不多的项目使用,相比git管理工具更简单.&nbsp;</span></h4><p><br></p><p>1:<span style=\"color: rgb(51, 51, 51);\">首先检查操作系统上面是否安装了subversion,一般centos操作系统都默认安装了此软件,如果没有安装使用如下命令快速安装</span></p><p><span style=\"color: rgb(51, 51, 51);\">     查询是否安装&nbsp;:</span></p><pre class=\"ql-syntax\" spellcheck=\"false\">rpm -qa&nbsp;subversion\n</pre><p><span style=\"color: rgb(51, 51, 51);\">     &nbsp;如果没有使用:</span></p><pre class=\"ql-syntax\" spellcheck=\"false\">yum -y install&nbsp;subversion \n</pre><p><span style=\"color: rgb(51, 51, 51);\">2:配置svn并启动svn服务,可以使用svnserve --help查看启动帮助,其中箭头指出来的配置项</span></p><p><span style=\"color: rgb(51, 51, 51);\">      指定svn的数据存储路径:</span></p><pre class=\"ql-syntax\" spellcheck=\"false\">mkdir -p /application/svndata\n</pre><p><span style=\"color: rgb(51, 51, 51);\">      启动svn服务:</span></p><pre class=\"ql-syntax\" spellcheck=\"false\">svnserve -d -r /application/svndata/\n</pre><p><span style=\"color: rgb(51, 51, 51);\" class=\"ql-font-monospace\">3:检测svn服务是否正常启动,如果能看到下图所示则证明启动成功</span></p><pre class=\"ql-syntax\" spellcheck=\"false\">第一通过进程检测:&nbsp;ps -ef | grep svn\n第二通过端口3690检测: netstat -lntup | grep 3690\n</pre><p>4:<span style=\"color: rgb(51, 51, 51);\">使用svnadmin建立svn项目版本库:</span></p><pre class=\"ql-syntax\" spellcheck=\"false\">svnadmin create /application/svndata/sadoc\n</pre><p>5:<span style=\"color: rgb(51, 51, 51);\">配置sadoc版本可的权限:</span></p><pre class=\"ql-syntax\" spellcheck=\"false\">配置svnserve.conf文件\nvim /application/svndata/sadoc/conf/svnserve.conf\nanon-access = none //禁止匿名访问\nauth-access = write //认证后有读的权限\npassword-db = /application/svndata/sadoc/conf/passwd //指定密码文件\nauthz-db = /application/svndata/sadoc/conf/authz //指定权限认证文件\n\n配置authz文件\nvim /application/svndata/sadoc/conf/authz\n[groups]\nharry_and_sally = admin2016,Beatrice950201\n[sadoc:/]\n@harry_and_sally = rw\nadmin2016=rw\nBeatrice950201=rw\n\n配置passwd文件：\n[users]\nadmin2016 = admin2016\nBeatrice950201 &nbsp;= Beatrice123\n配置钩子：\nREPOS=\"$1\"\nREV=\"$2\"\nexport LANG=en_US.UTF-8\nSVN_PATH=/usr/bin\nWEB_PATH=/www/sadoc\nSVN_USER=admin2016\nSVN_PASS=admin2016\nLOG_PATH=/tmp/svn.log\necho `date \"+%Y-%m-%d %H:%M:%S\"` &gt;&gt; $LOG_PATH\necho `whoami`,$REPOS,$REV &gt;&gt; $LOG_PATH\n$SVN_PATH/svn update $WEB_PATH --username $SVN_USER --password $SVN_PASS --no-auth-cache &gt;&gt; $LOG_PATH\nexit 0\n钩子使用前必须先同步一份：svn co svn://103.45.15.123/sadoc /wwwroot/oc.tianqv.com/ --username=admin2016 --password=admin2016\n</pre><p>6：重启：</p><pre class=\"ql-syntax\" spellcheck=\"false\">杀死svn服务：pkill svnserve\n启动svn：svnserve -d -r /application/svndata/\n备注：修改passwd和authz文件不需要重启svn服务而修改svnserve.conf则需要\n</pre><p>7：卸载：</p><pre class=\"ql-syntax\" spellcheck=\"false\">rpm -e subversion --nodeps\n</pre>', 'Linux平台的SVN服务器的配置及搭建SVN是Subversion的简称，是一个开放源代码的版本控制系统，相较于RCS、CVS，它采用了分支管理系统，它的设计...');
INSERT INTO `ek_common_document_note` VALUES ('148', '<h2 class=\"ql-align-center\">简单配置nginx使之支持pathinfo</h2><pre class=\"ql-syntax\" spellcheck=\"false\">location ~ \\.php { &nbsp; &nbsp;\n     #去掉$\n&nbsp; &nbsp; &nbsp;root &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;H:/PHPServer/WWW;\n&nbsp; &nbsp; &nbsp;fastcgi_pass &nbsp; 127.0.0.1:9000;\n&nbsp; &nbsp; &nbsp;fastcgi_index &nbsp;index.php;\n&nbsp; &nbsp; &nbsp;fastcgi_split_path_info ^(.+\\.php)(.*)$; &nbsp; &nbsp; #增加这一句\n&nbsp; &nbsp; &nbsp;fastcgi_param PATH_INFO $fastcgi_path_info; &nbsp; &nbsp;#增加这一句\n&nbsp; &nbsp; &nbsp;fastcgi_param &nbsp;SCRIPT_FILENAME &nbsp;$document_root$fastcgi_script_name;\n&nbsp; &nbsp; &nbsp;include &nbsp; &nbsp; &nbsp; &nbsp;fastcgi_params;\n}\n</pre>', '简单配置nginx使之支持pathinfolocation ~ \\.php { &nbsp; &nbsp;\n     #去掉$\n&nbsp; &nbsp; &n...');
INSERT INTO `ek_common_document_note` VALUES ('149', '<h2 class=\"ql-align-center\">windows+Phpstorm编辑器激活码</h2><pre class=\"ql-syntax\" spellcheck=\"false\">win10专业版卡号：CXJJD-NKQD6-XH6YW-TMCBB-TXXTY\nPHPstorm:\n6ZUMD7WWWU-eyJsaWNlbnNlSWQiOiI2WlVNRDdXV1dVIiwibGljZW5zZWVOYW1lIjoiSmV0cyBHcm91cCIsImFzc2lnbmVlTmFtZSI6IiIsImFzc2lnbmVlRW1haWwiOiIiLCJsaWNlbnNlUmVzdHJpY3Rpb24iOiIiLCJjaGVja0NvbmN1cnJlbnRVc2UiOmZhbHNlLCJwcm9kdWN0cyI6W3siY29kZSI6IklJIiwiZmFsbGJhY2tEYXRlIjoiMjAxOS0wOS0wMyIsInBhaWRVcFRvIjoiMjAyMC0wOS0wMiJ9LHsiY29kZSI6IkFDIiwiZmFsbGJhY2tEYXRlIjoiMjAxOS0wOS0wMyIsInBhaWRVcFRvIjoiMjAyMC0wOS0wMiJ9LHsiY29kZSI6IkRQTiIsImZhbGxiYWNrRGF0ZSI6IjIwMTktMDktMDMiLCJwYWlkVXBUbyI6IjIwMjAtMDktMDIifSx7ImNvZGUiOiJQUyIsImZhbGxiYWNrRGF0ZSI6IjIwMTktMDktMDMiLCJwYWlkVXBUbyI6IjIwMjAtMDktMDIifSx7ImNvZGUiOiJHTyIsImZhbGxiYWNrRGF0ZSI6IjIwMTktMDktMDMiLCJwYWlkVXBUbyI6IjIwMjAtMDktMDIifSx7ImNvZGUiOiJETSIsImZhbGxiYWNrRGF0ZSI6IjIwMTktMDktMDMiLCJwYWlkVXBUbyI6IjIwMjAtMDktMDIifSx7ImNvZGUiOiJDTCIsImZhbGxiYWNrRGF0ZSI6IjIwMTktMDktMDMiLCJwYWlkVXBUbyI6IjIwMjAtMDktMDIifSx7ImNvZGUiOiJSUzAiLCJmYWxsYmFja0RhdGUiOiIyMDE5LTA5LTAzIiwicGFpZFVwVG8iOiIyMDIwLTA5LTAyIn0seyJjb2RlIjoiUkMiLCJmYWxsYmFja0RhdGUiOiIyMDE5LTA5LTAzIiwicGFpZFVwVG8iOiIyMDIwLTA5LTAyIn0seyJjb2RlIjoiUkQiLCJmYWxsYmFja0RhdGUiOiIyMDE5LTA5LTAzIiwicGFpZFVwVG8iOiIyMDIwLTA5LTAyIn0seyJjb2RlIjoiUEMiLCJmYWxsYmFja0RhdGUiOiIyMDE5LTA5LTAzIiwicGFpZFVwVG8iOiIyMDIwLTA5LTAyIn0seyJjb2RlIjoiUk0iLCJmYWxsYmFja0RhdGUiOiIyMDE5LTA5LTAzIiwicGFpZFVwVG8iOiIyMDIwLTA5LTAyIn0seyJjb2RlIjoiV1MiLCJmYWxsYmFja0RhdGUiOiIyMDE5LTA5LTAzIiwicGFpZFVwVG8iOiIyMDIwLTA5LTAyIn0seyJjb2RlIjoiREIiLCJmYWxsYmFja0RhdGUiOiIyMDE5LTA5LTAzIiwicGFpZFVwVG8iOiIyMDIwLTA5LTAyIn0seyJjb2RlIjoiREMiLCJmYWxsYmFja0RhdGUiOiIyMDE5LTA5LTAzIiwicGFpZFVwVG8iOiIyMDIwLTA5LTAyIn0seyJjb2RlIjoiUlNVIiwiZmFsbGJhY2tEYXRlIjoiMjAxOS0wOS0wMyIsInBhaWRVcFRvIjoiMjAyMC0wOS0wMiJ9XSwiaGFzaCI6IjE0Mjg5NzUwLzAiLCJncmFjZVBlcmlvZERheXMiOjcsImF1dG9Qcm9sb25nYXRlZCI6ZmFsc2UsImlzQXV0b1Byb2xvbmdhdGVkIjpmYWxzZX0=-Gd8RATyTEnHcAydKuC7N1ZdeLaMP9IR+nlPyVxvLsczAUTGKxcuAYbfz/uVtepg8ey4NfJlPNS+AGcGz8x7ImkX9jEV9KElMxPu3tKSdF/WKo6JCONX7UtudYa/9EQum3banxci/qH7jejSrFZSN+YjWQiYTR0Q8gq4/a2RyQTgseZfpImY/nXkOWLwWArr/p+4ddp/bWQN4nLTW+Z4ZaQeLE96Z9viCdn62EKOcR02Hfr9Oju9VYQh1L8pGrTqNey5nUSv/LQUbVwo5qoYbBRos8l6ewkFNGsuC3vtOgGWSgkgChbDjWhW4Nkm4vDM2NFAphMsS1dgyPw3eJ3C+6A==-MIIElTCCAn2gAwIBAgIBCTANBgkqhkiG9w0BAQsFADAYMRYwFAYDVQQDDA1KZXRQcm9maWxlIENBMB4XDTE4MTEwMTEyMjk0NloXDTIwMTEwMjEyMjk0NlowaDELMAkGA1UEBhMCQ1oxDjAMBgNVBAgMBU51c2xlMQ8wDQYDVQQHDAZQcmFndWUxGTAXBgNVBAoMEEpldEJyYWlucyBzLnIuby4xHTAbBgNVBAMMFHByb2QzeS1mcm9tLTIwMTgxMTAxMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxcQkq+zdxlR2mmRYBPzGbUNdMN6OaXiXzxIWtMEkrJMO/5oUfQJbLLuMSMK0QHFmaI37WShyxZcfRCidwXjot4zmNBKnlyHodDij/78TmVqFl8nOeD5+07B8VEaIu7c3E1N+e1doC6wht4I4+IEmtsPAdoaj5WCQVQbrI8KeT8M9VcBIWX7fD0fhexfg3ZRt0xqwMcXGNp3DdJHiO0rCdU+Itv7EmtnSVq9jBG1usMSFvMowR25mju2JcPFp1+I4ZI+FqgR8gyG8oiNDyNEoAbsR3lOpI7grUYSvkB/xVy/VoklPCK2h0f0GJxFjnye8NT1PAywoyl7RmiAVRE/EKwIDAQABo4GZMIGWMAkGA1UdEwQCMAAwHQYDVR0OBBYEFGEpG9oZGcfLMGNBkY7SgHiMGgTcMEgGA1UdIwRBMD+AFKOetkhnQhI2Qb1t4Lm0oFKLl/GzoRykGjAYMRYwFAYDVQQDDA1KZXRQcm9maWxlIENBggkA0myxg7KDeeEwEwYDVR0lBAwwCgYIKwYBBQUHAwEwCwYDVR0PBAQDAgWgMA0GCSqGSIb3DQEBCwUAA4ICAQAF8uc+YJOHHwOFcPzmbjcxNDuGoOUIP+2h1R75Lecswb7ru2LWWSUMtXVKQzChLNPn/72W0k+oI056tgiwuG7M49LXp4zQVlQnFmWU1wwGvVhq5R63Rpjx1zjGUhcXgayu7+9zMUW596Lbomsg8qVve6euqsrFicYkIIuUu4zYPndJwfe0YkS5nY72SHnNdbPhEnN8wcB2Kz+OIG0lih3yz5EqFhld03bGp222ZQCIghCTVL6QBNadGsiN/lWLl4JdR3lJkZzlpFdiHijoVRdWeSWqM4y0t23c92HXKrgppoSV18XMxrWVdoSM3nuMHwxGhFyde05OdDtLpCv+jlWf5REAHHA201pAU6bJSZINyHDUTB+Beo28rRXSwSh3OUIvYwKNVeoBY+KwOJ7WnuTCUq1meE6GkKc4D/cXmgpOyW/1SmBz3XjVIi/zprZ0zf3qH5mkphtg6ksjKgKjmx1cXfZAAX6wcDBNaCL+Ortep1Dh8xDUbqbBVNBL4jbiL3i3xsfNiyJgaZ5sX7i8tmStEpLbPwvHcByuf59qJhV/bZOl8KqJBETCDJcY6O2aqhTUy+9x93ThKs1GKrRPePrWPluud7ttlgtRveit/pcBrnQcXOl1rHq7ByB8CFAxNotRUYL9IF5n3wJOgkPojMy6jetQA5Ogc8Sm7RG6vg1yow==\n\n\n</pre>', 'windows+Phpstorm编辑器激活码win10专业版卡号：CXJJD-NKQD6-XH6YW-TMCBB-TXXTY\nPHPstorm:\n6ZUMD7W...');
INSERT INTO `ek_common_document_note` VALUES ('150', '<h2 class=\"ql-align-center\">phalcon自定义模型操作方法</h2><pre class=\"ql-syntax\" spellcheck=\"false\">$ekw = \"林俊杰\";\n$_list = Music::where([\n&nbsp; &nbsp; &nbsp; &nbsp;\"author\"=&gt;[\"LIKE\",\"%{$ekw}%\"],\n&nbsp; &nbsp; &nbsp; // \"id\"=&gt;[\"in\",[1203,1202]],\n&nbsp; &nbsp; &nbsp; &nbsp;\"name\"=&gt;[\"!=\",\"可惜没如果\"],\n&nbsp; &nbsp; &nbsp; &nbsp;\"id\"=&gt;[\"between\",0,1203],//BETWEEN\n&nbsp; &nbsp; ])\n&nbsp; &nbsp; -&gt;whereOr([\n&nbsp; &nbsp; &nbsp; &nbsp; \"name\"=&gt;[\"LIKE\",\"%{$ekw}%\"],\n&nbsp; &nbsp; &nbsp; &nbsp; //\"id\"=&gt;[\"in\",[1203,1202]],\n&nbsp; &nbsp; &nbsp; &nbsp; \"author\"=&gt;[\"!=\",\"可惜没如果\"],\n&nbsp; &nbsp; &nbsp; &nbsp; \"id\"=&gt;[\"between\",0,1203],//BETWEEN\n&nbsp; &nbsp; ])\n&nbsp; &nbsp; -&gt;field(\"id,name AS title,path AS file,author AS artist,cover\")\n&nbsp; &nbsp; -&gt;limit(\"0,2\")\n&nbsp; &nbsp; -&gt;_select();\n&nbsp; &nbsp; var_dump($_list-&gt;toArray());die;\n&nbsp; &nbsp; /*****************事物操作*******************************************/\n&nbsp; &nbsp; $data = [\n&nbsp; &nbsp; &nbsp; \"cid\"=&gt;0,\n&nbsp; &nbsp; &nbsp; \"model\"=&gt;3,\n&nbsp; &nbsp; &nbsp; \"title\"=&gt;\"title\",\n&nbsp; &nbsp; &nbsp; \"shorttitle\"=&gt;\"shorttitle\",\n&nbsp; &nbsp; &nbsp; \"uid\"=&gt;1,\n&nbsp; &nbsp; ];\n&nbsp; &nbsp; CallModel::_begin();\n&nbsp; &nbsp; Document::_insert($data);\n&nbsp; &nbsp; //CallModel::_rollback();\n&nbsp; &nbsp; CallModel::_commit();\n</pre>', 'phalcon自定义模型操作方法$ekw = \"林俊杰\";\n$_list = Music::where([\n&nbsp; &nbsp; &nbsp; &nbsp...');
INSERT INTO `ek_common_document_note` VALUES ('151', '<h2 class=\"ql-align-center\">初次运行 Git 前的配置</h2><pre class=\"ql-syntax\" spellcheck=\"false\">$ git config --global user.name \"John Doe\"\n$ git config --global user.email johndoe@example.com\n//提交代码\n拉取：git clone https://github.com/Beatrice950201/PhalconYang.git\n加入仓库：git add .\n提交到仓库：git commit -m \"first commit\"\n提交到贮藏库：git push -u origin master\n\n更新服务端的分支到本地仓库：git fetch --all\n列出所有的分支：git branch --all\n切换到一个已有的分支：git checkout &lt;您的分支名&gt;\n基于当前分支新建一个分支：git checkout -b &lt;您的新分支名&gt;\n推送当前分支到服务端：git push origin &lt;您的分支名&gt;\n删除本地的一个分支（当前所在分支和要删除的分支不能相同）：git branch -D &lt;您的分支名&gt;\n删除服务端的一个分支：git push origin :&lt;您的分支名&gt;\n</pre>', '初次运行 Git 前的配置$ git config --global user.name \"John Doe\"\n$ git config --global us...');
INSERT INTO `ek_common_document_note` VALUES ('152', '<h2 class=\"ql-align-center\">安装Swoole框架和扩展</h2><pre class=\"ql-syntax\" spellcheck=\"false\">先安装 ：php70w-pear&nbsp;\n接下来：pecl install swoole\n</pre>', '安装Swoole框架和扩展先安装 ：php70w-pear&nbsp;\n接下来：pecl install swoole\n...');
INSERT INTO `ek_common_document_note` VALUES ('153', '<h2 class=\"ql-align-center\">PHP使用swoole来实现实时异步任务</h2><p class=\"ql-align-center\"><br></p><p>关于异步任务队列</p><p>用户打开了我们的网站。他要做的就是勾选需要发邮件的代理商列表，然后把结算邮件发出去。</p><p>假如我们需要发1封邮件，我们写个函数执行即可。考虑到网络可能会稍微有点延迟，但是是可以接受的，用户会乖乖等你的网页发完邮件了再关闭网页。</p><p>假如我们要发布10封邮件，用一个for循环，循环10遍执行发邮件操作。这时候，也许10倍的网络延迟会让用户稍微有点不耐烦，但勉强可以等吧。</p><p>假如要发100封邮件，for循环100遍，用户直接揭竿而起，什么破网站！</p><p>但实际上，我们很可能有超过1万的邮件。怎么处理这个延迟的问题？</p><p>答案就是用异步。把“发邮件”这个操作封装，然后后台异步地执行1万遍。这样的话，用户提交网页后，他所等待的时间只是“把发邮件任务请求推送进队列里”的时间。而我们的后台服务将在用户看不见的地方跑。</p><p>在实现“异步队列”这点上，有人采用mysql表或者redis来存放待发送的邮件，然后，每分钟定时读取待发送列表，然后处理。这便是定时异步任务队列。但当前提交的任务要一分钟后才能执行，在某些实时性要求应用场景里还是不快。有些场景要求，只有一提交任务，便马上执行，但用户不需要等待返回结果。</p><p>在云平台SAE和BAE上，都有taskqueue服务来解决上面的问题。而如果是自己假设服务器，则如何解决？本文将探讨用php扩展swoole实现实时异步任务队列的方案。</p><p><br></p><pre class=\"ql-syntax\" spellcheck=\"false\">服务端：\n在打算放置脚本的目录（你也可以自行新建）新建Server.php，代码如下：\n&lt;?php\nclass Server\n{\n&nbsp;private $serv;\n&nbsp;public function __construct() {\n&nbsp;$this-&gt;serv = new swoole_server(\"0.0.0.0\", 9501);\n&nbsp;$this-&gt;serv-&gt;set(array(\n&nbsp;\'worker_num\' =&gt; 1, //一般设置为服务器CPU数的1-4倍\n&nbsp;\'daemonize\' =&gt; 1, //以守护进程执行\n&nbsp;\'max_request\' =&gt; 10000,\n&nbsp;\'dispatch_mode\' =&gt; 2,\n&nbsp;\'task_worker_num\' =&gt; 8, //task进程的数量\n&nbsp;\"task_ipc_mode \" =&gt; 3 , //使用消息队列通信，并设置为争抢模式\n&nbsp;//\"log_file\" =&gt; \"log/taskqueueu.log\" ,//日志\n&nbsp;));\n&nbsp;$this-&gt;serv-&gt;on(\'Receive\', array($this, \'onReceive\'));\n&nbsp;// bind callback\n&nbsp;$this-&gt;serv-&gt;on(\'Task\', array($this, \'onTask\'));\n&nbsp;$this-&gt;serv-&gt;on(\'Finish\', array($this, \'onFinish\'));\n&nbsp;$this-&gt;serv-&gt;start();\n&nbsp;}\n&nbsp;public function onReceive( swoole_server $serv, $fd, $from_id, $data ) {\n&nbsp;//echo \"Get Message From Client {$fd}:{$data}n\";\n&nbsp;// send a task to task worker.\n&nbsp;$serv-&gt;task( $data );\n&nbsp;}\n&nbsp;public function onTask($serv,$task_id,$from_id, $data) {\n&nbsp;$array = json_decode( $data , true );\n&nbsp;if ($array[\'url\']) {\n&nbsp;return $this-&gt;httpGet( $array[\'url\'] , $array[\'param\'] );\n&nbsp;}\n\n&nbsp;}\n&nbsp;public function onFinish($serv,$task_id, $data) {\n&nbsp;//echo \"Task {$task_id} finishn\";\n&nbsp;//echo \"Result: {$data}n\";\n&nbsp;}\n\n&nbsp;protected function httpGet($url,$data){\n&nbsp;if ($data) {\n&nbsp;$url .=\'?\'.http_build_query($data) ;\n&nbsp;}\n&nbsp;$curlObj = curl_init(); //初始化curl，\n&nbsp;curl_setopt($curlObj, CURLOPT_URL, $url); //设置网址\n&nbsp;curl_setopt($curlObj, CURLOPT_RETURNTRANSFER, 1); //将curl_exec的结果返回\n&nbsp;curl_setopt($curlObj, CURLOPT_SSL_VERIFYPEER, FALSE);\n&nbsp;curl_setopt($curlObj, CURLOPT_SSL_VERIFYHOST, FALSE);\n&nbsp;curl_setopt($curlObj, CURLOPT_HEADER, 0); //是否输出返回头信息\n&nbsp;$response = curl_exec($curlObj); //执行\n&nbsp;curl_close($curlObj); //关闭会话\n&nbsp;return $response;\n&nbsp;}\n\n}\n$server = new Server();\n\n由于服务端是异步、常驻内存的，因此必须通过命令行来启动。在命令行执行以上代码以启动服务\nphp Server.php\n\n执行完毕后关闭命令行窗口即可。服务会在后台以守护进程运行\n</pre><p><br></p><pre class=\"ql-syntax\" spellcheck=\"false\">客户端：\n启动服务后，让我们看看如何调用服务。新建测试文件Client_test.php\n代码如下：\n&lt;?php\nclass Client\n{\n&nbsp;private $client;\n\n&nbsp;public function __construct() {\n&nbsp;$this-&gt;client = new swoole_client(SWOOLE_SOCK_TCP);\n&nbsp;}\n\n&nbsp;public function connect() {\n&nbsp;if( !$this-&gt;client-&gt;connect(\"127.0.0.1\", 9501 , 1) ) {\n&nbsp;echo \"Connect Error\";\n&nbsp;}\n&nbsp;$data = array(\n&nbsp;\"url\" =&gt; \"http://192.168.10.19/send_mail\" ,\n&nbsp;\"param\" =&gt; array(\n&nbsp;\"username\"=&gt;\'test\',\n&nbsp;\"password\" =&gt; \'test\'\n&nbsp;)\n&nbsp;);\n&nbsp;$json_data = json_encode($data);\n&nbsp;$this-&gt;client-&gt;send( $json_data );\n&nbsp;}\n}\n\n$client = new Client();\n$client-&gt;connect();\n\n在上面代码中，url即为任务所在地址，param为所需传递参数。\n保存好代码，在命令行或者浏览器中执行Client_test.php,便实现了异步任务队列。你所填写的URL，将会在每次异步任务被提交后，以HTTP GET的方式异步执行。\n查看与关闭\nswoole好像没有很便捷的关闭方式。所以只能直接通过关闭进程来关闭。\n查看命令：\nps -ef | grep php\n</pre><p><br></p><pre class=\"ql-syntax\" spellcheck=\"false\">结束单个进程：kill -9 {进程号}\n结束所有进程的命令：killall -9 php\n</pre>', 'PHP使用swoole来实现实时异步任务关于异步任务队列用户打开了我们的网站。他要做的就是勾选需要发邮件的代理商列表，然后把结算邮件发出去。假如我们需要发1封邮...');
INSERT INTO `ek_common_document_note` VALUES ('154', '<h2 class=\"ql-align-center\">phpstudy php5.4以上版本伪静态设置</h2><p class=\"ql-align-center\"><br></p><pre class=\"ql-syntax\" spellcheck=\"false\">默认的\n\nRewriteRule ^(.*)$ index.php/$1 [QSA,PT,L]\n\n规则在apache fastcgi模式下会导致No input file specified.\n\n修改成\n\nRewriteRule ^(.*)$ index.php [L,E=PATH_INFO:$1]\n\n就OK，地址正常重写。\n\n</pre><p><br></p>', 'phpstudy php5.4以上版本伪静态设置默认的\n\nRewriteRule ^(.*)$ index.php/$1 [QSA,PT,L]\n\n规则在apac...');
INSERT INTO `ek_common_document_note` VALUES ('155', '<h2 class=\"ql-align-center\">php7-APC 安装</h2><pre class=\"ql-syntax\" spellcheck=\"false\">\nlinux\nAPCu http://pecl.php.net/package/APCu\nphp.ini 文件中添加，相关的 apcu.so\n\nAPCu_bc http://pecl.php.net/package/apcu_bc\nphp.ini 文件中添加，相关的 apc.so\n\n安装示例\nwget http://pecl.php.net/get/apcu-5.1.8.tgz\ntar xzf apcu-5.1.8.tgz\ncd apcu-5.1.8\nphpize\n./configure --with-php-config=/usr/bin/php-config\nmake &amp;&amp; make install\n\nwget http://pecl.php.net/get/apcu_bc-1.0.4.tgz\ntar xzf apcu_bc-1.0.4.tgz\ncd apcu_bc-1.0.4\nphpize\n./configure --with-php-config=/usr/bin/php-config\nmake &amp;&amp; make install\n\n这个必须配置到php.ini里面（curl上面）先加apcu再加apc\n\n\n</pre>', 'php7-APC 安装\nlinux\nAPCu http://pecl.php.net/package/APCu\nphp.ini 文件中添加，相关的 apcu.s...');
INSERT INTO `ek_common_document_note` VALUES ('156', '<h2 class=\"ql-align-center\">Guzzle基本使用</h2><pre class=\"ql-syntax\" spellcheck=\"false\">发送请求\nuse GuzzleHttp\\Client;\n\n$client = new Client([\n&nbsp; &nbsp; // Base URI is used with relative requests\n&nbsp; &nbsp; \'base_uri\' =&gt; \'http://httpbin.org\',\n&nbsp; &nbsp; // You can set any number of default request options.\n&nbsp; &nbsp; \'timeout\' &nbsp;=&gt; 2.0,\n]);\n\n$response = $client-&gt;get(\'http://httpbin.org/get\');\n$response = $client-&gt;delete(\'http://httpbin.org/delete\');\n$response = $client-&gt;head(\'http://httpbin.org/get\');\n$response = $client-&gt;options(\'http://httpbin.org/get\');\n$response = $client-&gt;patch(\'http://httpbin.org/patch\');\n$response = $client-&gt;post(\'http://httpbin.org/post\');\n$response = $client-&gt;put(\'http://httpbin.org/put\');\n\n设置查询字符串\n$response = $client-&gt;request(\'GET\', \'http://httpbin.org?foo=bar\');\n\n或使用 query 请求参数来声明查询字符串参数\n$client-&gt;request(\'GET\', \'http://httpbin.org\', [\n&nbsp; &nbsp; \'query\' =&gt; [\'foo\' =&gt; \'bar\']\n]);\n\n设置POST表单\n$response = $client-&gt;request(\'POST\', \'http://httpbin.org/post\', [\n&nbsp; &nbsp; \'form_params\' =&gt; [\n&nbsp; &nbsp; &nbsp; &nbsp; \'field_name\' =&gt; \'abc\',\n&nbsp; &nbsp; &nbsp; &nbsp; \'other_field\' =&gt; \'123\',\n&nbsp; &nbsp; &nbsp; &nbsp; \'nested_field\' =&gt; [\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; \'nested\' =&gt; \'hello\'\n&nbsp; &nbsp; &nbsp; &nbsp; ]\n&nbsp; &nbsp; ]\n]);\n\n使用响应\n# 状态码\n$code = $response-&gt;getStatusCode(); // 200\n$reason = $response-&gt;getReasonPhrase(); // OK\n\n# header\n// Check if a header exists.\nif ($response-&gt;hasHeader(\'Content-Length\')) {\n&nbsp; &nbsp; echo \"It exists\";\n}\n\n// Get a header from the response.\necho $response-&gt;getHeader(\'Content-Length\');\n\n// Get all of the response headers.\nforeach ($response-&gt;getHeaders() as $name =&gt; $values) {\n&nbsp; &nbsp; echo $name . \': \' . implode(\', \', $values) . \"\\r\\n\";\n}\n\n# 响应体\n$body = $response-&gt;getBody();\n// Implicitly cast the body to a string and echo it\necho $body;\n// Explicitly cast the body to a string\n$stringBody = (string) $body;\n// Read 10 bytes from the body\n$tenBytes = $body-&gt;read(10);\n// Read the remaining contents of the body as a string\n$remainingBytes = $body-&gt;getContents()\n</pre>', 'Guzzle基本使用发送请求\nuse GuzzleHttp\\Client;\n\n$client = new Client([\n&nbsp; &nbsp; // B...');
INSERT INTO `ek_common_document_note` VALUES ('157', '<h2 class=\"ql-align-center\">eletron安装卡在 node install.js</h2><p class=\"ql-align-center\"><br></p><pre class=\"ql-syntax\" spellcheck=\"false\">npm 安装 node-sass 网速慢的 可以 运行 npm config set registry https://registry.npm.taobao.org\n然后 编辑 ~/.npmrc 加入下面内容\n\nregistry=https://registry.npm.taobao.org\nsass_binary_site=https://npm.taobao.org/mirrors/node-sass/\nphantomjs_cdnurl=http://npm.taobao.org/mirrors/phantomjs\nELECTRON_MIRROR=http://npm.taobao.org/mirrors/electron\n\n</pre>', 'eletron安装卡在 node install.jsnpm 安装 node-sass 网速慢的 可以 运行 npm config set registry h...');
INSERT INTO `ek_common_document_note` VALUES ('394', '<p>您想说点什么？</p>', '您想说点什么？...');
INSERT INTO `ek_common_document_note` VALUES ('404', '<h2><strong>基本使用方法：</strong></h2><p>有关数据库对函数定义在./js/database.js文件中。</p><p>引入包：</p><pre class=\"ql-syntax\" spellcheck=\"false\">var low = require(\'lowdb\');\nconst FileSync = require(\'lowdb/adapters/FileSync\')\n1\n2\n</pre><p>链接数据库需要两部：</p><pre class=\"ql-syntax\" spellcheck=\"false\">const adapter = new FileSync(db_path);\nvar db = low(adapter);\n1\n2\n</pre><p>具体使用方法：</p><p>在<a href=\"https://www.npmjs.com/package/lowdb\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(103, 149, 181);\">npm网</a>可以看到具体的使用方法。</p><h2><strong>建立模型</strong></h2><p>目前的模型非常简单，在database中只有三个表：label，notes，info。</p><ul><li>label：记录了标签名，拥有两个field，id、label_name</li><li>notes：具体记录了所有笔记，三个field，id、label_name、note_name</li><li>info：记录了标签和笔记的数量，label_num,note_num</li></ul><h2><strong>基本使用方法：</strong></h2><p>有关数据库对函数定义在./js/database.js文件中。</p><p>引入包：</p><pre class=\"ql-syntax\" spellcheck=\"false\">var low = require(\'lowdb\');\nconst FileSync = require(\'lowdb/adapters/FileSync\')\n1\n2\n</pre><p>链接数据库需要两部：</p><pre class=\"ql-syntax\" spellcheck=\"false\">const adapter = new FileSync(db_path);\nvar db = low(adapter);\n1\n2\n</pre><p>具体使用方法：</p><p>在<a href=\"https://www.npmjs.com/package/lowdb\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(103, 149, 181);\">npm网</a>可以看到具体的使用方法。</p><h2><strong>建立模型</strong></h2><p>目前的模型非常简单，在database中只有三个表：label，notes，info。</p><ul><li>label：记录了标签名，拥有两个field，id、label_name</li><li>notes：具体记录了所有笔记，三个field，id、label_name、note_name</li><li>info：记录了标签和笔记的数量，label_num,note_num</li></ul><h2><strong>基本使用方法：</strong></h2><p>有关数据库对函数定义在./js/database.js文件中。</p><p>引入包：</p><pre class=\"ql-syntax\" spellcheck=\"false\">var low = require(\'lowdb\');\nconst FileSync = require(\'lowdb/adapters/FileSync\')\n1\n2\n</pre><p>链接数据库需要两部：</p><pre class=\"ql-syntax\" spellcheck=\"false\">const adapter = new FileSync(db_path);\nvar db = low(adapter);\n1\n2\n</pre><p>具体使用方法：</p><p>在<a href=\"https://www.npmjs.com/package/lowdb\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(103, 149, 181);\">npm网</a>可以看到具体的使用方法。</p><h2><strong>建立模型</strong></h2><p>目前的模型非常简单，在database中只有三个表：label，notes，info。</p><ul><li>label：记录了标签名，拥有两个field，id、label_name</li><li>notes：具体记录了所有笔记，三个field，id、label_name、note_name</li><li>info：记录了标签和笔记的数量，label_num,note_num</li></ul><p><br></p>', '基本使用方法：有关数据库对函数定义在./js/database.js文件中。引入包：var low = require(\'lowdb\');\nconst File...');
INSERT INTO `ek_common_document_note` VALUES ('398', '<p>您想说点什么？</p><p><br></p><p><br></p><p><strong><u>dasfasdf</u></strong></p><p><strong><u>asdfas</u></strong></p><p><br></p>', '您想说点什么？dasfasdfasdfas...');
INSERT INTO `ek_common_document_note` VALUES ('405', '<h2>您想说点什么？<strong>基本使用方法：</strong></h2><p>有关数据库对函数定义在./js/database.js文件中。</p><p>引入包：</p><pre class=\"ql-syntax\" spellcheck=\"false\">var low = require(\'lowdb\');\nconst FileSync = require(\'lowdb/adapters/FileSync\')\n1\n2\n</pre><p>链接数据库需要两部：</p><pre class=\"ql-syntax\" spellcheck=\"false\">const adapter = new FileSync(db_path);\nvar db = low(adapter);\n1\n2\n</pre><p>具体使用方法：</p><p>在<a href=\"https://www.npmjs.com/package/lowdb\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(103, 149, 181);\">npm网</a>可以看到具体的使用方法。</p><h2><strong>建立模型</strong></h2><p>目前的模型非常简单，在database中只有三个表：label，notes，info。</p><ul><li>label：记录了标签名，拥有两个field，id、label_name</li><li>notes：具体记录了所有笔记，三个field，id、label_name、note_name</li><li>info：记录了标签和笔记的数量，label_num,note_num</li></ul><h2><strong>基本使用方法：</strong></h2><p>有关数据库对函数定义在./js/database.js文件中。</p><p>引入包：</p><pre class=\"ql-syntax\" spellcheck=\"false\">var low = require(\'lowdb\');\nconst FileSync = require(\'lowdb/adapters/FileSync\')\n1\n2\n</pre><p>链接数据库需要两部：</p><pre class=\"ql-syntax\" spellcheck=\"false\">const adapter = new FileSync(db_path);\nvar db = low(adapter);\n1\n2\n</pre><p>具体使用方法：</p><p>在<a href=\"https://www.npmjs.com/package/lowdb\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(103, 149, 181);\">npm网</a>可以看到具体的使用方法。</p><h2><strong>建立模型</strong></h2><p>目前的模型非常简单，在database中只有三个表：label，notes，info。</p><ul><li>label：记录了标签名，拥有两个field，id、label_name</li><li>notes：具体记录了所有笔记，三个field，id、label_name、note_name</li><li>info：记录了标签和笔记的数量，label_num,note_num</li></ul><h2><strong>基本使用方法：</strong></h2><p>有关数据库对函数定义在./js/database.js文件中。</p><p>引入包：</p><pre class=\"ql-syntax\" spellcheck=\"false\">var low = require(\'lowdb\');\nconst FileSync = require(\'lowdb/adapters/FileSync\')\n1\n2\n</pre><p>链接数据库需要两部：</p><pre class=\"ql-syntax\" spellcheck=\"false\">const adapter = new FileSync(db_path);\nvar db = low(adapter);\n1\n2\n</pre><p>具体使用方法：</p><p>在<a href=\"https://www.npmjs.com/package/lowdb\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(103, 149, 181);\">npm网</a>可以看到具体的使用方法。</p><h2><strong>建立模型</strong></h2><p>目前的模型非常简单，在database中只有三个表：label，notes，info。</p><ul><li>label：记录了标签名，拥有两个field，id、label_name</li><li>notes：具体记录了所有笔记，三个field，id、label_name、note_name</li><li>info：记录了标签和笔记的数量，label_num,note_num</li></ul><p><br></p>', '您想说点什么？基本使用方法：有关数据库对函数定义在./js/database.js文件中。引入包：var low = require(\'lowdb\');\ncon...');
INSERT INTO `ek_common_document_note` VALUES ('281', '<pre class=\"ql-syntax\" spellcheck=\"false\">Phalcon Mysql插入，更新，事务，删除注入检查器\n$connection = new \\Phalcon\\Db\\Adapter\\Pdo\\Mysql(\n    [\n        \"host\"     =&gt; \"localhost\",\n        \"username\" =&gt; \"root\",\n        \"password\" =&gt; \"sigma\",\n        \"dbname\"   =&gt; \"test_db\",\n        \"options\"  =&gt; [\n            PDO::MYSQL_ATTR_INIT_COMMAND =&gt; \"SET NAMES \'UTF8\'\",\n            PDO::ATTR_CASE               =&gt; PDO::CASE_LOWER,\n        ]\n    ]\n);\n\n// 插入数据的另外一种方法\n$success = $connection-&gt;insertAsDict(\n    \"robots\",\n    [\n        \"name\" =&gt; \"Astro Boy\",\n        \"year\" =&gt; 1952,\n    ]\n);\n//更新数据\n$success = $connection-&gt;updateAsDict(\n    \"robots\",\n    [\n        \"name\" =&gt; \"New Astro Boy\",\n    ],\n    [\n        \"conditions\" =&gt; \"id = ?\",\n        \"bind\"       =&gt; [101],\n        \"bindTypes\"  =&gt; [PDO::PARAM_INT], // Optional parameter\n    ]\n);\n// 使用类中预设的方法删除行\n$success = $connection-&gt;delete(\n    \"robots\",\n    \"id = ?\",\n    [\n        101,\n    ]\n);\n// 开始一个事务\n$connection-&gt;begin();\n// 执行一些操作\n$connection-&gt;execute(\"DELETE `robots` WHERE `id` = 101\");\n$connection-&gt;execute(\"DELETE `robots` WHERE `id` = 102\");\n$connection-&gt;execute(\"DELETE `robots` WHERE `id` = 103\");\n// 提交操作，如果一切正常\n$connection-&gt;commit();\n//else\n$connection-&gt;rollback();\n数据库事件中，停止操作是非常有用的，例如：如果你想要实现一个注入检查器，在发送SQL到数据库前触发：\nuse Phalcon\\Events\\Event;\n$eventsManager-&gt;attach(\n    \"db:beforeQuery\",\n    function (Event $event, $connection) {\n        $sql = $connection-&gt;getSQLStatement();\n        // 检查是否有恶意关键词\n        if (preg_match(\"/DROP|ALTER/i\", $sql)) {\n            // DROP/ALTER 操作是不允许的, 这肯定是一个注入!\n            // 返回false中断此操作\n            return false;\n        }\n        // 一切正常\n        return true;\n    }\n);\n\n\n\n\n</pre>', 'Phalcon Mysql插入，更新，事务，删除注入检查器\n$connection = new \\Phalcon\\Db\\Adapter\\Pdo\\Mysql(\n ...');
INSERT INTO `ek_common_document_note` VALUES ('282', '<pre class=\"ql-syntax\" spellcheck=\"false\">Phalcon分析 SQL 语句:\nuse Phalcon\\Events\\Event;\nuse Phalcon\\Events\\Manager as EventsManager;\nuse Phalcon\\Db\\Profiler as DbProfiler;\n$eventsManager = new EventsManager();\n$profiler = new DbProfiler();\n// 监听所有数据库的事件\n$eventsManager-&gt;attach(\n    \"db\",\n    function (Event $event, $connection) use ($profiler) {\n        if ($event-&gt;getType() === \"beforeQuery\") {\n            $sql = $connection-&gt;getSQLStatement();\n            // 操作前启动分析\n            $profiler-&gt;startProfile($sql);\n        }\n        if ($event-&gt;getType() === \"afterQuery\") {\n            // 操作后停止分析\n            $profiler-&gt;stopProfile();\n        }\n    }\n);\n\n// 设置事件管理器\n$connection-&gt;setEventsManager($eventsManager);\n$sql = \"SELECT buyer_name, quantity, product_name \"\n     . \"FROM buyers \"\n     . \"LEFT JOIN products ON buyers.pid = products.id\";\n\n// 执行SQL\n$connection-&gt;query($sql);\n\n// 获取最后一个分析结果\n$profile = $profiler-&gt;getLastProfile();\n\necho \"SQL Statement: \", $profile-&gt;getSQLStatement(), \"\\n\";\necho \"Start Time: \", $profile-&gt;getInitialTime(), \"\\n\";\necho \"Final Time: \", $profile-&gt;getFinalTime(), \"\\n\";\necho \"Total Elapsed Time: \", $profile-&gt;getTotalElapsedSeconds(), \"\\n\";\n/*******************************************************************************************\n你也可以基于&nbsp;Phalcon\\Db\\Profiler&nbsp;建立你自己的分析器类，以记录SQL语句发送到数据库的实时统计：&lt;?php\n\nuse Phalcon\\Events\\Manager as EventsManager;\nuse Phalcon\\Db\\Profiler as Profiler;\nuse Phalcon\\Db\\Profiler\\Item as Item;\n\nclass DbProfiler extends Profiler\n{\n    /**\n     * 在SQL语句将要发送给数据库前执行\n     */\n    public function beforeStartProfile(Item $profile)\n    {\n        echo $profile-&gt;getSQLStatement();\n    }\n\n    /**\n     * 在SQL语句已经被发送到数据库后执行\n     */\n    public function afterEndProfile(Item $profile)\n    {\n        echo $profile-&gt;getTotalElapsedSeconds();\n    }\n}\n\n// 创建一个事件管理器\n$eventsManager = new EventsManager();\n\n// 创建一个监听器\n$dbProfiler = new DbProfiler();\n\n// 设置监听器监听所有的数据库事件\n$eventsManager-&gt;attach(\"db\", $dbProfiler);\n\n\n\n</pre>', 'Phalcon分析 SQL 语句:\nuse Phalcon\\Events\\Event;\nuse Phalcon\\Events\\Manager as Events...');
INSERT INTO `ek_common_document_note` VALUES ('283', '<pre class=\"ql-syntax\" spellcheck=\"false\">Phalcon获取数据库表与视图信息:\n// 获取test_db数据库的所有表\n$tables = $connection-&gt;listTables(\"test_db\");\n\n// 在数据库中是否存在\'robots\'这个表\n$exists = $connection-&gt;tableExists(\"robots\");\n\n// 获取\'robots\'字段名称，数据类型，特殊特征\n$fields = $connection-&gt;describeColumns(\"robots\");\nforeach ($fields as $field) {\n    echo \"Column Type: \", $field[\"Type\"];\n}\n\n// 获取\'robots\'表的所有索引\n$indexes = $connection-&gt;describeIndexes(\"robots\");\nforeach ($indexes as $index) {\n    print_r(\n        $index-&gt;getColumns()\n    );\n}\n\n// 获取\'robots\'表的所有外键\n$references = $connection-&gt;describeReferences(\"robots\");\nforeach ($references as $reference) {\n    // 打印引用的列\n    print_r(\n        $reference-&gt;getReferencedColumns()\n    );\n}\n创建/修改/删除表:\nhttp://docs.iphalcon.cn/reference/db.html\n队列：\nhttp://docs.iphalcon.cn/reference/queue.html\n接口：\nhttp://docs.iphalcon.cn/reference/annotations.html\n\n</pre>', 'Phalcon获取数据库表与视图信息:\n// 获取test_db数据库的所有表\n$tables = $connection-&gt;listTables(\"te...');
INSERT INTO `ek_common_document_note` VALUES ('307', '<pre class=\"ql-syntax\" spellcheck=\"false\">若水网络笔记\n\n\n泰国房地产：\n PC原型：https://org.modao.cc/app/47ca1f8d5cc358862b56662a8d8ca1661b08a75a\n 移动原型：https://org.modao.cc/app/9638cd8e962a45d6d1885e0573b34ff999c4b3f4\n\n团长小商城：\n   FTP:\n    账号：tuanzhang\n    密码：Jw6JCJskpkky6Jfr\n   数据库：\n    账号：tuanzhang \n    密码：P54GKXBS3rbbYStc\n   IP:49.4.95.50\n   域名：http://tuanzhang.dreoma.cn\n     账号：admin\n     密码：admin888\n\n招聘：\n   FTP:\n    账号：zhaopin_dreoma\n    密码：NsmE3aWDcjxmnaKS\n   数据库：\n    账号：zhaopin_dreoma\n    密码：Rn7RzCt5dRhRmCeM\n   IP:49.4.95.50\n   域名：http://zhaopin.dreoma.cn/\n     账号：admin\n     密码：admin888\n   微信：\n     公众号APPID：wxd0f7738353304de0\n     公众号SECRET：db2599d97ddc13a0616460229255768f\n     商户ID：1236128702\n    支付密钥：sVdM50aBtDcLjWJsPm5mZ3YWflv79JJl\n\n雪狼官网：\n    原型：https://org.modao.cc/app/1cc6e6891f655b164bd91f1a095dcf746d8bb98e\n    \n车船税：\n    原型：https://org.modao.cc/app/5a87df7cc13d38c946ecd2c24d566728\n综合信息平台：\n    原型：https://org.modao.cc/app/ddbcaa079c9ccd8500c1d41105176025\n</pre>', '若水网络笔记\n\n\n泰国房地产：\n PC原型：https://org.modao.cc/app/47ca1f8d5cc358862b56662a8d8ca1661...');
INSERT INTO `ek_common_document_note` VALUES ('308', '<h2 class=\"ql-indent-1 ql-align-center\">windows Ubuntu</h2><pre class=\"ql-syntax\" spellcheck=\"false\">\nUbuntu 出现apt-get: Package has no installation candidate问题：\n解决方法如下：\n# apt-get update\n# apt-get upgrade\n\nrpm command not found 的解决办法：\n#sudo&nbsp;apt-get&nbsp;install&nbsp;rpm\n\n安装YUM:\n  安装&nbsp;build-essential&nbsp;软件包: sudo apt-get install build-essential\n  安装yum&nbsp;： sudo apt-get install yum\n\n环境：\n  Ubuntu apt-get 安装 PHP最新版：\n       直接用官方PPA源：\n          # sudo add-apt-repository -y ppa:ondrej/php\n          # sudo apt-get update\n       显示软件安装包列表，是否已经有了PHP 7.1，可选：\n          # apt-cache pkgnames | grep php7.1\n       安装，2018年05月08日 星期二，现在的最新版是7.2\n          # sudo apt-get install php7.2-fpm\n  \n   更新源并安装Nginx：\n      # sudo wget http://nginx.org/keys/nginx_signing.key;\n      # sudo apt-key add nginx_signing.key\n      # echo \"deb http://nginx.org/packages/ubuntu/ trusty nginx\" &gt;&gt; /etc/apt/sources.list\n      # echo \"deb-src http://nginx.org/packages/ubuntu/ trusty nginx\" &gt;&gt; /etc/apt/sources.list\n      # sudo apt-get update\n      # sudo apt-get install nginx\n      # /usr/sbin/nginx -v\n   卸载Nginx:\n    udo apt-get remove nginx nginx-common # 卸载删除除了配置文件以外的所有文件。\n    sudo apt-get purge nginx nginx-common # 卸载所有东东，包括删除配置文件。\n    sudo apt-get autoremove # 主要是卸载删除Nginx的不再被使用的依赖包。\n    sudo apt-get remove nginx-full nginx-common #卸载删除两个主要的包。\n   安装Nginx完成后可查看版本号，输入：\n    #/usr/sbin/nginx -v\n \n  \n\n</pre><p><br></p>', 'windows Ubuntu\nUbuntu 出现apt-get: Package has no installation candidate问题：\n解决方法如下...');
INSERT INTO `ek_common_document_note` VALUES ('309', '<h1 class=\"ql-align-center\">Ubuntu18.04彻底删除MySQL数据库</h1><pre class=\"ql-syntax\" spellcheck=\"false\">首先在终端中查看MySQL的依赖项：dpkg --list|grep mysql\n卸载：&nbsp;sudo apt-get remove mysql-common\n卸载：sudo apt-get autoremove --purge mysql-server-5.7\n清除残留数据：dpkg -l|grep ^rc|awk \'{print$2}\'|sudo xargs dpkg -P\n再次查看MySQL的剩余依赖项：dpkg --list|grep mysql\n继续删除剩余依赖项，如：sudo apt-get autoremove --purge mysql-apt-config\n至此已经没有了MySQL的依赖项，彻底删除，Good Luck\n</pre>', 'Ubuntu18.04彻底删除MySQL数据库首先在终端中查看MySQL的依赖项：dpkg --list|grep mysql\n卸载：&nbsp;sudo ap...');
INSERT INTO `ek_common_document_note` VALUES ('311', '<h1 class=\"ql-align-center\">PHP加密算法</h1><pre class=\"ql-syntax\" spellcheck=\"false\">https://github.com/naneau/php-obfuscator\nhttps://github.com/pk-fr/yakpro-po\nhttps://github.com/pk-fr/yakpro-po\n</pre>', 'PHP加密算法https://github.com/naneau/php-obfuscator\nhttps://github.com/pk-fr/yakpro-...');
INSERT INTO `ek_common_document_note` VALUES ('373', '<h1 class=\"ql-align-center\">谷歌翻墙插件</h1><p class=\"ql-align-center\"><span style=\"background-color: rgb(0, 150, 136); color: rgb(255, 255, 255);\">WindmillVPN</span></p>', '谷歌翻墙插件WindmillVPN...');
INSERT INTO `ek_common_document_note` VALUES ('415', '<p>今天有事一个开心日子，让我们看一下吧。</p><p><br></p>', '今天有事一个开心日子，让我们看一下吧。...');
INSERT INTO `ek_common_document_note` VALUES ('416', '<p>您想说点12321321312什么？</p>', '您想说点12321321312什么？...');

-- ----------------------------
-- Table structure for `ek_common_document_photos`
-- ----------------------------
DROP TABLE IF EXISTS `ek_common_document_photos`;
CREATE TABLE `ek_common_document_photos` (
  `aid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文档id',
  `file_id` int(11) unsigned NOT NULL COMMENT '照片文件',
  `description` varchar(256) NOT NULL COMMENT '照片描述',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='照片模型模型扩展表';

-- ----------------------------
-- Records of ek_common_document_photos
-- ----------------------------
INSERT INTO `ek_common_document_photos` VALUES ('58', '64', 'FgeQrgq6tkfhO7_78BY3_kgWv7Ro.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('59', '65', 'FgWX0Vl_bhTFEWMIuvcALsRohq2u.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('60', '66', 'Fh-5mktGBw-7IPsxn1gH8cFj6MN5.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('61', '67', 'FgZiJ1OOeoo5kE3F2sHEDsiccDm7.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('62', '68', 'FhDcdofEIy2I7pK0rVGp5L2km80o.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('63', '69', 'FgEY3TzzDM5dbY3-gOsDKSRpyJin.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('64', '70', 'FjB1QPDKcTJZ-T_EyfrVPkIHe6uh.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('65', '63', 'FkiIRMXF1e5VdLPSEpMUVY-1dk7K.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('66', '71', 'FiHpX2m_HQzSBKURZnGxXcYsdmRt.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('67', '72', 'FiLytpjKhD2tCRxxasddNMF6_3KE.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('68', '73', 'FjWfQMgboWhVCB2cZnbePPLY_DSg.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('69', '74', 'Flz9nwDUpW6dBAMhpTdTxaT-qDuA.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('70', '75', 'Fn_ce1WWqnrk3AWxWhXCWfjD2TdL.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('71', '76', 'Fn8Y-8JkbZt3Bnyf4juFy0I8q4bz.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('84', '87', '20181215_165233278_iOS.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('85', '88', '20181215_165239380_iOS.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('87', '62', 'FuOPQb0Ue7YCIIGwb7riDL0WhjtM.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('88', '78', 'FpvvAEhYgBBax756_8B_bM6vnW4O.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('89', '77', 'FoO3A62epB7E_Qy7SmrEZxUBgQSK.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('90', '79', 'Fp79phwWLXumXKg2ds3xGHFk4TYy.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('91', '81', 'FqasWx-2fITGTaJY7JeJy1pX6Nfc.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('92', '80', 'FpGvJ9RDeddcuDIJB18nJv4nE4h6.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('93', '61', 'lh79zV9GgCa_cAImbFXQwqcqXHK8.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('94', '85', 'lie9wjrJOzib-9at9O3Tgy1koJAS.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('95', '84', 'lpKn-6lwUqv40R_WBMbHALdUsRlJ.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('96', '82', 'Fuybcj8LeHeOYmSOOnjUa1bCByNQ.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('97', '83', 'Fvw62nqFZUd_DUf6YZZpDbx4WUAA.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('98', '86', 'FvyVCYXPxWVa1vawt1HlT8eMTnsi.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('99', '90', '20180405_073342006_iOS.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('100', '91', '20181015_051621421_iOS.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('101', '92', '20181015_012313077_iOS.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('102', '93', '20180311_065246301_iOS.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('103', '94', '20181015_045725176_iOS.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('104', '95', '20181015_053841630_iOS.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('105', '96', '20180311_065648526_iOS.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('106', '97', '20181015_053157134_iOS.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('107', '98', '20181015_053826507_iOS.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('134', '101', 'e1b7eaa3ff9722fbfd5d368ef9e5cc66.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('135', '102', '3383610695139295435.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('136', '103', '6631609824935831644.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('137', '104', '6599305073797567601.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('138', '105', '6600371600074599680.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('255', '71', 'FiHpX2m_HQzSBKURZnGxXcYsdmRt.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('256', '67', 'FgZiJ1OOeoo5kE3F2sHEDsiccDm7.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('257', '66', 'Fh-5mktGBw-7IPsxn1gH8cFj6MN5.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('258', '65', 'FgWX0Vl_bhTFEWMIuvcALsRohq2u.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('259', '68', 'FhDcdofEIy2I7pK0rVGp5L2km80o.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('260', '69', 'FgEY3TzzDM5dbY3-gOsDKSRpyJin.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('301', '137', '%E6%B5%8B%E8%AF%95%E5%9B%BE%E7%89%871.jpeg');
INSERT INTO `ek_common_document_photos` VALUES ('302', '138', '%E6%B5%8B%E8%AF%95%E5%9B%BE%E7%89%871.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('303', '139', '%E6%B5%8B%E8%AF%95%E5%9B%BE%E7%89%872.jpg');
INSERT INTO `ek_common_document_photos` VALUES ('392', '212', 'timg+%281%29.jpg');

-- ----------------------------
-- Table structure for `ek_common_document_video`
-- ----------------------------
DROP TABLE IF EXISTS `ek_common_document_video`;
CREATE TABLE `ek_common_document_video` (
  `aid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文档id',
  `file_id` int(11) unsigned NOT NULL COMMENT '视频文件',
  `description` varchar(256) NOT NULL COMMENT '视频描述',
  PRIMARY KEY (`aid`),
  KEY `file_id` (`file_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='视频模型模型扩展表';

-- ----------------------------
-- Records of ek_common_document_video
-- ----------------------------
INSERT INTO `ek_common_document_video` VALUES ('1', '4', '【剑网三】桃花酒凉[高清版]');
INSERT INTO `ek_common_document_video` VALUES ('2', '5', 'Hoaprox - Ngẫu Hứng');
INSERT INTO `ek_common_document_video` VALUES ('3', '6', '大理一日游');
INSERT INTO `ek_common_document_video` VALUES ('4', '7', '大鱼海棠');
INSERT INTO `ek_common_document_video` VALUES ('5', '8', '独立寒江');
INSERT INTO `ek_common_document_video` VALUES ('6', '9', '剑三《拂雪》');
INSERT INTO `ek_common_document_video` VALUES ('7', '10', '剑网叁剧情歌《眉间雪》');
INSERT INTO `ek_common_document_video` VALUES ('8', '11', '天涯，自己把自己美哭的一首歌');
INSERT INTO `ek_common_document_video` VALUES ('9', '12', '兔纸酱】 相思引 —《天涯明月刀OL》自制GMV 【QAQ消失了半个多月我又回来了】_翻唱_音乐_bilibili_哔哩哔哩');
INSERT INTO `ek_common_document_video` VALUES ('10', '13', '勿忘师恩《如寄》');
INSERT INTO `ek_common_document_video` VALUES ('139', '108', '郁可唯 - 思慕');
INSERT INTO `ek_common_document_video` VALUES ('140', '109', '带泪的鱼 - 一个人唱情歌');
INSERT INTO `ek_common_document_video` VALUES ('141', '110', '张杰、张碧晨 - 只要平凡.mkv');
INSERT INTO `ek_common_document_video` VALUES ('142', '111', '张杰 - 剑心.mkv');
INSERT INTO `ek_common_document_video` VALUES ('161', '115', '【MV】模仿翻唱 -爱的故事上集 歌词版 - 高清MV在线播放 - 音悦Tai - 让娱乐更美好');
INSERT INTO `ek_common_document_video` VALUES ('249', '125', 'Flying Steps - We Are Electric');
INSERT INTO `ek_common_document_video` VALUES ('250', '126', 'Justin Bieber、Big Sean - As Long as You Love Me');
INSERT INTO `ek_common_document_video` VALUES ('251', '127', 'K-391、Alan Walker、Julie Bergan、胜利 - Ignite');
INSERT INTO `ek_common_document_video` VALUES ('252', '128', 'The Daydream - Tears');
INSERT INTO `ek_common_document_video` VALUES ('253', '129', '张韶涵 - 没离开过');
INSERT INTO `ek_common_document_video` VALUES ('264', '130', '【MV】Zion -I Need You - 高清MV在线播放 - 音悦Tai - 让娱乐更美好.mp4');
INSERT INTO `ek_common_document_video` VALUES ('273', '131', '0001.哔哩哔哩-【剑网三九周年_成女群像】剑网三的成女能有多好看！？大型外观安利现场！说不买的人都真香了！-成女群像[超清版]');
INSERT INTO `ek_common_document_video` VALUES ('400', '215', '蜘蛛池演示');

-- ----------------------------
-- Table structure for `ek_common_like`
-- ----------------------------
DROP TABLE IF EXISTS `ek_common_like`;
CREATE TABLE `ek_common_like` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '对应的作品或评论的id',
  `type` int(1) unsigned NOT NULL DEFAULT '1' COMMENT '点赞类型  1作品点赞  2 评论点赞 3 分类顶赞',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `status` char(2) NOT NULL DEFAULT '1' COMMENT '点赞状态  0--取消赞   1--有效赞  -1-- 踩',
  `update_time` int(10) NOT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ek_common_like
-- ----------------------------

-- ----------------------------
-- Table structure for `ek_common_music`
-- ----------------------------
DROP TABLE IF EXISTS `ek_common_music`;
CREATE TABLE `ek_common_music` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '' COMMENT '歌曲名',
  `path` varchar(200) DEFAULT '' COMMENT '音乐地址',
  `author` varchar(30) NOT NULL DEFAULT '' COMMENT '作者',
  `cover` varchar(200) NOT NULL DEFAULT '' COMMENT '封面',
  `hash` char(40) DEFAULT '' COMMENT 'hash值',
  `fsize` int(11) DEFAULT '0' COMMENT '文件大小',
  `mime` varchar(64) NOT NULL DEFAULT '' COMMENT '文件mime类型',
  `update_time` int(10) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=664 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ek_common_music
-- ----------------------------
INSERT INTO `ek_common_music` VALUES ('0000000001', 'Eh, Eh (Nothing Else I Can Say)', 'FgX642-YXwowHY6iVTyg-Gl3Oibb', 'Lady Gaga', 'FhJUc4rB1f5Z6PjYYucnNocQrwbw', 'FgX642-YXwowHY6iVTyg-Gl3Oibb', '2836732', 'audio/mpeg', '1549950793');
INSERT INTO `ek_common_music` VALUES ('0000000002', 'Eh,Eh (Nothing Else I Can Say)', 'FnERDBQ4MIYbf8IIqGEQXXMMVEjl', 'Lady Gaga', 'FtURMRCtyXzQs3Ro2yxIOgxNsr6E', 'FnERDBQ4MIYbf8IIqGEQXXMMVEjl', '2877693', 'audio/mpeg', '1549950795');
INSERT INTO `ek_common_music` VALUES ('0000000003', 'Eh, Eh (Nothing Else I Can Say) [Electric Piano an', 'Fkhd05-jU7-SLgZ9zsfhgZ4S96vR', 'Lady Gaga', 'Ftiqief7GHk1XgdGGEkghbGeBxd1', 'Fkhd05-jU7-SLgZ9zsfhgZ4S96vR', '2832220', 'audio/mpeg', '1549950796');
INSERT INTO `ek_common_music` VALUES ('0000000004', 'Eh, Eh (Nothing Else I Can Say) - Pet Shop Boys Ra', 'FqZJzfC3ntHNP9I60qe0-jlkGmzq', 'Lady Gaga', 'FkJ6Es7_YEn8Y2WRZTjBWtVucPiE', 'FqZJzfC3ntHNP9I60qe0-jlkGmzq', '2711429', 'audio/mpeg', '1549950798');
INSERT INTO `ek_common_music` VALUES ('0000000005', 'Eh, Eh (Nothing Else I Can Say) - FrankMusik \"Cut ', 'FgrpbyPJ_pKnBTLvzbY86BvXObkZ', 'Lady Gaga', 'FkJ6Es7_YEn8Y2WRZTjBWtVucPiE', 'FgrpbyPJ_pKnBTLvzbY86BvXObkZ', '2948746', 'audio/mpeg', '1549950798');
INSERT INTO `ek_common_music` VALUES ('0000000006', 'Eh, Eh (Nothing Else I Can Say) [Mattafix Mix]', 'FkPwsSTaLwFH3K0LrlW1iNHGo4jt', 'Lady Gaga,Mattafix', 'Ftiqief7GHk1XgdGGEkghbGeBxd1', 'FkPwsSTaLwFH3K0LrlW1iNHGo4jt', '3202447', 'audio/mpeg', '1549950799');
INSERT INTO `ek_common_music` VALUES ('0000000007', 'Eh Eh (Nothing Else I Can Say)', 'FiYgy8ftIge70NbN4Pb23usiNbm-', 'Lady Gaga', 'FtIvYuYCdmSM7jMxPqMiDmfcS8d9', 'FiYgy8ftIge70NbN4Pb23usiNbm-', '2817238', 'audio/mpeg', '1549950800');
INSERT INTO `ek_common_music` VALUES ('0000000008', 'River Flows In You (Original Mix)', 'lkwguKxxC3J7mJ-b2xDPSkhhqsWP', 'Mark Pride', 'Fv5Qf9a5K_slmAYsK1o1XN4mmTDX', 'lkwguKxxC3J7mJ-b2xDPSkhhqsWP', '11947406', 'audio/mpeg', '1549950903');
INSERT INTO `ek_common_music` VALUES ('0000000009', 'Won\'t Let You Go', 'FpsMW0ywU9mrlIssyu4CCi--j9C6', 'Julia Bergwall', 'FjIQCmN_czUUNOF_dRxgk-Q82p-G', 'FpsMW0ywU9mrlIssyu4CCi--j9C6', '2997229', 'audio/mpeg', '1549950930');
INSERT INTO `ek_common_music` VALUES ('0000000010', 'I Want You to Know', 'FlB-vvB5cH4yGmLQpLjN55RWksG3', 'Zedd,Selena Gomez', 'FinFjtZOk5yaInpuwaMfufkisD4d', 'FlB-vvB5cH4yGmLQpLjN55RWksG3', '3822101', 'audio/mpeg', '1549950984');
INSERT INTO `ek_common_music` VALUES ('0000000011', 'I Want You To Know (Dunisco & SJUR ft. JeyJeySax R', 'FmT0HcxTPkkepC-Loej2pI1jjAPs', 'Dunisco,SJUR,JeyJeySax,Zedd,Se', 'FiRsgcPFSHGaN8crx6IaFr3IZR9B', 'FmT0HcxTPkkepC-Loej2pI1jjAPs', '3962714', 'audio/mpeg', '1549950985');
INSERT INTO `ek_common_music` VALUES ('0000000012', ' I Want You To Know (Hella x Pegato Remix) ', 'Fot62PzbwrTHqumnuVpoPcimNz3w', 'Pegato,Zedd,Selena Gomez,Hella', 'FjV0IGxmo9SB-FH0o2QMTOHYsyjA', 'Fot62PzbwrTHqumnuVpoPcimNz3w', '4073473', 'audio/mpeg', '1549950988');
INSERT INTO `ek_common_music` VALUES ('0000000013', 'ZEDD - I Want You To Know (DDYcolour Edit)', 'FtOH88P8Xycwik1QbyKw-5NgOiJ5', 'DDY colour,Zedd,Selena Gomez', 'Fg0qEJbws4f5dyBTVrklscsfAn3Z', 'FtOH88P8Xycwik1QbyKw-5NgOiJ5', '3871599', 'audio/mpeg', '1549950989');
INSERT INTO `ek_common_music` VALUES ('0000000014', 'I Want You To Know(Fox Stevenson Remix)', 'lncfzs6h3k9Mj3DvmR9NlJ_0jslZ', 'Fox Stevenson,Zedd,Selena Gome', 'FnE8XDNTTv9Zv9poX7oybEY_4K0B', 'lncfzs6h3k9Mj3DvmR9NlJ_0jslZ', '8996614', 'audio/mpeg', '1549950990');
INSERT INTO `ek_common_music` VALUES ('0000000015', 'I Want You To Know (Scout Remix)', 'FqyD0g7oCXQpRHbSS28z6BioRfUV', 'Zedd,Selena Gomez', 'Fs1tUOmNPdWoPbtDoOr09_xLOXv2', 'FqyD0g7oCXQpRHbSS28z6BioRfUV', '2849688', 'audio/mpeg', '1549950991');
INSERT INTO `ek_common_music` VALUES ('0000000016', 'I Want You To Know (Extended Mix)', 'lk66AxQf0QSlJMwu7oQTHy_LkLgM', 'Zedd,Selena Gomez', 'FinFjtZOk5yaInpuwaMfufkisD4d', 'lk66AxQf0QSlJMwu7oQTHy_LkLgM', '4777479', 'audio/mpeg', '1549950992');
INSERT INTO `ek_common_music` VALUES ('0000000017', 'I Want You to Know(ID Remix)', 'llgO1yU87E9mtCiW32JogqN-rNs3', 'Zedd,Selena Gomez,ID', 'Fh3u7CGb8gbT5SUC9seRRVgFAx0k', 'llgO1yU87E9mtCiW32JogqN-rNs3', '10295422', 'audio/mpeg', '1549950994');
INSERT INTO `ek_common_music` VALUES ('0000000018', 'Undo', 'FndAXlRyOKj9kK4wBvau73mNlskD', 'Sanna Nielsen', 'FrkA8tGDVRHYD9C4nznBoyjGYGHw', 'FndAXlRyOKj9kK4wBvau73mNlskD', '3049720', 'audio/mpeg', '1549951046');
INSERT INTO `ek_common_music` VALUES ('0000000019', 'Undo (Sweden)', 'FoOlYUbHGRnyDY0GZMXQv2Avg0nk', 'Sanna Nielsen', 'FisXHqdwoalyqns8Y8Yc-Ozh1P_e', 'FoOlYUbHGRnyDY0GZMXQv2Avg0nk', '2997374', 'audio/mpeg', '1549951047');
INSERT INTO `ek_common_music` VALUES ('0000000020', 'Undo (Acoustic Edit)', 'FnsSPFelfnri4snnUW20Z4940Epw', 'Sanna Nielsen', 'FmOzVyt-VVZfub1lXd-QtmoS-cjf', 'FnsSPFelfnri4snnUW20Z4940Epw', '3182221', 'audio/mpeg', '1549951048');
INSERT INTO `ek_common_music` VALUES ('0000000021', 'Rainbow', 'FnejluEQpXTJqnVYIyZTCrovyNKa', 'Sanna Nielsen', 'FrkA8tGDVRHYD9C4nznBoyjGYGHw', 'FnejluEQpXTJqnVYIyZTCrovyNKa', '3825873', 'audio/mpeg', '1549951050');
INSERT INTO `ek_common_music` VALUES ('0000000022', 'Ready', 'FoqahSV64sYT5CxBLOKvhjguxbzU', 'Sanna Nielsen', 'FrkA8tGDVRHYD9C4nznBoyjGYGHw', 'FoqahSV64sYT5CxBLOKvhjguxbzU', '3697140', 'audio/mpeg', '1549951051');
INSERT INTO `ek_common_music` VALUES ('0000000023', 'You First Loved Me', 'Fp_lr_6IJkPokUaVM-x_FF9suRRy', 'Sanna Nielsen', 'FrkA8tGDVRHYD9C4nznBoyjGYGHw', 'Fp_lr_6IJkPokUaVM-x_FF9suRRy', '3468529', 'audio/mpeg', '1549951053');
INSERT INTO `ek_common_music` VALUES ('0000000024', 'Undo (Sanna Nielsen Cover)', 'FqFXH_PwTgzOVzqteXKTx81tHTqP', 'Emily´s Escape', 'FsuQ41cgims6n1hz8mCGu1Nc-Ohb', 'FqFXH_PwTgzOVzqteXKTx81tHTqP', '2748125', 'audio/mpeg', '1549951055');
INSERT INTO `ek_common_music` VALUES ('0000000025', 'Undo  (Cover Sanna Nielsen Silent)', 'lmO2FJ5kv8CkkbCGzRYkerNG1zym', '黄艺章', 'FuVbSudfGGDwNfv2Q1OH0-BYj-Bq', 'lmO2FJ5kv8CkkbCGzRYkerNG1zym', '7647652', 'audio/mpeg', '1549951059');
INSERT INTO `ek_common_music` VALUES ('0000000026', '心愿', 'luxPANa7I6LW_-4SNCaoRw0R9mf3', '四个女生', 'FgYsWEfBRJBnEHoAdncPcliCPOjV', 'luxPANa7I6LW_-4SNCaoRw0R9mf3', '6509795', 'audio/mpeg', '1549951083');
INSERT INTO `ek_common_music` VALUES ('0000000027', '心愿（吉他独奏版）（Cover：四个女生）', 'lognHT0-v2Vel6-RNqc1CbbDfA7_', '黄炎', 'FtxCr3kG6ECkDQfbwFRVPduAj2C6', 'lognHT0-v2Vel6-RNqc1CbbDfA7_', '6742770', 'audio/mpeg', '1549951085');
INSERT INTO `ek_common_music` VALUES ('0000000028', '心愿（原唱：四个女生）', 'lkBQjVQJJgTDzR0aGf87q7TbOZYv', '李梦女,尚文倩,赵芳,岳春卉,阿基米德的守候', 'Frq_8s0pjfRIUipG17VyB9-F9SZf', 'lkBQjVQJJgTDzR0aGf87q7TbOZYv', '6292419', 'audio/mpeg', '1549951089');
INSERT INTO `ek_common_music` VALUES ('0000000029', '心愿—校园歌曲（Cover 四个女生）', 'll-Bk8wB1m734FShUcfmFGSKNMMG', '清落', 'FtLDXa_l5RkgDmeHZNt-mY8ffd-E', 'll-Bk8wB1m734FShUcfmFGSKNMMG', '6527521', 'audio/mpeg', '1549951094');
INSERT INTO `ek_common_music` VALUES ('0000000030', '心愿（Cover：四个女生）（Cover：王泽、杨颖、乔媛、唐景莲）', 'Fmv3hA9S5G7JsQ21urcyWX7odcCT', '沙玉文', 'Fo4nYWWUNwZ2b5Zpv1-ClLkHn5Ux', 'Fmv3hA9S5G7JsQ21urcyWX7odcCT', '1850558', 'audio/mpeg', '1549951095');
INSERT INTO `ek_common_music` VALUES ('0000000031', '四个女生-心愿-古筝旋律（水果.FL Remix）', 'lkDeFHf0W3eKHOPbyTBGcVaP-6Wj', '水果.FL', 'Fq12DKXlH_6oY9xVj3-Isgaa7ZRk', 'lkDeFHf0W3eKHOPbyTBGcVaP-6Wj', '5073023', 'audio/mpeg', '1549951097');
INSERT INTO `ek_common_music` VALUES ('0000000032', '心愿（cover 四个女生）', 'lvQFjyNBw5UrTIpc8l_BT5n_VeCu', '张喆坤', 'FmsnkM9W49dnOZfTVKaAjHB85Gx1', 'lvQFjyNBw5UrTIpc8l_BT5n_VeCu', '4547440', 'audio/mpeg', '1549951098');
INSERT INTO `ek_common_music` VALUES ('0000000033', 'Are You With Me', 'FiSVTlU7OMV1B0VBX_OLwP4HOIn6', 'Lost Frequencies', 'FrZaqHrtG1LSJv0kLa_z4_6_eGOj', 'FiSVTlU7OMV1B0VBX_OLwP4HOIn6', '2209376', 'audio/mpeg', '1549951138');
INSERT INTO `ek_common_music` VALUES ('0000000034', 'Are You With Me (Michael Prado Edit)', 'luUQiPuwoYeQdvWsDj7SUocBzGld', 'Michael Prado,Lost Frequencies', 'FlCzZHt3PMn0sB4QjbDVoyGLCMtD', 'luUQiPuwoYeQdvWsDj7SUocBzGld', '7048924', 'audio/mpeg', '1549951139');
INSERT INTO `ek_common_music` VALUES ('0000000035', 'Are You With Me (DIMARO Radio Edit)', 'FnpCQ6x5uEaLYoIZjmaDqMeAuHal', 'Lost Frequencies', 'FsttviFskDgOuYmHNT0NRVxL-r3n', 'FnpCQ6x5uEaLYoIZjmaDqMeAuHal', '3426473', 'audio/mpeg', '1549951140');
INSERT INTO `ek_common_music` VALUES ('0000000036', 'Are You With Me (Christmas Mix)', 'FvOo4X1OqPUP1T-oMpw1G4olosR0', 'Christmas,Lost Frequencies', 'FgBo7x8TXEJvM2Y0xladxEgwbwXm', 'FvOo4X1OqPUP1T-oMpw1G4olosR0', '2222751', 'audio/mpeg', '1549951143');
INSERT INTO `ek_common_music` VALUES ('0000000037', 'Are You With Me (Extended Mix)', 'lnfAlF7weQ5A5qMF5sKuRki5Dnxo', 'Lost Frequencies', 'FrZaqHrtG1LSJv0kLa_z4_6_eGOj', 'lnfAlF7weQ5A5qMF5sKuRki5Dnxo', '4598013', 'audio/mpeg', '1549951144');
INSERT INTO `ek_common_music` VALUES ('0000000038', 'Are You With Me (Dash Berlin Extended Remix)', 'loAE-6IgHvzXZcNFoAH88TnG6B5d', 'Lost Frequencies', 'Fi-85_jMt5gDQYFWAAw1GaeQ2FOm', 'loAE-6IgHvzXZcNFoAH88TnG6B5d', '4633539', 'audio/mpeg', '1549951146');
INSERT INTO `ek_common_music` VALUES ('0000000039', 'Are You With Me (Calvo Remix)', 'lnPImL2vFa41YY9FSqhOIUps2ODD', 'Lost Frequencies,Calvo', 'Fr-N681zKNx6nL_ALSz-xPNwHhay', 'lnPImL2vFa41YY9FSqhOIUps2ODD', '4422052', 'audio/mpeg', '1549951148');
INSERT INTO `ek_common_music` VALUES ('0000000040', 'Are You With Me (Radio Edit)', 'ls5bIQYyGRQSyDNBtr6zI5h5x1Vy', 'Lost Frequencies', 'Fp3SBo-PJqhE-3nKaAPEh8j8Duk5', 'ls5bIQYyGRQSyDNBtr6zI5h5x1Vy', '6173300', 'audio/mpeg', '1549951149');
INSERT INTO `ek_common_music` VALUES ('0000000041', 'Are You With Me (Gestört Aber GeiL Remix)', 'llQEKrl4vDTP4lSY97ovWTFbUAJ4', 'Lost Frequencies,Gestört aber ', 'Fr-N681zKNx6nL_ALSz-xPNwHhay', 'llQEKrl4vDTP4lSY97ovWTFbUAJ4', '5060275', 'audio/mpeg', '1549951150');
INSERT INTO `ek_common_music` VALUES ('0000000042', 'Are You With Me [Dimaro Remix]', 'ltrntjapFuMVF6UfEPNvIC_IU5Fz', 'Lost Frequencies', 'FhekBfyfQ2h33ZixyeJdVRZy6Ggb', 'ltrntjapFuMVF6UfEPNvIC_IU5Fz', '8616271', 'audio/mpeg', '1549951152');
INSERT INTO `ek_common_music` VALUES ('0000000043', 'Are You With Me (DJ Fresh Remix)', 'loCYTL8bVsBuZ--9gwTiGUryFF86', 'Lost Frequencies,DJ Fresh', 'Fr-N681zKNx6nL_ALSz-xPNwHhay', 'loCYTL8bVsBuZ--9gwTiGUryFF86', '4468445', 'audio/mpeg', '1549951153');
INSERT INTO `ek_common_music` VALUES ('0000000044', 'Lost & Found', 'lisTb0FD2GfkCGhZmY7vTS_Im_wq', 'Embody,Claire Ridgely', 'Fi_8BxjDBI_uY_hwWKZpP5FuPdVN', 'lisTb0FD2GfkCGhZmY7vTS_Im_wq', '9514885', 'audio/mpeg', '1549951175');
INSERT INTO `ek_common_music` VALUES ('0000000045', '我已经爱上你 (抖音版)', 'FncLnfc7eW3P7fLPtTsilSNDTDSR', '刘旭阳', 'FoIEpyuwycA_kWfn8FOam3u7eP0I', 'FncLnfc7eW3P7fLPtTsilSNDTDSR', '1800403', 'audio/mpeg', '1549951222');
INSERT INTO `ek_common_music` VALUES ('0000000046', '我已经爱上你 (抖音版伴奏)', 'FuEIefRwiywiQLjT2R8cpc6nlqO-', '刘旭阳', 'FoIEpyuwycA_kWfn8FOam3u7eP0I', 'FuEIefRwiywiQLjT2R8cpc6nlqO-', '1809807', 'audio/mpeg', '1549951223');
INSERT INTO `ek_common_music` VALUES ('0000000047', '往后余生', 'FpXnM6cKpnliQCVIGP_ocseci6bJ', '孙茜茹,马良', 'FiIbRQn5djSzg_hPvXFCJfKa3ZAn', 'FpXnM6cKpnliQCVIGP_ocseci6bJ', '3786336', 'audio/mpeg', '1549951254');
INSERT INTO `ek_common_music` VALUES ('0000000048', '盛夏的果实', 'FkDgCtiCsrhPbro3L6-5up2H-jeW', '莫文蔚', 'FvUmemFI3jhyN8r6bJwnZcnryRxu', 'FkDgCtiCsrhPbro3L6-5up2H-jeW', '4003674', 'audio/mpeg', '1549951272');
INSERT INTO `ek_common_music` VALUES ('0000000049', '盛夏的果实(Live) - live', 'liafqxtagEc9VGL3Qd-bhy8oaJGa', '莫文蔚', 'FjsYlo7-n0OYsmkDDkHChBQU_tVy', 'liafqxtagEc9VGL3Qd-bhy8oaJGa', '4581369', 'audio/mpeg', '1549951273');
INSERT INTO `ek_common_music` VALUES ('0000000050', '安宁', 'lmLH9oSLGL_aocJPPVU-9DuQ2scQ', '米麒麟', 'Fl28MfQQJyN_u7viEbal4S7F4KQ_', 'lmLH9oSLGL_aocJPPVU-9DuQ2scQ', '7820060', 'audio/mpeg', '1549951274');
INSERT INTO `ek_common_music` VALUES ('0000000051', '盛夏的果实', 'lp4q_1pmw5aB5c5NegYrl8yEpXQC', '米麒麟', 'Fl28MfQQJyN_u7viEbal4S7F4KQ_', 'lp4q_1pmw5aB5c5NegYrl8yEpXQC', '9772974', 'audio/mpeg', '1549951278');
INSERT INTO `ek_common_music` VALUES ('0000000052', '你在终点等我', 'loXfZRnpktw27CIDLp4zBodpRWhw', '王菲', 'FpFBnbSUO3j0riesCsR41qj9S13p', 'loXfZRnpktw27CIDLp4zBodpRWhw', '4567084', 'audio/mpeg', '1549951295');
INSERT INTO `ek_common_music` VALUES ('0000000053', '你在终点等我Cover：王菲', 'liyVPvbNRZJ2j6mcWY_SZZdcKR3L', '王熊熊i', 'FvQiyfWsN8P6RKtO-F99jtKIkoqX', 'liyVPvbNRZJ2j6mcWY_SZZdcKR3L', '11324648', 'audio/mpeg', '1549951300');
INSERT INTO `ek_common_music` VALUES ('0000000054', '你在终点等我（从你的全世界路过）（安静温暖版）（Cover 王菲）', 'losvmdlF5yQnPA0QiswBC3ElmubU', '杜明修,cover王菲', 'FtQ4o0vIykzZqd4ZPe7iGHLa6JMC', 'losvmdlF5yQnPA0QiswBC3ElmubU', '10907733', 'audio/mpeg', '1549951304');
INSERT INTO `ek_common_music` VALUES ('0000000055', '你在终点等我 (Cover 王菲)', 'llCqDSoRXyv8XQcDWG2POjk3vqvN', '冯提莫', 'FinzYyY6kHaUXvLwEyNH6SVWHnz6', 'llCqDSoRXyv8XQcDWG2POjk3vqvN', '11473023', 'audio/mpeg', '1549951305');
INSERT INTO `ek_common_music` VALUES ('0000000056', '你在终点等我（Cover 王菲）', 'lihaCXC8pT-JVNRzJJVYrIH7jmxc', '小鹿Morning,YUKI', 'FiD2M0JUS66JsocIRTrwiPIPaG6P', 'lihaCXC8pT-JVNRzJJVYrIH7jmxc', '11266133', 'audio/mpeg', '1549951307');
INSERT INTO `ek_common_music` VALUES ('0000000057', '《我在终点等你》粤「原曲：你在终点等我」（Cover 王菲）', 'lkhLaD8qeGnH1TIlHlr6Ztmbvj_v', '小贱', 'FgRUytRVsdGclkN2PZrIYk3Gf3v0', 'lkhLaD8qeGnH1TIlHlr6Ztmbvj_v', '11000729', 'audio/mpeg', '1549951309');
INSERT INTO `ek_common_music` VALUES ('0000000058', '你在终点等我（Cover 王菲）', 'loMGodTCGEvJhhOtn8Efg5hIIHWx', '刘安琪', 'FpfwhybPXZWeb6vyqoMWCBhUeTKl', 'loMGodTCGEvJhhOtn8Efg5hIIHWx', '11215978', 'audio/mpeg', '1549951312');
INSERT INTO `ek_common_music` VALUES ('0000000059', '我在终点等你（Cover：王菲）', 'luZ3VVJNt41lPiAlQ2_TzrFFcSjX', 'YanHal', 'FkbUnZl8QG4URyAb1TBwEFO76OA2', 'luZ3VVJNt41lPiAlQ2_TzrFFcSjX', '11330917', 'audio/mpeg', '1549951316');
INSERT INTO `ek_common_music` VALUES ('0000000060', '你在终点等我（Cover王菲）', 'lv0fBzWcCz01iWEAH8TR12XZqG6j', '橙大蕾蕾', 'Fm_wGxJGisIPmqMc19q8fs5VM-55', 'lv0fBzWcCz01iWEAH8TR12XZqG6j', '11270313', 'audio/mpeg', '1549951318');
INSERT INTO `ek_common_music` VALUES ('0000000061', '你在终点等我（Cover 王菲）', 'luVykoGRe2oeq7NYroCB-MhOBk4r', '郭小萍', 'FsxYlPmvTK9-O5g5-q95tS_efpSF', 'luVykoGRe2oeq7NYroCB-MhOBk4r', '9204550', 'audio/mpeg', '1549951320');
INSERT INTO `ek_common_music` VALUES ('0000000062', '你在终点等我 （Cover 王菲）', 'ln82I8owdGv_3fX2rUhUa5Gvvbq9', '刘旭阳', 'FtgnrM2bXt6u_f22q-RAzMnuyhHj', 'ln82I8owdGv_3fX2rUhUa5Gvvbq9', '4256122', 'audio/mpeg', '1549951321');
INSERT INTO `ek_common_music` VALUES ('0000000063', '你在终点等我（Cover 王菲）', 'lseKSR99gOifYlDugfh5zkRc2XUz', '杨一歌', 'FmF9FFf-be3dkrNxYxnwqdDdTL8h', 'lseKSR99gOifYlDugfh5zkRc2XUz', '10004942', 'audio/mpeg', '1549951325');
INSERT INTO `ek_common_music` VALUES ('0000000064', '全世界谁倾听你 ', 'Fm1MFM_rTEiV-ch4I2ogTp8eduuP', '林宥嘉', 'FhjRi7EFfpqpvhwYREpuYOsNvSal', 'Fm1MFM_rTEiV-ch4I2ogTp8eduuP', '4152050', 'audio/mpeg', '1549951345');
INSERT INTO `ek_common_music` VALUES ('0000000065', '【手风琴】全世界谁倾听你（Cover：林宥嘉）', 'lrmEJpvZG6UdKgtyBslIdIB8upR9', 'Apr光', 'FnvcUvqUFHPSgpZVVR9l65rWbtBO', 'lrmEJpvZG6UdKgtyBslIdIB8upR9', '9350836', 'audio/mpeg', '1549951347');
INSERT INTO `ek_common_music` VALUES ('0000000066', '全世界谁倾听你（Cover 林宥嘉）', 'lpFgPqYpLyPsSooGRPuCZU6luY_G', '郁欢', 'FsR4nR5NoEXo7zSRmIwiOWwijKcq', 'lpFgPqYpLyPsSooGRPuCZU6luY_G', '9289187', 'audio/mpeg', '1549951349');
INSERT INTO `ek_common_music` VALUES ('0000000067', '全世界谁倾听你（女声版）（Cover：林宥嘉）', 'lir_tsISI0Q9LvLhjEQQWnRrao3j', 'Faye小糖人', 'Ft2TMvLk8fG2cxXmAGuwblqbbY1z', 'lir_tsISI0Q9LvLhjEQQWnRrao3j', '10400958', 'audio/mpeg', '1549951351');
INSERT INTO `ek_common_music` VALUES ('0000000068', '林宥嘉 - 全世界谁倾听你-文武贝钢琴版', 'lkS5RUcwKjpneRAUxXgEjESC9yBF', '文武贝', 'FklQuJvyK517whb7AodpeFzVGWWZ', 'lkS5RUcwKjpneRAUxXgEjESC9yBF', '10394689', 'audio/mpeg', '1549951353');
INSERT INTO `ek_common_music` VALUES ('0000000069', '偏爱（Wedding gift）', 'lhU_5tb_mk_w99jyi4XMHg62WXIh', '闲散音乐人', 'FkStVA2iMmmi2I_hPZyIP2aEDK6J', 'lhU_5tb_mk_w99jyi4XMHg62WXIh', '10742640', 'audio/mpeg', '1549951356');
INSERT INTO `ek_common_music` VALUES ('0000000070', '全世界谁倾听你（Cover 林宥嘉）', 'lj7IA-HDQA5Mact0Py3cPnuKtYs9', '闲散音乐人', 'FkStVA2iMmmi2I_hPZyIP2aEDK6J', 'lj7IA-HDQA5Mact0Py3cPnuKtYs9', '10343489', 'audio/mpeg', '1549951360');
INSERT INTO `ek_common_music` VALUES ('0000000071', '全世界谁倾听你｜钢琴（Cover 林宥嘉）', 'lmb59opRZ1h_frGUnWLHjvyR5xN0', '何小樂', 'FicpCTlDNTB-sU0WeLmUzXhDx2Yo', 'lmb59opRZ1h_frGUnWLHjvyR5xN0', '5115864', 'audio/mpeg', '1549951361');
INSERT INTO `ek_common_music` VALUES ('0000000072', '全世界谁倾听你（女版）（Cover：林宥嘉）', 'lniMv8Qc68HU9b-VYH8OnyaPswDN', '是川妹儿吖', 'Frnqu82KJ8f5SAeMkSQsIils1EKd', 'lniMv8Qc68HU9b-VYH8OnyaPswDN', '9790738', 'audio/mpeg', '1549951365');
INSERT INTO `ek_common_music` VALUES ('0000000073', '山风一样自由（Cover 阿鲁阿卓）', 'lglYF33XLcs4nOoZV53m2PHgUrYv', '闲散音乐人', 'FkStVA2iMmmi2I_hPZyIP2aEDK6J', 'lglYF33XLcs4nOoZV53m2PHgUrYv', '8685236', 'audio/mpeg', '1549951368');
INSERT INTO `ek_common_music` VALUES ('0000000074', '全世界谁倾听你（Cover：林宥嘉）', 'lsMrCcACCiCDu82XObhZq3tQWZ9z', '我是佩奇呀', 'Fk7TIOiGKP3xR3RAMZFOdZ2XL6Lh', 'lsMrCcACCiCDu82XObhZq3tQWZ9z', '10226460', 'audio/mpeg', '1549951370');
INSERT INTO `ek_common_music` VALUES ('0000000075', '【手风琴】全世界谁倾听你（Cover：林宥嘉）', 'lm5kB4l0x6eCvup7liXzJw3TgEod', '风流先森', 'Ft4Y7CDTBe_y1hFJHcmvoW4Z--ts', 'lm5kB4l0x6eCvup7liXzJw3TgEod', '9655946', 'audio/mpeg', '1549951377');
INSERT INTO `ek_common_music` VALUES ('0000000076', '《从你的全世界路过》插曲扒带完整版', 'lhtn23Q8hQiWk5wtaDGRn69dfiDz', 'UlysseC', 'FiGPIS4qk9jL_JduBFF7OAY-Xm6D', 'lhtn23Q8hQiWk5wtaDGRn69dfiDz', '7274623', 'audio/mpeg', '1549951432');
INSERT INTO `ek_common_music` VALUES ('0000000077', '《从你的全世界路过》纯音乐插曲-开往春天的地铁（Cover：从你的全世界路过）', 'lkSzF2E3LhevmYpU4L-Etkq31608', '方便便', 'Fk1KoRGan23h00hKzfYv69MsnMfB', 'lkSzF2E3LhevmYpU4L-Etkq31608', '6474231', 'audio/mpeg', '1549951476');
INSERT INTO `ek_common_music` VALUES ('0000000078', '易燃易爆炸（Cover 华晨宇）', 'lgOZTNJdp2kH_1W7Z53OzfX9WC3s', 'E57君', 'FteE6wSWKrVVHYFGRnWdzw0Jt0MF', 'lgOZTNJdp2kH_1W7Z53OzfX9WC3s', '9031097', 'audio/mpeg', '1549951530');
INSERT INTO `ek_common_music` VALUES ('0000000079', '騎士王の誇り', 'lrKEYcSBM_m1gGy0HZOWwHOzJYRb', '川井憲次', 'FiY4vr0jcblZsVFPBlZ52p2hnBbT', 'lrKEYcSBM_m1gGy0HZOWwHOzJYRb', '5762656', 'audio/mpeg', '1549951580');
INSERT INTO `ek_common_music` VALUES ('0000000080', '騎士王の誇り -off percussion ver.-', 'lrdn-RzGo3X7fUopW_XyEzWwD4On', '川井憲次', 'FjlrupliUOhwjEh_0Nk0DUPv_ToV', 'lrdn-RzGo3X7fUopW_XyEzWwD4On', '5844215', 'audio/mpeg', '1549951582');
INSERT INTO `ek_common_music` VALUES ('0000000081', '騎士王の誇り~骑士王的荣耀（Saber角色曲）（Cover 川井宪次）', 'FgJO1i6qEURrWwW2y2ew277Y3pz9', 'Kyle Xian', 'FupB6RTR2cKxo0jWovrsP6-eYkeB', 'FgJO1i6qEURrWwW2y2ew277Y3pz9', '2974868', 'audio/mpeg', '1549951584');
INSERT INTO `ek_common_music` VALUES ('0000000082', '骑士王の夸り（指弹）（Cover：川井憲次）', 'lh2ItFzSZnfPUsQP0wrSlkgC9swP', '大橙子', 'Fk9gfcHDpIsFMxp8ldAVux1ib77B', 'lh2ItFzSZnfPUsQP0wrSlkgC9swP', '6837856', 'audio/mpeg', '1549951586');
INSERT INTO `ek_common_music` VALUES ('0000000083', '独我-騎士王の誇り中文填词-女生版（Cover 川井憲次）', 'lquF3p3yzxFCghXQ9AAsj_kBRYaR', '花九太太', 'Ft5eQCzrUgXFwuOMoj8tGWG30noU', 'lquF3p3yzxFCghXQ9AAsj_kBRYaR', '5764746', 'audio/mpeg', '1549951587');
INSERT INTO `ek_common_music` VALUES ('0000000084', '让我做你的眼睛（抖音最火）（Cover：花僮）', 'ljmIFIPi2h64O4IaoqFJE2HgnTwC', 'Young-咕噜', 'FvqE2ewJlLp0hi0CajEoTPHeWx0A', 'ljmIFIPi2h64O4IaoqFJE2HgnTwC', '4271587', 'audio/mpeg', '1549951706');
INSERT INTO `ek_common_music` VALUES ('0000000085', '阿刁（cover张韶涵live版）（Cover：赵雷）', 'lgL9_ua63x3v8thP0bAqvRe9RmmD', '颜素susu', 'Fods4X1MgCJSxbn3GQnm7e9IPHu2', 'lgL9_ua63x3v8thP0bAqvRe9RmmD', '12802133', 'audio/mpeg', '1549951822');
INSERT INTO `ek_common_music` VALUES ('0000000086', '体面', 'lnQBsdZOL2mwmss40PZQCTl-jAmt', '云云众生,迟青', 'FqycDYtWhfnW5BCKPfUukCcDNzFI', 'lnQBsdZOL2mwmss40PZQCTl-jAmt', '13082166', 'audio/mpeg', '1549951862');
INSERT INTO `ek_common_music` VALUES ('0000000087', '体面', 'lgEf0cEJ6qKVpOCenFohFW24dqa9', '迟青', 'Fl09GA8MOr12wLyinlE8i490ZTBi', 'lgEf0cEJ6qKVpOCenFohFW24dqa9', '5232893', 'audio/mpeg', '1549951864');
INSERT INTO `ek_common_music` VALUES ('0000000088', '体面（伴奏）', 'll3ZiK7C9vkZlIyWgAjtJy5034Pe', '云雾心', 'Fl09GA8MOr12wLyinlE8i490ZTBi', 'll3ZiK7C9vkZlIyWgAjtJy5034Pe', '5234146', 'audio/mpeg', '1549951865');
INSERT INTO `ek_common_music` VALUES ('0000000089', '体面 piano ver（Cover 于文文）', 'ltWci0_9NNTjtQ1wr3pj4jxPgHgn', '昼夜', 'FjQp5q2e1C6V3K-j0_wukWaoDuBo', 'ltWci0_9NNTjtQ1wr3pj4jxPgHgn', '9650721', 'audio/mpeg', '1549951890');
INSERT INTO `ek_common_music` VALUES ('0000000090', '小幸运（Cover：田馥甄）', 'li2SGAoTsUKpfrA9nYjiM07L-Sv-', '顾十里', 'FpTEBNK1zbEVQuuRTe4a-yIwdkXb', 'li2SGAoTsUKpfrA9nYjiM07L-Sv-', '9945382', 'audio/mpeg', '1549951894');
INSERT INTO `ek_common_music` VALUES ('0000000091', '体面（治愈男版)（Cover：于文文）', 'lsd5DJU9apwa0Dyd4BsZJhn10_AB', '陈曦', 'FmNMeESEfBnbt_G9O_MxyRBnMQid', 'lsd5DJU9apwa0Dyd4BsZJhn10_AB', '11317333', 'audio/mpeg', '1549951895');
INSERT INTO `ek_common_music` VALUES ('0000000092', '体面 (Aconstic Live)（Cover：于文文）', 'lv_Ya88NqUcKVCy8oEc7B6kISa13', '喔唷才女我的旭', 'Fqff3S64hOIU2EIpaB40FJbqcmgd', 'lv_Ya88NqUcKVCy8oEc7B6kISa13', '8077105', 'audio/mpeg', '1549951896');
INSERT INTO `ek_common_music` VALUES ('0000000093', '体面（男版）（Cover：于文文）', 'lsd5DJU9apwa0Dyd4BsZJhn10_AB', '陈曦', 'FnljXQMAGHz4w6eprqi539B93y25', 'lsd5DJU9apwa0Dyd4BsZJhn10_AB', '11317333', 'audio/mpeg', '1549951897');
INSERT INTO `ek_common_music` VALUES ('0000000094', '浪子回头（Cover：茄子蛋）', 'lgKfEQm9rG_NFypawdFNBVoECp9w', '顾十里', 'FpTEBNK1zbEVQuuRTe4a-yIwdkXb', 'lgKfEQm9rG_NFypawdFNBVoECp9w', '10451113', 'audio/mpeg', '1549951899');
INSERT INTO `ek_common_music` VALUES ('0000000095', '体面(伴奏)-钢琴版（Cover：于文文）', 'lvffdlBoANgWSC6gsF7go8TMxR7p', '解宁', 'Fp2d23sgud4YIsQuoM-enrPnnYd-', 'lvffdlBoANgWSC6gsF7go8TMxR7p', '8737480', 'audio/mpeg', '1549951902');
INSERT INTO `ek_common_music` VALUES ('0000000096', '残酷月光（Cover：林宥嘉）', 'lqPY5EMhiSgNFqSV9GOJWYYB7VtF', '顾十里', 'FpomDq_lXcjhTN6QxoLLIWK6DowV', 'lqPY5EMhiSgNFqSV9GOJWYYB7VtF', '9897317', 'audio/mpeg', '1549951907');
INSERT INTO `ek_common_music` VALUES ('0000000097', '第三人称（Cover：Hush!）', 'lk29qlZ_Ag_F3pKOc2JVYD191O59', '顾十里', 'FpIjbZ1bs7RiRBBIRUSJRn3ELRX6', 'lk29qlZ_Ag_F3pKOc2JVYD191O59', '10201382', 'audio/mpeg', '1549951909');
INSERT INTO `ek_common_music` VALUES ('0000000098', 'WAY BACK HOME（Cover：SHAUN）', 'loT0r31ucWTGjZZQ8oslLYjr7uGp', '顾十里', 'FpTEBNK1zbEVQuuRTe4a-yIwdkXb', 'loT0r31ucWTGjZZQ8oslLYjr7uGp', '8570297', 'audio/mpeg', '1549951914');
INSERT INTO `ek_common_music` VALUES ('0000000099', '我要你（Cover：任素汐）', 'lq6C-nz8bzP8ZvuS_zlT2b6UDNg1', '顾十里', 'FvuyrCvvfTZyOhjMTtIfPFGEsOLH', 'lq6C-nz8bzP8ZvuS_zlT2b6UDNg1', '5739668', 'audio/mpeg', '1549951917');
INSERT INTO `ek_common_music` VALUES ('0000000100', 'Fly', 'Fr5_TyWPTiwHrbw421Lw-S8UZP0K', 'Ludovico Einaudi', 'Fua0pqDJcxBXaSLkGIrBTMxenDDt', 'Fr5_TyWPTiwHrbw421Lw-S8UZP0K', '3209988', 'audio/mpeg', '1549951976');
INSERT INTO `ek_common_music` VALUES ('0000000101', 'Fly', 'Fr3vs7quZfg9Z0kjSmj105eLsdCS', 'Ludovico Einaudi,Martin Jacoby', 'Fh-ojo0dhyGznnZ-WE8V0Rajby0s', 'Fr3vs7quZfg9Z0kjSmj105eLsdCS', '4187995', 'audio/mpeg', '1549951979');
INSERT INTO `ek_common_music` VALUES ('0000000102', 'Fly (Live)', 'll1TPCtUTALHmqurIr9jr227S6ld', 'Ludovico Einaudi', 'FgkUJI8prkM90tnVCdrFYZZkpWci', 'll1TPCtUTALHmqurIr9jr227S6ld', '7171090', 'audio/mpeg', '1549951982');
INSERT INTO `ek_common_music` VALUES ('0000000103', 'Fly', 'FjYo0MGNoguy7QhmSkjjZD5j3r9C', 'Martin Jacoby,Ludovico Einaudi', 'FmMDd4mzncq-hFLRiL9hLD5UqqPS', 'FjYo0MGNoguy7QhmSkjjZD5j3r9C', '4047978', 'audio/mpeg', '1549951983');
INSERT INTO `ek_common_music` VALUES ('0000000104', '三生三世十里桃花', 'lhOLQ8o46cgRvRndCvjA1zvsQK2P', '那英', 'FujI7Q-y9U4SPBM-wvNdq0_KhkFL', 'lhOLQ8o46cgRvRndCvjA1zvsQK2P', '4536991', 'audio/mpeg', '1549952094');
INSERT INTO `ek_common_music` VALUES ('0000000105', '三生三世十里桃花（Cover：那英）', 'ljMgOfS2zCsz0cQX5ujrAHx3-pCa', '凉凉,天钺', 'Fti0YScNtcLkJHrSgtGKCgepqWDi', 'ljMgOfS2zCsz0cQX5ujrAHx3-pCa', '10130329', 'audio/mpeg', '1549952096');
INSERT INTO `ek_common_music` VALUES ('0000000106', '那英 - 三生三世十里桃花（HM的钢琴城堡 remix）', 'ljy9opAS8rkSRhDicJwvtDTCWiMT', 'HM的钢琴城堡', 'Fkv9taDbNT3EiKgEHNUo_myv4FRp', 'ljy9opAS8rkSRhDicJwvtDTCWiMT', '5211995', 'audio/mpeg', '1549952097');
INSERT INTO `ek_common_music` VALUES ('0000000107', '三生三世十里桃花（Cover：那英）', 'lurM_XwZ329pOc0g8MJfPZKbhYVv', '凌落Mild,祭亦', 'FpExbypPq_m355xxDwCMelqsxTV6', 'lurM_XwZ329pOc0g8MJfPZKbhYVv', '10348713', 'audio/mpeg', '1549952101');
INSERT INTO `ek_common_music` VALUES ('0000000108', '【三生三世十里桃花】纯人声改编（Cover 那英）', 'lnYy_NkiPVYP9CABoHUkY9TUSi2O', '黎子明', 'FujdbD8l3cBYLUC26wK6fJx-8a5b', 'lnYy_NkiPVYP9CABoHUkY9TUSi2O', '7066689', 'audio/mpeg', '1549952102');
INSERT INTO `ek_common_music` VALUES ('0000000109', '三生三世十里桃花（Cover 那英）', 'lky93PGSM2C8CfjvAzKeGTtXh-e5', '德赫兰,有理君', 'Fjmd9p3imhmPcSIF_dRJY1UG38LN', 'lky93PGSM2C8CfjvAzKeGTtXh-e5', '10019570', 'audio/mpeg', '1549952106');
INSERT INTO `ek_common_music` VALUES ('0000000110', '三生三世十里桃花（Cover 那英）', 'lho4U6dyq1bOdqIOAvSAREp2Xz0G', '紫依_七弦剑吟', 'FiakDp-iWoU8cspsmBxyHz-nD6mV', 'lho4U6dyq1bOdqIOAvSAREp2Xz0G', '11342411', 'audio/mpeg', '1549952110');
INSERT INTO `ek_common_music` VALUES ('0000000111', '三生三世十里桃花（Cover：那英）', 'lhNEpqZbAkDMNL8w6vdY3Jqis-ci', '千雨千', 'FoblxvJ9BbwN_nfSWoJclsZsXTE_', 'lhNEpqZbAkDMNL8w6vdY3Jqis-ci', '11281807', 'audio/mpeg', '1549952112');
INSERT INTO `ek_common_music` VALUES ('0000000112', '三生三世十里桃花（Cover：那英）', 'lkhAPFJ_jiTRqcI40BKCyCHzWhnt', '陈冬霖', 'FokxdQQ4TPfyITW9DKyRRV0UhR7L', 'lkhAPFJ_jiTRqcI40BKCyCHzWhnt', '11293301', 'audio/mpeg', '1549952114');
INSERT INTO `ek_common_music` VALUES ('0000000113', '三生三世十里桃花（Cover：那英）', 'lhnMDTu2y9d9bOhUYVbnomhHxB2E', '堇墨小翮', 'FgK6oVYRLlLZgaes-1Sw-rpiRk0i', 'lhnMDTu2y9d9bOhUYVbnomhHxB2E', '10205562', 'audio/mpeg', '1549952123');
INSERT INTO `ek_common_music` VALUES ('0000000114', '三生三世十里桃花（Cover 那英）', 'lqW9iewuw_Png6pjydPvAd0d7NBZ', '梵梦Jasuse', 'FqLhkoI7VAzCs4149_3E-GYX7-po', 'lqW9iewuw_Png6pjydPvAd0d7NBZ', '10150182', 'audio/mpeg', '1549952126');
INSERT INTO `ek_common_music` VALUES ('0000000115', '三生三世十里桃花（Cover：那英）', 'lnFKJpDajGnXqEaHvqZTsPkr1Lsj', '陈卓林', 'Fj-RwyeNQD58NhafvlPQtLTV2-pK', 'lnFKJpDajGnXqEaHvqZTsPkr1Lsj', '10140778', 'audio/mpeg', '1549952129');
INSERT INTO `ek_common_music` VALUES ('0000000116', '乔双花', 'lkuQZ2Es9ZW3uun20CsdIO4Ilnsz', '玄觞,HITA', 'FgtZ2h9fjr8IprMcQ_Uq48VBhVsE', 'lkuQZ2Es9ZW3uun20CsdIO4Ilnsz', '5337800', 'audio/mpeg', '1549952176');
INSERT INTO `ek_common_music` VALUES ('0000000117', '乔双花', 'lixcsS-LkncTvvZPW3686HiHpN9g', 'HITA,玄觞', 'ForFWvw-5NjKJhJ01WYwiAb--r1y', 'lixcsS-LkncTvvZPW3686HiHpN9g', '5331113', 'audio/mpeg', '1549952178');
INSERT INTO `ek_common_music` VALUES ('0000000118', '乔双花（Cover：Hita&玄觞）（Cover：HITA）', 'ljjyxOudPzvZ1EgY5OLhE1jdmoiU', '玩颜小小只,阿栖', 'Fkg2cFhMfB5oHL0RX4IFTD1l6sgb', 'ljjyxOudPzvZ1EgY5OLhE1jdmoiU', '13369513', 'audio/mpeg', '1549952181');
INSERT INTO `ek_common_music` VALUES ('0000000119', '乔双花（Cover HITA / 玄觞）', 'lomLb3hehpMaXM9xdNhrT-Jyl02S', '冰韵汐', 'Fp6csIqr2ngiL5R_7bDyM6ueKIDj', 'lomLb3hehpMaXM9xdNhrT-Jyl02S', '13307864', 'audio/mpeg', '1549952196');
INSERT INTO `ek_common_music` VALUES ('0000000120', '乔双花（Cover HITA / 玄觞）', 'lsWNtdpoIFEbd5G_oT8RcZuuvFq_', '叶维伊,寒小墨_W', 'FpB3S0_P4Y_yEwINOzdicwG5nqFN', 'lsWNtdpoIFEbd5G_oT8RcZuuvFq_', '13347570', 'audio/mpeg', '1549952205');
INSERT INTO `ek_common_music` VALUES ('0000000121', '乔双花（Cover HITA / 玄觞）', 'ltgpCoMiF48yDVvAWGZU7KkWaXxo', '纳凉生,厌钰', 'FsiBa30u3hmEbhYtIqnle6mWL4P6', 'ltgpCoMiF48yDVvAWGZU7KkWaXxo', '13326672', 'audio/mpeg', '1549952208');
INSERT INTO `ek_common_music` VALUES ('0000000122', '乔双花（Cover：hita / 玄觞）', 'lhIPORshEcsaQv6APTKFT6fwypIM', '茄蕊&北祎迦', 'Fp66mc4-Hn8uESFbvFwUBYCEMTL1', 'lhIPORshEcsaQv6APTKFT6fwypIM', '13318313', 'audio/mpeg', '1549952217');
INSERT INTO `ek_common_music` VALUES ('0000000123', '乔双花（Cover 玄觞 / HITA）', 'lh3F_0kSmz-9oo-ZkD9VJ1jbvnXc', '失桃,越塔', 'FsyC-ber-JA5Nl3cuKQAaJ_eF_UX', 'lh3F_0kSmz-9oo-ZkD9VJ1jbvnXc', '13276517', 'audio/mpeg', '1549952219');
INSERT INTO `ek_common_music` VALUES ('0000000124', '乔双花（Cover 玄觞 / HITA）', 'lpbDYyCgt858JjRoqsf9pkDn52VF', '弥羽kalavin', 'FpXDf5106SqcCy_8M-5KA9Wh0O6P', 'lpbDYyCgt858JjRoqsf9pkDn52VF', '13276517', 'audio/mpeg', '1549952229');
INSERT INTO `ek_common_music` VALUES ('0000000125', '【两只蛋挞的二乔】乔双花（Cover 玄觞 / HITA）', 'lqi0qpR_qgqQOI4Kt6QVJWEmKJnI', 'Eva-zero,公皙盻_Cici', 'FjnRinQkztHpGaLBNzIqF_sZQFFI', 'lqi0qpR_qgqQOI4Kt6QVJWEmKJnI', '13431162', 'audio/mpeg', '1549952235');
INSERT INTO `ek_common_music` VALUES ('0000000126', '一个人', 'lo5iRxHzv45TVNd-PxAYYBu8Wg6C', '夏婉安', 'FrjEQ2Nn0UV4YxueSjyWYv8Nrq9F', 'lo5iRxHzv45TVNd-PxAYYBu8Wg6C', '4659514', 'audio/mpeg', '1549952323');
INSERT INTO `ek_common_music` VALUES ('0000000127', '一个人：夏婉安（Cover 夏婉安）', 'lqXVvzSpYVgxQ_BCIXf_uX1UyWgc', '林紫梦Wuki', 'Fig0cGE_1Q3Q7cuyZnj41DggAZd-', 'lqXVvzSpYVgxQ_BCIXf_uX1UyWgc', '8054117', 'audio/mpeg', '1549952329');
INSERT INTO `ek_common_music` VALUES ('0000000128', '一个人（Cover：夏婉安）', 'lm4-zJGQ2kRiw7n7Vpokx1M4wzuZ', '汐月', 'FjqqLuV-iGjGv0yrhvtYjR1So7zQ', 'lm4-zJGQ2kRiw7n7Vpokx1M4wzuZ', '7780354', 'audio/mpeg', '1549952331');
INSERT INTO `ek_common_music` VALUES ('0000000129', '一个人（Cover 夏婉安）', 'lrE3kj0wgRf_TaRRvc3lFrB3Udso', 'CC酱', 'FsPthTs3HeFjjcbzSUTM6JJ46Fz3', 'lrE3kj0wgRf_TaRRvc3lFrB3Udso', '7762591', 'audio/mpeg', '1549952337');
INSERT INTO `ek_common_music` VALUES ('0000000130', '一个人（Cover 夏婉安）', 'lhZZEYz5N5jqTuBgXf55nUx2as1-', '筱晓玲', 'FjM7etoMdv1982v1Jeh_NlpkK8KL', 'lhZZEYz5N5jqTuBgXf55nUx2as1-', '7843048', 'audio/mpeg', '1549952341');
INSERT INTO `ek_common_music` VALUES ('0000000131', '胭脂雪', 'Fq9hi6uvmgdD40OPhQ2xv2mfdc-O', '范冰冰', 'FrRI3wQTVzbzkFHCx31_phfrCLDS', 'Fq9hi6uvmgdD40OPhQ2xv2mfdc-O', '1776104', 'audio/mpeg', '1549952379');
INSERT INTO `ek_common_music` VALUES ('0000000132', 'Ta Main', 'ljVJCxcN2zoSntAHWW2pbkSWAurb', 'Grégoire', 'FqBexNK0EHnpMn3Jg_74JSMaIvgk', 'ljVJCxcN2zoSntAHWW2pbkSWAurb', '8440848', 'audio/mpeg', '1549952401');
INSERT INTO `ek_common_music` VALUES ('0000000133', 'Ta Main', 'FqyTSYctcADqrDcnz3gFMJIfUBGw', 'Union Of Sound', 'Fu88fmM7EjG4_AlcnYxBRpl-e1Q-', 'FqyTSYctcADqrDcnz3gFMJIfUBGw', '3366705', 'audio/mpeg', '1549952404');
INSERT INTO `ek_common_music` VALUES ('0000000134', 'Morgane de toi', 'lvbCjJFSsmRicDJBZPXMH2oMbVN2', 'Zazie,Thomas Dutronc,Grégoire,', 'Fo3j1wPLi38JUfPGp-MxVZ8tW7Vu', 'lvbCjJFSsmRicDJBZPXMH2oMbVN2', '13529710', 'audio/mpeg', '1549952406');
INSERT INTO `ek_common_music` VALUES ('0000000135', 'Toi + Moi', 'lroZR4MH8S9vVRgFfTRxlQV4Jusc', 'Grégoire', 'FqBexNK0EHnpMn3Jg_74JSMaIvgk', 'lroZR4MH8S9vVRgFfTRxlQV4Jusc', '7240263', 'audio/mpeg', '1549952411');
INSERT INTO `ek_common_music` VALUES ('0000000136', 'L\'ami Intime', 'ltyfIpSgtxtr2pIfUa8ZL7vukLZx', 'Grégoire', 'FqBexNK0EHnpMn3Jg_74JSMaIvgk', 'ltyfIpSgtxtr2pIfUa8ZL7vukLZx', '7554780', 'audio/mpeg', '1549952412');
INSERT INTO `ek_common_music` VALUES ('0000000137', 'Tu Me Manques', 'lmscNOoIK5n6OHzVg7rINsMhh5lN', 'Grégoire', 'FmMhXo96ZW4epnyAlwnE-eQdMg9k', 'lmscNOoIK5n6OHzVg7rINsMhh5lN', '4736633', 'audio/mpeg', '1549952415');
INSERT INTO `ek_common_music` VALUES ('0000000138', 'Nuages', 'lgY2wSbAqBGQPP9EAimuecSXmuJ9', 'Grégoire', 'FqBexNK0EHnpMn3Jg_74JSMaIvgk', 'lgY2wSbAqBGQPP9EAimuecSXmuJ9', '7404309', 'audio/mpeg', '1549952416');
INSERT INTO `ek_common_music` VALUES ('0000000139', 'The Tree - Main Theme', 'FtmsztSn_8JjFz9nijXDv0Y8gDkS', 'Grégoire Hetzel', 'FuGLPqyuAV9d9hX1mZ2AmTIFRrGC', 'FtmsztSn_8JjFz9nijXDv0Y8gDkS', '3654036', 'audio/mpeg', '1549952419');
INSERT INTO `ek_common_music` VALUES ('0000000140', 'Rue des Etoiles', 'liixSbcQJc5azj_tq3tpkEET-p5B', 'Grégoire', 'FqBexNK0EHnpMn3Jg_74JSMaIvgk', 'liixSbcQJc5azj_tq3tpkEET-p5B', '9418881', 'audio/mpeg', '1549952423');
INSERT INTO `ek_common_music` VALUES ('0000000141', 'Danse', 'lqT5zwH6VgGrFlYzu8ndPMR09UdT', 'Grégoire', 'FmMhXo96ZW4epnyAlwnE-eQdMg9k', 'lqT5zwH6VgGrFlYzu8ndPMR09UdT', '6892295', 'audio/mpeg', '1549952423');
INSERT INTO `ek_common_music` VALUES ('0000000142', 'Mon Repère', 'llHnmBe08u4e68VdzpXaROLg3Wn_', 'Grégoire', 'FmMhXo96ZW4epnyAlwnE-eQdMg9k', 'llHnmBe08u4e68VdzpXaROLg3Wn_', '4571758', 'audio/mpeg', '1549952425');
INSERT INTO `ek_common_music` VALUES ('0000000143', 'Viens avec moi', 'ln--6C_GX9VcspURsDmKA94ryDWE', 'Grégoire', 'FhJm0XNEhOwlQEBnSSG1wVA7lStC', 'ln--6C_GX9VcspURsDmKA94ryDWE', '7783613', 'audio/mpeg', '1549952427');
INSERT INTO `ek_common_music` VALUES ('0000000144', 'Won\'t Surrender', 'lv8Wk0g7gx6cwnmKZaJm7m2qiZhI', 'Otilia,Revolt Klan', 'FsEFNfuvQkcVEEfC0Xg6EEmPRrbb', 'lv8Wk0g7gx6cwnmKZaJm7m2qiZhI', '12276549', 'audio/mpeg', '1549952474');
INSERT INTO `ek_common_music` VALUES ('0000000145', '爱超越', 'ljYhjdHRaZLF51PR8oLZSzNqrTcW', '范冰冰', 'FoHHtsDjq3gIwsfwytIUhuHUMQpa', 'ljYhjdHRaZLF51PR8oLZSzNqrTcW', '4374403', 'audio/mpeg', '1549952535');
INSERT INTO `ek_common_music` VALUES ('0000000146', 'A Woodland Night', 'FhLd7ulioiWVfj5HCaqjfYdAgzp4', 'Bandari', 'FnLoI9IUQtGPkaxhn9aq1QyYE1_y', 'FhLd7ulioiWVfj5HCaqjfYdAgzp4', '4144945', 'audio/mpeg', '1549952591');
INSERT INTO `ek_common_music` VALUES ('0000000147', '可惜没如果', 'lvYsQTV6ZRWXTS73vheTo7ZEC1zp', '林俊杰', 'Fn4awPYg8D576jtM3iSntzGC5jvc', 'lvYsQTV6ZRWXTS73vheTo7ZEC1zp', '4773554', 'audio/mpeg', '1550157774');
INSERT INTO `ek_common_music` VALUES ('0000000148', '可惜没如果(Live)', 'lmqeFBI1d4aPZtdEgnKI3OOCyb22', '林俊杰', 'FhpHdogCab2fpgq3qWPWovDMBnqA', 'lmqeFBI1d4aPZtdEgnKI3OOCyb22', '10931765', 'audio/mpeg', '1550157775');
INSERT INTO `ek_common_music` VALUES ('0000000149', 'Fade & 可惜没如果 Remix（Cover 林俊杰/Alan Walker）', 'lgrUlVr0EriCBIOFdWi16kwbEJAP', '胖胖胖', 'FlknFKmKYH1VotZly7dbSSaPu0jj', 'lgrUlVr0EriCBIOFdWi16kwbEJAP', '11144925', 'audio/mpeg', '1550157777');
INSERT INTO `ek_common_music` VALUES ('0000000150', '- 林俊杰-可惜没如果Remix（ZJ remix）', 'lk9rqHYBEXtzZtj2UcrxGJYoHeIb', 'ZJ', 'FojQ-EoOfOEXkx5_C-mYFuQl948i', 'lk9rqHYBEXtzZtj2UcrxGJYoHeIb', '9403080', 'audio/mpeg', '1550157778');
INSERT INTO `ek_common_music` VALUES ('0000000151', '可惜没如果（磁性男声版）（Cover：林俊杰）', 'lvXlaQuYzWnLCiGZ-1v_JYfAcdzF', 'X.A', 'FqsLjk0YiRG-NCcW7kDpAFxQNrJs', 'lvXlaQuYzWnLCiGZ-1v_JYfAcdzF', '11811570', 'audio/mpeg', '1550157779');
INSERT INTO `ek_common_music` VALUES ('0000000152', '林俊杰-可惜没如果remix（Young TIMcat / Siy Swing remix）', 'lmkzB8iNIPJK1wlRsrZflcFhIHvU', 'Young TIMcat,Siy Swing', 'Fk-QoQsFip4nDCnhuy8X75aUlL77', 'lmkzB8iNIPJK1wlRsrZflcFhIHvU', '9248436', 'audio/mpeg', '1550157780');
INSERT INTO `ek_common_music` VALUES ('0000000153', '林俊杰-可惜没如果（remix）（prod.Cha Red）（C-7even / B1exyy re', 'ljPwHRkkZznIj8R2tpDeTFNElqs5', 'C-7even,B1exyy', 'Fk-sO1zH9xfcBUGy0kh_zRXEuofH', 'ljPwHRkkZznIj8R2tpDeTFNElqs5', '9364419', 'audio/mpeg', '1550157783');
INSERT INTO `ek_common_music` VALUES ('0000000154', '可惜没如果 (Live)', 'lu2h38-9Ke_pwgBAX6k2tqsz2Y8y', '王源', 'Fk_kSVmqCx0idiews-elya_SbGMF', 'lu2h38-9Ke_pwgBAX6k2tqsz2Y8y', '4372942', 'audio/mpeg', '1550157784');
INSERT INTO `ek_common_music` VALUES ('0000000155', '可惜没如果（Cover：林俊杰）', 'ljnnu0JSUSUlW7_HeLP1IioGxPXN', 'Aura阿茶', 'FjuB6T8rISefHXW644sBl4cgfLBE', 'ljnnu0JSUSUlW7_HeLP1IioGxPXN', '11943227', 'audio/mpeg', '1550157786');
INSERT INTO `ek_common_music` VALUES ('0000000156', '可惜沒如果 (Cover:林俊傑) 汪定中 改編翻唱', 'likKfv9oRvhZBVP2zpHi3oDGARDD', '汪定中', 'Fm2WxlUXHHpt3Gy9jTybRw4L5bJJ', 'likKfv9oRvhZBVP2zpHi3oDGARDD', '8164876', 'audio/mpeg', '1550157787');
INSERT INTO `ek_common_music` VALUES ('0000000157', '可惜没如果(伴奏)-钢琴版（Cover：林俊杰）', 'lhZPWB266RzSysXztvidB4fFnClA', '解宁', 'FijUrgQteqMQdPqJXp070TSXPDf8', 'lhZPWB266RzSysXztvidB4fFnClA', '11307929', 'audio/mpeg', '1550157788');
INSERT INTO `ek_common_music` VALUES ('0000000158', '林俊杰 - 可惜没有如果（小小邦 remix）', 'llHOL4hyI6AYqodW6WkJ8xrTF--_', '小小邦', 'Fu1uKW6m4LNoEh9Imnbg5kodg1wG', 'llHOL4hyI6AYqodW6WkJ8xrTF--_', '9364419', 'audio/mpeg', '1550157790');
INSERT INTO `ek_common_music` VALUES ('0000000159', '修炼爱情', 'ltYv6dMrUix3bPHL10wvew_84h_v', '林俊杰', 'FhohVBefQqSpbfRl9z3kSUBjdaas', 'ltYv6dMrUix3bPHL10wvew_84h_v', '4592997', 'audio/mpeg', '1550157824');
INSERT INTO `ek_common_music` VALUES ('0000000160', '修炼爱情 (Live) (并列冠军)', 'lpdAa1xUX6OurOIDdgGYTKqdYd5K', '林俊杰,张梦羽', 'FiEXpKH0N0TEUjO-XuAL6byBDHq-', 'lpdAa1xUX6OurOIDdgGYTKqdYd5K', '4744716', 'audio/mpeg', '1550157824');
INSERT INTO `ek_common_music` VALUES ('0000000161', '修炼爱情', 'Ft2urx0Dw-6iFXc0uienne2T8OUT', '林俊杰,张梦羽,曹悦琪', 'Fp_fbBqDyogGI4H29Nz_UlaiIXB2', 'Ft2urx0Dw-6iFXc0uienne2T8OUT', '4019556', 'audio/mpeg', '1550157828');
INSERT INTO `ek_common_music` VALUES ('0000000162', '修炼爱情 林俊杰-廖里文程钢琴演奏版（Cover ）', 'lvNHmjgCtwq4FhslsZu7dSBxBqH6', '廖里文程', 'FlwmszAD99y15Im1_1emaW-7iNzd', 'lvNHmjgCtwq4FhslsZu7dSBxBqH6', '9960011', 'audio/mpeg', '1550157829');
INSERT INTO `ek_common_music` VALUES ('0000000163', '修炼爱情 cover:林俊杰（Cover 林俊杰）', 'llA_TNKjYLpTt_Tt5woczcnNNY_5', 'xijir', 'Fkbknm2cl3mU_oZ3ZMmlJ-OgjSqr', 'llA_TNKjYLpTt_Tt5woczcnNNY_5', '4271587', 'audio/mpeg', '1550157831');
INSERT INTO `ek_common_music` VALUES ('0000000164', '修炼爱情', 'lt3taXgilZkddIj9sTgqUj4JYrFj', '徐佳莹', 'FoGctBVdxim5MXEJiCyF0otS3oAV', 'lt3taXgilZkddIj9sTgqUj4JYrFj', '4545349', 'audio/mpeg', '1550157832');
INSERT INTO `ek_common_music` VALUES ('0000000165', '修炼爱情【无损版】（Cover：林俊杰）', 'lr_sVop_2QSgS4VonjPTbGOBPkk_', '艾辰,Vk', 'Fu04lAmvoPFO9eiUkltMium6jWbv', 'lr_sVop_2QSgS4VonjPTbGOBPkk_', '12210721', 'audio/mpeg', '1550157834');
INSERT INTO `ek_common_music` VALUES ('0000000166', '修炼爱情（Cover：林俊杰）', 'lpRP3_KEj8zDAP7pJZD4ZQb9wLlm', '你还在费解吗？', 'FqHjUpdqrkUSmH2TN6GfwNmvt3OX', 'lpRP3_KEj8zDAP7pJZD4ZQb9wLlm', '11437497', 'audio/mpeg', '1550157839');
INSERT INTO `ek_common_music` VALUES ('0000000167', '修炼爱情（Cover：林俊杰）', 'lurJisvFI-qetI_TNyoCBZ1YcmwS', '苏辞,栗梓', 'FjwoJlgWI9wIzue-QUivu5PWm60N', 'lurJisvFI-qetI_TNyoCBZ1YcmwS', '11492876', 'audio/mpeg', '1550157843');
INSERT INTO `ek_common_music` VALUES ('0000000168', '修炼爱情（Cover：林俊杰）', 'lurJisvFI-qetI_TNyoCBZ1YcmwS', '栗梓,苏辞', 'Fsj03RPFUxQEVTtlQ0G3TzCU--Lt', 'lurJisvFI-qetI_TNyoCBZ1YcmwS', '11492876', 'audio/mpeg', '1550157844');
INSERT INTO `ek_common_music` VALUES ('0000000169', '不死之身', 'FvaJrykNJu_iAWFpHIXROZ2IoSsG', '林俊杰', 'Fj-s28Y4WIUKcKJWuQszft69qios', 'FvaJrykNJu_iAWFpHIXROZ2IoSsG', '3632945', 'audio/mpeg', '1550157865');
INSERT INTO `ek_common_music` VALUES ('0000000170', '不死之身（Cover：林俊杰）', 'lnHDnO2njpVWiCv2gYiwPuy0ZFqy', '海疼er', 'FlldUqVIpxuuXG-9MUEY3kS50wlR', 'lnHDnO2njpVWiCv2gYiwPuy0ZFqy', '9287097', 'audio/mpeg', '1550157868');
INSERT INTO `ek_common_music` VALUES ('0000000171', '不死之身（Cover：林俊杰）', 'lgyFE3sEIFYXYAvJ005oH1yLq3nZ', 'W$Y', 'FknWHN_-EBfrpCLCfNDaEfYQzjvu', 'lgyFE3sEIFYXYAvJ005oH1yLq3nZ', '8939146', 'audio/mpeg', '1550157873');
INSERT INTO `ek_common_music` VALUES ('0000000172', '不死之身（Cover 林俊杰）', 'lpCwdQUI84NohHc0Cc7NU8eWs0u_', '破音小子', 'FjlkcuY2ED3QBq2zw3NEZrBorZBI', 'lpCwdQUI84NohHc0Cc7NU8eWs0u_', '9000795', 'audio/mpeg', '1550157877');
INSERT INTO `ek_common_music` VALUES ('0000000173', '不死之身（Cover：林俊杰）', 'lpPnZ-5Jf0KIGTS8GJDs2kAQmht9', '卡布Kano', 'FhNVu4ZdpdOQgX9OuvMGT9Hf2hby', 'lpPnZ-5Jf0KIGTS8GJDs2kAQmht9', '9364419', 'audio/mpeg', '1550157881');
INSERT INTO `ek_common_music` VALUES ('0000000174', '不死之身（Cover：林俊杰）', 'ljj1xAU5zxk1Li1YlR9xa7-4oK5i', '孙钜坤', 'FgKuBIo6gbFv52Rf9Mwbuf5WfmwK', 'ljj1xAU5zxk1Li1YlR9xa7-4oK5i', '9062444', 'audio/mpeg', '1550157891');
INSERT INTO `ek_common_music` VALUES ('0000000175', '美人鱼', 'Fivk9UWUK25SXFELrfclkFO9g-zG', '林俊杰', 'Fq53oKbTiH3uMfoLJ4mKYdAsj4Gg', 'Fivk9UWUK25SXFELrfclkFO9g-zG', '4065114', 'audio/mpeg', '1550157905');
INSERT INTO `ek_common_music` VALUES ('0000000176', '美人鱼 (Live) - live', 'ls31-bbKU5aZVNaTD42kI7VAiwRs', '林俊杰', 'FsH2Cvicz_wBUN_LlmXozb8yfJp2', 'ls31-bbKU5aZVNaTD42kI7VAiwRs', '9344683', 'audio/mpeg', '1550157906');
INSERT INTO `ek_common_music` VALUES ('0000000177', '美人鱼 - 徐薇（Cover 林俊杰）', 'lnOsMlUJnhSA7nsP_2Md2SHodCY1', '徐薇', 'FitmG94K9aQFxJ3oEr6L6aNeuP8G', 'lnOsMlUJnhSA7nsP_2Md2SHodCY1', '10179440', 'audio/mpeg', '1550157907');
INSERT INTO `ek_common_music` VALUES ('0000000178', '美人鱼（Cover 林俊杰）', 'lmBiTNTJCHhZQ8D_zMljd7dlOjlb', '居里里', 'FnYJifDwUGXY-_dpjhUOMvuFwl0h', 'lmBiTNTJCHhZQ8D_zMljd7dlOjlb', '10070770', 'audio/mpeg', '1550157909');
INSERT INTO `ek_common_music` VALUES ('0000000179', '美人鱼 英文版 Mermaid（Cover 林俊杰）', 'liyUvbP7tFmlmpbEqGdCEjlYOvR5', 'MelodyC2E', 'Fv_hIuDA63ud3itSPtYuUS183f73', 'liyUvbP7tFmlmpbEqGdCEjlYOvR5', '10771897', 'audio/mpeg', '1550157912');
INSERT INTO `ek_common_music` VALUES ('0000000180', '美人鱼（Cover：林俊杰）', 'lsB0DVwAHPeelT7-NRj93mdN6TKK', '魏子傲', 'FpxswCXTgdtE9E2blYxGzImp2eLt', 'lsB0DVwAHPeelT7-NRj93mdN6TKK', '10069725', 'audio/mpeg', '1550157914');
INSERT INTO `ek_common_music` VALUES ('0000000181', '【钢琴】美人鱼（Cover 林俊杰）', 'ljEGltaJ_5aOreaf87mPhV3ciC79', '昼夜', 'Fvmr2vql_s18lOTvmT17I_iqaxJ9', 'ljEGltaJ_5aOreaf87mPhV3ciC79', '6444974', 'audio/mpeg', '1550157915');
INSERT INTO `ek_common_music` VALUES ('0000000182', '美人鱼（Cover：林俊杰）', 'lvnnIO7E3q73CLk1qEnBOkPuQ9yy', '澪恩Seiwen', 'FvNbAeLLEYnt4jKM8h23SyCVAI3x', 'lvnnIO7E3q73CLk1qEnBOkPuQ9yy', '9896272', 'audio/mpeg', '1550157916');
INSERT INTO `ek_common_music` VALUES ('0000000183', '美人鱼（Cover 林俊杰）', 'lvKtsGu7KUKZE6Jw2MNitfSRVNJ3', '桐谷丶拉芙拉', 'FvTCrV2-5tb2epY2SlUMO1Up3a8L', 'lvKtsGu7KUKZE6Jw2MNitfSRVNJ3', '9085431', 'audio/mpeg', '1550157919');
INSERT INTO `ek_common_music` VALUES ('0000000184', '美人鱼（Cover 林俊杰）', 'lk20ldhPupVBZHmdyzyoMNDfqviw', '海豚与海', 'FiF4W5Y7ruQ46t8nuQH-IzNq8Apt', 'lk20ldhPupVBZHmdyzyoMNDfqviw', '10071815', 'audio/mpeg', '1550157921');
INSERT INTO `ek_common_music` VALUES ('0000000185', '美人鱼（Cover：林俊杰）', 'luHql8T97J3xULmlqGrfW28mVKu_', '修心亭', 'FhyFoRogfQJdK7xDcYkQLlehohZR', 'luHql8T97J3xULmlqGrfW28mVKu_', '10057187', 'audio/mpeg', '1550157924');
INSERT INTO `ek_common_music` VALUES ('0000000186', '只要平凡', 'llPaIH9ptMIECKPCL5DWQ0lww_zv', '张杰,张碧晨', 'Fgr3FUs1L2W9Y_7UKuvDsKpEAXSy', 'llPaIH9ptMIECKPCL5DWQ0lww_zv', '9844027', 'audio/mpeg', '1550157942');
INSERT INTO `ek_common_music` VALUES ('0000000187', '只要平凡Cover：张杰/张碧晨（《我不是药神》主题曲）（Cover：张杰）', 'lk9Do9B26uthOy-Nlg5TIoylRqvd', '群青umami,柚子', 'FlP848DKoq31ooa3dbTh3tJGwNnQ', 'lk9Do9B26uthOy-Nlg5TIoylRqvd', '9856566', 'audio/mpeg', '1550157947');
INSERT INTO `ek_common_music` VALUES ('0000000188', '只要平凡（《我不是药神》主题曲）（Cover 张杰/张碧晨）', 'lh17iXGLQYC4OmCTzIldBGtj8m-h', 'Morris赖仔,britneylee小暖', 'Fsqv3h1oN-yss-eLAqZszVDGunkS', 'lh17iXGLQYC4OmCTzIldBGtj8m-h', '9844027', 'audio/mpeg', '1550157948');
INSERT INTO `ek_common_music` VALUES ('0000000189', '只要平凡（《我不是药神》主题曲）（Cover 张杰/张碧晨）（Cover ）', 'lh17iXGLQYC4OmCTzIldBGtj8m-h', 'Britneylee小暖,Morris赖仔', 'FicaUvGX02h8Zbg4EwjWcIQjkFO0', 'lh17iXGLQYC4OmCTzIldBGtj8m-h', '9844027', 'audio/mpeg', '1550157949');
INSERT INTO `ek_common_music` VALUES ('0000000190', '只要平凡（双女声版）（Cover：张杰/张碧晨）', 'lqb5-VSBzGZFWUisoKJbpvq5GVbW', '忆安,初月miki', 'Fnh4s3MEc8_mYBjx_K9z07Mn4F2z', 'lqb5-VSBzGZFWUisoKJbpvq5GVbW', '9841938', 'audio/mpeg', '1550157953');
INSERT INTO `ek_common_music` VALUES ('0000000191', '只要平凡（Cover 张杰 / 张碧晨）', 'loPENqX7A9G_T_8ZcW9elsnkTmkj', '赵世聪', 'FgTHwCqqmFi4wcDB-zRGAgIp2DvU', 'loPENqX7A9G_T_8ZcW9elsnkTmkj', '9496076', 'audio/mpeg', '1550157956');
INSERT INTO `ek_common_music` VALUES ('0000000192', '只要平凡(独声版)（Cover：张杰/张碧晨）', 'lhhIZTCnarBm6WUIkzf7Cs6LA0sg', '任路加', 'FlLgh5w_QBDSprk8zv2yxrRIQ5YZ', 'lhhIZTCnarBm6WUIkzf7Cs6LA0sg', '9565040', 'audio/mpeg', '1550157959');
INSERT INTO `ek_common_music` VALUES ('0000000193', '只要平凡（Cover：张杰/张碧晨）', 'lr3cdW15Ljv0y6Sno64QPvyUX_5V', '辞洛,少年霜', 'Fhai9q1q5wf0mzk5gDPLc2W3a2_k', 'lr3cdW15Ljv0y6Sno64QPvyUX_5V', '9897317', 'audio/mpeg', '1550157970');
INSERT INTO `ek_common_music` VALUES ('0000000194', '只要平凡（Cover 张杰 / 张碧晨）', 'llytOUdjRt8THxofnjEZ1AZ9B7QY', 'AZA微唱团,颜丙沂,李子尧', 'FpSFHQP5h87gos9tOAKZ8BSaozJa', 'llytOUdjRt8THxofnjEZ1AZ9B7QY', '9556680', 'audio/mpeg', '1550157971');
INSERT INTO `ek_common_music` VALUES ('0000000195', '只要平凡《我不是药神》独唱（Cover 张杰/张碧晨）（Cover：张杰/张碧晨）', 'li7xGL5FXRMBXcvnrMOzIwXaq1d7', '石头子儿', 'FgFJ_rHnzoOl29alekZa01RQP5wu', 'li7xGL5FXRMBXcvnrMOzIwXaq1d7', '9831489', 'audio/mpeg', '1550157975');
INSERT INTO `ek_common_music` VALUES ('0000000196', '只要平凡（Cover：张杰/张碧晨）', 'like05GpSWJ6Oo1O_driQNQTI2bo', '甲子Leona', 'FlA85PDwJTSUnlXky1hAl45SRnQ0', 'like05GpSWJ6Oo1O_driQNQTI2bo', '10048827', 'audio/mpeg', '1550157979');
INSERT INTO `ek_common_music` VALUES ('0000000197', '只要平凡（Cover：张杰、张碧晨）（Cover：张杰）', 'loyxX2vzsIxepRvDPorV8RTRu-cH', '妹様', 'FvwYfAb83C7BPRqDNjJeHHbCjxxL', 'loyxX2vzsIxepRvDPorV8RTRu-cH', '9585938', 'audio/mpeg', '1550157987');
INSERT INTO `ek_common_music` VALUES ('0000000198', '天下', 'FjctJ8N9VFLh1Bsn4fXLP7j9guqb', '张杰', 'Fk9EPz1dd18iB4NcnUJsga9ko-mx', 'FjctJ8N9VFLh1Bsn4fXLP7j9guqb', '3506721', 'audio/mpeg', '1550158029');
INSERT INTO `ek_common_music` VALUES ('0000000199', '天下', 'lujtBMF4MTpJuUIEme2GoPKLVIGz', '谢娜,张杰', 'FpiCAUMqrRkDNw6-9cZ9MLBdBC1j', 'lujtBMF4MTpJuUIEme2GoPKLVIGz', '9938068', 'audio/mpeg', '1550158030');
INSERT INTO `ek_common_music` VALUES ('0000000200', '张杰 - 天下 (Remix & Cover 张杰)', 'lnNopZ67ZsEm8clCUU9076V0CSxT', 'Mike Zhou', 'Fl7ULiA3Dh3HJ_3_2fQXVSYt5S3O', 'lnNopZ67ZsEm8clCUU9076V0CSxT', '8827342', 'audio/mpeg', '1550158036');
INSERT INTO `ek_common_music` VALUES ('0000000201', '天下（Cover：张杰）', 'loJry6bvd5_60YB-Nx37Q0dlOxvA', '羽生曉麗', 'Fiu_xm1Dp2aBZh_NbJr2fkI1feXE', 'loJry6bvd5_60YB-Nx37Q0dlOxvA', '8790770', 'audio/mpeg', '1550158042');
INSERT INTO `ek_common_music` VALUES ('0000000202', '天下（Cover：张杰）', 'loIfDwdDERiX6CB2t70tgHyutzBJ', '碎笙乐音乐团队', 'FtsvdOHLiLtPg2fbF3AWaSJLqjYW', 'loIfDwdDERiX6CB2t70tgHyutzBJ', '8812713', 'audio/mpeg', '1550158049');
INSERT INTO `ek_common_music` VALUES ('0000000203', '天下（Cover：张杰）', 'luL6GpiWitB4sWIh4PDpaXT5pyd4', 'Bingo狗蛋滨,故言故言', 'FhE_Go6ovax5WwOMU_H5LpaxgI-x', 'luL6GpiWitB4sWIh4PDpaXT5pyd4', '8826297', 'audio/mpeg', '1550158056');
INSERT INTO `ek_common_music` VALUES ('0000000204', '天下（Cover：张杰）', 'lssGCUiyvwPATtzRtNO16Y-rqB4S', '莫语', 'Fr2bginmS_U9B5i6UVcGOwoEMWlx', 'lssGCUiyvwPATtzRtNO16Y-rqB4S', '8812713', 'audio/mpeg', '1550158063');
INSERT INTO `ek_common_music` VALUES ('0000000205', '天下 (Piano Version) [Cover 张杰]', 'lmC8xjCEJQARwsGWxnyN6A_k006N', 'Mike Zhou', 'FpOyVOyVPRm2AnbWeQtkoh1pByfN', 'lmC8xjCEJQARwsGWxnyN6A_k006N', '8827342', 'audio/mpeg', '1550158067');
INSERT INTO `ek_common_music` VALUES ('0000000206', '天下（_R玊/重九/喵玖）（Cover：张杰）', 'loIfDwdDERiX6CB2t70tgHyutzBJ', '_R玊', 'Fhv0-dqNqCaaEig5sqvUKJeamtVY', 'loIfDwdDERiX6CB2t70tgHyutzBJ', '8812713', 'audio/mpeg', '1550158071');
INSERT INTO `ek_common_music` VALUES ('0000000207', '没错你说得对', 'liKv7VrST80J2WSDIqRsvPJHcLN7', 'Mc全能', 'ForbMnx4poibKGM_V_cvqFsMVSVp', 'liKv7VrST80J2WSDIqRsvPJHcLN7', '4937187', 'audio/mpeg', '1550160385');
INSERT INTO `ek_common_music` VALUES ('0000000208', '没错你说的对 ', 'lgagbdYo5BBxUsMl0nEMZCUHMqj8', '精彩浩恩', 'FqZc5TZGK3TPJMpE9BG2wFOuvTzG', 'lgagbdYo5BBxUsMl0nEMZCUHMqj8', '5812811', 'audio/mpeg', '1550160420');
INSERT INTO `ek_common_music` VALUES ('0000000209', '不爱又何必纠缠', 'lg0KUkuoOQI8LuVv90b8PxBpv1Tu', 'Mc敏少,Mc娜娜', 'FrsmNGq8Zxbbls8ag-VxAgr5xNBb', 'lg0KUkuoOQI8LuVv90b8PxBpv1Tu', '6108517', 'audio/mpeg', '1550160557');
INSERT INTO `ek_common_music` VALUES ('0000000210', 'All Falls Down', 'FqCt3IktfAS5DAEVKoqZkimYEHdR', 'Alan Walker,Noah Cyrus,Digital', 'Fkckiusg-qXwCBIZpTpsopar_aD4', 'FqCt3IktfAS5DAEVKoqZkimYEHdR', '3186982', 'audio/mpeg', '1550241318');
INSERT INTO `ek_common_music` VALUES ('0000000211', 'All Falls Down (K-391 Remix)', 'Fk9u0hHJXJisvHHQQEyDiR2_lEZV', 'Alan Walker,Noah Cyrus,Digital', 'Fv7hMIyL9XUjpd0FO-WUVLC0xnwZ', 'Fk9u0hHJXJisvHHQQEyDiR2_lEZV', '3302339', 'audio/mpeg', '1550241319');
INSERT INTO `ek_common_music` VALUES ('0000000212', 'All Falls Down (Steve Aoki Remix)', 'Fh-rNE-P42qQaExTul2VZc2WM8q1', 'Alan Walker,Noah Cyrus,Digital', 'Fv7hMIyL9XUjpd0FO-WUVLC0xnwZ', 'Fh-rNE-P42qQaExTul2VZc2WM8q1', '3613301', 'audio/mpeg', '1550241319');
INSERT INTO `ek_common_music` VALUES ('0000000213', 'All Falls Down', 'FvFa5D9unWceZgE-n5WNGuj0s7hs', 'Alan Walker,Noah Cyrus,Digital', 'FiyBauR7vqoL9EcxWbnyGWLwWC-w', 'FvFa5D9unWceZgE-n5WNGuj0s7hs', '3158143', 'audio/mpeg', '1550241321');
INSERT INTO `ek_common_music` VALUES ('0000000214', 'All Falls Down (Mio Remix)', 'FksMMckgzo1SjxGzaQGnZyvSVEZG', 'Alan Walker,Noah Cyrus,Digital', 'Fv7hMIyL9XUjpd0FO-WUVLC0xnwZ', 'FksMMckgzo1SjxGzaQGnZyvSVEZG', '3136827', 'audio/mpeg', '1550241323');
INSERT INTO `ek_common_music` VALUES ('0000000215', 'All Falls Down (Mark Villa Remix)', 'Fve921aUOdC3ApVLoGixLc6VodU3', 'Alan Walker,Noah Cyrus,Digital', 'Fv7hMIyL9XUjpd0FO-WUVLC0xnwZ', 'Fve921aUOdC3ApVLoGixLc6VodU3', '2519084', 'audio/mpeg', '1550241323');
INSERT INTO `ek_common_music` VALUES ('0000000216', 'All Falls Down (Jay Pryor Remix)', 'FmU9VcP48jg39WTOE-WNuKacrrzr', 'Alan Walker,Noah Cyrus,Digital', 'Fv7hMIyL9XUjpd0FO-WUVLC0xnwZ', 'FmU9VcP48jg39WTOE-WNuKacrrzr', '2676236', 'audio/mpeg', '1550241323');
INSERT INTO `ek_common_music` VALUES ('0000000217', 'All Falls Down (Todd Edwards Remix)', 'FsbRNK4PxCVAJ9AG5IniywGxRFe1', 'Alan Walker,Noah Cyrus,Digital', 'Fv7hMIyL9XUjpd0FO-WUVLC0xnwZ', 'FsbRNK4PxCVAJ9AG5IniywGxRFe1', '2953761', 'audio/mpeg', '1550241324');
INSERT INTO `ek_common_music` VALUES ('0000000218', 'All Falls Down【Cover Alan Walker】重新编曲（Cover Alan W', 'loYRIfNLUE9Itd-fDi8_mLUuGzCN', '黛米', 'FrBQISH1pdkY6p14Bq34Cj-a1z-O', 'loYRIfNLUE9Itd-fDi8_mLUuGzCN', '8287129', 'audio/mpeg', '1550241327');
INSERT INTO `ek_common_music` VALUES ('0000000219', 'All Falls Down (Karaoke Instrumental Alan Walker, ', 'Ft8QYQQp0-Dd4BdiNY8ZpwBv5hSH', 'Anne-Caroline Joy', 'FiXyewsXFAyeqpuPHHDsnqw2kn-G', 'Ft8QYQQp0-Dd4BdiNY8ZpwBv5hSH', '3273082', 'audio/mpeg', '1550241330');
INSERT INTO `ek_common_music` VALUES ('0000000220', 'All Falls Down (Alan Walker, Noah Cyrus with Digit', 'FhQLc1jsFSQBAkn3uxtQAzdh4nZI', 'Anne-Caroline Joy', 'FiXyewsXFAyeqpuPHHDsnqw2kn-G', 'FhQLc1jsFSQBAkn3uxtQAzdh4nZI', '3273082', 'audio/mpeg', '1550241330');
INSERT INTO `ek_common_music` VALUES ('0000000221', 'All Falls Down (Alan Walker feat. Noah Cyrus with ', 'FhQLc1jsFSQBAkn3uxtQAzdh4nZI', 'Anne-Caroline Joy', 'FoCeCn1OTe5sPl8UvnxUMzZTg_89', 'FhQLc1jsFSQBAkn3uxtQAzdh4nZI', '3273082', 'audio/mpeg', '1550241332');
INSERT INTO `ek_common_music` VALUES ('0000000222', 'Darkside', 'Fg9V8CX1-Xdq2pRwqxpsFEmzLkYt', 'Alan Walker,Au/Ra,Tomine Harke', 'Flb8QCXTIx9-ouCkX8PTAmTEDqoN', 'Fg9V8CX1-Xdq2pRwqxpsFEmzLkYt', '3390946', 'audio/mpeg', '1550241354');
INSERT INTO `ek_common_music` VALUES ('0000000223', '梦里花（Cover 张韶涵）', 'lhvI3uCp91ft-Jik-kq7QvMTS-im', '陈柯宇', 'FufwLWVCwjzjNT3yS4aVc_6Aryla', 'lhvI3uCp91ft-Jik-kq7QvMTS-im', '7586003', 'audio/mpeg', '1550742161');
INSERT INTO `ek_common_music` VALUES ('0000000224', '生僻字', 'FrBjaWk0yZyaqGk0hkC7xL5_z3Wz', '陈柯宇', 'Fr8pZ_CmbAY1vrcpg7CcoDHZCiLh', 'FrBjaWk0yZyaqGk0hkC7xL5_z3Wz', '3456984', 'audio/mpeg', '1550742162');
INSERT INTO `ek_common_music` VALUES ('0000000225', '梦里花 翻唱cover（原唱：张韶涵）（Cover：群星）', 'lgLQVmPkVcfqXmjznjEilEIi6S7t', '玛德琳桑', 'Fp1FbzQTFnnz5fFHHfIIlt-b-h2q', 'lgLQVmPkVcfqXmjznjEilEIi6S7t', '8771962', 'audio/mpeg', '1550742165');
INSERT INTO `ek_common_music` VALUES ('0000000226', '直到遇见了你，我只喜欢你', 'luQB5N3C9HdPhKJ1yinADbdzylqi', '陈柯宇', 'FugJ6ogEx68jm2FdbaKdZT3xrLDn', 'luQB5N3C9HdPhKJ1yinADbdzylqi', '4406587', 'audio/mpeg', '1550742166');
INSERT INTO `ek_common_music` VALUES ('0000000227', '生僻字-刘至佳（Cover：陈柯宇）', 'lrQxoFaBWv8ogI9-hdDmA28lRPxP', '刘至佳', 'FvV0B12hct0-unh-G3bJRbVUNI7A', 'lrQxoFaBWv8ogI9-hdDmA28lRPxP', '8670607', 'audio/mpeg', '1550742169');
INSERT INTO `ek_common_music` VALUES ('0000000228', '梦里花-七甜（Cover：张韶涵）', 'lvJSj4GuibBTwI2bJPXvv7zP345s', '七甜', 'Fk5z9aQyfP5bkVRGKMl-VLpOv-9P', 'lvJSj4GuibBTwI2bJPXvv7zP345s', '8758378', 'audio/mpeg', '1550742172');
INSERT INTO `ek_common_music` VALUES ('0000000229', '就是胖了怎么着', 'Fs722ECqo7FpDq_ZHTeQubNp6K3W', '陈柯宇', 'Fh2buRRyZyGrd966QM7JSCUEF8l-', 'Fs722ECqo7FpDq_ZHTeQubNp6K3W', '3167756', 'audio/mpeg', '1550742173');
INSERT INTO `ek_common_music` VALUES ('0000000230', '最好的8090后', 'lmXOh6vi2HI5E_hLjiNzEwDFHt19', '陈柯宇', 'Fh29J1DY6gk53qCacOf_XY3zAhGN', 'lmXOh6vi2HI5E_hLjiNzEwDFHt19', '4320070', 'audio/mpeg', '1550742174');
INSERT INTO `ek_common_music` VALUES ('0000000231', '知否知否（电视剧《知否知否应是绿肥红瘦》主题曲）（Cover：陈柯宇）', 'lhdjJ5epJSRZhyBTkmN5jpDAT6Sn', '邓壬鑫', 'FmBpJ4FHaTezBTtGo3NgADEy9sPv', 'lhdjJ5epJSRZhyBTkmN5jpDAT6Sn', '10503358', 'audio/mpeg', '1550742175');
INSERT INTO `ek_common_music` VALUES ('0000000232', '生僻字（锦鲤版）', 'Ftn-r2wWt3GcEt7s090V7090FKUT', '陈柯宇', 'FvaXcYP6rvck4EvAkIzUzsBZ1ZGv', 'Ftn-r2wWt3GcEt7s090V7090FKUT', '3456984', 'audio/mpeg', '1550742176');
INSERT INTO `ek_common_music` VALUES ('0000000233', '如果你喜欢', 'Foor1C586OfQzUpbIiHHEiYnQW_n', '陈柯宇', 'FpOXry3Oe3GdkTrXomtMCjcQQwbH', 'Foor1C586OfQzUpbIiHHEiYnQW_n', '3622496', 'audio/mpeg', '1550742177');
INSERT INTO `ek_common_music` VALUES ('0000000234', '生僻字（女声版）（Cover：陈柯宇）', 'ln2ToCCJOU5O1cixZPZezUNaejAz', '李瑨瑶', 'Fq5XVJQITg8lKAGJTOmkfqAcivgt', 'ln2ToCCJOU5O1cixZPZezUNaejAz', '8598509', 'audio/mpeg', '1550742178');
INSERT INTO `ek_common_music` VALUES ('0000000235', '阿刁', 'lgtIED61JCoytKjFe3Q1UBOTEfeT', '赵雷', 'Fppm7KmF_f4ocpU5F1EIK4e_RHKu', 'lgtIED61JCoytKjFe3Q1UBOTEfeT', '5986891', 'audio/mpeg', '1550751783');
INSERT INTO `ek_common_music` VALUES ('0000000236', '阿刁 Cover 赵雷', 'lqlvbe84hUf6us5olNKRNqKCLUol', '十三', 'Fr73vqBboZYzZnwztah_OLm9usyc', 'lqlvbe84hUf6us5olNKRNqKCLUol', '11240011', 'audio/mpeg', '1550751785');
INSERT INTO `ek_common_music` VALUES ('0000000237', '阿刁 Cover:赵雷', 'lojBz63jywpy-lqgprQn0cew-RZY', '闫小抑', 'FgxTEL0CtgWdKBw66LvpTWqYax9P', 'lojBz63jywpy-lqgprQn0cew-RZY', '14682950', 'audio/mpeg', '1550751786');
INSERT INTO `ek_common_music` VALUES ('0000000238', '阿刁（Cover 赵雷）', 'lje32Xu4xlkcpVSk2v-ALwhXnYeV', '冯提莫,玄觞,风小筝,晶晶是大神', 'FgJzvCeEBf4bOZ-vYK4q9wnCUgcg', 'lje32Xu4xlkcpVSk2v-ALwhXnYeV', '12952599', 'audio/mpeg', '1550751788');
INSERT INTO `ek_common_music` VALUES ('0000000239', '阿刁（cover:张韶涵）（Cover：赵雷）', 'llxum4n9re6fbIg3stItaP7C9v3s', 'Aipiaoliang', 'Fso6jidDU75IdngGnInxE_MWORC5', 'llxum4n9re6fbIg3stItaP7C9v3s', '12861693', 'audio/mpeg', '1550751789');
INSERT INTO `ek_common_music` VALUES ('0000000240', '阿刁（Cover 赵雷）', 'lqsqJjkPHWtLe3rgaZZeclMhrkit', '祖娅纳惜', 'FpARKEdZtunDU0WipXDYWg9UPL5a', 'lqsqJjkPHWtLe3rgaZZeclMhrkit', '12789595', 'audio/mpeg', '1550751791');
INSERT INTO `ek_common_music` VALUES ('0000000241', '阿刁（Cover：赵雷）', 'lkYjz_inACF-zz7Vi4Ib7dh1caGh', '卷卷啊', 'FrGMXlqw-n2F6b65f9d4c3Fef7F-', 'lkYjz_inACF-zz7Vi4Ib7dh1caGh', '12756158', 'audio/mpeg', '1550751792');
INSERT INTO `ek_common_music` VALUES ('0000000242', '阿刁（cover：张韶涵）（Cover：赵雷）', 'lqftNXwmzTWt9q1eGoBsGtQonmts', '鸽子野', 'Fq35iy8OtHQoTskxcVJRdKPhfSPi', 'lqftNXwmzTWt9q1eGoBsGtQonmts', '12887815', 'audio/mpeg', '1550751794');
INSERT INTO `ek_common_music` VALUES ('0000000243', '阿刁（Cover 赵雷）', 'llR66yEfItoqlzh2J-Ef31PTQd0l', '赵莫如', 'FhhqwJ1WVObflPsDcGbcRbvQRGGf', 'llR66yEfItoqlzh2J-Ef31PTQd0l', '12858558', 'audio/mpeg', '1550751795');
INSERT INTO `ek_common_music` VALUES ('0000000244', '阿刁（Cover：赵雷）', 'lo28tKmE6Grv6IFAw_syA8P0LlUe', '夏侯钰涵', 'FmQNSv6w76ArZk-9ISb7ZX_kI8gu', 'lo28tKmE6Grv6IFAw_syA8P0LlUe', '10744729', 'audio/mpeg', '1550751799');
INSERT INTO `ek_common_music` VALUES ('0000000245', '成都', 'lsPTdy2LXCRTWMKn1v3lnfPD66cw', '赵雷', 'FpzwCUidjrx3_9pTAHcvYGhbd2DV', 'lsPTdy2LXCRTWMKn1v3lnfPD66cw', '5255880', 'audio/mpeg', '1550755647');
INSERT INTO `ek_common_music` VALUES ('0000000246', '成都-赵雷', 'lqXVF5xY3XV-F6fJyg5JmqRZVWrK', '苏磊', 'Fk5rmNBKwH0__jQpsnP5pN3T8-kE', 'lqXVF5xY3XV-F6fJyg5JmqRZVWrK', '10576501', 'audio/mpeg', '1550755651');
INSERT INTO `ek_common_music` VALUES ('0000000247', '成都－赵雷', 'lmEzxjugkge3E-sFybNFxMFO8yhr', '吴啸', 'FtZMUIWX-kBhLnACR65BVvGK1l0c', 'lmEzxjugkge3E-sFybNFxMFO8yhr', '12314166', 'audio/mpeg', '1550755655');
INSERT INTO `ek_common_music` VALUES ('0000000248', '成都cover赵雷', 'lmo18XxtjfYtZBwfN-OprKd5gXn1', 'boogie布吉zZ', 'FssjAWxsdyH7JCZyoDEuhPFqrlW0', 'lmo18XxtjfYtZBwfN-OprKd5gXn1', '13164713', 'audio/mpeg', '1550755658');
INSERT INTO `ek_common_music` VALUES ('0000000249', '成都[赵雷 cover]', 'loBGC2iX0eAMStCtxxYxMq46ijHd', '墙角先生', 'FiKorxW3bNFIXIrbFBzL4sjTeq8p', 'loBGC2iX0eAMStCtxxYxMq46ijHd', '11593187', 'audio/mpeg', '1550755662');
INSERT INTO `ek_common_music` VALUES ('0000000250', '成都 cover赵雷', 'lm_Ypik-35r90PYsAXVonaVJ4nbr', '东关二条', 'FtyFSNg9SfIo6JjdcUoTrc1o2fGE', 'lm_Ypik-35r90PYsAXVonaVJ4nbr', '10841905', 'audio/mpeg', '1550755666');
INSERT INTO `ek_common_music` VALUES ('0000000251', '成都cover赵雷', 'ltvYepRL-nb6xOQp9I8DLXd0Lh1j', '挲马', 'FmR-YxoazFu6EoQGCUkGRz0IRwkA', 'ltvYepRL-nb6xOQp9I8DLXd0Lh1j', '11512729', 'audio/mpeg', '1550755672');
INSERT INTO `ek_common_music` VALUES ('0000000252', '成都（Cover 赵雷）', 'lj2vNK-O0AhjesJkYzQL8i-R-cYs', '刘安琪', 'Fgg3s3QPBfpSHuB2AkEaRmR0jSX1', 'lj2vNK-O0AhjesJkYzQL8i-R-cYs', '11442721', 'audio/mpeg', '1550755674');
INSERT INTO `ek_common_music` VALUES ('0000000253', '成都（Cover：赵雷）', 'lpjWKWkc7aR_W78XSIOBkzQql67N', '尼才', 'Fn7wri8AGdcAP3GRIDdus289bJN2', 'lpjWKWkc7aR_W78XSIOBkzQql67N', '10045693', 'audio/mpeg', '1550755676');
INSERT INTO `ek_common_music` VALUES ('0000000254', '成都（笛子版，Cover 赵雷）', 'lqSUgejX0DwZYaa6sdkxWTSZxUc4', '董敏', 'Ft6WkARosxOnrZuAxuOaFF762vhw', 'lqSUgejX0DwZYaa6sdkxWTSZxUc4', '11713350', 'audio/mpeg', '1550755678');
INSERT INTO `ek_common_music` VALUES ('0000000255', '成都（军旅版Cover赵雷）', 'lk_WhXR56P3K_7ZKFyJNuBq25bh8', '老炮,崔玉斌', 'FoZAedWgPNPECys_HzfR_7QCI0vn', 'lk_WhXR56P3K_7ZKFyJNuBq25bh8', '11406150', 'audio/mpeg', '1550755681');
INSERT INTO `ek_common_music` VALUES ('0000000256', '成都（Cover 赵雷）', 'lr6AC8ClIFW-DooGYjMmlWBihRFC', '妖扬', 'Fgi64DhNy81-XMgrbA1xavx7y48q', 'lr6AC8ClIFW-DooGYjMmlWBihRFC', '11887848', 'audio/mpeg', '1550755682');
INSERT INTO `ek_common_music` VALUES ('0000000257', '不害怕', 'Frl4iqiAy1HjgczHC7J35OQoHdFt', '张韶涵', 'Fj3k2cjNFBC9paI--cRKDItIBbGq', 'Frl4iqiAy1HjgczHC7J35OQoHdFt', '3698982', 'audio/mpeg', '1550837132');
INSERT INTO `ek_common_music` VALUES ('0000000258', '不害怕（Cover 张韶涵）', 'lsUOTPmx6wKwbdYKaHfZcWHUytju', '林微滢,SilverVoice-银色声线音乐站', 'FmiHLwVGKvj6_oegvfHSsI1KQXN4', 'lsUOTPmx6wKwbdYKaHfZcWHUytju', '9668485', 'audio/mpeg', '1550837134');
INSERT INTO `ek_common_music` VALUES ('0000000259', '不害怕（Cover：张韶涵）', 'lpeoVoMDOyLsaNjOChrIxv8nGT79', '糙北', 'FuLgipsBpciVS37myql0vP0TtqMx', 'lpeoVoMDOyLsaNjOChrIxv8nGT79', '9582803', 'audio/mpeg', '1550837140');
INSERT INTO `ek_common_music` VALUES ('0000000260', '不害怕（Cover 张韶涵）', 'lk0p-ZkhMXrE7q8QoGbDwOvcLqcv', '糯米幸', 'FptE2Dmx9A6Syb-k8kl_qp1K8Wnr', 'lk0p-ZkhMXrE7q8QoGbDwOvcLqcv', '9644452', 'audio/mpeg', '1550837144');
INSERT INTO `ek_common_music` VALUES ('0000000261', 'The Cure', 'FuydxVT0ZgVNCZw4E55UXvEoshvW', 'Lady Gaga', 'FrLRbKsTTm_hyFia-7jIjPtQf0-H', 'FuydxVT0ZgVNCZw4E55UXvEoshvW', '3383005', 'audio/mpeg', '1550923874');
INSERT INTO `ek_common_music` VALUES ('0000000262', 'The Cure (Raspo Remix) ', 'Fu8jHMhBhH8Jw14eyHPqknguLqLZ', 'Raspo,Lady Gaga', 'FirlyH9m3RqqWann2Vm_w-LyZbYP', 'Fu8jHMhBhH8Jw14eyHPqknguLqLZ', '3628347', 'audio/mpeg', '1550923876');
INSERT INTO `ek_common_music` VALUES ('0000000263', 'The Cure (Young Bombs Remix)', 'FpQN-VOA9nW9CYtIDSjsc2AJuZ2w', 'YOUNG BOMBS,Lady Gaga', 'FguDJOB_Yz99NmD5drHr30zwMgwf', 'FpQN-VOA9nW9CYtIDSjsc2AJuZ2w', '3917157', 'audio/mpeg', '1550923876');
INSERT INTO `ek_common_music` VALUES ('0000000264', 'The Cure (Revolt Remix)', 'FvILpAkHnJ-kFK2MYuaY1eHgHozJ', 'Revolt,Lady Gaga', 'FtiOi80Ps3rjHDuftRfcquic5bsZ', 'FvILpAkHnJ-kFK2MYuaY1eHgHozJ', '3632109', 'audio/mpeg', '1550923878');
INSERT INTO `ek_common_music` VALUES ('0000000265', 'The Cure (RVBIKs Remix)', 'lmbfGjRAUv_07DG_yfp8jVwkAiJO', 'RVBIKs,Lady Gaga', 'FsjvHv75i8llNJRpzOrOA8hNVRak', 'lmbfGjRAUv_07DG_yfp8jVwkAiJO', '8405203', 'audio/mpeg', '1550923885');
INSERT INTO `ek_common_music` VALUES ('0000000266', 'The Cure（Cover：Lady Gaga）', 'lnc2TcrIOYGJuiy5i48BxQ6ibfqH', 'Zhou@ty', 'FtPf61zx0WELca6VwL_LCBsWfNi3', 'lnc2TcrIOYGJuiy5i48BxQ6ibfqH', '8415652', 'audio/mpeg', '1550923891');
INSERT INTO `ek_common_music` VALUES ('0000000267', 'Lady Gaga - The Cure (Andy Mei Remix)', 'lrTlGNED8XINhpT-omC9cGNbOMJ1', 'Andy Mei', 'FuRdAU5npVaJzDMbuQTQrL4nveWK', 'lrTlGNED8XINhpT-omC9cGNbOMJ1', '9914036', 'audio/mpeg', '1550923894');
INSERT INTO `ek_common_music` VALUES ('0000000268', 'Lady Gaga - The Cure (Hyperwaves Remix)', 'lt9g9LW7t8oZ77z9VwCpCxeTkqxe', 'Hyperwaves', 'FkQB44fgDS_jipbt7FW9U2NOpgqe', 'lt9g9LW7t8oZ77z9VwCpCxeTkqxe', '6482591', 'audio/mpeg', '1550923900');
INSERT INTO `ek_common_music` VALUES ('0000000269', 'Always Remember Us This Way', 'FpFCwODdjLUOqHp66RchDOpSYNyb', 'Lady Gaga', 'Fp_TQ3M4dxeQzmivEsTxPkR7s7rL', 'FpFCwODdjLUOqHp66RchDOpSYNyb', '3364197', 'audio/mpeg', '1550923942');
INSERT INTO `ek_common_music` VALUES ('0000000270', 'Always Remember Us This Way（Cover：Lady Gaga）', 'ln1fSnPUBEXX41BkLVJQRqfwji6v', '许志昂', 'FpJdxsDJLEhE87xroMnuU5Am3Xu0', 'ln1fSnPUBEXX41BkLVJQRqfwji6v', '8203538', 'audio/mpeg', '1550923949');
INSERT INTO `ek_common_music` VALUES ('0000000271', 'Always Remember Us This Way（Cover：Lady Gaga）', 'lk0P50TqUB4Rrh_Zcvp0AmVCp3CG', '郭嘉-Max Vol（最大音量） 乐队', 'FuqP8WQHqsFvldKoIVzZsELmVj-H', 'lk0P50TqUB4Rrh_Zcvp0AmVCp3CG', '5979995', 'audio/mpeg', '1550923955');
INSERT INTO `ek_common_music` VALUES ('0000000272', 'Always Remember Us This Way（Cover：Lady Gaga）', 'lmct41-ZZ_IkyJd4DhwOOHizObwC', '雷尔', 'FmEg4jHYPcPufppQDdIUXvPIwZMz', 'lmct41-ZZ_IkyJd4DhwOOHizObwC', '8397889', 'audio/mpeg', '1550923956');
INSERT INTO `ek_common_music` VALUES ('0000000273', 'Always remember us this way（Cover：Lady Gaga）', 'lutm9PWDVTBqs9JH07R2dOimsRSg', 'Jessie_CM', 'Fgfq8_ttDQ-S7CtSIY18WMlXiZjT', 'lutm9PWDVTBqs9JH07R2dOimsRSg', '8553578', 'audio/mpeg', '1550923959');
INSERT INTO `ek_common_music` VALUES ('0000000274', 'Always Remember Us This Way（Cover：Lady Gaga）', 'ls6r2JGz8JrWjUqhkBd9Ru99nfQO', 'Myles Thorne', 'FpWAL-MZS-HoW5iw9AA_O940eF0J', 'ls6r2JGz8JrWjUqhkBd9Ru99nfQO', '8671652', 'audio/mpeg', '1550923962');
INSERT INTO `ek_common_music` VALUES ('0000000275', 'Always Remember Us This Way (Originally Performed ', 'Fl0bxoxZfjcn_T0MFqAXiU3gxEpu', 'Hit The Button Karaoke', 'FjpjDCifyv1mvN2wRXRmDTwPOOcX', 'Fl0bxoxZfjcn_T0MFqAXiU3gxEpu', '3310280', 'audio/mpeg', '1550923964');
INSERT INTO `ek_common_music` VALUES ('0000000276', 'Always Remember Us This Way（Cover：Lady Gaga）', 'llhQL9DNgmyefHrTpuJNhyv6G59_', '李孟', 'FkOtI1HM4UwQp2WcJwHf--2jz85E', 'llhQL9DNgmyefHrTpuJNhyv6G59_', '8372811', 'audio/mpeg', '1550923967');
INSERT INTO `ek_common_music` VALUES ('0000000277', 'Always remember us this way（Cover：Lady Gaga）', 'lpwFsYBgEAHw81fkZ6lfx3cjZs-P', '火奴鲁鲁', 'FoqZyPIhXnjpx_erFA5wa2AtYjXD', 'lpwFsYBgEAHw81fkZ6lfx3cjZs-P', '5054215', 'audio/mpeg', '1550923972');
INSERT INTO `ek_common_music` VALUES ('0000000278', 'Always remember us this way（Cover：Lady GaGa）', 'lgPTX21AZ-SYU9lKSTk3613UuWmt', 'VII七', 'FigP3Sqb4RSdjccJdgQFwGFsJDsk', 'lgPTX21AZ-SYU9lKSTk3613UuWmt', '8421921', 'audio/mpeg', '1550923975');
INSERT INTO `ek_common_music` VALUES ('0000000279', 'Always Remember Us This Way (Originally Performed ', 'FkIJ5R5XY722m8lZ76_eOujRnMMz', 'Sing2Piano', 'Fp_H5GpL2eGGtRvGNOh1TKq8hITa', 'FkIJ5R5XY722m8lZ76_eOujRnMMz', '3599926', 'audio/mpeg', '1550923977');
INSERT INTO `ek_common_music` VALUES ('0000000280', '出山', 'FlyGEN2gXVBpM_XswhNrHZVOT_V0', '花粥,胜娚', 'FpdFbcSmNsSNlKqnlRPcGLNBs1Z0', 'FlyGEN2gXVBpM_XswhNrHZVOT_V0', '3207462', 'audio/mpeg', '1550940208');
INSERT INTO `ek_common_music` VALUES ('0000000281', '出山 (伴奏)', 'lj3nLJR4EmT367oRPs25OuZldgRB', '花粥,胜娚', 'FpdFbcSmNsSNlKqnlRPcGLNBs1Z0', 'lj3nLJR4EmT367oRPs25OuZldgRB', '8018591', 'audio/mpeg', '1550940209');
INSERT INTO `ek_common_music` VALUES ('0000000282', '出山『合唱版双声道』（Cover：花粥）', 'lrEGK01sotTUoaXE0AA9lnzFLYHF', '小熙E.R,萧忆情Alex,花粥,胜娚', 'FmKFYA8mTLveXvXACbivk_Z2bzHa', 'lrEGK01sotTUoaXE0AA9lnzFLYHF', '8019636', 'audio/mpeg', '1550940213');
INSERT INTO `ek_common_music` VALUES ('0000000283', '出山（Cover：花粥/胜娚）', 'lk7GrQUXYWn6X-I-Ii_JqBjQU6F7', '袁翼航', 'Fjd_7lJQIdyR-o-JrQNRxtXb9WWG', 'lk7GrQUXYWn6X-I-Ii_JqBjQU6F7', '7993513', 'audio/mpeg', '1550940216');
INSERT INTO `ek_common_music` VALUES ('0000000284', '出山（Cover：花粥/胜娚）男版（Cover：花粥）', 'lgoeaAPypauKYuG2yX8GirXVikQh', 'N.E', 'FoYKbk_6JlYwzjaFqIGB4gUgoITo', 'lgoeaAPypauKYuG2yX8GirXVikQh', '8022770', 'audio/mpeg', '1550940220');
INSERT INTO `ek_common_music` VALUES ('0000000285', '盗将行', 'FqFMPGVnt7CLg7-_b9zW_TKOfCKa', '花粥,马雨阳', 'FuIRBOT4FS_cLoWCyoTvTn7Q8sD5', 'FqFMPGVnt7CLg7-_b9zW_TKOfCKa', '3171100', 'audio/mpeg', '1550940790');
INSERT INTO `ek_common_music` VALUES ('0000000286', '盗将行 (伴奏)', 'lhhTmVuO9_OHLDmwWAxdmqTWXQgl', '花粥,马雨阳', 'FuIRBOT4FS_cLoWCyoTvTn7Q8sD5', 'lhhTmVuO9_OHLDmwWAxdmqTWXQgl', '7927685', 'audio/mpeg', '1550940790');
INSERT INTO `ek_common_music` VALUES ('0000000287', '盗将行（Cover：花粥/马雨阳）', 'lhHKcjZOINaJzaghQOvxKEaLo7en', '西彬呀', 'Fj4K1budLsUbNyjI8gIjGD_oij0Q', 'lhHKcjZOINaJzaghQOvxKEaLo7en', '8018591', 'audio/mpeg', '1550940792');
INSERT INTO `ek_common_music` VALUES ('0000000288', '盗将行（一人唱男女声）（Cover：花粥、马雨阳）', 'lgMwd57qcGl_ynQKQWphMDk7F2Xs', '黑崎子', 'Fjecjn_LBk3Fk0iUiK00f95qEhr8', 'lgMwd57qcGl_ynQKQWphMDk7F2Xs', '7931864', 'audio/mpeg', '1550940793');
INSERT INTO `ek_common_music` VALUES ('0000000289', '盗将行(Cover 花粥、马雨阳)', 'Fr6xHXLjSL3nUY79dlwG9KFCZ5n1', '莫籽,neko', 'FjpP193CX63Nl7_eqZwB5bLJ3jby', 'Fr6xHXLjSL3nUY79dlwG9KFCZ5n1', '3174862', 'audio/mpeg', '1550940794');
INSERT INTO `ek_common_music` VALUES ('0000000290', '盗将行（Cover 花粥、马雨阳）（Cover：花粥）', 'lpdeMGECyFghel43yEC4FXKqzwtL', '陈一一', 'FiDQ22Y2dt849MhM_CfQx2fP3uWa', 'lpdeMGECyFghel43yEC4FXKqzwtL', '7931864', 'audio/mpeg', '1550940795');
INSERT INTO `ek_common_music` VALUES ('0000000291', '盗将行（Cover:花粥&马雨阳）（Cover：花粥）', 'lnEJLsfY-NpREx4CoCmDrL8QJnQL', '土木三班_陈同学,狐妖Mikan', 'ForVlM9r4CiZoFuaSBCWajWK-ojB', 'lnEJLsfY-NpREx4CoCmDrL8QJnQL', '7931864', 'audio/mpeg', '1550940796');
INSERT INTO `ek_common_music` VALUES ('0000000292', '盗将行（Cover：花粥/马雨阳）', 'lqC-5HNVWctlMl3stB_lxpFoE1fX', '张yH', 'FnYlPSw57RIam6CteHyo5LRa48du', 'lqC-5HNVWctlMl3stB_lxpFoE1fX', '7934999', 'audio/mpeg', '1550940798');
INSERT INTO `ek_common_music` VALUES ('0000000293', '【三沐、小閃】盜將行（Cover花粥、馬雨陽 ）（Cover：花粥）', 'lisHaQRZFEJWVUSH3BY8JOlTHI6K', '三沐Crystal', 'Fv9Jtd-X6kt-VQEJ2E2Mqo6NHHYx', 'lisHaQRZFEJWVUSH3BY8JOlTHI6K', '7943358', 'audio/mpeg', '1550940799');
INSERT INTO `ek_common_music` VALUES ('0000000294', '盗将行（Cover：花粥）', 'lrtIhH5f2F11lwrBhTPdwk3szy_Z', '而已', 'FoovgQEH5khWemx3c0aZ-aZiUJOb', 'lrtIhH5f2F11lwrBhTPdwk3szy_Z', '7931864', 'audio/mpeg', '1550940805');
INSERT INTO `ek_common_music` VALUES ('0000000295', '盗将行（cover：花粥，马雨阳）（Cover：花粥）', 'lmSJKEB5efruRduM0vylQrIHwk2V', '民谣凯歌', 'FrqH-s-uxuLxUhZsMmO4Eil2gX54', 'lmSJKEB5efruRduM0vylQrIHwk2V', '6759489', 'audio/mpeg', '1550940808');
INSERT INTO `ek_common_music` VALUES ('0000000296', '盗将行（Cover花粥/马雨阳）（Cover：花粥）', 'ltP09FtS_EiIJCMs7X7q6r5FePt-', '墨雨晨', 'Fpe2Twwixp89rA2QScwOhudE03ve', 'ltP09FtS_EiIJCMs7X7q6r5FePt-', '7929774', 'audio/mpeg', '1550940813');
INSERT INTO `ek_common_music` VALUES ('0000000297', 'Fade', 'llGnD9uBzELomDcGxUdlDSvTww44', 'Alan Walker', 'FjjELb-lzbV_nPnp8FPvsF6bIYuj', 'llGnD9uBzELomDcGxUdlDSvTww44', '4225193', 'audio/mpeg', '1550946074');
INSERT INTO `ek_common_music` VALUES ('0000000298', 'Fade（Matcha Remix）', 'ltnfd-PNqL6cITg23C_uDznJRVMX', 'Matcha,Alan Walker', 'FvvlAsYpVM6E-Xq_C3grsDxXzd7f', 'ltnfd-PNqL6cITg23C_uDznJRVMX', '11630803', 'audio/mpeg', '1550946075');
INSERT INTO `ek_common_music` VALUES ('0000000299', 'Fade遇上Force（Cover：Alan Walker/TroyBoi）（Cover：Alan ', 'lpqkUbIDXLWzy-lkUpoumUnJCw4K', 'HONG,Alan Walker', 'FmeWAOVsVCyECSgMJDLoObcF2qZF', 'lpqkUbIDXLWzy-lkUpoumUnJCw4K', '11903521', 'audio/mpeg', '1550946077');
INSERT INTO `ek_common_music` VALUES ('0000000300', 'Faded', 'FotN8fNZKQvab-AUCu42FgggBSi0', 'Iselin Solheim,Alan Walker', 'Fkgwx3fUOzIODH1o8a3_-wcCe3Q-', 'FotN8fNZKQvab-AUCu42FgggBSi0', '3403066', 'audio/mpeg', '1550946078');
INSERT INTO `ek_common_music` VALUES ('0000000301', 'IF You & Faded Remix（Cover BIGBANG & Alan Walker）', 'lh3azMVLzck7CXV1A6uUwL8qq4Fm', '陈壹千', 'FnYCumzCdQIW162Wa44bD3d-muK0', 'lh3azMVLzck7CXV1A6uUwL8qq4Fm', '10484550', 'audio/mpeg', '1550946079');
INSERT INTO `ek_common_music` VALUES ('0000000302', 'Faded', 'FjyaTRPLG4YmrEARuidXMCz5eXF3', 'Alan Walker', 'FjGYgOHKLT-JTxc4TJu2iVEVEkn9', 'FjyaTRPLG4YmrEARuidXMCz5eXF3', '3357092', 'audio/mpeg', '1550946080');
INSERT INTO `ek_common_music` VALUES ('0000000303', 'faded（英雄联盟台词版）（Cover：Alan Walker）', 'ljoeiWgfa3Qv1nkkQwdtz1n8DZ6v', '周一', 'FqIw1ptt7q-gyRqIc1SJgVJ48P49', 'ljoeiWgfa3Qv1nkkQwdtz1n8DZ6v', '8553578', 'audio/mpeg', '1550946080');
INSERT INTO `ek_common_music` VALUES ('0000000304', 'Alan Walker - fade（Blazars Remix）', 'lq0GbrVcTLWKLPeF0hKfz11d5aMR', 'Alan Walker,Blazars', 'FpcCaaX_EAgniBBcRX6TRkKfZWI5', 'lq0GbrVcTLWKLPeF0hKfz11d5aMR', '10976697', 'audio/mpeg', '1550946082');
INSERT INTO `ek_common_music` VALUES ('0000000305', 'Alan Walker-Faded (FN007 Remix)（FN007/Alan Walker ', 'loc7YYB4oczbCAp968Zq_jG_FhAr', 'FN007,Alan Walker', 'Fmz98wzpMv98AbE6Or9w9DDYAnZK', 'loc7YYB4oczbCAp968Zq_jG_FhAr', '15804125', 'audio/mpeg', '1550946083');
INSERT INTO `ek_common_music` VALUES ('0000000306', 'Fade(Remake)（Cover：Alan Walker）', 'Fp1bHZXba9p0s8tQjGlf7WmuzsDp', 'Sky Of Star', 'FsXw69X2Mw0zjLbG9jZkWnoZH_PR', 'Fp1bHZXba9p0s8tQjGlf7WmuzsDp', '857905', 'audio/mpeg', '1550946084');
INSERT INTO `ek_common_music` VALUES ('0000000307', 'Alan Walker - Faded Bootleg（whziM remix）', 'ljE7KxLAkA3ThV4PapKNOL0yANSf', 'RT', 'FlxtsTmJlkHH97ILHg1s67FtgdLC', 'ljE7KxLAkA3ThV4PapKNOL0yANSf', '8419831', 'audio/mpeg', '1550946552');
INSERT INTO `ek_common_music` VALUES ('0000000308', 'Hymn For The Weekend [Remix]', 'FkWkLfwJNIegV6QqpbznM0GlAOFY', 'Coldplay,Alan Walker', 'FjSm4gY8KTau2j4HK8oGKtkhJmed', 'FkWkLfwJNIegV6QqpbznM0GlAOFY', '3686862', 'audio/mpeg', '1550946629');
INSERT INTO `ek_common_music` VALUES ('0000000309', '盗将行（Cover：花粥）', 'lmkLjvb4p4WWXz_CQVqMGOMB9mKc', '如果遇到周柯臻,阿三asan', 'Fj_EBfNzL85CXEWrbnT_8D9o2vz8', 'lmkLjvb4p4WWXz_CQVqMGOMB9mKc', '7931864', 'audio/mpeg', '1550956767');
INSERT INTO `ek_common_music` VALUES ('0000000310', '凤舞九天-金色年华（原版）（YX鬼魅 Remix）', 'lvm1cV3G3z7am1XtYHT09ukGx9o1', 'YX鬼魅', 'Fhrkqwf5o-l5IUDimPkNz_3eO9fn', 'lvm1cV3G3z7am1XtYHT09ukGx9o1', '7199391', 'audio/mpeg', '1550956861');
INSERT INTO `ek_common_music` VALUES ('0000000311', '风舞九天现场 三(remix版)', 'luoSi4lEwYQRo8_e3q2umvXWKwCa', '群星', 'FrRI3wQTVzbzkFHCx31_phfrCLDS', 'luoSi4lEwYQRo8_e3q2umvXWKwCa', '58121178', 'audio/mpeg', '1550956904');
INSERT INTO `ek_common_music` VALUES ('0000000312', '再见地球LIVE版', 'Fl0RdZ2QoBmkDZ3T20xmL16k9g1i', '鲸鱼马戏团', 'Flcei7dQ4fFNAO_Ju6UFMJZ5p2td', 'Fl0RdZ2QoBmkDZ3T20xmL16k9g1i', '3198267', 'audio/mpeg', '1550956906');
INSERT INTO `ek_common_music` VALUES ('0000000313', '《乐团》性福乐队现场实录（Cover：李荣浩）', 'lmaq9Q5JBGZdrLWWnW8dYGUBEJ0R', '张志', 'FsUbTsh22FJCXDWzz6ZxaLgr1_tJ', 'lmaq9Q5JBGZdrLWWnW8dYGUBEJ0R', '8000827', 'audio/mpeg', '1550956912');
INSERT INTO `ek_common_music` VALUES ('0000000314', 'TuMan土味侠（live电台现场版）Prod.by HipHopMan', 'llvVdY5ETUj8lIBePRtNpMbHFwai', 'Captain C 船長,油giao饼,HipHopMan,', 'Fn2EwAKgKUqQZi4sQjfu1oDM1oZm', 'llvVdY5ETUj8lIBePRtNpMbHFwai', '9712370', 'audio/mpeg', '1550956913');
INSERT INTO `ek_common_music` VALUES ('0000000315', 'Ring a bell', 'FpLE3-fmQRdhVDCwcqECyAesYfoy', 'ill.bell', 'FhkbPOogVwr93ueTazI7OyATSo_i', 'FpLE3-fmQRdhVDCwcqECyAesYfoy', '3032337', 'audio/mpeg', '1550956914');
INSERT INTO `ek_common_music` VALUES ('0000000316', '年少有为', 'lrjgcD8PjaxHrtAucej1WJFYbB9f', '李荣浩', 'FrE-NqPlXYEX2RdeZ83IRoAUC7fy', 'lrjgcD8PjaxHrtAucej1WJFYbB9f', '4467609', 'audio/mpeg', '1550956944');
INSERT INTO `ek_common_music` VALUES ('0000000317', '年少有为 李荣浩（Cover：李荣浩）', 'lhjqh3l8pPRTAMazJXtFOveeff-s', '姚特特', 'FttQEZD50eEollOCiKOmr0iR6zSX', 'lhjqh3l8pPRTAMazJXtFOveeff-s', '11200305', 'audio/mpeg', '1550956953');
INSERT INTO `ek_common_music` VALUES ('0000000318', '年少有为 (Cover 李荣浩)', 'lpkpuQRL8-QUqQ60FiBnMy8-XqJw', '蓝心羽', 'Fkq33uPH57LtDheVCg10dsWcQaA5', 'lpkpuQRL8-QUqQ60FiBnMy8-XqJw', '10069725', 'audio/mpeg', '1550956954');
INSERT INTO `ek_common_music` VALUES ('0000000319', '年少有为cover李荣浩（Cover：李荣浩）', 'ljvhZN1j6CeRqqM2_9NmwzU1uwDm', '蔺三岁', 'FkbYn-8ygoRaiyX4NJTm3EF-CTJT', 'ljvhZN1j6CeRqqM2_9NmwzU1uwDm', '11482427', 'audio/mpeg', '1550956956');
INSERT INTO `ek_common_music` VALUES ('0000000320', '年少有为（女声吉他弹唱）（Cover 李荣浩）', 'lgvrgTAZ0BHzOjQ-vTjPLbqzZvun', '李瑨瑶', 'Fq5XVJQITg8lKAGJTOmkfqAcivgt', 'lgvrgTAZ0BHzOjQ-vTjPLbqzZvun', '8662248', 'audio/mpeg', '1550956958');
INSERT INTO `ek_common_music` VALUES ('0000000321', '年少有为（Cover：李荣浩）', 'lhcDvvfHoBmvXC-Rx1kaNObFLl6v', '汤佳佳', 'FlkEfYMwGf9b9qa1j8e-Sro3Y0mQ', 'lhcDvvfHoBmvXC-Rx1kaNObFLl6v', '11243146', 'audio/mpeg', '1550956959');
INSERT INTO `ek_common_music` VALUES ('0000000322', '年少有为（Cover：李荣浩）', 'lgQzaOkNkV2MXwQ3kF2eZ_MfGn8D', '胖胖胖', 'FhuN2nRIB84ODtLfpbBkGnXOLSxd', 'lgQzaOkNkV2MXwQ3kF2eZ_MfGn8D', '11150150', 'audio/mpeg', '1550956961');
INSERT INTO `ek_common_music` VALUES ('0000000323', '年少有为（Cover：李荣浩）', 'lmpjMr1xydRfejVm7wYccATVKOCq', '阿泱', 'FmS5zhleabwAuS3TIHn39wI2iPT3', 'lmpjMr1xydRfejVm7wYccATVKOCq', '11145970', 'audio/mpeg', '1550956962');
INSERT INTO `ek_common_music` VALUES ('0000000324', '年少有为 - 徐薇（Cover：李荣浩）', 'lvaAYQXLxx5Yzcjomh1F3bADoGvI', '徐薇', 'FnCRx9bDNnnqx4oxpKiUXgz6ID-Z', 'lvaAYQXLxx5Yzcjomh1F3bADoGvI', '11179407', 'audio/mpeg', '1550956964');
INSERT INTO `ek_common_music` VALUES ('0000000325', '年少有为（Cover：李荣浩）', 'lqzIPNKFMrcgSO2df-Ab7rNzKU7J', 'fred.小翰', 'Fu9DOvY4qkHBOoU-qMEChSqbfwjL', 'lqzIPNKFMrcgSO2df-Ab7rNzKU7J', '11130297', 'audio/mpeg', '1550956967');
INSERT INTO `ek_common_music` VALUES ('0000000326', '年少有为（Cover：李荣浩）', 'lm6A587irvsKvL7Ae_AmPOH79gYv', '陈冬霖', 'FvVoq4-mGNQ-Y5GU94hpJIAWKbnx', 'lm6A587irvsKvL7Ae_AmPOH79gYv', '11202395', 'audio/mpeg', '1550956977');
INSERT INTO `ek_common_music` VALUES ('0000000327', '年少有为（Cover：李荣浩）', 'lnQqEW_HHqGPd44g0w_xQxyVnL0c', '稻草.小柒', 'FupVzo2-JoN8RyqIA45ptl-d69Ya', 'lnQqEW_HHqGPd44g0w_xQxyVnL0c', '11008044', 'audio/mpeg', '1550956980');
INSERT INTO `ek_common_music` VALUES ('0000000328', 'BLUE', 'Fn6XyJ5DC832whSTzoFa5MoYs5wx', 'Alex Hope,Troye Sivan', 'Fmfj8LMEroTE73ed-Q6s2yDwEc63', 'Fn6XyJ5DC832whSTzoFa5MoYs5wx', '3390111', 'audio/mpeg', '1551096552');
INSERT INTO `ek_common_music` VALUES ('0000000329', 'BLUE', 'FgHIcWTDc7UtyA4Froyq7Y-jkswA', 'Troye Sivan,Alex Hope', 'FudvuuvMJhGq754E_hbhcZUJoTfp', 'FgHIcWTDc7UtyA4Froyq7Y-jkswA', '3396380', 'audio/mpeg', '1551096553');
INSERT INTO `ek_common_music` VALUES ('0000000330', 'Blue（Cover Troye Sivan& Alex Hope）', 'liQI_W_pTy18QWFuDRoWObE-mwT0', '雨期', 'FpTwAEKUdiFAwymz2isJHYKbJeAM', 'liQI_W_pTy18QWFuDRoWObE-mwT0', '8525366', 'audio/mpeg', '1551096555');
INSERT INTO `ek_common_music` VALUES ('0000000331', 'Blue（Cover：Troye Sivan/Alex Hope）（Cover Troye Siva', 'lo6v8rOHktqj1HJ8aJgNOyY-812o', '来一打小龙虾', 'FixvH3HbXaCxvITZ05ikYsJFr_n2', 'lo6v8rOHktqj1HJ8aJgNOyY-812o', '8489840', 'audio/mpeg', '1551096558');
INSERT INTO `ek_common_music` VALUES ('0000000332', 'Blue（Cover：Troye Sivan/Alex Hope）（Cover Troye Siva', 'lo6v8rOHktqj1HJ8aJgNOyY-812o', '来一打小龙虾', 'FixvH3HbXaCxvITZ05ikYsJFr_n2', 'lo6v8rOHktqj1HJ8aJgNOyY-812o', '8489840', 'audio/mpeg', '1551096575');
INSERT INTO `ek_common_music` VALUES ('0000000333', '再见', 'FnXz36dDEpgZYTTAwgrUpM8MfzxB', 'G.E.M.邓紫棋', 'FqWgJhbXmnNEbOEX-7JsQ1mkaDnQ', 'FnXz36dDEpgZYTTAwgrUpM8MfzxB', '3297741', 'audio/mpeg', '1551107317');
INSERT INTO `ek_common_music` VALUES ('0000000334', '再见 (Live Piano Session II)', 'FgH5OBKE5fopLhZMUKP-7-zOpAuS', 'G.E.M.邓紫棋', 'FobV_KEHQTD0Dw_uU1KZlmD_VbCh', 'FgH5OBKE5fopLhZMUKP-7-zOpAuS', '3834818', 'audio/mpeg', '1551107318');
INSERT INTO `ek_common_music` VALUES ('0000000335', '再见 (Club Remix)', 'FjxmQEZofU5Lhf-QqlpbEKX8SJPF', 'G.E.M.邓紫棋', 'FjtAxEYdli6zQZmQQtdskR6cbd9j', 'FjxmQEZofU5Lhf-QqlpbEKX8SJPF', '3924680', 'audio/mpeg', '1551107319');
INSERT INTO `ek_common_music` VALUES ('0000000336', '画 (Live Piano Session II)', 'FuhTFtnFhrI2bpSBxrRdhLQ1guSf', 'G.E.M.邓紫棋', 'FobV_KEHQTD0Dw_uU1KZlmD_VbCh', 'FuhTFtnFhrI2bpSBxrRdhLQ1guSf', '2700895', 'audio/mpeg', '1551107320');
INSERT INTO `ek_common_music` VALUES ('0000000337', '给你的歌 (Live Piano Session II)', 'lnnhB5iFYE3hCzP5i2o2SRGZ9EML', 'G.E.M.邓紫棋', 'FobV_KEHQTD0Dw_uU1KZlmD_VbCh', 'lnnhB5iFYE3hCzP5i2o2SRGZ9EML', '4685783', 'audio/mpeg', '1551107323');
INSERT INTO `ek_common_music` VALUES ('0000000338', '再见（Cover：G.E.M.邓紫棋）', 'llmNNau6MBYR7d--OjI6X-AzR6XU', '远方的猫', 'FnmgcXChbBTfoPTJal8FVteB4xVI', 'llmNNau6MBYR7d--OjI6X-AzR6XU', '9890003', 'audio/mpeg', '1551107330');
INSERT INTO `ek_common_music` VALUES ('0000000339', 'G.E.M.邓紫棋-再见 (抖音男版)（苏以北 remix）', 'lkWiP7eJGzkzRAYbYgb1w4EZOTpI', '苏以北', 'FiEAabIrLzdL35iWEs0dQQ5q7fkg', 'lkWiP7eJGzkzRAYbYgb1w4EZOTpI', '7249546', 'audio/mpeg', '1551107333');
INSERT INTO `ek_common_music` VALUES ('0000000340', 'G.E.M.邓紫棋-再见（R&B改编版）（Yusee remix）', 'luVaUVXQJyulVuJd0O_0GGZO4EUf', 'Yusee', 'FhAZ6lOS-EIAR2E42uy0YMl1lB1S', 'luVaUVXQJyulVuJd0O_0GGZO4EUf', '5010329', 'audio/mpeg', '1551107334');
INSERT INTO `ek_common_music` VALUES ('0000000341', '再见（Cover G.E.M 邓紫棋）', 'lsiDOo20BUyWAa8D9iWuzZK-xSQJ', '牟敏雪MichelleBlair', 'Fn2WK0Df5TMKpb_r8SjuzLzXDNRw', 'lsiDOo20BUyWAa8D9iWuzZK-xSQJ', '8105317', 'audio/mpeg', '1551107336');
INSERT INTO `ek_common_music` VALUES ('0000000342', '再见（Cover：G.E.M.邓紫棋）', 'lh1EyNAGT9rHYKDwqFp8078InmM3', 'DzDz__', 'Fo7_FTp6XiauNpQ3NZdxqjudc8D3', 'lh1EyNAGT9rHYKDwqFp8078InmM3', '8168011', 'audio/mpeg', '1551107339');
INSERT INTO `ek_common_music` VALUES ('0000000343', '再见 （Cover：邓紫棋G.E.M.）（Cover：G.E.M.邓紫棋）', 'lsvNBHR-zw6sBr2ctIvy1YZhn7VJ', '杜 依 霖', 'Fu3ga73GW9_MFYnc-rdkSVwcYZcp', 'lsvNBHR-zw6sBr2ctIvy1YZhn7VJ', '8239064', 'audio/mpeg', '1551107343');
INSERT INTO `ek_common_music` VALUES ('0000000344', '再见-钢琴版（Cover：G.E.M. 邓紫棋）', 'lgnKe7UjrM6Zr6R7-w41W_QZqHld', 'Pofh破辅尘州', 'Fok-Rsp2lDw8KR2aVLHNkzxDoM-n', 'lgnKe7UjrM6Zr6R7-w41W_QZqHld', '7404191', 'audio/mpeg', '1551107346');
INSERT INTO `ek_common_music` VALUES ('0000000345', '红色高跟鞋', 'Fh0-tpVVghz9Zl0Jh-a_8Ubb8f4G', '蔡健雅', 'FtxhnlLmrBwT4KFzP8HtFAVYThq2', 'Fh0-tpVVghz9Zl0Jh-a_8Ubb8f4G', '3306518', 'audio/mpeg', '1551275645');
INSERT INTO `ek_common_music` VALUES ('0000000346', '红色高跟鞋 (Live)', 'FhqL0H7uazmUgSmxvf-YMGbE5cIQ', '蔡健雅', 'Ftkj7dkkQ52OtmNVZYV7eF1d4-hl', 'FhqL0H7uazmUgSmxvf-YMGbE5cIQ', '1780131', 'audio/mpeg', '1551275646');
INSERT INTO `ek_common_music` VALUES ('0000000347', '红色高跟鞋（Cover：蔡健雅）', 'lnTQeA18lVrJkYMP_3KbuCF-Mp6m', 'LINXIA', 'FhGtxwir-HXphK2IpjbQTfcDXRKf', 'lnTQeA18lVrJkYMP_3KbuCF-Mp6m', '8305938', 'audio/mpeg', '1551275651');
INSERT INTO `ek_common_music` VALUES ('0000000348', '红色高跟鞋 feat.蔡健雅', 'lpJSpKaoo7JHFEoQA1cJPAF8lvRx', '烟囱', 'Fh9yIvneiLQoiGfmm5Ow9k7wG0JI', 'lpJSpKaoo7JHFEoQA1cJPAF8lvRx', '8464762', 'audio/mpeg', '1551275653');
INSERT INTO `ek_common_music` VALUES ('0000000349', '红色高跟鞋（Cover 蔡健雅）', 'lq-dY_n9_MlUDsDXnm04P_Uxk7J8', '杜航', 'FvCBWdjWhGxyZ7ixfyBV2d_DdEAP', 'lq-dY_n9_MlUDsDXnm04P_Uxk7J8', '7244321', 'audio/mpeg', '1551275655');
INSERT INTO `ek_common_music` VALUES ('0000000350', '红色高跟鞋（女声吉他弹唱）（Cover 蔡健雅）', 'lupQqau0sx2eRucP46n-d5ONS7M-', '李瑨瑶', 'Fq5XVJQITg8lKAGJTOmkfqAcivgt', 'lupQqau0sx2eRucP46n-d5ONS7M-', '5196321', 'audio/mpeg', '1551275656');
INSERT INTO `ek_common_music` VALUES ('0000000351', '红色高跟鞋cover蔡健雅（Cover：蔡健雅）', 'lkYuZaNmJaexlU73XZ4HfBzxcWdV', 'ZZ Girls', 'Fqe5lm9yBymHzZauDMm8B5FkeiPP', 'lkYuZaNmJaexlU73XZ4HfBzxcWdV', '8199358', 'audio/mpeg', '1551275664');
INSERT INTO `ek_common_music` VALUES ('0000000352', '红色高跟鞋（男版）（Cover：蔡健雅）', 'lk4qdqz1Y4Ke75mQjPcvLjUNqP6x', '于大海', 'FkW3SV5TAU8veTOe3Rd31hnyt9S5', 'lk4qdqz1Y4Ke75mQjPcvLjUNqP6x', '6373921', 'audio/mpeg', '1551275665');
INSERT INTO `ek_common_music` VALUES ('0000000353', '红色高跟鞋（抖音吉他弹唱）（Cover：蔡健雅）', 'loJWS_RC1GnkxPRxc3YEzg3dBLFL', '轩轩学长（李沛轩）', 'FlUN2gj5K53B25XgXyreHfL-LUEO', 'loJWS_RC1GnkxPRxc3YEzg3dBLFL', '6597529', 'audio/mpeg', '1551275666');
INSERT INTO `ek_common_music` VALUES ('0000000354', '红色高跟鞋（Cover蔡健雅）', 'lqjRltuxuRUXzuULQwElsCWAKcC3', '刘晨熙', 'FsSx2GU_q6x3PBD0M14UM2rmTRkx', 'lqjRltuxuRUXzuULQwElsCWAKcC3', '8443864', 'audio/mpeg', '1551275668');
INSERT INTO `ek_common_music` VALUES ('0000000355', '红色高跟鞋（Cover：蔡健雅）', 'FrqL984HJWqYRZ3ldykdeKpvlMaJ', 'superluckyqi', 'Fr-Fu665b8U3SKMvkH-oG_OxVjuf', 'FrqL984HJWqYRZ3ldykdeKpvlMaJ', '3234003', 'audio/mpeg', '1551275670');
INSERT INTO `ek_common_music` VALUES ('0000000356', '红色高跟鞋（Cover：蔡健雅）', 'lqmggfjMQu4HCVWxMLqRKrJyqnTi', '邱咩咩a', 'FjiqS3lSxPNu1RJpkZJzD9MmcQQs', 'lqmggfjMQu4HCVWxMLqRKrJyqnTi', '8123080', 'audio/mpeg', '1551275673');
INSERT INTO `ek_common_music` VALUES ('0000000357', '爱不可及', 'Fi7pJmurssBX31vRNxNmRW3K4Inf', '王菲', 'FlPpuDOXtsTbmjRgVjvxDaGXQc1g', 'Fi7pJmurssBX31vRNxNmRW3K4Inf', '3058721', 'audio/mpeg', '1551275891');
INSERT INTO `ek_common_music` VALUES ('0000000358', '爱不可及（Cover 王菲）', 'lp4niOrp1qCSYZodWmgASZEOfzz_', '程思佳', 'Fi6utT9D8wwRjDA9bwrLfnyRZ8IE', 'lp4niOrp1qCSYZodWmgASZEOfzz_', '7603766', 'audio/mpeg', '1551275895');
INSERT INTO `ek_common_music` VALUES ('0000000359', '爱不可及（Cover：王菲）', 'lrzMtXNbb9L9LltvUgBCEz5zk2ZB', 'Ann', 'FkPNDnf6ZtgDXmo7cGZMnvz2p1ga', 'lrzMtXNbb9L9LltvUgBCEz5zk2ZB', '7648697', 'audio/mpeg', '1551275897');
INSERT INTO `ek_common_music` VALUES ('0000000360', '独角戏（填翻《爱不可及》）（Cover：王菲）', 'lp4recvfvYcMv-GJ2Wan5YkYMPNH', '千界', 'FsL3rKVap67MjOhXiaLLgADrdQGj', 'lp4recvfvYcMv-GJ2Wan5YkYMPNH', '7577644', 'audio/mpeg', '1551275900');
INSERT INTO `ek_common_music` VALUES ('0000000361', 'Human Legacy', 'lqMGMCt72nbbPD4KCeqSJDMWFAHi', 'Ivan Torrent', 'FlbPoWUc2aDnOCLL693xj300J35c', 'lqMGMCt72nbbPD4KCeqSJDMWFAHi', '11956810', 'audio/mpeg', '1551439549');
INSERT INTO `ek_common_music` VALUES ('0000000362', 'Victory', 'lllrvQ4RXvXBp8shBWHzqkQ_2p3O', 'Two Steps From Hell', 'FvBBZhG6h6FF65hFfzqYXhBNhL5b', 'lllrvQ4RXvXBp8shBWHzqkQ_2p3O', '5128402', 'audio/mpeg', '1551440166');
INSERT INTO `ek_common_music` VALUES ('0000000363', 'Victory (Instrumental)', 'llCnqDlKTeguK6IHDiAmSbJlMIQ0', 'Two Steps From Hell', 'FruVck3pWxQIXsnwmcpRr-mz06Xz', 'llCnqDlKTeguK6IHDiAmSbJlMIQ0', '12882591', 'audio/mpeg', '1551440170');
INSERT INTO `ek_common_music` VALUES ('0000000364', 'Victory (Orchestral)', 'looO1dvjPa8tffblm7LhvnEQ5C7W', 'Two Steps From Hell', 'FruVck3pWxQIXsnwmcpRr-mz06Xz', 'looO1dvjPa8tffblm7LhvnEQ5C7W', '12882591', 'audio/mpeg', '1551440178');
INSERT INTO `ek_common_music` VALUES ('0000000365', 'Eminem / Two Steps From Hell - Victory(Miss潴潴 Remi', 'll0ijjI81-kgR3mXPfCGyWJB4g1T', 'Miss潴潴,Eminem,Two Steps From H', 'FiqPT9Uae8JFcKublE0_-j7LCiT8', 'll0ijjI81-kgR3mXPfCGyWJB4g1T', '15622313', 'audio/mpeg', '1551440182');
INSERT INTO `ek_common_music` VALUES ('0000000366', 'Ride to Victory', 'Fg6A5K2dzLDP1BsNV69ybJ3VXDUh', 'Two Steps From Hell', 'FsJaRwIt59wNLWGeNAFeLPKcPvNO', 'Fg6A5K2dzLDP1BsNV69ybJ3VXDUh', '1958181', 'audio/mpeg', '1551440183');
INSERT INTO `ek_common_music` VALUES ('0000000367', 'Smell of Victory', 'lgrLSEmlUu7-H0iwdCT1dD8nTJDr', 'Two Steps From Hell', 'Fi7G_KZicxLwndrWjSLd-qwgidf-', 'lgrLSEmlUu7-H0iwdCT1dD8nTJDr', '4543259', 'audio/mpeg', '1551440185');
INSERT INTO `ek_common_music` VALUES ('0000000368', 'Two Steps From Hell-Victory(overwatch ver)', 'lkknV81nO30KgED9qtbGTAHPce9S', 'Alizee Tsai', 'Fk8EtWiPHTJh2HfX9IhTg3NXQHmk', 'lkknV81nO30KgED9qtbGTAHPce9S', '12823031', 'audio/mpeg', '1551440188');
INSERT INTO `ek_common_music` VALUES ('0000000369', 'Ride to Victory (Instrumental)', 'lmeLjBa_JQkSMwqnHAopmwGusNKs', 'Two Steps From Hell', 'FvBvYHiKNntrvNoGJ9420K7hKWqC', 'lmeLjBa_JQkSMwqnHAopmwGusNKs', '4822248', 'audio/mpeg', '1551440190');
INSERT INTO `ek_common_music` VALUES ('0000000370', 'Two Steps From Hell - Victory（Remix）', 'lpGZrCB5s8LRu6V7vksNQbmmMj_J', 'FairyTale', 'FvOQeKcJnvE_VA_r-25SUWu1XnjC', 'lpGZrCB5s8LRu6V7vksNQbmmMj_J', '11287031', 'audio/mpeg', '1551440194');
INSERT INTO `ek_common_music` VALUES ('0000000371', 'Two Steps From Hell/Two Steps From Hell-Star Victo', 'lglfP8UPeSPf_0xF7Dph8WccqvyL', '编辑昵称', 'FgMP_qxXeZ-Bnr70UwFLudOm2ZCg', 'lglfP8UPeSPf_0xF7Dph8WccqvyL', '16676615', 'audio/mpeg', '1551440200');
INSERT INTO `ek_common_music` VALUES ('0000000372', 'Victory 战歌 Two Steps From Hell OST', 'lkhFS7Wht6gUFE6hU5Lfh4fKI2e0', 'MrLi小哥', 'Fjv-w4HZ6XKZ5YtYj38VWIVl_Mv5', 'lkhFS7Wht6gUFE6hU5Lfh4fKI2e0', '11368533', 'audio/mpeg', '1551440206');
INSERT INTO `ek_common_music` VALUES ('0000000373', 'Intro', 'lhyonM6GRoXOBGAb3w_ZzkHl5r76', 'The xx', 'FjkwN5-ac9_96GVD7fpnXJfpvC17', 'lhyonM6GRoXOBGAb3w_ZzkHl5r76', '5118998', 'audio/mpeg', '1551440697');
INSERT INTO `ek_common_music` VALUES ('0000000374', 'Lio', 'FrzF3zD09KyQZQag0x5kyM_RSJkz', '李奥', 'FvExBi9eJf7k-uBRytHMAYLfV7a7', 'FrzF3zD09KyQZQag0x5kyM_RSJkz', '1696121', 'audio/mpeg', '1551440698');
INSERT INTO `ek_common_music` VALUES ('0000000375', 'Crossing Winds (Inspired by The xx - Intro)', 'lpxeuvMXRi4I_V0sK25nkZ21UJo7', 'Jacoo', 'FhqED5BoAcSOMvg2tAPp5lFIwpw-', 'lpxeuvMXRi4I_V0sK25nkZ21UJo7', '10591240', 'audio/mpeg', '1551440701');
INSERT INTO `ek_common_music` VALUES ('0000000376', 'Intro', 'FhYUrtcr-omgTNZHnxiTjrks1XRE', 'Piano Tribute Players', 'Ft_wY_PG3Z_5uQQwvv6DrIFk5w_q', 'FhYUrtcr-omgTNZHnxiTjrks1XRE', '1805209', 'audio/mpeg', '1551440703');
INSERT INTO `ek_common_music` VALUES ('0000000377', 'thexx - intro (Extended Mash up)', 'lkd-11QFiBEyVO8N_IgrQ-X5-fjw', '欧洲音厨', 'FlF-5VLMX-91or2DG6dIs5hzq7hT', 'lkd-11QFiBEyVO8N_IgrQ-X5-fjw', '14722656', 'audio/mpeg', '1551440753');
INSERT INTO `ek_common_music` VALUES ('0000000378', 'The xx-Intro（Flysandwich Remix）（FLYSANDWICH Remix）', 'lk_NO8ix7Q1UGm1S_AgabIj_XuRV', 'FLYSANDWICH', 'FpYz1SC9BaOVtTvuaBYNkP5oX-Xc', 'lk_NO8ix7Q1UGm1S_AgabIj_XuRV', '17772713', 'audio/mpeg', '1551440754');
INSERT INTO `ek_common_music` VALUES ('0000000379', 'The xx-Intro（Suvibez remix）', 'lki3O49pWzs4T1xH2JX4R23VHK-l', 'Suvibez', 'FjnJ1Q55S7Id6hCS9yxf2LR3JrUh', 'lki3O49pWzs4T1xH2JX4R23VHK-l', '4873448', 'audio/mpeg', '1551440756');
INSERT INTO `ek_common_music` VALUES ('0000000380', 'The Miracle (Little\'s Intro) (Prod. Madlib)', 'ljhZhWNkgMk_L1Kk1inCeWMa6vdZ', 'Darnell Little', 'FtPqbyDlHv-FV13kSgEIU8xROfJC', 'ljhZhWNkgMk_L1Kk1inCeWMa6vdZ', '6653092', 'audio/mpeg', '1551440758');
INSERT INTO `ek_common_music` VALUES ('0000000381', 'Intro cover by The XX - 输出 - Stereo Out（Cover：The ', 'lgQiul4OztzHoA5KmjkZUDY1o-J5', '5th Dimension', 'FtXbRyxsHFIYTL8NGAuGbwzvWqtC', 'lgQiul4OztzHoA5KmjkZUDY1o-J5', '7160729', 'audio/mpeg', '1551440760');
INSERT INTO `ek_common_music` VALUES ('0000000382', 'dead wrong intro ', 'lh1QJVmHbPIq4WDgjvsrEgStP4pe', 'Wait What', 'FtRVy2MzJeMcbF96I3kVQtCKMZ56', 'lh1QJVmHbPIq4WDgjvsrEgStP4pe', '9612060', 'audio/mpeg', '1551440763');
INSERT INTO `ek_common_music` VALUES ('0000000383', 'Set the Mood (Intro)', 'luMvqmEGABefL_516zfzPQrdNrZo', 'X.X', 'Fs26hTBAikSniOPenaWBZAgy846N', 'luMvqmEGABefL_516zfzPQrdNrZo', '5124223', 'audio/mpeg', '1551440766');
INSERT INTO `ek_common_music` VALUES ('0000000384', 'Intro', 'Fl_RoWz8dErq8oFO20XNL48PSjFc', 'Midnite String Quartet', 'FkuSoJW2OmT7dNWPV3v2BQhME7BU', 'Fl_RoWz8dErq8oFO20XNL48PSjFc', '2263711', 'audio/mpeg', '1551440767');
INSERT INTO `ek_common_music` VALUES ('0000000385', '只要平凡（Cover：张杰）', 'ltFUHaZAiquajCtF1rm8r-qNkZ0X', '翎轩Ryan,韩梅梅', 'Fp8ol1L-UdqWAi0ewa78_9JsY7X5', 'ltFUHaZAiquajCtF1rm8r-qNkZ0X', '9606836', 'audio/mpeg', '1553939652');
INSERT INTO `ek_common_music` VALUES ('0000000386', '只要平凡（Cover：张杰）', 'lsZS8vXExH91aEMnF7DV_iBWyJ-z', '锦零', 'FuZIolUhxV8reL8TjGG_Vu56X4uc', 'lsZS8vXExH91aEMnF7DV_iBWyJ-z', '9833578', 'audio/mpeg', '1553939659');
INSERT INTO `ek_common_music` VALUES ('0000000387', '只要平凡（女声吉他弹唱版）（Cover 张杰）', 'lspyenmk3oD55_AnHULwA3mSVNRB', '李瑨瑶', 'Fq5XVJQITg8lKAGJTOmkfqAcivgt', 'lspyenmk3oD55_AnHULwA3mSVNRB', '5620550', 'audio/mpeg', '1553939662');
INSERT INTO `ek_common_music` VALUES ('0000000388', '只要平凡（Cover：张杰）', 'loPLRB3dJEUqFhSufORpNDi4sxC6', '我是张怡啊', 'FqlDbtXtAIc3WviTFg9meH7LKG0N', 'loPLRB3dJEUqFhSufORpNDi4sxC6', '5152436', 'audio/mpeg', '1553939666');
INSERT INTO `ek_common_music` VALUES ('0000000389', '只要平凡（《醉死当涂》ED）（Cover：张杰）', 'lp6LMGMEnjuR1H246UEQj4_kzrmv', '羊仔,景向谁依', 'FtpfHSWfe1LGRuom-tr_fAF03F2T', 'lp6LMGMEnjuR1H246UEQj4_kzrmv', '9659080', 'audio/mpeg', '1553939671');
INSERT INTO `ek_common_music` VALUES ('0000000390', '只要平凡 钢琴演奏版（Cover：张杰）', 'lqJdgpTsypKVWBCX7L3F9eyKhm9p', '廖里文程,《我不是药神》电影主题曲', 'FrGbYwWpaOQwekgdvaRqyRKL6p9q', 'lqJdgpTsypKVWBCX7L3F9eyKhm9p', '6643505', 'audio/mpeg', '1553939673');
INSERT INTO `ek_common_music` VALUES ('0000000391', '只要平凡-小石头和孩子们（Cover：张杰）', 'lun3j6CMYnR1oopgOnv3IWCdr6YO', '小石头和孩子们', 'FmNyhbTnk5xJ2kerFL4Iap8SRDxr', 'lun3j6CMYnR1oopgOnv3IWCdr6YO', '9394721', 'audio/mpeg', '1553939674');
INSERT INTO `ek_common_music` VALUES ('0000000392', '只要平凡（Cover：张杰）', 'loyXgEqYrCmbz1BD00T2M8e4fYWs', '小林总,野小马', 'FrxUaZm06p7DF47K_yjcM6CiZRfP', 'loyXgEqYrCmbz1BD00T2M8e4fYWs', '9690427', 'audio/mpeg', '1553939677');
INSERT INTO `ek_common_music` VALUES ('0000000393', '只要平凡（Cover 张杰）', 'lmOAUiH9D_m-vRGIB10kzj4o-BFb', '野小马', 'FiStTJsYgCaBTaHWi2ujy8jU1551', 'lmOAUiH9D_m-vRGIB10kzj4o-BFb', '9694607', 'audio/mpeg', '1553939686');
INSERT INTO `ek_common_music` VALUES ('0000000394', '只要平凡（Cover：张杰）', 'lig6pyazNwxgh2hrSVzpLlIeqtL9', '陈同学', 'FsnL9tRnwaLxpEjuuDZ1_Y-Zq76s', 'lig6pyazNwxgh2hrSVzpLlIeqtL9', '8926607', 'audio/mpeg', '1553939689');
INSERT INTO `ek_common_music` VALUES ('0000000395', '梦田', 'FkhrBhisk0Im7wZbl70oIi6qwqt_', 'S.H.E', 'FhMkwrRPMy74vu8txqd6b7wenkhB', 'FkhrBhisk0Im7wZbl70oIi6qwqt_', '3670143', 'audio/mpeg', '1554460297');
INSERT INTO `ek_common_music` VALUES ('0000000396', '天使在唱歌(Intro)+金钟罩铁布衫+梦田(Live) - live', 'llVwBMfVtVj3HnD9VibNap12W9be', 'S.H.E', 'FmnFPuYVlFHMCS3PGPwnIxDSmJrf', 'llVwBMfVtVj3HnD9VibNap12W9be', '4868977', 'audio/mpeg', '1554460299');
INSERT INTO `ek_common_music` VALUES ('0000000397', '田舎の静寂、糸守の日々 ~夢灯籠 弦楽合奏ver.~', 'lrpB-2zU1LqoqEYNe0d1NNpZ9AgV', 'TAMUSIC', 'FpnxuXVXy84PKLNR7myHDvYQEMM4', 'lrpB-2zU1LqoqEYNe0d1NNpZ9AgV', '11243146', 'audio/mpeg', '1554460302');
INSERT INTO `ek_common_music` VALUES ('0000000398', '何があっても夢は捨てない', 'lt2TtPjbN7_vWuvSGySwqrT_g_PU', '得田真裕', 'FsY-rvNo2Qiz-gz3GnnGH-0KciYU', 'lt2TtPjbN7_vWuvSGySwqrT_g_PU', '6690525', 'audio/mpeg', '1554460307');
INSERT INTO `ek_common_music` VALUES ('0000000399', '番外編 「夢見る藩士じゃいられない」', 'ltBwp9i8GCB6KDgPfUiDSHqRobNc', '羽多野渉,下野紘,小野大輔,石田彰,鳥海浩輔', 'Fq4D4uxAJb3XLQW3UXqrqnIu2stV', 'ltBwp9i8GCB6KDgPfUiDSHqRobNc', '29339733', 'audio/mpeg', '1554460323');
INSERT INTO `ek_common_music` VALUES ('0000000400', '我的楼兰（Cover：云朵）', 'lqUM_CmogWhl5qL0iaGifavQMJIL', '杨静', 'Fpkt-uPPN4KjIC3cqo3CTIlb77rt', 'lqUM_CmogWhl5qL0iaGifavQMJIL', '13094705', 'audio/mpeg', '1554532816');
INSERT INTO `ek_common_music` VALUES ('0000000401', '我的楼兰（Cover 云朵）', 'lqNYO_qjcEwi3dLtflmdBY2UoNjc', '丽栗', 'FuL8PRxgdw1dCg6M6fV-9SL0LF48', 'lqNYO_qjcEwi3dLtflmdBY2UoNjc', '13077987', 'audio/mpeg', '1554532818');
INSERT INTO `ek_common_music` VALUES ('0000000402', '我的楼兰--黄运运（Cover 云朵）', 'ltlWKFjnmWeNFtS8QgyMA9Q4wJ69', '黄运运', 'FixBBe013Vc7FuJAiY53T76ruHyF', 'ltlWKFjnmWeNFtS8QgyMA9Q4wJ69', '13487587', 'audio/mpeg', '1554532821');
INSERT INTO `ek_common_music` VALUES ('0000000403', '我的楼兰-萨克斯（Cover 云朵）', 'lj5K1kftiDd377UkKxl_1O5Zxzwn', '春晓萨克斯', 'FqIdPbb6a0HlgWRevxKf8op0Md-W', 'lj5K1kftiDd377UkKxl_1O5Zxzwn', '12357007', 'audio/mpeg', '1554532832');
INSERT INTO `ek_common_music` VALUES ('0000000404', '《我的楼兰》（Cover 未知）', 'loKHRwEuPZTaB0xK9tBbhY0Ezo6m', '夜笛', 'FpdP8Cujp1dWqnfyg5uJWVQu6WBs', 'loKHRwEuPZTaB0xK9tBbhY0Ezo6m', '13247260', 'audio/mpeg', '1554532836');
INSERT INTO `ek_common_music` VALUES ('0000000405', '亲爱的你（Cover 麦喆坎司音）', 'lrAstVE1ePcANEIhVvJCurRqwJJA', '唐媛【汤圆】,阡陌,若水,婪肃,慕青辰,语奕儿,檀青,一衫衿', 'FnzEUUZDkjkFq55SrfM3uk7etW0t', 'lrAstVE1ePcANEIhVvJCurRqwJJA', '15287946', 'audio/mpeg', '1554532842');
INSERT INTO `ek_common_music` VALUES ('0000000406', '我亲爱的你啊（Cover 邓丽欣）', 'luYfK6qcHv3mPDoMW8zEa60o1L1Z', '赴晚,夏云竹', 'FoD_xvsAZ3ryLKYQPnBlf3mM5Mc6', 'luYfK6qcHv3mPDoMW8zEa60o1L1Z', '8794950', 'audio/mpeg', '1554532846');
INSERT INTO `ek_common_music` VALUES ('0000000407', '静静的（Cover：庾澄庆）', 'ln95gPAG2MnB8kECxbrlWMXm0bFC', 'Eric申容泽,YoungB杨斌', 'Flkqdrq_bodNxMixJKHaVDANCt2p', 'ln95gPAG2MnB8kECxbrlWMXm0bFC', '8814803', 'audio/mpeg', '1554532852');
INSERT INTO `ek_common_music` VALUES ('0000000408', '我的快乐就是想你（Cover 吴杨雨）', 'lnfeM0s92_xAz-ipADuVbCRPj_uw', '胡满朵', 'Fv77dcyt59aa8cdLlQesyFGTNx9f', 'lnfeM0s92_xAz-ipADuVbCRPj_uw', '12272370', 'audio/mpeg', '1554532856');
INSERT INTO `ek_common_music` VALUES ('0000000409', '【百人合唱】礼仪之邦（Cover：墨明棋妙）', 'lpLPZZClnU_vZHpt34rBd6k1x89R', '1风竹苑+2妖痴+3雪菜+4落星无痕+5南偿,6冰鹤+7漆柚', 'FrfZeKQ14ew0mhZWlJ4-2dQaSuuK', 'lpLPZZClnU_vZHpt34rBd6k1x89R', '7107440', 'audio/mpeg', '1554532858');
INSERT INTO `ek_common_music` VALUES ('0000000410', '我的楼兰新娘（Cover 音频怪物）', 'lqr9Sj6kfw_ACc1yIiyumLJiyBS1', '地球大社会', 'FtCsWkBoZ41jNpreBPW-0hL4tC8t', 'lqr9Sj6kfw_ACc1yIiyumLJiyBS1', '14760272', 'audio/mpeg', '1554532870');
INSERT INTO `ek_common_music` VALUES ('0000000411', '鹌鹑（Cover 辛七一）', 'lgCUjuS9Y__Hh9vl-rVm0yac0aKv', '小吉他', 'FkkFHxSIKUezNdAata_E2U7R1MkJ', 'lgCUjuS9Y__Hh9vl-rVm0yac0aKv', '7876485', 'audio/mpeg', '1554532873');
INSERT INTO `ek_common_music` VALUES ('0000000412', '问', 'Fqu8kJpvMM_qktm9mJlSBRcJvBxC', '简弘亦', 'Fjz7sLeiv1Ej1hQqPPvnNKF8k2dX', 'Fqu8kJpvMM_qktm9mJlSBRcJvBxC', '3668088', 'audio/mpeg', '1554533242');
INSERT INTO `ek_common_music` VALUES ('0000000413', '天问', 'lt0hE3HK44f3BO6fQ8sDs_s8muKa', '简弘亦', 'FoPhqHWG4fFts8gGeFUBn_4XmH-B', 'lt0hE3HK44f3BO6fQ8sDs_s8muKa', '4238568', 'audio/mpeg', '1554533246');
INSERT INTO `ek_common_music` VALUES ('0000000414', '问（Cover：简弘亦）', 'luvk0jWhRNXl75aB39NU242EnwR4', '尚劲阳', 'FtcqUSgmPGhzdme4IIzrAoCDKYh0', 'luvk0jWhRNXl75aB39NU242EnwR4', '9138721', 'audio/mpeg', '1554533249');
INSERT INTO `ek_common_music` VALUES ('0000000415', '天问 (伴奏)', 'lu3LGHKuqgVB0ea30MeyKNqxzhtq', '简弘亦', 'FoPhqHWG4fFts8gGeFUBn_4XmH-B', 'lu3LGHKuqgVB0ea30MeyKNqxzhtq', '10596354', 'audio/mpeg', '1554533251');
INSERT INTO `ek_common_music` VALUES ('0000000416', '问（Cover：梁静茹/简弘亦）', 'liUq_90lTtLuc24N1tIrTp-9sL2T', '英镑', 'FnyyGfjY8VvLwg26YpTad0MurFIe', 'liUq_90lTtLuc24N1tIrTp-9sL2T', '8985121', 'audio/mpeg', '1554533258');
INSERT INTO `ek_common_music` VALUES ('0000000417', '问（Cover：简弘亦）', 'll34Y0Yaj98_LMPYO64txel2ekIy', '李昊晨', 'FhOEXJQNJpEkIAg9AwEeBKRWR7HZ', 'll34Y0Yaj98_LMPYO64txel2ekIy', '8296533', 'audio/mpeg', '1554533260');
INSERT INTO `ek_common_music` VALUES ('0000000418', '问（Cover 简弘亦）', 'lq2lwkzGRPVmv0c8tlUDV_PoG4m4', '周忠柏', 'FgRzEbXW1dJtNIzBdCoxOk0dcfRp', 'lq2lwkzGRPVmv0c8tlUDV_PoG4m4', '9126182', 'audio/mpeg', '1554533266');
INSERT INTO `ek_common_music` VALUES ('0000000419', '问（Cover：简弘亦）', 'luRQT3aoye_1QTPYlKhkwQZgKOB6', '沧笙十七', 'FscvpdfHKX4nA3RdqV6IDuUyfpmg', 'luRQT3aoye_1QTPYlKhkwQZgKOB6', '9107374', 'audio/mpeg', '1554533268');
INSERT INTO `ek_common_music` VALUES ('0000000420', '问 （男版）（Cover：简弘亦）', 'lsKKCMV7P8eRebKpFAQ0o4J9P6ax', '盐捌浪', 'FgkvNPF7jdV-zvjCi79bX46Znm1R', 'lsKKCMV7P8eRebKpFAQ0o4J9P6ax', '9030052', 'audio/mpeg', '1554533273');
INSERT INTO `ek_common_music` VALUES ('0000000421', '问（Cover：简弘亦）', 'lvIke0EbiBLEvbSbuvzq15hPBlVT', 'jazz', 'Foy88I0cRqXG7goBadHZFhFoluX-', 'lvIke0EbiBLEvbSbuvzq15hPBlVT', '9174248', 'audio/mpeg', '1554533278');
INSERT INTO `ek_common_music` VALUES ('0000000422', '问（Cover 简弘亦）', 'ltR1b2Potlki4DO_yAhSnQgdfEy4', '孙张玉', 'FmymSS7JujXM61hNgIxwhwfPyj1Q', 'ltR1b2Potlki4DO_yAhSnQgdfEy4', '9148125', 'audio/mpeg', '1554533281');
INSERT INTO `ek_common_music` VALUES ('0000000423', '骨生花', 'llZWPbW-0AHHx0o9iaj01B8L8rLT', '奡雪', 'Fr3iDGdGiT4NA9EXmTEfLI9Lj9M0', 'llZWPbW-0AHHx0o9iaj01B8L8rLT', '7323733', 'audio/mpeg', '1554533348');
INSERT INTO `ek_common_music` VALUES ('0000000424', '骨生花（Cover：奡雪）', 'FrIiDMy-jg733fwzxV-k2lDnMruB', '芊翎', 'Fr_1sVMWRbrSOlo1Ca5_X7iF42y-', 'FrIiDMy-jg733fwzxV-k2lDnMruB', '3446117', 'audio/mpeg', '1554533349');
INSERT INTO `ek_common_music` VALUES ('0000000425', '和平分手', 'Fh1oDzC8p-z3ekQAalELdnEbHucg', '徐良', 'Fs66eHf37znr5uZZRGnWb9ZBfE1p', 'Fh1oDzC8p-z3ekQAalELdnEbHucg', '3887124', 'audio/mpeg', '1554533469');
INSERT INTO `ek_common_music` VALUES ('0000000426', '和平分手', 'FrX-PEdVJLMPO4xENvWIpotCGRlj', '徐良,Britneylee小暖', 'Fsjl3vSQEmMRcXQjeAzARo7U8Dda', 'FrX-PEdVJLMPO4xENvWIpotCGRlj', '3727404', 'audio/mpeg', '1554533469');
INSERT INTO `ek_common_music` VALUES ('0000000427', '和平分手（Cover 徐良 / 小暖）', 'lvKKzoi6NmnvS1z694mCPjzX1xCk', '冉茉,潘雨轩', 'FoOWPzq-iV266FV2ZMZ2k0UXtZJ3', 'lvKKzoi6NmnvS1z694mCPjzX1xCk', '9722819', 'audio/mpeg', '1554533476');
INSERT INTO `ek_common_music` VALUES ('0000000428', '犯贱', 'Ftv-ROvpqtMdPvKGQXAZEijk7ES3', '徐良', 'Fs66eHf37znr5uZZRGnWb9ZBfE1p', 'Ftv-ROvpqtMdPvKGQXAZEijk7ES3', '3422870', 'audio/mpeg', '1554533542');
INSERT INTO `ek_common_music` VALUES ('0000000429', '客官不可以', 'Fn9wbjgU_cWgV8Y9uFyGGn4MMXUl', '徐良,小凌', 'Fs66eHf37znr5uZZRGnWb9ZBfE1p', 'Fn9wbjgU_cWgV8Y9uFyGGn4MMXUl', '3694803', 'audio/mpeg', '1554533543');
INSERT INTO `ek_common_music` VALUES ('0000000430', '红装', 'FhdBMO3yNA9JFw99-M2R9k7oVbz5', '徐良', 'Fs66eHf37znr5uZZRGnWb9ZBfE1p', 'FhdBMO3yNA9JFw99-M2R9k7oVbz5', '3946052', 'audio/mpeg', '1554533544');
INSERT INTO `ek_common_music` VALUES ('0000000431', '犯贱(Remix) - remix', 'FmTzqqs8q_cgUosj4mYo9FIpmSrf', '徐良', 'FiO3LxoIh2f9_DqwHjnAx-BHUW8x', 'FmTzqqs8q_cgUosj4mYo9FIpmSrf', '3597891', 'audio/mpeg', '1554533545');
INSERT INTO `ek_common_music` VALUES ('0000000432', '天真', 'FqiersGhjvkHaydHzdqWoXinIw2X', '徐良', 'Fs66eHf37znr5uZZRGnWb9ZBfE1p', 'FqiersGhjvkHaydHzdqWoXinIw2X', '3612920', 'audio/mpeg', '1554533545');
INSERT INTO `ek_common_music` VALUES ('0000000433', '小恋曲', 'Fie3YuUey0PpEQ9iaOQ7Bw3DOIXQ', '徐良', 'Fs66eHf37znr5uZZRGnWb9ZBfE1p', 'Fie3YuUey0PpEQ9iaOQ7Bw3DOIXQ', '3126101', 'audio/mpeg', '1554533546');
INSERT INTO `ek_common_music` VALUES ('0000000434', '月光', 'FhN4RxCWF1bqwJRoOjWItSmkT2PH', '徐良', 'Fs66eHf37znr5uZZRGnWb9ZBfE1p', 'FhN4RxCWF1bqwJRoOjWItSmkT2PH', '4071384', 'audio/mpeg', '1554533546');
INSERT INTO `ek_common_music` VALUES ('0000000435', '在回忆中死去', 'FonAIolWE2lhwi1ePAU5eEUOE3b5', '徐良', 'Fs66eHf37znr5uZZRGnWb9ZBfE1p', 'FonAIolWE2lhwi1ePAU5eEUOE3b5', '3434041', 'audio/mpeg', '1554533547');
INSERT INTO `ek_common_music` VALUES ('0000000436', '即使说抱歉', 'lgLEc7vZOq84i633UgZ1ytBdXAoV', '徐良', 'Fs66eHf37znr5uZZRGnWb9ZBfE1p', 'lgLEc7vZOq84i633UgZ1ytBdXAoV', '4598098', 'audio/mpeg', '1554533547');
INSERT INTO `ek_common_music` VALUES ('0000000437', '胸前', 'FmnCYDHAFbRy27Ewjtseb83tEcMJ', '徐良', 'Fs66eHf37znr5uZZRGnWb9ZBfE1p', 'FmnCYDHAFbRy27Ewjtseb83tEcMJ', '3304011', 'audio/mpeg', '1554533547');
INSERT INTO `ek_common_music` VALUES ('0000000438', '一人有一个梦想', 'FsenoF9C5Gy-vW-PEk1Zd89cqYkH', '黎瑞恩', 'FtMeM4-2ZoJW_DfHLwhKREqrg33a', 'FsenoF9C5Gy-vW-PEk1Zd89cqYkH', '3652656', 'audio/mpeg', '1554536575');
INSERT INTO `ek_common_music` VALUES ('0000000439', '一人有一个梦想(国)', 'lvDLI_6ikwnV2NPNxYYO8CIEGMT1', '黎瑞恩', 'FvJf568QfOsiOOZHRwiZLxM-3BuS', 'lvDLI_6ikwnV2NPNxYYO8CIEGMT1', '9220276', 'audio/mpeg', '1554536578');
INSERT INTO `ek_common_music` VALUES ('0000000440', '一人有一个梦想(Live) - live', 'FhyPiO0cwtR9TaL6EaDZY9zTIiRG', '黎瑞恩', 'FjVQFeEIDdZol5YoA0YeLeOKGeWP', 'FhyPiO0cwtR9TaL6EaDZY9zTIiRG', '3539739', 'audio/mpeg', '1554536580');
INSERT INTO `ek_common_music` VALUES ('0000000441', '问（Cover：李宗盛）', 'llLm8Jv49cu9ulzwCPmMTcMl_fim', '小懿米', 'Fv_Pz3HWBNnCSRB_lQ0P6wluIsH9', 'llLm8Jv49cu9ulzwCPmMTcMl_fim', '8550444', 'audio/mpeg', '1554986775');
INSERT INTO `ek_common_music` VALUES ('0000000442', '问（Cover：李宗盛）', 'lshsEHTHOBjODgUUOYR2csATDWBY', '言吾音', 'Fix19JL6GYwx5eTEpofsUSMg9Xl7', 'lshsEHTHOBjODgUUOYR2csATDWBY', '9091701', 'audio/mpeg', '1554986779');
INSERT INTO `ek_common_music` VALUES ('0000000443', '晚婚（Cover：李宗盛）', 'lvGsFscD1Hvr15qSJMbHN5J8Kued', '小鹿Morning', 'FkdyIZSdo-TnnE2rq2VVOXC2eBL3', 'lvGsFscD1Hvr15qSJMbHN5J8Kued', '12703913', 'audio/mpeg', '1554986788');
INSERT INTO `ek_common_music` VALUES ('0000000444', '《问》咚鼓版（Cover：李宗盛）', 'lsUdOiwh5ymcni8KLmo2dJ4Eh282', '李寒', 'Frg0JuJBz3GTnh4qTlC2G-DIIwTf', 'lsUdOiwh5ymcni8KLmo2dJ4Eh282', '7017578', 'audio/mpeg', '1554986791');
INSERT INTO `ek_common_music` VALUES ('0000000445', '爱的代价', 'liCZGzG93K2Fuw2xqq8LymNU2FFA', '李宗盛', 'FlJQPE417g3Db4ng6zltJIf3-SMu', 'liCZGzG93K2Fuw2xqq8LymNU2FFA', '4305859', 'audio/mpeg', '1554986793');
INSERT INTO `ek_common_music` VALUES ('0000000446', '问（Cover：李宗盛）', 'lkw06Pp4UGrrGNngxbTK81YnjGyn', '珺怀', 'Fgnb0wO73GTSP8owwwp2a-yor-Tt', 'lkw06Pp4UGrrGNngxbTK81YnjGyn', '9128272', 'audio/mpeg', '1554986799');
INSERT INTO `ek_common_music` VALUES ('0000000447', '鬼迷心窍', 'lo7yb4NUoQOJAVn2K1H2uHQh59iW', '李宗盛', 'FusyS7lWQ4AckIHFDj5GS9uTzFtk', 'lo7yb4NUoQOJAVn2K1H2uHQh59iW', '4231461', 'audio/mpeg', '1554986801');
INSERT INTO `ek_common_music` VALUES ('0000000448', '凡人歌', 'FpNki3U7tAUzRmm4arqOrVBowgIu', '李宗盛', 'FusyS7lWQ4AckIHFDj5GS9uTzFtk', 'FpNki3U7tAUzRmm4arqOrVBowgIu', '3696892', 'audio/mpeg', '1554986803');
INSERT INTO `ek_common_music` VALUES ('0000000449', '当爱已成往事', 'lo7sPDi--ODY3AzZPFziZPoR2zXG', '李宗盛,林忆莲', 'FlJQPE417g3Db4ng6zltJIf3-SMu', 'lo7sPDi--ODY3AzZPFziZPoR2zXG', '4494359', 'audio/mpeg', '1554986808');
INSERT INTO `ek_common_music` VALUES ('0000000450', '我是真的爱你', 'lv9E-qpZhgiFcDfzeOz9VvJmz6i1', '李宗盛', 'FlJQPE417g3Db4ng6zltJIf3-SMu', 'lv9E-qpZhgiFcDfzeOz9VvJmz6i1', '4519018', 'audio/mpeg', '1554986809');
INSERT INTO `ek_common_music` VALUES ('0000000451', '鬼迷心窍（Cover：李宗盛）', 'lu13j66LYn9pOz2HNAurp4tXxwB6', '吴浩,李宗盛', 'FkwTrPwoJjOtOsN1Id_ukoA6E-xr', 'lu13j66LYn9pOz2HNAurp4tXxwB6', '9578623', 'audio/mpeg', '1554986812');
INSERT INTO `ek_common_music` VALUES ('0000000452', '听见有人叫你宝贝', 'lvWssO4d5kWXnO-0IBzsrpVdfl9S', '李宗盛', 'FlJQPE417g3Db4ng6zltJIf3-SMu', 'lvWssO4d5kWXnO-0IBzsrpVdfl9S', '4619746', 'audio/mpeg', '1554986814');
INSERT INTO `ek_common_music` VALUES ('0000000453', 'Creep', 'lru6Ia_PHfjo6LCOiGv30JUB0UVj', 'Gamper & Dadoni,Ember Island', 'FqtAg8LZqMiFMg23Jtq0BkF-305A', 'lru6Ia_PHfjo6LCOiGv30JUB0UVj', '7036387', 'audio/mpeg', '1555237098');
INSERT INTO `ek_common_music` VALUES ('0000000454', '黎明前的黑暗（完整版）', 'lsQS_HmEWNgXPWHIR6CP7BSPkCwa', 'NCF-艾力,Bater Offical', 'Fhu0DN_yYBNzHawplEo2FpRqDZD3', 'lsQS_HmEWNgXPWHIR6CP7BSPkCwa', '5824305', 'audio/mpeg', '1555239083');
INSERT INTO `ek_common_music` VALUES ('0000000455', '还有哪个女孩', 'Fi1KQDZm5FHcVnswKCx3Lx89h10-', 'JE张', 'Fv-W4BsTVYaLJgOjaUtR8iKYKD4c', 'Fi1KQDZm5FHcVnswKCx3Lx89h10-', '3919247', 'audio/mpeg', '1555261056');
INSERT INTO `ek_common_music` VALUES ('0000000456', '青花', 'lnNZBgMOSRN2S3vSpODEzPFMKHZ8', '周传雄', 'Fr1tH_1MAuHk0QOUVupsL0rxJJ6I', 'lnNZBgMOSRN2S3vSpODEzPFMKHZ8', '4761896', 'audio/mpeg', '1555487089');
INSERT INTO `ek_common_music` VALUES ('0000000457', '青花（Cover：周传雄）', 'lh-4H9KRydyn3bXuiN-GXN5pZ8tC', '谢俊', 'FrDVsxk00WUsBagwzY8a4IMlHtfR', 'lh-4H9KRydyn3bXuiN-GXN5pZ8tC', '8450133', 'audio/mpeg', '1555487093');
INSERT INTO `ek_common_music` VALUES ('0000000458', 'Take me hand', 'ltdle4p_vjrCVR0loM1wFckdvIlj', 'DAISHI DANCE,Cecile Corbel', 'Fl2HRmSaMN93f3Z5eN-pBL3hMJ9P', 'ltdle4p_vjrCVR0loM1wFckdvIlj', '10402225', 'audio/mpeg', '1555562670');
INSERT INTO `ek_common_music` VALUES ('0000000459', 'DAISHI DANCE / Cécile Corbel-take me hand(说唱remix)', 'lshsAKWGyHB5COEglfQ9pb7FDCn6', '蔡耀轩', 'Fj48JFIOJDwyF3TKs4G3_-6bC1rt', 'lshsAKWGyHB5COEglfQ9pb7FDCn6', '9187831', 'audio/mpeg', '1555562676');
INSERT INTO `ek_common_music` VALUES ('0000000460', 'Take me hand（Cover DAISHI DANCE / Cecile Corbel）', 'lu0auB4-M6WZJtvjVcE2ZVwhfq6C', 'AKA小健', 'FgcglSxaVaJomW0jE-TJ2xNys8rR', 'lu0auB4-M6WZJtvjVcE2ZVwhfq6C', '7688403', 'audio/mpeg', '1555562682');
INSERT INTO `ek_common_music` VALUES ('0000000461', 'DAISHI DANCE / Cecile Corbel-Take me hand (DickLi ', 'luLO3e5xACsSLMHJaUxbB5P5Nh-7', 'DickLi', 'Fq73KYLcfxFAahbElDSGnSVo-XRh', 'luLO3e5xACsSLMHJaUxbB5P5Nh-7', '10485595', 'audio/mpeg', '1555562689');
INSERT INTO `ek_common_music` VALUES ('0000000462', 'Take me hand（Cover：DAISHI DANCE/Cecile Corbel）', 'lu7H-nmeDL8eG2mr-xweQIOsWs8_', 'Nightcore.Shiro', 'FkfOjzpz5W6ed5QpQeQQQI49MvRN', 'lu7H-nmeDL8eG2mr-xweQIOsWs8_', '9736403', 'audio/mpeg', '1555562693');
INSERT INTO `ek_common_music` VALUES ('0000000463', 'Silent express', 'Fvi9Po5_2o7MVqmW74pU8eimxpVM', '出羽良彰', 'FkvOqsHJxVfL9SluCLISV9u7oRnt', 'Fvi9Po5_2o7MVqmW74pU8eimxpVM', '3196772', 'audio/mpeg', '1555562972');
INSERT INTO `ek_common_music` VALUES ('0000000464', 'Move Your Body (Alan Walker Remix)', 'Fm_4bPEnm9BiqZauakgs4UQOG4Iv', 'Sia,Alan Walker', 'FjvZ5buvfntfLu8lr32cfo9Lxmv4', 'Fm_4bPEnm9BiqZauakgs4UQOG4Iv', '3487495', 'audio/mpeg', '1555563006');
INSERT INTO `ek_common_music` VALUES ('0000000465', 'Move Your Body(Trunk Remix)', 'li6m_7r5DmF1ZlKvi5DcylR5khLW', 'TRUNK,Sia,Alan Walker', 'FkAY13l3wmnZqLouybZR1uVT3m-8', 'li6m_7r5DmF1ZlKvi5DcylR5khLW', '9150215', 'audio/mpeg', '1555563012');
INSERT INTO `ek_common_music` VALUES ('0000000466', 'MIDNIGHT GIRL (Japanese version)', 'lgJzZC-kZzRDjhrT5BTCoyI4TyDr', '神话', 'Fm9VImTbGUpquvz5KpxmtFuTcd2Z', 'lgJzZC-kZzRDjhrT5BTCoyI4TyDr', '10184733', 'audio/mpeg', '1556700021');
INSERT INTO `ek_common_music` VALUES ('0000000467', '美丽的神话', 'liAi9FuZck5X3bZIbeV4cMjzIFuA', '胡歌,白冰', 'Fn3dA9aBi0vWPeaWeZmk83n2IAMX', 'liAi9FuZck5X3bZIbeV4cMjzIFuA', '5211577', 'audio/mpeg', '1556700056');
INSERT INTO `ek_common_music` VALUES ('0000000468', 'Metasequoia (Original Mix)', 'lpMx1ZwDWImL59bcLYn2d-OXIFWS', 'Gnarlock', 'FrzzwW75ifPYAMhiana16FtSz8eC', 'lpMx1ZwDWImL59bcLYn2d-OXIFWS', '4334698', 'audio/mpeg', '1557727439');
INSERT INTO `ek_common_music` VALUES ('0000000469', 'Robo Crop (Original Mix)', 'lpKdWdv73y4gNmSUH8ArfjjZWh_7', 'Gnarlock', 'FrzzwW75ifPYAMhiana16FtSz8eC', 'lpKdWdv73y4gNmSUH8ArfjjZWh_7', '4965817', 'audio/mpeg', '1557727442');
INSERT INTO `ek_common_music` VALUES ('0000000470', '你好', 'lmUEArmgPqiKml_uwxaycvPyfjnd', '颜枫林', 'FgL250IySR5pDxtfwFHtc2pOWspz', 'lmUEArmgPqiKml_uwxaycvPyfjnd', '8707178', 'audio/mpeg', '1557912596');
INSERT INTO `ek_common_music` VALUES ('0000000471', '我与青春在赛跑', 'lmQf9PUMxZsWj4PfQdgq1OOKO4_g', '刘惜君', 'FspmTcImlZvrqGwdTuKPf1ONKwne', 'lmQf9PUMxZsWj4PfQdgq1OOKO4_g', '4316726', 'audio/mpeg', '1557912604');
INSERT INTO `ek_common_music` VALUES ('0000000472', '只为红颜', 'lge_f9zP9kPuIR9BUCtUbYaZdl6f', '马忠宇', 'Fh9VoiljE0lDTVNup-uMLaxRmVSc', 'lge_f9zP9kPuIR9BUCtUbYaZdl6f', '9124093', 'audio/mpeg', '1557912608');
INSERT INTO `ek_common_music` VALUES ('0000000473', '你好', 'lndoMiGDLYMksCjJWv1DHlmx05vm', '初音ミク,MusikM', 'FpaD5dag5QS-mw6tHFVjvYsE7nax', 'lndoMiGDLYMksCjJWv1DHlmx05vm', '6859799', 'audio/mpeg', '1557912609');
INSERT INTO `ek_common_music` VALUES ('0000000474', '心安理得（男版）（cover王天戈）', 'lh9EPU0eJGnXeb30x_2NCyW2zNwK', '王野肆', 'FrZb5fcNyP_BOuSvFjy4AhupGLZV', 'lh9EPU0eJGnXeb30x_2NCyW2zNwK', '10780256', 'audio/mpeg', '1557912610');
INSERT INTO `ek_common_music` VALUES ('0000000475', '平淡日子里的刺', 'lsREOxLmudDv1ev9ahz5nW-Robt2', '宋冬野', 'Fq5L4Ze4599426oHKwBFj7ZkNcPE', 'lsREOxLmudDv1ev9ahz5nW-Robt2', '9073937', 'audio/mpeg', '1557912611');
INSERT INTO `ek_common_music` VALUES ('0000000476', '梦游集', 'lljRyJ11lkshWVclHyCjEqZ3hG7o', '颜枫林,Hazy李好', 'FrYpOOdWQYg5x1WRE_pUtIXFq_4S', 'lljRyJ11lkshWVclHyCjEqZ3hG7o', '9999717', 'audio/mpeg', '1557912614');
INSERT INTO `ek_common_music` VALUES ('0000000477', '心酸（Cover：林宥嘉）', 'll-BBmp6rzoyQmaDx8IFGt4_iV1V', '不是', 'FoDFsedfOBjg4-xGh6a6bUFLAhGu', 'll-BBmp6rzoyQmaDx8IFGt4_iV1V', '9912991', 'audio/mpeg', '1557912624');
INSERT INTO `ek_common_music` VALUES ('0000000478', '明天，你好', 'llER4RzL07B-NSDU4lSNPFRHKiUm', '牛奶咖啡', 'Fg4D-GE0K5sN8PyBI3ee73lsg9BQ', 'llER4RzL07B-NSDU4lSNPFRHKiUm', '4350162', 'audio/mpeg', '1557912625');
INSERT INTO `ek_common_music` VALUES ('0000000479', '明天，你好', 'lgVvuyTA4lLzB6IiOmU6IjComfo6', '王俊凯,王源', 'Fpk9vetie_e3CoUYtvhFwDSitDJw', 'lgVvuyTA4lLzB6IiOmU6IjComfo6', '10938088', 'audio/mpeg', '1557912627');
INSERT INTO `ek_common_music` VALUES ('0000000480', '明天你好', 'ltolFu78rkey3_ziMaCVIkHI59xs', '牛奶咖啡', 'FkEXMeNqAlVzYy5vC7ZBJ1n2BEBb', 'ltolFu78rkey3_ziMaCVIkHI59xs', '4350163', 'audio/mpeg', '1557912629');
INSERT INTO `ek_common_music` VALUES ('0000000481', '你好前任（Cover：陈雪凝）', 'lsjVQS-Ab7XojAJPJTZKWKOkFJvy', '林天瑜', 'FhY4RcTX9oYwL7nIoWhqCG2xuP01', 'lsjVQS-Ab7XojAJPJTZKWKOkFJvy', '9634003', 'audio/mpeg', '1557912643');
INSERT INTO `ek_common_music` VALUES ('0000000482', '清白之年', 'ljGZTvSduC8saArEBzrvFUf61pXD', '王珞丹,朴树', 'FpiCAUMqrRkDNw6-9cZ9MLBdBC1j', 'ljGZTvSduC8saArEBzrvFUf61pXD', '10864893', 'audio/mpeg', '1560005290');
INSERT INTO `ek_common_music` VALUES ('0000000483', '屋顶', 'ltgKfReA2gW4n8KGs_ultq0__qrI', '温岚,周杰伦', 'FoQ3bPJG5gJlF0k7c3W8B-LQpuzD', 'ltgKfReA2gW4n8KGs_ultq0__qrI', '5112977', 'audio/mpeg', '1561603492');
INSERT INTO `ek_common_music` VALUES ('0000000484', '屋顶', 'lucF6QYdX4GwYRDznk8MV8Gv1dA-', '周杰伦,温岚', 'Fh4MIQiv0IdeGio1nn-QywiVxJxo', 'lucF6QYdX4GwYRDznk8MV8Gv1dA-', '5106306', 'audio/mpeg', '1561603494');
INSERT INTO `ek_common_music` VALUES ('0000000485', '屋顶', 'lkkgaLItkgSE16oNEjWqH13ErclM', '温岚,王宁', 'FtZlFFTlRv1mMx16iBw0XsYizLky', 'lkkgaLItkgSE16oNEjWqH13ErclM', '6105382', 'audio/mpeg', '1561603496');
INSERT INTO `ek_common_music` VALUES ('0000000486', '赤伶', 'll6pOV6uYQDw-hGcVJDe4WQPzXZC', 'HITA', 'FuV-fdsn26ihNla4Mqn98_oYJPCh', 'll6pOV6uYQDw-hGcVJDe4WQPzXZC', '10659048', 'audio/mpeg', '1565082084');
INSERT INTO `ek_common_music` VALUES ('0000000487', '赤伶（爱国戏子题材-HITA）', 'lryKAiduo7hyOgGFjA_e36KP16Mz', 'HITA', 'FgY5xm5D_hcfjEX0w-dt2u7B4hkv', 'lryKAiduo7hyOgGFjA_e36KP16Mz', '10659048', 'audio/mpeg', '1565082089');
INSERT INTO `ek_common_music` VALUES ('0000000488', '赤伶（伴奏）', 'lmnQDK4Tv-Qdb9_lUoDDxNh51I6k', 'HITA', 'FuV-fdsn26ihNla4Mqn98_oYJPCh', 'lmnQDK4Tv-Qdb9_lUoDDxNh51I6k', '10675766', 'audio/mpeg', '1565082091');
INSERT INTO `ek_common_music` VALUES ('0000000489', '赤伶（Cover：HITA）', 'ljX6fDwRQrxQOTaK_mwJ3sEw5vaC', '阿木木,HITA', 'FguYtnGvifh6kTH4e8X8uC-P-AIz', 'ljX6fDwRQrxQOTaK_mwJ3sEw5vaC', '10654125', 'audio/mpeg', '1565082096');
INSERT INTO `ek_common_music` VALUES ('0000000490', '赤伶_HITA（Cover：HITA）', 'llkVsf0wtpCeiNHAZi8UOXeCLUqU', '苏苏苏糯米', 'FnnwFxEZ4a88GQ46R5sxXwI9Agz1', 'llkVsf0wtpCeiNHAZi8UOXeCLUqU', '10654868', 'audio/mpeg', '1565082103');
INSERT INTO `ek_common_music` VALUES ('0000000491', '赤伶（Cover：HITA）', 'lrl3OzDuTsT6Yzqb3mac4vcvBXL3', '你的二智bb', 'FstiEwDK0xWcbrdOBKImX5M_Bmq5', 'lrl3OzDuTsT6Yzqb3mac4vcvBXL3', '10664272', 'audio/mpeg', '1565082106');
INSERT INTO `ek_common_music` VALUES ('0000000492', '赤伶（Cover：HITA）', 'lrAbbLvQmprm99CVMxt5GUGwbn_-', '等什么君', 'FgniIcrhQgrfBIPS4xyseh3yfXE1', 'lrAbbLvQmprm99CVMxt5GUGwbn_-', '11289121', 'audio/mpeg', '1565082109');
INSERT INTO `ek_common_music` VALUES ('0000000493', '赤伶（Cover：HITA）', 'lqjXMrzKRYUoQ4PSGuP1b3rHaoQe', '染lafier', 'FmL-7goj1XkmJZdWJy92AAdkJx3n', 'lqjXMrzKRYUoQ4PSGuP1b3rHaoQe', '10672631', 'audio/mpeg', '1565082112');
INSERT INTO `ek_common_music` VALUES ('0000000494', '赤伶（Cover：HITA）', 'lhBdEaAjkbgXyOh6UhiCdQ4u7dP5', '狐妖,高佳依,樱花小狼', 'Fo9DRXqKJA_wIZpj_ZlWE7YCPvey', 'lhBdEaAjkbgXyOh6UhiCdQ4u7dP5', '10677856', 'audio/mpeg', '1565082126');
INSERT INTO `ek_common_music` VALUES ('0000000495', '赤伶（Cover：HITA）', 'lgbCPff8SjUnAaQZQHZdHn5LVHjR', '大柯', 'Fh05OZzkJvYjaXSDl9A4zJIRr8bp', 'lgbCPff8SjUnAaQZQHZdHn5LVHjR', '10746819', 'audio/mpeg', '1565082139');
INSERT INTO `ek_common_music` VALUES ('0000000496', '赤伶（贾昱/刘宇 录音制作:承让）（Cover：HITA）', 'FrUeDXwnw6BQ1BP6Q2JmQ138d1FS', '刘宇,贾昱,承让', 'FpOsYafIADfFvuharzPGtc40a9vH', 'FrUeDXwnw6BQ1BP6Q2JmQ138d1FS', '1627245', 'audio/mpeg', '1565082140');
INSERT INTO `ek_common_music` VALUES ('0000000497', '七月七日晴', 'FgMft5ZTseAsG41MnxA7oQ4Gq3sp', '许慧欣', 'Fg0WcDBvctWYYFl-hOGvVZYdOGIw', 'FgMft5ZTseAsG41MnxA7oQ4Gq3sp', '3935546', 'audio/mpeg', '1566277448');
INSERT INTO `ek_common_music` VALUES ('0000000498', '许慧欣-七月七日晴（咚鼓版）（浪子康 / 黄家旺 / 支柱 / 豪大大 remix）', 'lmj3x1_FeCW3sLIwrUmFxsFfsM5r', '浪子康,黄家旺,支柱,豪大大', 'FqeO5qdmgeIuJW5O0jTxGiYFwkEC', 'lmj3x1_FeCW3sLIwrUmFxsFfsM5r', '9016468', 'audio/mpeg', '1566277450');
INSERT INTO `ek_common_music` VALUES ('0000000499', '喜欣恋爱(Mix典藏版)', 'llOHCS3Rfx9-rItS71cMjyvDSKsr', '许慧欣', 'Fg0WcDBvctWYYFl-hOGvVZYdOGIw', 'llOHCS3Rfx9-rItS71cMjyvDSKsr', '8918100', 'audio/mpeg', '1566277454');
INSERT INTO `ek_common_music` VALUES ('0000000500', '七月七日晴（Cover：许慧欣）', 'lgUqYt2K2tg3EJmBnDYk-vhC6EaR', '溟葵儿', 'FjA62Mwq7FGpJxgv-RprZmLGpHfu', 'lgUqYt2K2tg3EJmBnDYk-vhC6EaR', '9815815', 'audio/mpeg', '1566277459');
INSERT INTO `ek_common_music` VALUES ('0000000501', '七月七日晴（Cover：许慧欣）', 'lnnkeL9c3QFvO9ivnv3TkR8JgGso', '璨璨', 'Fh_jJujpfCtJ4OPFG9wRjOBEUVnl', 'lnnkeL9c3QFvO9ivnv3TkR8JgGso', '9935978', 'audio/mpeg', '1566277463');
INSERT INTO `ek_common_music` VALUES ('0000000502', '七月七日晴（Cover：许慧欣）', 'lmGOSP1yDK6i88iotq5kUCl5WISp', '橙味沙士', 'Fm3e2NO3TkKum9DFxAtHh8zCQhKp', 'lmGOSP1yDK6i88iotq5kUCl5WISp', '9753121', 'audio/mpeg', '1566277470');
INSERT INTO `ek_common_music` VALUES ('0000000503', '七月七日晴（Cover：许慧欣）', 'lv5OVGdkyiBLbsX39Mv9grnYgSMX', '寂瞳', 'Fit3abobo1UkC-UchTxGzLuZLEnG', 'lv5OVGdkyiBLbsX39Mv9grnYgSMX', '9824174', 'audio/mpeg', '1566277474');
INSERT INTO `ek_common_music` VALUES ('0000000504', '七月七日晴（Cover：许慧欣）', 'lsVwBTK46FCdtWO1bZnUbLg-GlDf', '陈厚文', 'Fn5FbkqQE-EWS26j7TCzjNuUXHk0', 'lsVwBTK46FCdtWO1bZnUbLg-GlDf', '9911946', 'audio/mpeg', '1566277478');
INSERT INTO `ek_common_music` VALUES ('0000000505', '归去来兮', 'lu-qH07rrgvnjLSuFycOvsx1Cplw', '花粥', 'FqSRiXtzSSsUz0LI30sydMHIwgXE', 'lu-qH07rrgvnjLSuFycOvsx1Cplw', '8243244', 'audio/mpeg', '1566374013');
INSERT INTO `ek_common_music` VALUES ('0000000506', '归去来兮（Cover：花粥）', 'lj7D-EK7Ubym5dGjElbBR4oRlKmR', '花花一点都不甜呐', 'Fn59aufIoH9QkdbRPnslUnduQhim', 'lj7D-EK7Ubym5dGjElbBR4oRlKmR', '8174280', 'audio/mpeg', '1566374015');
INSERT INTO `ek_common_music` VALUES ('0000000507', '归去来兮（Cover：花粥）', 'luij2lZBd-uqyRu9CPjLKRIAMN8j', '锦零', 'FoydfeowXPLgUpUFmd0qwZK1QYRY', 'luij2lZBd-uqyRu9CPjLKRIAMN8j', '8308027', 'audio/mpeg', '1566374017');
INSERT INTO `ek_common_music` VALUES ('0000000508', '归去来兮 (cover：花粥)', 'lnrgBZguy3UKiKDIfvxn0_owNhLo', '杨子为', 'FrBC41WOX26K1vbA4mi01BupD-WO', 'lnrgBZguy3UKiKDIfvxn0_owNhLo', '8265187', 'audio/mpeg', '1566374019');
INSERT INTO `ek_common_music` VALUES ('0000000509', '归去来兮（Cover：花粥）', 'llqvoPwYIjldCuD3SFN-hFbvBF1Q', '草帽酱', 'FoGcQCZKiRTjtbNDNQ-ow5v_u-Zf', 'llqvoPwYIjldCuD3SFN-hFbvBF1Q', '8308845', 'audio/mpeg', '1566374021');
INSERT INTO `ek_common_music` VALUES ('0000000510', '归去来兮（Cover：花粥）', 'lhJktTbC_H4AJv2y54SGqqgCriHl', '黑猫', 'FpHEKqJ4a4H4ZklMUYIvw6CctxKb', 'lhJktTbC_H4AJv2y54SGqqgCriHl', '8207717', 'audio/mpeg', '1566374023');
INSERT INTO `ek_common_music` VALUES ('0000000511', '花粥-归去来兮（DJ阿超 咚咚鼓 Rmx）（DJ阿超 remix）', 'li6dXrqHIiayVeks8dKHqF_xYc2c', 'DJ阿超', 'Fs5ur2tc5V709K6_kLIhRbVTOhBl', 'li6dXrqHIiayVeks8dKHqF_xYc2c', '12757203', 'audio/mpeg', '1566374027');
INSERT INTO `ek_common_music` VALUES ('0000000512', '归去来兮（Cover：花粥）', 'Fj72i79_Hhpq3XxY5_p7Ymf42Rzg', '白彩虹WhiteRainbow,白彩虹WhiteRainbo', 'FibPbiITvauyi4q3dQNF5j3sNEGa', 'Fj72i79_Hhpq3XxY5_p7Ymf42Rzg', '3096076', 'audio/mpeg', '1566374028');
INSERT INTO `ek_common_music` VALUES ('0000000513', '归去来兮（Cover：花粥）', 'lviPI7tFhpAPm3FgGK-VnxPEHpcn', '点哥基', 'FivKjETofXwfoOn40qAIvpP6SXgR', 'lviPI7tFhpAPm3FgGK-VnxPEHpcn', '8172191', 'audio/mpeg', '1566374033');
INSERT INTO `ek_common_music` VALUES ('0000000514', '归去来兮（Cover：花粥）', 'lp3VVqUM9wpHB06S0AyFiod9rt-D', '鬼岛', 'FmIDJvhKojCwAvGLMDiTS3mT1Ro6', 'lp3VVqUM9wpHB06S0AyFiod9rt-D', '8265187', 'audio/mpeg', '1566374035');
INSERT INTO `ek_common_music` VALUES ('0000000515', '归去来兮（Cover：花粥）', 'lmyAn7mWlq6yEOS6mGNC5jNC5K5E', '姜创钢琴', 'Fri3c7vWkAKAXtEPrmRnmONAYQPl', 'lmyAn7mWlq6yEOS6mGNC5jNC5K5E', '7382248', 'audio/mpeg', '1566374038');
INSERT INTO `ek_common_music` VALUES ('0000000516', '纸短情长', 'lpap2IHZt55kbFMAvAMLnO--0lfH', '花粥', 'FgwRunbi0Rj0SvYtqI63yspEL8IH', 'lpap2IHZt55kbFMAvAMLnO--0lfH', '7471064', 'audio/mpeg', '1566374244');
INSERT INTO `ek_common_music` VALUES ('0000000517', '纸短情长 (伴奏)', 'lpNyyLpUSNLy9MhcQ0cMrtKh2Fgq', '花粥', 'FgwRunbi0Rj0SvYtqI63yspEL8IH', 'lpNyyLpUSNLy9MhcQ0cMrtKh2Fgq', '7471064', 'audio/mpeg', '1566374246');
INSERT INTO `ek_common_music` VALUES ('0000000518', '【中日结合】纸短情长 花粥.ver（Cover：烟把儿）（Cover：烟把儿）', 'll34fbANNvEu5f9ocHj1LnBH3suC', '蜘向镜ALine,はいにこ', 'FtZo3BVb1QlgJQBlljpfk-ffiXOz', 'll34fbANNvEu5f9ocHj1LnBH3suC', '7477333', 'audio/mpeg', '1566374249');
INSERT INTO `ek_common_music` VALUES ('0000000519', '纸短情长（Cover：花粥）', 'ltqn7pHvwQyodui78cWbtrKY_36F', '崔姨母', 'FqzUn0j_n9o7dJ5PYcW79CXFFcoT', 'ltqn7pHvwQyodui78cWbtrKY_36F', '7527489', 'audio/mpeg', '1566374252');
INSERT INTO `ek_common_music` VALUES ('0000000520', '纸短情长（女生完整版）（Cover：花粥）', 'lnI5HlN113GrG35v9ZDuL7FWqBlK', '李瑨瑶', 'Fq5XVJQITg8lKAGJTOmkfqAcivgt', 'lnI5HlN113GrG35v9ZDuL7FWqBlK', '7127293', 'audio/mpeg', '1566374254');
INSERT INTO `ek_common_music` VALUES ('0000000521', '纸短情长（Cover 花粥）', 'lmrEsoh0GZJ35YUe6c4i555xCPtH', '子弥', 'FovhJz0Yb9smQlzo1ocE9BYbsSk7', 'lmrEsoh0GZJ35YUe6c4i555xCPtH', '7456436', 'audio/mpeg', '1566374258');
INSERT INTO `ek_common_music` VALUES ('0000000522', '纸短情长（Cover：花粥）', 'lkE3vCku8ZH_9P_kT0spRGphSatU', '流仙', 'FsZcLOBhDVmrRhVRUxHCf30_o2R4', 'lkE3vCku8ZH_9P_kT0spRGphSatU', '7475244', 'audio/mpeg', '1566374260');
INSERT INTO `ek_common_music` VALUES ('0000000523', '纸短情长【治愈系】（Cover：花粥）', 'lgP_4ruL0VPrqCnMmK0ywMoaNIEq', '杜宣达达达', 'Fk8lKks0Lui7Kl9fBQPWcI3COkUn', 'lgP_4ruL0VPrqCnMmK0ywMoaNIEq', '6781431', 'audio/mpeg', '1566374262');
INSERT INTO `ek_common_music` VALUES ('0000000524', '纸短情长（Cover：花粥）', 'lugrwJPvDgOgVPllkJy4E2cX9W-i', '满满的兜儿,张满满', 'Fg4bV_EuS9c1qrRwnYf8zhKC7ffU', 'lugrwJPvDgOgVPllkJy4E2cX9W-i', '9604746', 'audio/mpeg', '1566374265');
INSERT INTO `ek_common_music` VALUES ('0000000525', '纸短情长（Cover 花粥）', 'lt1rBnwrXiwtpXOMJKF-3JkSou6v', '凌逝', 'FmRNdm6MuYO9O0EGldePKH2jgAqI', 'lt1rBnwrXiwtpXOMJKF-3JkSou6v', '7466885', 'audio/mpeg', '1566374267');
INSERT INTO `ek_common_music` VALUES ('0000000526', '纸短情长（Cover：花粥）', 'lpnsafQjHz9nASAkrL3DEdgFXaJH', '洺熙（靖）', 'FhRmGt8apk2CziYHq0-7hpNkbe3r', 'lpnsafQjHz9nASAkrL3DEdgFXaJH', '7472109', 'audio/mpeg', '1566374311');
INSERT INTO `ek_common_music` VALUES ('0000000527', '出山', 'FlyGEN2gXVBpM_XswhNrHZVOT_V0', '花粥,王胜娚', 'FpdFbcSmNsSNlKqnlRPcGLNBs1Z0', 'FlyGEN2gXVBpM_XswhNrHZVOT_V0', '3207462', 'audio/mpeg', '1566375120');
INSERT INTO `ek_common_music` VALUES ('0000000528', '出山（Cover：花粥/王胜娚）（Cover：花粥）', 'luVcGoXoTytdpkuaDzKJ3AZbk4Yt', '铭白', 'FvvIhjdymEiBxKO21zPAiqEEEoDv', 'luVcGoXoTytdpkuaDzKJ3AZbk4Yt', '8051565', 'audio/mpeg', '1566375125');
INSERT INTO `ek_common_music` VALUES ('0000000529', '出山（Cover：花粥）', 'FrsqoZOuXurnXwd6ELdaKO_aNNcn', '蓝心羽,黄诗扶', 'FkUWpPwKHh2UiSXdLwYYSPK7o7br', 'FrsqoZOuXurnXwd6ELdaKO_aNNcn', '3909007', 'audio/mpeg', '1566375126');
INSERT INTO `ek_common_music` VALUES ('0000000530', '出山 (cover 花粥&王胜男)', 'lu6mmmJbaI4VocdF07gINHsPZ2V7', '胖胖胖,野小马', 'FhPAMmNEA-295GxsyABVzpxTuPHP', 'lu6mmmJbaI4VocdF07gINHsPZ2V7', '8088599', 'audio/mpeg', '1566375129');
INSERT INTO `ek_common_music` VALUES ('0000000531', '烟花易冷 (Live)', 'lhwYc8kA_JK_7ZkUYg1oNzOilQ2D', '林志炫', 'FjNOWsJENuAoLoPeybv3U-ugjy_N', 'lhwYc8kA_JK_7ZkUYg1oNzOilQ2D', '5067487', 'audio/mpeg', '1566467008');
INSERT INTO `ek_common_music` VALUES ('0000000532', '单身情歌', 'lpAy7KoIW8tuCblrjclCe_7cRJl-', '林志炫', 'FjOvTUDhVvfnaAzAufCqn0aFEy4O', 'lpAy7KoIW8tuCblrjclCe_7cRJl-', '4436406', 'audio/mpeg', '1566467013');
INSERT INTO `ek_common_music` VALUES ('0000000533', '离人', 'lkw8qtbkPZSCN3BsAc0Pc2cmHvTx', '林志炫', 'Fi6Ni13MtXWBc6d0xMa9KQPEzq3i', 'lkw8qtbkPZSCN3BsAc0Pc2cmHvTx', '4763565', 'audio/mpeg', '1566467014');
INSERT INTO `ek_common_music` VALUES ('0000000534', '烟花易冷', 'lrFfOexH_vR77nBLe4v414QRrvt1', '霍尊', 'FgGPD_u72W-sgdSjWsgXOO7nwJqA', 'lrFfOexH_vR77nBLe4v414QRrvt1', '4998469', 'audio/mpeg', '1566467014');
INSERT INTO `ek_common_music` VALUES ('0000000535', '烟花易冷', 'lmN5ixOZr_9Sd3as0XHq6qGLkyDJ', '张穆庭', 'FgPHVFuy9OWli6J220HBw27dSAp1', 'lmN5ixOZr_9Sd3as0XHq6qGLkyDJ', '4577951', 'audio/mpeg', '1566467016');
INSERT INTO `ek_common_music` VALUES ('0000000536', '下一站天后', 'lqBUYiBAmfYaxX-Bx3xZy2g9oFTr', '梁文希', 'FuDV61Lci39Ka4TLbxuoKpb25hfP', 'lqBUYiBAmfYaxX-Bx3xZy2g9oFTr', '8056206', 'audio/mpeg', '1567731909');
INSERT INTO `ek_common_music` VALUES ('0000000537', '下一站天后(Live)', 'FvRDm5if2EnupIol-tWO_1OaAPbW', '余文乐', 'FrpBHIXyhms6fw7_f3ggh3IHpfji', 'FvRDm5if2EnupIol-tWO_1OaAPbW', '3452386', 'audio/mpeg', '1567731910');
INSERT INTO `ek_common_music` VALUES ('0000000538', '【钢琴】下一站天后', 'lrooCoQNp5z8tpnksHHaLBZ-l_nA', '昼夜', 'Fvmr2vql_s18lOTvmT17I_iqaxJ9', 'lrooCoQNp5z8tpnksHHaLBZ-l_nA', '8433415', 'audio/mpeg', '1567731912');
INSERT INTO `ek_common_music` VALUES ('0000000539', '安河桥（Cover 宋冬野）', 'lqjT7Us_jnEZ6iNR1GJA6JmcATV-', '王贰浪', 'FgZzD08ZIfvs9i6B35URb06na50J', 'lqjT7Us_jnEZ6iNR1GJA6JmcATV-', '9175293', 'audio/mpeg', '1567757669');
INSERT INTO `ek_common_music` VALUES ('0000000540', '安河桥(cover宋冬野)（Cover：宋冬野）', 'luvYdWilFLov3NGFIl74Rgr3A1Iq', '北宸V', 'FvlT42SJKVQTsuoJXijPMaMdCAQ2', 'luvYdWilFLov3NGFIl74Rgr3A1Iq', '9811636', 'audio/mpeg', '1567757673');
INSERT INTO `ek_common_music` VALUES ('0000000541', '安河桥（Cover 宋冬野）', 'ljsqfL4heK2_mBCM3InxhSkqO7BW', '罗之豪', 'FpBA2QxGo9f7YyiIiXO2_HQn0gbn', 'ljsqfL4heK2_mBCM3InxhSkqO7BW', '10085399', 'audio/mpeg', '1567757676');
INSERT INTO `ek_common_music` VALUES ('0000000542', '莉莉安（Cover 宋冬野）', 'ltOU7mTtwa3Wa9TXVDitUNgVmThW', '王贰浪', 'FgZzD08ZIfvs9i6B35URb06na50J', 'ltOU7mTtwa3Wa9TXVDitUNgVmThW', '10051962', 'audio/mpeg', '1567757677');
INSERT INTO `ek_common_music` VALUES ('0000000543', '郭源潮（Cover 宋冬野）', 'lumj9zdKQsEcnaBU_SQG2YTh160j', '王贰浪', 'FgZzD08ZIfvs9i6B35URb06na50J', 'lumj9zdKQsEcnaBU_SQG2YTh160j', '4814933', 'audio/mpeg', '1567757678');
INSERT INTO `ek_common_music` VALUES ('0000000544', '安和桥（Cover 宋冬野）', 'lrfIzJqt99pMtb9ypZ5wKkFuH3o_', '宇西', 'FtiTZR3iwWr8cH-m2iAOdF5a-8vp', 'lrfIzJqt99pMtb9ypZ5wKkFuH3o_', '9942248', 'audio/mpeg', '1567757680');
INSERT INTO `ek_common_music` VALUES ('0000000545', '少一点天分（Cover 孙盛希）', 'lnFUS5s_F9cSTlVlzxWRm_TNwB2a', '王贰浪', 'FgZzD08ZIfvs9i6B35URb06na50J', 'lnFUS5s_F9cSTlVlzxWRm_TNwB2a', '11208664', 'audio/mpeg', '1567757681');
INSERT INTO `ek_common_music` VALUES ('0000000546', '安河桥（Cover 宋冬野）', 'ltbF6qCrGIe3v99W6BWXOdKIMP6i', 'YanHal', 'FlsMIlg-dNl311avSI84cpVqhb2c', 'ltbF6qCrGIe3v99W6BWXOdKIMP6i', '10057187', 'audio/mpeg', '1567757686');
INSERT INTO `ek_common_music` VALUES ('0000000547', '安河桥（Cover 宋冬野）', 'lscgjRWLb5awex9jlp92hAgmxCBH', '董雅婷', 'Fil2zQfwXFlaqnOYpydROEoBDJo4', 'lscgjRWLb5awex9jlp92hAgmxCBH', '10109431', 'audio/mpeg', '1567757699');
INSERT INTO `ek_common_music` VALUES ('0000000548', '像鱼', 'lrW4RbcAKUrN6-ShBbEPguLOfLKM', '王贰浪', 'FvHv66fR7jhA79Zh50A5mo2RUram', 'lrW4RbcAKUrN6-ShBbEPguLOfLKM', '4565412', 'audio/mpeg', '1567757699');
INSERT INTO `ek_common_music` VALUES ('0000000549', '安河桥（Cover 宋冬野）', 'luCU0YjBB1vx7Ppa1jTdi-H2gIE4', '燕子姐姐弹吉他', 'Fn_O2vMsojScUL2ZiL1SsD8ZiKDz', 'luCU0YjBB1vx7Ppa1jTdi-H2gIE4', '9063489', 'audio/mpeg', '1567757720');
INSERT INTO `ek_common_music` VALUES ('0000000550', '安河桥（Cover 宋冬野）', 'lkaIxRbR7VDtssxoAtkZobT12AYa', '瘫君Tansy,阿北烧酒', 'FgVbZF_HF5RlvslWJV77UJ4-aUqq', 'lkaIxRbR7VDtssxoAtkZobT12AYa', '10263031', 'audio/mpeg', '1567757726');
INSERT INTO `ek_common_music` VALUES ('0000000551', 'Lost Rivers', 'lq5zrtMOfWFl1ZNGQPiRd2wXZWMG', 'Sainkho Namtchylak', 'FiWyeYGz9UPOMJOp5BE_Vh5xEE22', 'lq5zrtMOfWFl1ZNGQPiRd2wXZWMG', '17540746', 'audio/mpeg', '1567757827');
INSERT INTO `ek_common_music` VALUES ('0000000552', 'White Food', 'lq7K3EkSGiF0J1DuNsmWp3Wr12ST', 'Sainkho Namtchylak', 'FiWyeYGz9UPOMJOp5BE_Vh5xEE22', 'lq7K3EkSGiF0J1DuNsmWp3Wr12ST', '15574248', 'audio/mpeg', '1567757831');
INSERT INTO `ek_common_music` VALUES ('0000000553', 'Night Birds', 'loy6N7QRTSRQp_mjfl-9PQmvbFRk', 'Sainkho Namtchylak', 'FiWyeYGz9UPOMJOp5BE_Vh5xEE22', 'loy6N7QRTSRQp_mjfl-9PQmvbFRk', '17022476', 'audio/mpeg', '1567757841');
INSERT INTO `ek_common_music` VALUES ('0000000554', 'Early Steps', 'lscuNHwpprVnssYSlYfBQuEn4qoH', 'Sainkho Namtchylak', 'FiWyeYGz9UPOMJOp5BE_Vh5xEE22', 'lscuNHwpprVnssYSlYfBQuEn4qoH', '15215848', 'audio/mpeg', '1567757845');
INSERT INTO `ek_common_music` VALUES ('0000000555', 'Cschai-Su', 'lqiKIh75wqK1cThoYJf9YNJ_Fvk-', 'Sainkho Namtchylak', 'FiWyeYGz9UPOMJOp5BE_Vh5xEE22', 'lqiKIh75wqK1cThoYJf9YNJ_Fvk-', '13075897', 'audio/mpeg', '1567757850');
INSERT INTO `ek_common_music` VALUES ('0000000556', 'Tovarishi', 'lo41B8RsY2b9HAG7YIQ35Wdck-6_', 'Sainkho Namtchylak', 'FiWyeYGz9UPOMJOp5BE_Vh5xEE22', 'lo41B8RsY2b9HAG7YIQ35Wdck-6_', '16610787', 'audio/mpeg', '1567757854');
INSERT INTO `ek_common_music` VALUES ('0000000557', 'Ach So (Dedicated to Women)', 'lrn-WMw06GkzR9E2FjdrXi9Ls8MX', 'Sainkho Namtchylak', 'FiWyeYGz9UPOMJOp5BE_Vh5xEE22', 'lrn-WMw06GkzR9E2FjdrXi9Ls8MX', '12651668', 'audio/mpeg', '1567757861');
INSERT INTO `ek_common_music` VALUES ('0000000558', 'Houwa', 'lqAp0Zoyc_J4MYNZ-NUmuhrv9enw', 'Sainkho Namtchylak', 'FiWyeYGz9UPOMJOp5BE_Vh5xEE22', 'lqAp0Zoyc_J4MYNZ-NUmuhrv9enw', '13191880', 'audio/mpeg', '1567757865');
INSERT INTO `ek_common_music` VALUES ('0000000559', 'Long Continuum', 'lgOk-hSQengkqUYoI5qMLg0Y2f8h', 'Sainkho Namtchylak', 'FiWyeYGz9UPOMJOp5BE_Vh5xEE22', 'lgOk-hSQengkqUYoI5qMLg0Y2f8h', '8362362', 'audio/mpeg', '1567757867');
INSERT INTO `ek_common_music` VALUES ('0000000560', 'Tundra und Taiga', 'll7IgF3cxI1-HE1MCfyBKg94fNVc', 'Sainkho Namtchylak', 'FiWyeYGz9UPOMJOp5BE_Vh5xEE22', 'll7IgF3cxI1-HE1MCfyBKg94fNVc', '16042362', 'audio/mpeg', '1567757871');
INSERT INTO `ek_common_music` VALUES ('0000000561', 'Memory, No. 1', 'ltXu1-9gd2jyeZ6aoZzApvsmyoL_', 'Sainkho Namtchylak', 'FiWyeYGz9UPOMJOp5BE_Vh5xEE22', 'ltXu1-9gd2jyeZ6aoZzApvsmyoL_', '9838803', 'audio/mpeg', '1567757875');
INSERT INTO `ek_common_music` VALUES ('0000000562', 'Dream of Death', 'ltZvFE9kjC5n_AkxIaYbG1HbtY-d', 'Sainkho Namtchylak', 'FiWyeYGz9UPOMJOp5BE_Vh5xEE22', 'ltZvFE9kjC5n_AkxIaYbG1HbtY-d', '15191815', 'audio/mpeg', '1567757879');
INSERT INTO `ek_common_music` VALUES ('0000000563', '像鱼（Cover：王贰浪）', 'lu68dgNv9oCjSARsITn4RI568TAb', '杜宣达达达', 'FtxBeRbxDdZOS7ZLY34WFne4Ytpr', 'lu68dgNv9oCjSARsITn4RI568TAb', '11452125', 'audio/mpeg', '1578214799');
INSERT INTO `ek_common_music` VALUES ('0000000564', '像鱼（Cover：王贰浪）', 'li0uIIZ3wreKYG_S8ezBbbOoxkHR', '杭珂', 'FmQmshFdnSjsBdd-DU6qNvGNDFko', 'li0uIIZ3wreKYG_S8ezBbbOoxkHR', '11377938', 'audio/mpeg', '1578214802');
INSERT INTO `ek_common_music` VALUES ('0000000565', '像鱼（Cover：王贰浪）', 'lq09pElg5Cdaq721c_PD7P_Z_MtB', '花花一点都不甜呐', 'FuxuKgmHg90hJJN9Nq_SY70vtkS_', 'lq09pElg5Cdaq721c_PD7P_Z_MtB', '11411565', 'audio/mpeg', '1578214803');
INSERT INTO `ek_common_music` VALUES ('0000000566', '像鱼（Cover：王贰浪）', 'lnOaWwH89wy7_EH76ti3y3ln3VM7', '陈阳', 'FmK_ZoGRv5HhXPTAAk_l82yt-HXo', 'lnOaWwH89wy7_EH76ti3y3ln3VM7', '7034297', 'audio/mpeg', '1578214805');
INSERT INTO `ek_common_music` VALUES ('0000000567', '像鱼（Cover：王贰浪）', 'lkAO8s6SQnE1MEXp-PRcuOz1MKG8', '占二曦', 'FkPhm4qUlboamCPi7bwbUQfLlXne', 'lkAO8s6SQnE1MEXp-PRcuOz1MKG8', '11409285', 'audio/mpeg', '1578214807');
INSERT INTO `ek_common_music` VALUES ('0000000568', '像鱼（Cover：王贰浪）', 'lhqdY0ZR08sQzDaKegFxpuwtMR_J', '刘初寻 (二逗)', 'FivsFB2N-Sk54UZCWUV6aucGcMlc', 'lhqdY0ZR08sQzDaKegFxpuwtMR_J', '11302705', 'audio/mpeg', '1578214809');
INSERT INTO `ek_common_music` VALUES ('0000000569', '像鱼（Cover：王贰浪）', 'lrwH7D7eF5exIc-9HR3ibEindJsF', '陈八斤', 'FpuopAhaZqBSyEv8U94oMKscWsVO', 'lrwH7D7eF5exIc-9HR3ibEindJsF', '11410605', 'audio/mpeg', '1578214811');
INSERT INTO `ek_common_music` VALUES ('0000000570', '坠落星空（Cover：DJ-A.Yang）', 'lgdaLgem6fWPjB2Hi_Bq7BWe12Ih', '杜宣达达达,王尔康', 'FiNzJXixOqt30pbyU5SkTaPsvsAN', 'lgdaLgem6fWPjB2Hi_Bq7BWe12Ih', '9492942', 'audio/mpeg', '1578214814');
INSERT INTO `ek_common_music` VALUES ('0000000571', '七月的风八月的雨（Cover：A123抬头看）', 'lgLbRMhf8K44u1R3agJrorC8lvEW', '杜宣达达达,王尔康', 'Fk8kw8Je4xu5Z7V9Q3ePITmFrsA_', 'lgLbRMhf8K44u1R3agJrorC8lvEW', '6879652', 'audio/mpeg', '1578214815');
INSERT INTO `ek_common_music` VALUES ('0000000572', '像鱼（Cover：王贰浪）', 'll-ZCRhyOw1uZJG6w5JEuzKOiqCz', 'M.k', 'FpaoBhv6gtYEMZecrDfe9PfbOUCe', 'll-ZCRhyOw1uZJG6w5JEuzKOiqCz', '11411374', 'audio/mpeg', '1578214817');
INSERT INTO `ek_common_music` VALUES ('0000000573', '温柔（Cover：五月天）', 'lp6fFITB4eflVJhV5YyF9RHAPUB7', '杜宣达达达', 'FqP0LlBOmoaerPjSwiMCB9RmCBWe', 'lp6fFITB4eflVJhV5YyF9RHAPUB7', '10405138', 'audio/mpeg', '1578214819');
INSERT INTO `ek_common_music` VALUES ('0000000574', '错位', 'Fgg1ZPmvRgtxGPoSR9SyhZJ2stSb', '南铃子', 'Fga1i5_SlA84ijCelNbtNKJgt8p3', 'Fgg1ZPmvRgtxGPoSR9SyhZJ2stSb', '3735763', 'audio/mpeg', '1578571009');
INSERT INTO `ek_common_music` VALUES ('0000000575', '错位 (伴奏)', 'FgZRd2l6xzua_nE14eFR6sYoi7aZ', '南铃子', 'Fga1i5_SlA84ijCelNbtNKJgt8p3', 'FgZRd2l6xzua_nE14eFR6sYoi7aZ', '3735763', 'audio/mpeg', '1578571010');
INSERT INTO `ek_common_music` VALUES ('0000000576', '把孤独当做晚餐 (抖音女声版)', 'FrQrc3ugp0Yw6IJ0oGdhCWw2kxjU', '南铃子', 'FkqzmUyhbnf-jaNiRWbU6xkN_L7l', 'FrQrc3ugp0Yw6IJ0oGdhCWw2kxjU', '2502957', 'audio/mpeg', '1578571011');
INSERT INTO `ek_common_music` VALUES ('0000000577', '百因必有果', 'FhGtMMQZzlyhf3A9cdH1_IRAqT7W', '南铃子', 'FhQijWPODAxuoRRViYdFwhFL3Oxn', 'FhGtMMQZzlyhf3A9cdH1_IRAqT7W', '3649245', 'audio/mpeg', '1578571011');
INSERT INTO `ek_common_music` VALUES ('0000000578', '下山', 'FjLfoaejIogpj2wj_PtlkPe4wYAM', '南铃子', 'Fl8LPdfyeb5N8jFa4fV0rHIbwEcM', 'FjLfoaejIogpj2wj_PtlkPe4wYAM', '2738094', 'audio/mpeg', '1578571012');
INSERT INTO `ek_common_music` VALUES ('0000000579', '台下人走过', 'FoPzHLDi4K7QPTZoN65GGW79yMZm', '南铃子', 'FvdxJ6JZneLy9r5900XKMT97rJ3h', 'FoPzHLDi4K7QPTZoN65GGW79yMZm', '3073197', 'audio/mpeg', '1578571014');
INSERT INTO `ek_common_music` VALUES ('0000000580', '新年快乐2018', 'lrqZJo3OmDqjh_dXLhr6t01mhlcW', '刘雨Key,南铃子,九婴,沈丽颖,曾嘉颖,林佳凝,贱小翊,安', 'FuLZnLDpicdnzly7ZcmSiuiMnz5r', 'lrqZJo3OmDqjh_dXLhr6t01mhlcW', '8168011', 'audio/mpeg', '1578571015');
INSERT INTO `ek_common_music` VALUES ('0000000581', '错位', 'liUpj-hD1BU6cCk3NWM99JdXuud6', '白雪', 'Frr1ojdrKgSJ4GP72ZVimtBGSKju', 'liUpj-hD1BU6cCk3NWM99JdXuud6', '4508986', 'audio/mpeg', '1578571016');
INSERT INTO `ek_common_music` VALUES ('0000000582', '刺心', 'FpXO6GQTcOQyrkVfXbNjd8pbyB9W', '南铃子', 'Fl8MYuHnAkbNMdKSLVZjWfOujgjP', 'FpXO6GQTcOQyrkVfXbNjd8pbyB9W', '3301921', 'audio/mpeg', '1578571017');
INSERT INTO `ek_common_music` VALUES ('0000000583', '悬溺 (抖音版)', 'Fj-3iWkxq6SnEvilksjlvTDxd8wC', '南铃子', 'FuCXz9U5bTlqPHYyaO2pj2V0flgX', 'Fj-3iWkxq6SnEvilksjlvTDxd8wC', '657075', 'audio/mpeg', '1578571018');
INSERT INTO `ek_common_music` VALUES ('0000000584', '世间美好与你环环相扣 (伴奏)', 'lp7AOM8O7EyUez-01AyhlsL2V33M', '南铃子', 'FirEJ-kIhAL6ShaDH7mYtPJvqntM', 'lp7AOM8O7EyUez-01AyhlsL2V33M', '4987968', 'audio/mpeg', '1578571019');
INSERT INTO `ek_common_music` VALUES ('0000000585', '亲爱的热爱的', 'Fj0T-rLQN2f4vIQ6xDf6-jDdeM3B', '南铃子', 'FsT5QS7hYPXoTYOKjUvqFAtudo9m', 'Fj0T-rLQN2f4vIQ6xDf6-jDdeM3B', '3020973', 'audio/mpeg', '1578571020');
INSERT INTO `ek_common_music` VALUES ('0000000586', 'Diamonds', 'Fp3OaHpxD3qiaH0WTDJcqu4Y1w4n', 'Rihanna', 'Ft_EIGi-ABM-qAjLjCr9enLtz7OI', 'Fp3OaHpxD3qiaH0WTDJcqu4Y1w4n', '3605000', 'audio/mpeg', '1579113746');
INSERT INTO `ek_common_music` VALUES ('0000000587', 'RIHANNA - Diamonds（YahikoNy remix）', 'loJJ1LGvQYS653xQ6v2RKwEJEBVA', 'Ｙａｈｉｋｏｎｙ', 'Fmvt-rLY4LXPceJY45N_A8xfK6cb', 'loJJ1LGvQYS653xQ6v2RKwEJEBVA', '10354982', 'audio/mpeg', '1579113747');
INSERT INTO `ek_common_music` VALUES ('0000000588', 'Diamonds(Remix)(feat. Kanye West)', 'lreTFrXjX7iBV1-OjZ0Io2nsYjvL', 'Rihanna', 'FqhH6tH1IKhO5UO1e6xizW2WB-kR', 'lreTFrXjX7iBV1-OjZ0Io2nsYjvL', '4616097', 'audio/mpeg', '1579113748');
INSERT INTO `ek_common_music` VALUES ('0000000589', 'Diamonds (Dave Aude 100 Edit)', 'FgYVk_7w6b2kxw_ZlRsIylU4LfNO', 'Rihanna', 'Fnw1BQ5B-cA77FnfFHRmx66MRrbv', 'FgYVk_7w6b2kxw_ZlRsIylU4LfNO', '3490092', 'audio/mpeg', '1579113749');
INSERT INTO `ek_common_music` VALUES ('0000000590', 'Diamonds (Congorock Remix)', 'llIfSASh7EjCTsHwDDcNiEqr4awF', 'Rihanna', 'Fnw1BQ5B-cA77FnfFHRmx66MRrbv', 'llIfSASh7EjCTsHwDDcNiEqr4awF', '4932884', 'audio/mpeg', '1579113751');
INSERT INTO `ek_common_music` VALUES ('0000000591', 'Diamonds (Jacob Plant Dubstep Remix)', 'FvGQEqASiN_GHYV1FwbKNUlyWGB7', 'Rihanna', 'Fnw1BQ5B-cA77FnfFHRmx66MRrbv', 'FvGQEqASiN_GHYV1FwbKNUlyWGB7', '3820704', 'audio/mpeg', '1579113752');
INSERT INTO `ek_common_music` VALUES ('0000000592', 'Diamonds (The Bimbo Jones Downtempo)', 'Ft_z0ab-5eaeeC9dgxmQtPwTVmig', 'Rihanna', 'Fnw1BQ5B-cA77FnfFHRmx66MRrbv', 'Ft_z0ab-5eaeeC9dgxmQtPwTVmig', '3109338', 'audio/mpeg', '1579113752');
INSERT INTO `ek_common_music` VALUES ('0000000593', 'Diamonds (The Bimbo Jones Vocal Edit)', 'FkbPD9WU-DK3r5HNIAVOpunok96c', 'Rihanna', 'Fnw1BQ5B-cA77FnfFHRmx66MRrbv', 'FkbPD9WU-DK3r5HNIAVOpunok96c', '3111847', 'audio/mpeg', '1579113754');
INSERT INTO `ek_common_music` VALUES ('0000000594', '知足', 'FjrYgIusoDGmON-Dm0LJPXLvd0hO', '五月天', 'FirTnTXIA626tyyMbuj50uJ8hB7S', 'FjrYgIusoDGmON-Dm0LJPXLvd0hO', '4108163', 'audio/mpeg', '1579538097');
INSERT INTO `ek_common_music` VALUES ('0000000595', '知足 cover五月天', 'lu89uC3dRWGM1kGP2ykImIceNXuB', '凉穗', 'FrRIn3ZvnKY0fG_IkL2MdXJin2x7', 'lu89uC3dRWGM1kGP2ykImIceNXuB', '10195113', 'audio/mpeg', '1579538099');
INSERT INTO `ek_common_music` VALUES ('0000000596', '知足  钢琴曲（Cover：五月天）Jason Piano Cover', 'ltw4WBdfP0Aj98UQvLq351Xjme6t', 'Jason Piano', 'Fo8B1wecF2gGsBS-MIStFG_nD7YG', 'ltw4WBdfP0Aj98UQvLq351Xjme6t', '9380093', 'audio/mpeg', '1579538100');
INSERT INTO `ek_common_music` VALUES ('0000000597', '知足 - 徐薇（.feat.龚林）（Cover 五月天）', 'lvpMgwP3trP57nGuKGcgT6PNi0Pr', '徐薇', 'FitmG94K9aQFxJ3oEr6L6aNeuP8G', 'lvpMgwP3trP57nGuKGcgT6PNi0Pr', '10283929', 'audio/mpeg', '1579538102');
INSERT INTO `ek_common_music` VALUES ('0000000598', '【钢琴】知足（Cover 五月天）', 'lpOLRS1RCUTViuGyo3OFpdGR2KBo', '昼夜', 'Fs110GYs1dXfFxTPqwATRJC_5BwC', 'lpOLRS1RCUTViuGyo3OFpdGR2KBo', '8079195', 'audio/mpeg', '1579538103');
INSERT INTO `ek_common_music` VALUES ('0000000599', '知足 (指弹版)（Cover：五月天）', 'lux6oniw1rLcRTmjG2sl4r2swPWp', '汤文杰', 'FjHNJ9K07gGHDrundt646_CoJmGD', 'lux6oniw1rLcRTmjG2sl4r2swPWp', '8997660', 'audio/mpeg', '1579538107');
INSERT INTO `ek_common_music` VALUES ('0000000600', '知足 (Live)', 'ljEPBHHI8PfkOsqs1SgZw41gcWRH', '苏运莹', 'Fo5QfYWOK-qSyIiIOAuvAdja-KXD', 'ljEPBHHI8PfkOsqs1SgZw41gcWRH', '4876372', 'audio/mpeg', '1579538107');
INSERT INTO `ek_common_music` VALUES ('0000000601', '知足 （纯音乐改编版）（Cover：五月天）', 'ls05gwsLrTb_uqKgwX99LLUtFosC', '桑子', 'FiTZHBNwhZ0tPYrauOYcPN0d8y13', 'ls05gwsLrTb_uqKgwX99LLUtFosC', '9481965', 'audio/mpeg', '1579538110');
INSERT INTO `ek_common_music` VALUES ('0000000602', '知足 弹唱（Cover：五月天）', 'lhes25sy4E4ymcQBYxKnZsWqRhzX', '九哥', 'FnbV8N-LbtjlNSZHBvXmrtjny1Nj', 'lhes25sy4E4ymcQBYxKnZsWqRhzX', '6576631', 'audio/mpeg', '1579538112');
INSERT INTO `ek_common_music` VALUES ('0000000603', '布拉格广场', 'lvaemdYl7CeX2QkZTMbg4q5pPulZ', '蔡依林,周杰伦', 'Ft4Z2PWmVJjdlyxsCCh0Ck5p_aTt', 'lvaemdYl7CeX2QkZTMbg4q5pPulZ', '4714716', 'audio/mpeg', '1589779344');
INSERT INTO `ek_common_music` VALUES ('0000000604', '布拉格广场', 'lpEkYAFAaEzDhl4AFRiGox4lLGFz', '蔡依林', 'FgKzp4Bz-3KzeIE3MnFY2BWBBPyj', 'lpEkYAFAaEzDhl4AFRiGox4lLGFz', '4681604', 'audio/mpeg', '1589779345');
INSERT INTO `ek_common_music` VALUES ('0000000605', '假如', 'lga0KuQZ911z5Pfe4-0RR4C59fGD', 'BOBO', 'Fk5cJhlMP1rDU8ev50IP4SfABE_u', 'lga0KuQZ911z5Pfe4-0RR4C59fGD', '4389869', 'audio/mpeg', '1609692419');
INSERT INTO `ek_common_music` VALUES ('0000000606', '[全职·双花]没有假如（Cover BOBO）', 'lsyFP1MaphzzHds60kpNT08xxDn2', '何夏兴', 'FrwJXHlqnLzOeaNs7Vbb54yAWi_P', 'lsyFP1MaphzzHds60kpNT08xxDn2', '11045660', 'audio/mpeg', '1609692421');
INSERT INTO `ek_common_music` VALUES ('0000000607', '假如（翻自 BOBO）', 'lj2_fvLbPxYxSMliJ0rxm0NNKeci', '高磊', 'Fu1R6QbyyO6z1HCiI9bM87lfXLkL', 'lj2_fvLbPxYxSMliJ0rxm0NNKeci', '10963113', 'audio/mpeg', '1609692424');
INSERT INTO `ek_common_music` VALUES ('0000000608', '假如', 'FtrXZVH-Vf6FPeAH3RHGqX39Im6-', 'JJ PLUS', 'FrELAaa6c3yKAfa-sG5TEWYjQXx7', 'FtrXZVH-Vf6FPeAH3RHGqX39Im6-', '3068282', 'audio/mpeg;charset=UTF-8', '1609692425');
INSERT INTO `ek_common_music` VALUES ('0000000609', '假如', 'FiPRaNTNFZipz3kjbbi2JnMbuZ-E', '易夕', 'FqrhgQXTj-j2HJk3gT_b5gzu_aSr', 'FiPRaNTNFZipz3kjbbi2JnMbuZ-E', '2684177', 'audio/mpeg;charset=UTF-8', '1609692425');
INSERT INTO `ek_common_music` VALUES ('0000000610', '假如', 'ljFgGREgtjffPUm-7a4JEmvzbvUy', '杜丽莎', 'FgjuUDrtV5QKd4UUEXybrIWRPjnt', 'ljFgGREgtjffPUm-7a4JEmvzbvUy', '4801767', 'audio/mpeg', '1609692427');
INSERT INTO `ek_common_music` VALUES ('0000000611', '假如', 'FiqRn2cFdguyIz2XVcVMRZZaZxwp', '刘森林', 'FqcokBdo6whhklUZSLm39BoKrMik', 'FiqRn2cFdguyIz2XVcVMRZZaZxwp', '3901275', 'audio/mpeg', '1609692428');
INSERT INTO `ek_common_music` VALUES ('0000000612', '假如', 'lntM38txTSbfvoihZXQAzZYflgOK', '孙伯纶', 'FkKSEi0ROh2Kzd0C4xDRU8BOSlLf', 'lntM38txTSbfvoihZXQAzZYflgOK', '4327174', 'text/plain; charset=utf-8', '1609692429');
INSERT INTO `ek_common_music` VALUES ('0000000613', '假如', 'ltK5Miq1uVfsUhIvfnogJJA8nIY8', '马闯', 'FpyzaKe5Qn4gvh8_hIqow5-ma-dN', 'ltK5Miq1uVfsUhIvfnogJJA8nIY8', '10869072', 'audio/mpeg', '1609692430');
INSERT INTO `ek_common_music` VALUES ('0000000614', '假如', 'lrcv2Wp8KPd0b2WSZX_pAMBrSTjm', '张蔷', 'FqSKGvAAnLxB7-KjXLwjlK29tTXU', 'lrcv2Wp8KPd0b2WSZX_pAMBrSTjm', '8021725', 'audio/mpeg', '1609692432');
INSERT INTO `ek_common_music` VALUES ('0000000615', '假如', 'Fq0GrnNoyRhxfOYxgah96jl1goYj', '谭咏麟', 'Fv_fHFmWr2UMYj-Pa_bmhuPK3uUd', 'Fq0GrnNoyRhxfOYxgah96jl1goYj', '4114016', 'audio/mpeg', '1609692433');
INSERT INTO `ek_common_music` VALUES ('0000000616', '我们的无奈', 'Fhl1-7lUsaMS8wE5MEiRpsBtsHaH', '山野', 'FhJ29OXTykIaR1IchIpkqFJZhkh7', 'Fhl1-7lUsaMS8wE5MEiRpsBtsHaH', '3669791', 'audio/mpeg', '1609765421');
INSERT INTO `ek_common_music` VALUES ('0000000617', '兄弟情', 'FnC5PHqrrRqX_qSoAw4mFM3G2X--', '胡伟立', 'FhlIdxjkuZFbaDyHH_MKE-9Zx1lj', 'FnC5PHqrrRqX_qSoAw4mFM3G2X--', '2056967', 'audio/mpeg', '1609771493');
INSERT INTO `ek_common_music` VALUES ('0000000618', '悲情', 'FmaFWWOgj0fePykIkVS3pJ66A5np', '胡伟立', 'Fkr-iuNcr4BmtKYVG48TUhmf4Ghz', 'FmaFWWOgj0fePykIkVS3pJ66A5np', '1081512', 'audio/mpeg', '1609771494');
INSERT INTO `ek_common_music` VALUES ('0000000619', '悲泣', 'Frt6bA4OzAH44HEmRQrP7io_LYpv', '胡伟立', 'FuclQIkpR8Na-cGAHt9ioV-pxNvg', 'Frt6bA4OzAH44HEmRQrP7io_LYpv', '2696297', 'audio/mpeg', '1609771494');
INSERT INTO `ek_common_music` VALUES ('0000000620', '忆情', 'lr9tiEsFv0UmvriinEhbuGM35PV-', '胡伟立', 'Fpp9_KflwUA6tqitCKY8iXtElXhV', 'lr9tiEsFv0UmvriinEhbuGM35PV-', '5081382', 'audio/mpeg;charset=UTF-8', '1609771495');
INSERT INTO `ek_common_music` VALUES ('0000000621', '豪情', 'FtA6Xr71nIeA-bjpqanfztM_S7Pd', '胡伟立', 'FnC57blIRvt2CGo2SKvAs_b_iZ_v', 'FtA6Xr71nIeA-bjpqanfztM_S7Pd', '1245143', 'text/plain; charset=utf-8', '1609771496');
INSERT INTO `ek_common_music` VALUES ('0000000622', '悲歌', 'lhpm3McWevEo3lHltXFFPNxOru3y', '胡伟立', 'Fl5VYj7Eo8kxR_AUlBj-idV8ezzx', 'lhpm3McWevEo3lHltXFFPNxOru3y', '4643151', 'audio/mpeg', '1609771497');
INSERT INTO `ek_common_music` VALUES ('0000000623', '青天', 'Fqq6ZI6xrh1OdSh-nVz66RPO_evQ', '胡伟立', 'Fl5VYj7Eo8kxR_AUlBj-idV8ezzx', 'Fqq6ZI6xrh1OdSh-nVz66RPO_evQ', '1783056', 'audio/mpeg', '1609771498');
INSERT INTO `ek_common_music` VALUES ('0000000624', '母子情', 'lr4R0-aLurRmj7OAUERl268U3HZw', '胡伟立', 'FuclQIkpR8Na-cGAHt9ioV-pxNvg', 'lr4R0-aLurRmj7OAUERl268U3HZw', '4738028', 'application/octet-stream', '1609771499');
INSERT INTO `ek_common_music` VALUES ('0000000625', '抒情主题', 'FnnQmRIHIUYi9rLRfH3MViay_7yb', '胡伟立', 'Fncg6MwZcsGMNFD1xzLHZZO8zl3L', 'FnnQmRIHIUYi9rLRfH3MViay_7yb', '1552446', 'audio/mpeg', '1609771501');
INSERT INTO `ek_common_music` VALUES ('0000000626', '情意绵绵', 'Fsp51s_nEcYLkzhd4QonhYDZCv4c', '胡伟立', 'Fr3shOP6nbqYZLkPiii2sxv7PLcg', 'Fsp51s_nEcYLkzhd4QonhYDZCv4c', '2331093', 'text/plain; charset=utf-8', '1609771501');
INSERT INTO `ek_common_music` VALUES ('0000000627', '市集', 'Fivo4X_xyg3tMH2MENtNKgJBtxeM', '胡伟立', 'ForlhMfB5JC0TF96BtFbq5NkZum4', 'Fivo4X_xyg3tMH2MENtNKgJBtxeM', '3756501', 'audio/mpeg', '1609771503');
INSERT INTO `ek_common_music` VALUES ('0000000628', '偷功', 'Fg3qAXac5srJNJHzVCGR5KhhE1pq', '胡伟立', 'Fl8t-z79ulHXsw_DSB3P_7lVeqy1', 'Fg3qAXac5srJNJHzVCGR5KhhE1pq', '3882885', 'audio/mpeg;charset=UTF-8', '1609771503');
INSERT INTO `ek_common_music` VALUES ('0000000629', '野孩子', 'Frg5ArPxbm9J3TmUo-AF5s_x2OYG', '杨千嬅', 'FsF0Nr0bhmjDCIM4kVJQbQ-QrVbR', 'Frg5ArPxbm9J3TmUo-AF5s_x2OYG', '3590731', 'audio/mpeg', '1610805810');
INSERT INTO `ek_common_music` VALUES ('0000000630', '杨千嬅-野孩子抖音（啊游ii remix）', 'lkGG7GV80mZckX4AbMJfWwPF3eUK', '游一', 'Fji0Sb4yQtJONtUz1m4vWh42h8sF', 'lkGG7GV80mZckX4AbMJfWwPF3eUK', '9459505', 'audio/mpeg', '1610805812');
INSERT INTO `ek_common_music` VALUES ('0000000631', '野孩子 (男生版) (翻自 杨千嬅) ', 'llAB8bdwMEqejuNtqJuMfLnZRsEq', '国武', 'FnPr0fwX95ydtvpflA-IC13t_c7P', 'llAB8bdwMEqejuNtqJuMfLnZRsEq', '9634605', 'audio/mpeg', '1610805813');
INSERT INTO `ek_common_music` VALUES ('0000000632', '野孩子（翻自 杨千嬅） ', 'FrxM1gV8aClH1660_XctYyWK1sl3', '于梓贝', 'FhGfxf18B7m4ykvJsTUfEZhZKe1s', 'FrxM1gV8aClH1660_XctYyWK1sl3', '3872301', 'audio/mpeg;charset=UTF-8', '1610805815');
INSERT INTO `ek_common_music` VALUES ('0000000633', '野孩子（翻自 杨千嬅） ', 'lil4jAmCeneXgR4fRaa-cXKKSQYb', 'kie音乐', 'FuE32L0VaUfbjacSCfEqgXl7TRet', 'lil4jAmCeneXgR4fRaa-cXKKSQYb', '4528631', 'text/plain; charset=utf-8', '1610805816');
INSERT INTO `ek_common_music` VALUES ('0000000634', '杨千嬅-野孩子dj（蜡笔没了小新 remix）', 'lmz-Wp_Phw0ZLMeBAB9q0UHFLkW2', '蜡笔没了小新', 'Fm8qRIlrydvA5PvSLKg6N5AgR6IE', 'lmz-Wp_Phw0ZLMeBAB9q0UHFLkW2', '11803211', 'audio/mpeg;charset=UTF-8', '1610805817');
INSERT INTO `ek_common_music` VALUES ('0000000635', '野孩子（翻自 杨千嬅） ', 'FjgKRiur1uerh8tKW7LJh7_k0pB_', '国武', 'Fh6cvzBfkEmKzBtWGy33zUX2k6D4', 'FjgKRiur1uerh8tKW7LJh7_k0pB_', '1537005', 'text/plain; charset=utf-8', '1610805818');
INSERT INTO `ek_common_music` VALUES ('0000000636', '野孩子（cover-杨千嬅）（翻自 杨千嬅） ', 'lrTrE2CcN9B5oyi_Mk3SW9m131EO', '林一', 'FhtbMheqk8JuUAob1J2JmvbhOXq_', 'lrTrE2CcN9B5oyi_Mk3SW9m131EO', '8143978', 'text/plain; charset=utf-8', '1610805820');
INSERT INTO `ek_common_music` VALUES ('0000000637', '野孩子（翻自 杨千嬅）', 'lmnl2to1TIq6f0sfpMmDOaHTt9ES', '大筠儿', 'FtVCivMTtxQC9jSwd2G9tUHez4C0', 'lmnl2to1TIq6f0sfpMmDOaHTt9ES', '9682068', 'audio/mpeg;charset=UTF-8', '1610805822');
INSERT INTO `ek_common_music` VALUES ('0000000638', '野孩子（翻自 杨千嬅）', 'FiiUi30g5HxdC1Cta8nGh-Jmbm0m', '下饭同学', 'Fga62FQgphDQq0_F9MRl1oa1sl2d', 'FiiUi30g5HxdC1Cta8nGh-Jmbm0m', '3108615', 'audio/mpeg;charset=UTF-8', '1610805823');
INSERT INTO `ek_common_music` VALUES ('0000000639', '野孩子（翻自 杨千嬅）', 'lntFR03rQZzbPKXIOS694rlSoSzl', 'Kenny', 'FsAY-dJaymMXDF3hkq1wPI20tF7G', 'lntFR03rQZzbPKXIOS694rlSoSzl', '9709236', 'audio/mpeg;charset=UTF-8', '1610805825');
INSERT INTO `ek_common_music` VALUES ('0000000640', '野孩子（吉他弹唱）（翻自 杨千嬅）', 'Fp0UNprwh1ilIBPLw8cN6FwUkRvl', '李佳龙Jog', 'Fjsobw7fm71nH_gd99fnDSb8rM7t', 'Fp0UNprwh1ilIBPLw8cN6FwUkRvl', '1592468', 'audio/mpeg;charset=UTF-8', '1610805826');
INSERT INTO `ek_common_music` VALUES ('0000000641', '可惜我是水瓶座', 'FjDZvUiGk8bAo0cQr71pp4UjquxN', '杨千嬅', 'FruuSNsfDZxcX7DTkSEDmiGatWea', 'FjDZvUiGk8bAo0cQr71pp4UjquxN', '3467850', 'audio/mpeg', '1610805858');
INSERT INTO `ek_common_music` VALUES ('0000000642', '可惜我是水瓶座（翻自 杨千嬅）', 'lh6eIbJFIdR3KyPKByXbIpsi0uOX', 'Xreal肖祖滨', 'FpuRJJrsKkA-K_0oxnVnKVt_DcPc', 'lh6eIbJFIdR3KyPKByXbIpsi0uOX', '9880599', 'text/plain; charset=utf-8', '1610805861');
INSERT INTO `ek_common_music` VALUES ('0000000643', '可惜我是水瓶座（翻自 杨千嬅）', 'lgfyEfZI6mzQy7yObW5BTNNwS6XL', '陶与乐', 'FtFpxYE8RgXpsSAd_irmJmW8Nn6i', 'lgfyEfZI6mzQy7yObW5BTNNwS6XL', '8589105', 'audio/mpeg;charset=UTF-8', '1610805863');
INSERT INTO `ek_common_music` VALUES ('0000000644', '可惜我是水瓶座（翻自 杨千嬅）', 'lilXTCIPhfvH9D4UnzRuSdY2bj35', '小熊KK', 'Fpxi3IBRZG2btDBVDC7z8d78JPKc', 'lilXTCIPhfvH9D4UnzRuSdY2bj35', '9901485', 'audio/mpeg', '1610805871');
INSERT INTO `ek_common_music` VALUES ('0000000645', '可惜我是水瓶座陈cc（翻自 杨千嬅）', 'lmGgP5QnSie2M-thCn2M1L9m1LRs', '陈cc', 'Fii0zD2RH1bjWYdEeDKF_wRPAwPG', 'lmGgP5QnSie2M-thCn2M1L9m1LRs', '8498199', 'audio/mpeg;charset=UTF-8', '1610805872');
INSERT INTO `ek_common_music` VALUES ('0000000646', '可惜我是水瓶座（翻自 杨千嬅） ', 'liP1QfW7yrRX7ED0UaDgx0eL5gAz', '于梓贝', 'FiBLMbVdOHkmFK34Z7vVmuksYkb_', 'liP1QfW7yrRX7ED0UaDgx0eL5gAz', '8962133', 'audio/mpeg', '1610805874');
INSERT INTO `ek_common_music` VALUES ('0000000647', '可惜我是水瓶座LIVE（翻自 杨千嬅） ', 'luBrZFwRV9dfOCR3oFx1uyfT7NcU', '乐游记乐队', 'Fnx1vY7miAgpFoHC7bG7fsB96lL8', 'luBrZFwRV9dfOCR3oFx1uyfT7NcU', '12731080', 'text/plain; charset=utf-8', '1610805876');
INSERT INTO `ek_common_music` VALUES ('0000000648', '可惜我是水瓶座 Paul Liu钢琴版（Cover 杨千嬅）', 'lhIVyfefyxHOYUNl7e17VzBhC_c8', 'Paul Liu', 'FieFgFo8wRFzYDAeAJvVzKXAd6Dc', 'lhIVyfefyxHOYUNl7e17VzBhC_c8', '8547309', 'application/octet-stream', '1610805879');
INSERT INTO `ek_common_music` VALUES ('0000000649', '可惜我是水瓶座（翻自 杨千嬅） ', 'FimSpx1BZBcuEM_5TWcC7JOBMaww', '小天女', 'FryiLpr63mD75QNftVGQ9L-voTvD', 'FimSpx1BZBcuEM_5TWcC7JOBMaww', '2889187', 'audio/mpeg;charset=UTF-8', '1610805880');
INSERT INTO `ek_common_music` VALUES ('0000000650', '可惜我是水瓶座（翻自 杨千嬅） ', 'lrHl_N14mfgUL9EpMngc0ZlRTEDJ', 'kie音乐', 'Fj3YIoO1xgG0HWcQM4gkHxq3se8e', 'lrHl_N14mfgUL9EpMngc0ZlRTEDJ', '6643505', 'application/octet-stream', '1610805882');
INSERT INTO `ek_common_music` VALUES ('0000000651', '可惜我是水瓶座', 'FsqQ2I-zcqtMYQkF8_NsMF-pwXj8', '杨千嬅,叶雪如（沈青）', 'FqKuzm4VPzanUDGVcigSpbjSHB_-', 'FsqQ2I-zcqtMYQkF8_NsMF-pwXj8', '3101301', 'text/plain; charset=utf-8', '1610805883');
INSERT INTO `ek_common_music` VALUES ('0000000652', '你应该很快乐', 'FrpZBwRNQoPIWbBChtkyD9Us44ka', '虎二', 'FrZQkUq-twn31AgSrUHs9TczlWI5', 'FrpZBwRNQoPIWbBChtkyD9Us44ka', '3360813', 'audio/mpeg', '1610805922');
INSERT INTO `ek_common_music` VALUES ('0000000653', '你应该很快乐（Cover：虎二）', 'liTTCuPQubf6RoQMf1ecSuSf6-Ri', 'tan婷', 'FmlfwBHsG1ugCG65KyznWOE3GsCP', 'liTTCuPQubf6RoQMf1ecSuSf6-Ri', '8274285', 'application/octet-stream', '1610805924');
INSERT INTO `ek_common_music` VALUES ('0000000654', '你应该很快乐（翻自 虎二）', 'lpvPB-fQ4KW-124BveiklwjHkR1_', '是泽叔阿', 'FkUxsekVKuzM68O_Zay1v8o1U4lA', 'lpvPB-fQ4KW-124BveiklwjHkR1_', '8405203', 'audio/mpeg;charset=UTF-8', '1610805924');
INSERT INTO `ek_common_music` VALUES ('0000000655', '你应该很快乐（翻自 虎二）', 'lq93hep1TDzQJe6Zz3Bu_2oM6Loj', '大胜', 'FrTc43uWfwRiZ5lQvwTdRSlmK-ZX', 'lq93hep1TDzQJe6Zz3Bu_2oM6Loj', '8387565', 'audio/mpeg;charset=UTF-8', '1610805926');
INSERT INTO `ek_common_music` VALUES ('0000000656', '你应该很快乐（翻自 虎二）', 'licgBCR0Xn1hZgTm1ZlA4Mm54GMs', '隔壁小潘', 'Fpe-oQuMpLmVWLu16yFD9rl_Rz9a', 'licgBCR0Xn1hZgTm1ZlA4Mm54GMs', '8201325', 'audio/mpeg', '1610805928');
INSERT INTO `ek_common_music` VALUES ('0000000657', '你应该很快乐(抖音版)（翻自 虎二） ', 'FrlCCKgRXFIk_BsFF8s64BTRz9Hd', '王小浪', 'FtiAz0Px__wirXP4O5KX1_gU70Vx', 'FrlCCKgRXFIk_BsFF8s64BTRz9Hd', '3242925', 'audio/mpeg;charset=UTF-8', '1610805928');
INSERT INTO `ek_common_music` VALUES ('0000000658', '你应该很快乐（烟嗓版）（翻自 虎二）', 'lotKUKnPEbWuoKRlv-rtywMb7F_U', '废嗓', 'Fkp5ngknCNYiK0Ihm95PrFS2XV0V', 'lotKUKnPEbWuoKRlv-rtywMb7F_U', '8437595', 'audio/mpeg;charset=UTF-8', '1610805930');
INSERT INTO `ek_common_music` VALUES ('0000000659', '你应该很快乐-伴奏', 'Fqs67T5TVtxbFLw30mEDd53DILLl', '虎二', 'FrZQkUq-twn31AgSrUHs9TczlWI5', 'Fqs67T5TVtxbFLw30mEDd53DILLl', '3360813', 'audio/mpeg', '1610805931');
INSERT INTO `ek_common_music` VALUES ('0000000660', '你应该很快乐（忧郁女声）（翻自 虎二）', 'limSk2OpoBKZFReNpitlweq9wVCt', '陆娇娇', 'Fr8jAETkgvs1RoPXbS3a2NBGekh2', 'limSk2OpoBKZFReNpitlweq9wVCt', '8406248', 'audio/mpeg;charset=UTF-8', '1610805933');
INSERT INTO `ek_common_music` VALUES ('0000000661', '你应该很快乐（翻自 虎二）', 'lp83QHWE49Y3PYpWN1mbGv3Y-LDi', '阡陌', 'FiTWa99gBxABz6BkajiFb-qRmz2p', 'lp83QHWE49Y3PYpWN1mbGv3Y-LDi', '7638765', 'audio/mpeg', '1610805936');
INSERT INTO `ek_common_music` VALUES ('0000000662', '虎二-你应该很快乐（DJ可乐 remix）', 'ltWMAogzxBlUK_bJkZ3t-vLjZmqV', 'DJ可乐', 'Fj_W7H3Jjbjxm5tkXx_HrVrFQ40w', 'ltWMAogzxBlUK_bJkZ3t-vLjZmqV', '14236778', 'audio/mpeg;charset=UTF-8', '1610805938');
INSERT INTO `ek_common_music` VALUES ('0000000663', '你应该很快乐（王荻）（翻自 虎二）', 'lpwsZiYz_EGFADOS3-r1MIGtEXaA', '王荻', 'FmClxfgea5G-2QFg5KJAQ3t-7mnj', 'lpwsZiYz_EGFADOS3-r1MIGtEXaA', '8401965', 'audio/mpeg;charset=UTF-8', '1610805939');

-- ----------------------------
-- Table structure for `ek_common_sponsor`
-- ----------------------------
DROP TABLE IF EXISTS `ek_common_sponsor`;
CREATE TABLE `ek_common_sponsor` (
  `id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '主键',
  `num` int(5) NOT NULL,
  `name` char(50) NOT NULL DEFAULT '' COMMENT '赞赏人',
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '打赏时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ek_common_sponsor
-- ----------------------------

-- ----------------------------
-- Table structure for `ek_common_theme`
-- ----------------------------
DROP TABLE IF EXISTS `ek_common_theme`;
CREATE TABLE `ek_common_theme` (
  `id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` char(50) NOT NULL COMMENT '标题',
  `shortdesc` char(100) NOT NULL DEFAULT '没有描述哦~' COMMENT '简短描述',
  `browse` char(100) NOT NULL DEFAULT '' COMMENT '浏览图',
  `cover` char(100) NOT NULL COMMENT '背景路径',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `update_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ek_common_theme
-- ----------------------------
INSERT INTO `ek_common_theme` VALUES ('00001', '默认主题', '没有描述哦~', 'http://api.bkybj.com/client/image/userbg_browse.jpg', 'http://api.bkybj.com/client/image/userbg.png', '1', '0');
INSERT INTO `ek_common_theme` VALUES ('00002', '多福和稻草人', '没有描述哦~', 'http://api.bkybj.com/client/image/theme01_browse.png', 'http://api.bkybj.com/client/image/theme01.jpg', '1', '0');
INSERT INTO `ek_common_theme` VALUES ('00003', '宁静的天空', '没有描述哦~', 'http://api.bkybj.com/client/image/theme02_browse.png', 'http://api.bkybj.com/client/image/theme02.jpg', '1', '0');
INSERT INTO `ek_common_theme` VALUES ('00004', '小清新', '没有描述哦~', 'http://api.bkybj.com/client/image/theme03_browse.png', 'http://api.bkybj.com/client/image/theme03.jpg', '1', '0');
INSERT INTO `ek_common_theme` VALUES ('00005', '宁静整洁', '没有描述哦~', 'http://api.bkybj.com/client/image/theme04_browse.png', 'http://api.bkybj.com/client/image/theme04.jpg', '1', '0');

-- ----------------------------
-- Table structure for `ek_common_token`
-- ----------------------------
DROP TABLE IF EXISTS `ek_common_token`;
CREATE TABLE `ek_common_token` (
  `uid` int(10) unsigned zerofill NOT NULL COMMENT '用户id',
  `token` char(50) NOT NULL DEFAULT '' COMMENT 'token',
  `time` int(10) NOT NULL COMMENT '时间',
  `type` int(1) NOT NULL DEFAULT '1' COMMENT '类型',
  PRIMARY KEY (`uid`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ek_common_token
-- ----------------------------
INSERT INTO `ek_common_token` VALUES ('0000000001', 'c708205408b183e1c887874aeda6743f', '1617076942', '1');
INSERT INTO `ek_common_token` VALUES ('0000000002', '65587492df343fc3c482023d5ae901c5', '1617258358', '1');
