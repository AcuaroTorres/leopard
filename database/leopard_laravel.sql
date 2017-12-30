-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 30, 2017 at 01:06 AM
-- Server version: 10.1.29-MariaDB-6
-- PHP Version: 7.1.12-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leopard_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `empresa`
--

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL,
  `dv` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `proceso`
--

CREATE TABLE `proceso` (
  `id` int(11) NOT NULL,
  `id_usuario` int(9) NOT NULL,
  `fecha` datetime NOT NULL,
  `pase` varchar(9) DEFAULT NULL,
  `empresa_solicitante` varchar(255) NOT NULL,
  `nombre_persona` varchar(128) NOT NULL,
  `run_persona` varchar(12) NOT NULL,
  `tipo_proceso` varchar(20) NOT NULL,
  `estado` varchar(39) NOT NULL,
  `pase_desde` date DEFAULT NULL,
  `pase_hasta` date DEFAULT NULL,
  `pase_duracion` int(3) DEFAULT NULL,
  `contrato_original` varchar(50) DEFAULT NULL,
  `contrato_reasignacion` varchar(50) DEFAULT NULL,
  `nacionalidad` varchar(50) DEFAULT NULL,
  `visa_tipo` varchar(32) DEFAULT NULL,
  `visa_desde` date DEFAULT NULL,
  `visa_hasta` date DEFAULT NULL,
  `solicitante_CMDIC` varchar(128) DEFAULT NULL,
  `examen` varchar(128) DEFAULT NULL,
  `recepcion` varchar(16) NOT NULL,
  `excepcion` varchar(32) DEFAULT NULL,
  `excepcion_tipo` varchar(32) DEFAULT NULL,
  `excepcion_evento` varchar(255) DEFAULT NULL,
  `excepcion_detalle` varchar(255) DEFAULT NULL,
  `excepcion_desde` date DEFAULT NULL,
  `excepcion_hasta` date DEFAULT NULL,
  `excepcion_estado` varchar(32) DEFAULT NULL,
  `codigo_contrato` varchar(64) DEFAULT NULL,
  `gerencia` varchar(128) DEFAULT NULL,
  `vice_presidencia` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `proceso_contrato`
--

CREATE TABLE `proceso_contrato` (
  `codigo` varchar(64) NOT NULL DEFAULT '',
  `vice_presidencia` varchar(50) DEFAULT 'Sin VP',
  `gerencia` varchar(50) DEFAULT 'Sin Gerencia',
  `estado` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `proceso_contrato_empresa`
--

CREATE TABLE `proceso_contrato_empresa` (
  `codigo_contrato` varchar(50) NOT NULL,
  `nombre_empresa` varchar(255) NOT NULL,
  `inicio` date DEFAULT NULL,
  `termino` date DEFAULT NULL,
  `tipo_contrato` enum('Contratista','Subcontratista') DEFAULT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `proceso_empresa`
--

CREATE TABLE `proceso_empresa` (
  `rut` varchar(12) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `proceso_estado`
--

CREATE TABLE `proceso_estado` (
  `nombre` varchar(50) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `proceso_examen`
--

CREATE TABLE `proceso_examen` (
  `nombre` varchar(200) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `proceso_maestro_contratos`
-- (See below for the actual view)
--
CREATE TABLE `proceso_maestro_contratos` (
`nombre_empresa` varchar(255)
,`rut` varchar(12)
,`tipo_contrato` enum('Contratista','Subcontratista')
,`codigo_contrato` varchar(50)
,`gerencia` varchar(50)
,`vice_presidencia` varchar(50)
,`inicio` date
,`termino` date
,`estado` tinyint(1)
);

-- --------------------------------------------------------

--
-- Table structure for table `proceso_tipo`
--

CREATE TABLE `proceso_tipo` (
  `nombre` varchar(20) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE `producto` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rrhh_registro_login`
--

CREATE TABLE `rrhh_registro_login` (
  `id` int(9) NOT NULL,
  `id_usuario` int(9) NOT NULL,
  `fecha` datetime NOT NULL,
  `tipo` varchar(64) NOT NULL,
  `ip` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rrhh_rol`
--

CREATE TABLE `rrhh_rol` (
  `id` int(11) NOT NULL,
  `usuario_id` int(9) NOT NULL,
  `modulo` enum('Leopard','Procesos') NOT NULL,
  `permiso` enum('Dios','Administrador','Usuario','Estadistico') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rrhh_usuario`
--

CREATE TABLE `rrhh_usuario` (
  `id` int(9) NOT NULL,
  `dv` enum('1','2','3','4','5','6','7','8','9','0','K') NOT NULL,
  `clave` varchar(20) DEFAULT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidop` varchar(20) NOT NULL,
  `apellidom` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `departamento` enum('SALUD','EDUCACION','CEMENTERIO','CULTURA','CORPORACION') NOT NULL,
  `estado` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `venta`
--

CREATE TABLE `venta` (
  `idventa` int(10) UNSIGNED NOT NULL,
  `id` int(10) UNSIGNED DEFAULT NULL,
  `cantidadvendida` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure for view `proceso_maestro_contratos`
--
DROP TABLE IF EXISTS `proceso_maestro_contratos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`leopard`@`localhost` SQL SECURITY DEFINER VIEW `proceso_maestro_contratos`  AS  select `e`.`nombre_empresa` AS `nombre_empresa`,`leopard`.`proceso_empresa`.`rut` AS `rut`,`e`.`tipo_contrato` AS `tipo_contrato`,`e`.`codigo_contrato` AS `codigo_contrato`,`leopard`.`proceso_contrato`.`gerencia` AS `gerencia`,`leopard`.`proceso_contrato`.`vice_presidencia` AS `vice_presidencia`,`e`.`inicio` AS `inicio`,`e`.`termino` AS `termino`,`e`.`estado` AS `estado` from ((`leopard`.`proceso_contrato_empresa` `e` join `leopard`.`proceso_empresa` on((`leopard`.`proceso_empresa`.`nombre` = `e`.`nombre_empresa`))) join `leopard`.`proceso_contrato` on((`leopard`.`proceso_contrato`.`codigo` = `e`.`codigo_contrato`))) order by `e`.`nombre_empresa` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proceso`
--
ALTER TABLE `proceso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empresa_solicitante` (`empresa_solicitante`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `codigo_contrato` (`codigo_contrato`),
  ADD KEY `codigo_contrato_2` (`codigo_contrato`);

--
-- Indexes for table `proceso_contrato`
--
ALTER TABLE `proceso_contrato`
  ADD PRIMARY KEY (`codigo`);

--
-- Indexes for table `proceso_contrato_empresa`
--
ALTER TABLE `proceso_contrato_empresa`
  ADD PRIMARY KEY (`codigo_contrato`,`nombre_empresa`),
  ADD KEY `nombre_empresa` (`nombre_empresa`);

--
-- Indexes for table `proceso_empresa`
--
ALTER TABLE `proceso_empresa`
  ADD PRIMARY KEY (`nombre`);

--
-- Indexes for table `proceso_estado`
--
ALTER TABLE `proceso_estado`
  ADD PRIMARY KEY (`nombre`);

--
-- Indexes for table `proceso_examen`
--
ALTER TABLE `proceso_examen`
  ADD PRIMARY KEY (`nombre`);

--
-- Indexes for table `proceso_tipo`
--
ALTER TABLE `proceso_tipo`
  ADD PRIMARY KEY (`nombre`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rrhh_registro_login`
--
ALTER TABLE `rrhh_registro_login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indexes for table `rrhh_rol`
--
ALTER TABLE `rrhh_rol`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indexes for table `rrhh_usuario`
--
ALTER TABLE `rrhh_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`idventa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `proceso`
--
ALTER TABLE `proceso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80895;
--
-- AUTO_INCREMENT for table `rrhh_registro_login`
--
ALTER TABLE `rrhh_registro_login`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5852;
--
-- AUTO_INCREMENT for table `rrhh_rol`
--
ALTER TABLE `rrhh_rol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `venta`
--
ALTER TABLE `venta`
  MODIFY `idventa` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `proceso`
--
ALTER TABLE `proceso`
  ADD CONSTRAINT `proceso_ibfk_1` FOREIGN KEY (`empresa_solicitante`) REFERENCES `proceso_empresa` (`nombre`) ON UPDATE CASCADE,
  ADD CONSTRAINT `proceso_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `rrhh_usuario` (`id`),
  ADD CONSTRAINT `proceso_ibfk_3` FOREIGN KEY (`codigo_contrato`) REFERENCES `proceso_contrato` (`codigo`) ON UPDATE CASCADE;

--
-- Constraints for table `proceso_contrato_empresa`
--
ALTER TABLE `proceso_contrato_empresa`
  ADD CONSTRAINT `proceso_contrato_empresa_ibfk_1` FOREIGN KEY (`codigo_contrato`) REFERENCES `proceso_contrato` (`codigo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `proceso_contrato_empresa_ibfk_3` FOREIGN KEY (`nombre_empresa`) REFERENCES `proceso_empresa` (`nombre`) ON UPDATE CASCADE;

--
-- Constraints for table `rrhh_registro_login`
--
ALTER TABLE `rrhh_registro_login`
  ADD CONSTRAINT `rrhh_registro_login_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `rrhh_usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rrhh_rol`
--
ALTER TABLE `rrhh_rol`
  ADD CONSTRAINT `rrhh_rol_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `rrhh_usuario` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
