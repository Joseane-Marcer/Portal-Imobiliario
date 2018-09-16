

SET FOREIGN_KEY_CHECKS=0;


DROP TABLE IF EXISTS 	clientes;
CREATE TABLE clientes (
  clienteId int(11) NOT NULL AUTO_INCREMENT,
  criadoEm timestamp NULL DEFAULT NULL,
  modificadoEm timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  clienteStatus varchar(255) DEFAULT NULL,
  usuarioNivel varchar(255) DEFAULT NULL,
  nome varchar(255) DEFAULT NULL,
  email varchar(255) DEFAULT NULL,
  senha varchar(255) DEFAULT NULL,
  telefone varchar(255) DEFAULT NULL,
  PRIMARY KEY (clienteId)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS imoveis;
CREATE TABLE imoveis (
  imovelId int(11) NOT NULL AUTO_INCREMENT,
  clienteId varchar(255) DEFAULT NULL,
  imovelVisitas varchar(255) DEFAULT NULL,
  imovelTitulo varchar(255) DEFAULT NULL,
  imovelThumb varchar(255) DEFAULT NULL,
  imovelTipo varchar(255) DEFAULT NULL,
  imovelValor varchar(255) DEFAULT NULL,
  imovelNegocio varchar(255) DEFAULT NULL,
  imovelDescricao varchar(255) DEFAULT NULL,
  imovelComodos varchar(255) DEFAULT NULL,
  imovelSuites varchar(255) DEFAULT NULL,
  imovelBanheiros varchar(255) DEFAULT NULL,
  imovelSalas varchar(255) DEFAULT NULL,
  imovelChurrasqueira varchar(255) DEFAULT NULL,
  imovelGaragem varchar(255) DEFAULT NULL,
  imovelServico varchar(255) DEFAULT NULL,
  imovelPiscina varchar(255) DEFAULT NULL,
  imovelFacilidades varchar(255) DEFAULT NULL,
  imovelRua varchar(255) DEFAULT NULL,
  imovelNumero varchar(255) DEFAULT NULL,
  imovelBairro varchar(255) DEFAULT NULL,
  imovelProximo varchar(255) DEFAULT NULL,
  imovelCadastro timestamp NULL DEFAULT NULL,
  imovelUpdate timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  imovelTermino timestamp NULL DEFAULT NULL,
  imovelStatus varchar(255) DEFAULT NULL,
  imovelConfirma varchar(255) DEFAULT NULL,
  PRIMARY KEY (imovelId)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS mailadmin;
CREATE TABLE mailadmin (
  emailId int(11) NOT NULL AUTO_INCREMENT,
  emailNome varchar(255) DEFAULT NULL,
  emailEmail varchar(255) DEFAULT NULL,
  emailMensagem text,
  emailData timestamp NULL DEFAULT NULL,
  emailStatus varchar(255) DEFAULT NULL,
  emailResposta timestamp NULL DEFAULT NULL,
  emailTxt text,
  emailCod varchar(255) DEFAULT NULL,
  PRIMARY KEY (emailId)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS mailcliente;
CREATE TABLE mailcliente (
  emailId int(11) NOT NULL AUTO_INCREMENT,
  clienteId varchar(255) DEFAULT NULL,
  emailNome varchar(255) DEFAULT NULL,
  emailMail varchar(255) DEFAULT NULL,
  emailFone varchar(255) DEFAULT NULL,
  emailMsg text,
  emailData timestamp NULL DEFAULT NULL,
  emailResTxt text,
  emailRes timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  emailStatus varchar(255) DEFAULT NULL,
  PRIMARY KEY (emailId)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS midias;
CREATE TABLE midias (
  fotoId int(11) NOT NULL AUTO_INCREMENT,
  imovelId varchar(255) DEFAULT NULL,
  imovelImg varchar(255) DEFAULT NULL,
  PRIMARY KEY (fotoId)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS tickets;
CREATE TABLE tickets (
  ticketId int(11) NOT NULL AUTO_INCREMENT,
  clienteId varchar(255) DEFAULT NULL,
  ticketData timestamp NULL DEFAULT NULL,
  ticketPergunta varchar(255) DEFAULT NULL,
  ticketResposta varchar(255) DEFAULT NULL,
  PRIMARY KEY (ticketId)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;


