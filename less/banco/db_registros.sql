-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20-Jun-2017 às 02:34
-- Versão do servidor: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_registros`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `id_aluno` int(100) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `nascimento` varchar(10) NOT NULL,
  `rg` varchar(12) NOT NULL,
  `cgm` varchar(30) NOT NULL,
  `curso` varchar(30) NOT NULL,
  `turma` varchar(30) NOT NULL,
  `email` varchar(200) NOT NULL,
  `senha` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`id_aluno`, `nome`, `nascimento`, `rg`, `cgm`, `curso`, `turma`, `email`, `senha`) VALUES
(1, 'Vinicius', '24/06/1999', '12.584.317-4', '889409126', 'Informatica', '4 ano', 'vinicius.stanoga@ceepcascavel.com.br', 123),
(2, 'teste', 'teste', 'teste', 'teste', 'teste', 'teste', 'teste', 123);

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunozzz`
--

CREATE TABLE `alunozzz` (
  `cgm` int(50) NOT NULL,
  `curso` varchar(50) NOT NULL,
  `turma` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `alunozzz`
--

INSERT INTO `alunozzz` (`cgm`, `curso`, `turma`) VALUES
(10206012, 'Teste', 'Tesete'),
(889409126, 'Informatica', '4 ano');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `id_curso` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`id_curso`, `nome`) VALUES
(1, 'Informatica');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `id_disciplina` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `professor` varchar(50) NOT NULL,
  `curso` varchar(50) NOT NULL,
  `carga_horaria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`id_disciplina`, `nome`, `professor`, `curso`, `carga_horaria`) VALUES
(1, 'Matematica', 'Silvano', 'Informatica', '1010');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `id_funcionario` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `nascimento` varchar(10) NOT NULL,
  `rg` varchar(12) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `cargo` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`id_funcionario`, `nome`, `nascimento`, `rg`, `cpf`, `cargo`, `email`, `senha`) VALUES
(1, 'Vinicius', '24/06/1999', '12.584.317-4', '069.368.299-02', 'Prof', 'vinicius@email.com', 123),
(2, 'Vinicius', '24/06/1999', '12.584.317-4', '069.368.299-02', 'Prof', 'vinicius@email.com', 123),
(3, 'teste', 'teste', 'teste', 'teste', 'teste', 'teste', 123);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionariozzz`
--

CREATE TABLE `funcionariozzz` (
  `cpf` varchar(50) NOT NULL,
  `cargo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `info_aluno`
--

CREATE TABLE `info_aluno` (
  `id_info_aluno` int(11) NOT NULL,
  `nome_aluno` varchar(100) NOT NULL,
  `nome_professor` varchar(100) NOT NULL,
  `notas` float NOT NULL,
  `reclamacoes` varchar(255) NOT NULL,
  `observacoes` varchar(255) NOT NULL,
  `elogios` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`id_login`, `usuario`, `senha`, `email`) VALUES
(1, 'lrlr', '123', 'luanrohde11@gmail.com'),
(2, 'stanoga', '123', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `id_pessoa` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `rg` varchar(50) NOT NULL,
  `nascimento` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `id_turma` int(11) NOT NULL,
  `ano` int(10) NOT NULL,
  `serie` varchar(10) NOT NULL,
  `periodo` varchar(50) NOT NULL,
  `curso` varchar(100) NOT NULL,
  `data_inicio` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id_aluno`);

--
-- Indexes for table `alunozzz`
--
ALTER TABLE `alunozzz`
  ADD PRIMARY KEY (`cgm`);

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id_curso`);

--
-- Indexes for table `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`id_disciplina`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`id_funcionario`);

--
-- Indexes for table `funcionariozzz`
--
ALTER TABLE `funcionariozzz`
  ADD PRIMARY KEY (`cpf`);

--
-- Indexes for table `info_aluno`
--
ALTER TABLE `info_aluno`
  ADD PRIMARY KEY (`id_info_aluno`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`id_pessoa`);

--
-- Indexes for table `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`id_turma`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id_aluno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `curso`
--
ALTER TABLE `curso`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `id_disciplina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `id_funcionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `info_aluno`
--
ALTER TABLE `info_aluno`
  MODIFY `id_info_aluno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `id_pessoa` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `turma`
--
ALTER TABLE `turma`
  MODIFY `id_turma` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
