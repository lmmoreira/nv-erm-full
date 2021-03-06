ALTER TABLE `erm`.`materiais` 
ADD COLUMN `PUBLICADO` TINYINT(1) NULL COMMENT '' AFTER `QTDE_MATERIAL`;
ALTER TABLE `erm`.`fornecedores` 
ADD COLUMN `PUBLICADO` TINYINT(1) NULL COMMENT '' AFTER `CRIADOR`;

CREATE TABLE `erm`.`materiais_mensagens` (
  `IDMENSAGEM` BIGINT(20) NOT NULL COMMENT '',
  `MATERIAL` BIGINT(20) NOT NULL COMMENT '',
  `DATA_MENSAGEM` DATETIME NOT NULL COMMENT '',
  `LIDO` TINYINT(1) NULL COMMENT '',
  `DATA_LEITURA` DATETIME NULL COMMENT '',
  PRIMARY KEY (`IDMENSAGEM`)  COMMENT '');

ALTER TABLE `erm`.`materiais_mensagens` 
	ADD COLUMN `ORIGEM` BIGINT(20) NULL COMMENT '' AFTER `DATA_LEITURA`,
	ADD COLUMN `DESTINO` BIGINT(20) NULL COMMENT '' AFTER `ORIGEM`;

ALTER TABLE `erm`.`materiais_mensagens` 
	ADD COLUMN `MENSAGEM` VARCHAR(4500) NULL COMMENT '' AFTER `DESTINO`;
		
CREATE TABLE `fornecedores_mensagens` (
  `IDMENSAGEM` bigint(20) NOT NULL,
  `FORNECEDOR` bigint(20) NOT NULL,
  `DATA_MENSAGEM` datetime NOT NULL,
  `LIDO` tinyint(1) DEFAULT NULL,
  `DATA_LEITURA` datetime DEFAULT NULL,
  `ORIGEM` bigint(20) DEFAULT NULL,
  `DESTINO` bigint(20) DEFAULT NULL,
  `MENSAGEM` varchar(4500) DEFAULT NULL,
  PRIMARY KEY (`IDMENSAGEM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `erm`.`materiais` 
ADD COLUMN `ATA` VARCHAR(45) NULL COMMENT '' AFTER `PUBLICADO`,
ADD COLUMN `SUB_ATA` VARCHAR(45) NULL COMMENT '' AFTER `ATA`,
ADD COLUMN `DENSIDADE` VARCHAR(45) NULL COMMENT '' AFTER `SUB_ATA`;