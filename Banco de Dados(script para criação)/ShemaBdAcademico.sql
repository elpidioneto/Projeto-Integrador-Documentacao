SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `admcontasapagar` (
  `id` int(11) NOT NULL,
  `competencia` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  `vencimento` int(11) NOT NULL,
  `valorPago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `admcontasareceber` (
  `id` int(11) NOT NULL,
  `competencia` int(11) NOT NULL,
  `valor` float NOT NULL,
  `vencimento` int(11) NOT NULL,
  `valorPago` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `conta` (
  `id` int(11) NOT NULL,
  `conta` varchar(50) NOT NULL,
  `debitoCredito` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `correspondencia` (
  `id` int(11) NOT NULL,
  `bloco` varchar(2) NOT NULL,
  `unidade` int(11) NOT NULL,
  `destinatario` varchar(20) NOT NULL,
  `transportadora` varchar(20) NOT NULL,
  `rastreamento` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `emitirboleto` (
  `competencia` varchar(6) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `enderecocorrespondencia` (
  `id` int(11) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `bairro` varchar(20) NOT NULL,
  `cep` varchar(7) NOT NULL,
  `cidade` varchar(20) NOT NULL,
  `uf` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `enxoval` (
  `id` int(11) NOT NULL,
  `espacoId` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `valor` float NOT NULL,
  `quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `espaco` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `horaMin` int(11) NOT NULL,
  `horaMax` int(11) NOT NULL,
  `qtdHoras` int(11) NOT NULL,
  `qtdReserva` int(11) NOT NULL,
  `qtdConvidados` int(11) NOT NULL,
  `valorReserva` double NOT NULL,
  `crianca` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `lancboletos` (
  `id` int(11) NOT NULL,
  `cliente` int(11) NOT NULL,
  `data` int(11) NOT NULL,
  `vencimento` int(11) NOT NULL,
  `valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `listaconvidados` (
  `id` int(11) NOT NULL,
  `idEvento` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `login` text NOT NULL,
  `senha` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `pessoa` (
  `nome` varchar(50) NOT NULL,
  `rg` varchar(20) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `dataNascimento` varchar(8) NOT NULL,
  `dataCadastro` date NOT NULL,
  `genero` varchar(10) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `titulo` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `debitoCredito` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `unidade` (
  `id` int(11) NOT NULL,
  `unidade` int(11) NOT NULL,
  `bloco` varchar(4) NOT NULL,
  `areaComum` double NOT NULL,
  `areaPrivativa` double NOT NULL,
  `vaga1` varchar(5) NOT NULL,
  `vaga2` varchar(5) NOT NULL,
  `vaga3` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `visitante` (
  `id` int(11) NOT NULL,
  `dataEntrada` varchar(8) NOT NULL,
  `horaEntrada` varchar(6) NOT NULL,
  `tipoVisita` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


ALTER TABLE `admcontasapagar`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `admcontasareceber`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `conta`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `correspondencia`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `emitirboleto`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `enderecocorrespondencia`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `enxoval`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `espaco`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `lancboletos`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `listaconvidados`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`Id`);

ALTER TABLE `titulo`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `unidade`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `visitante`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `pessoa`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `titulo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `unidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `visitante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
