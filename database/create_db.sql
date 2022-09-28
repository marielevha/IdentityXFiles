-- #############################################################################
-- # COPYRIGHT
-- # � 2019 by Daon. All rights reserved.
-- #
-- # This software is the confidential and proprietary property and information of Daon.
-- # You shall not disclose such Confidential Information and shall use it
-- # only in accordance with the terms of the license agreement entered into
-- # with Daon.
-- #
-- # Products sold or licensed by Daon are covered by the terms of its
-- # contractual agreements, license agreements and the warranty and
-- # guarantees therein. Daon reserves the right to discontinue production
-- # and change specifications and processes at any time without notice.
-- #
-- # No part of this software may be reproduced in any form without the
-- # prior written consent of Daon.
-- #############################################################################

USE [master]
GO
PRINT ''
CREATE DATABASE [IXPRD] ON  PRIMARY 
( NAME = N'IXPRD', FILENAME = N'C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\IXPRD.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'IXPRD_log', FILENAME = N'C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\IXPRD_log.ldf' , SIZE = 4672KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF @@error = 0 PRINT 'Database IXPRD created successfully'
PRINT ''
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [IXPRD].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
IF @@error = 0 PRINT 'Fulltext mode for IXPRD disabled successfully'
PRINT ''
ALTER DATABASE [IXPRD] SET ANSI_NULL_DEFAULT OFF 
GO
IF @@error = 0 PRINT 'ANSI_NULL_DEFAULT option for database IXPRD has been set OFF successfully'
PRINT ''
ALTER DATABASE [IXPRD] SET ANSI_NULLS OFF 
GO
IF @@error = 0 PRINT 'ANSI_NULLS option for database IXPRD has been set OFF successfully'
PRINT ''
ALTER DATABASE [IXPRD] SET ANSI_PADDING OFF 
GO
IF @@error = 0 PRINT 'ANSI_PADDING option for database IXPRD has been set OFF successfully'
PRINT ''
ALTER DATABASE [IXPRD] SET ANSI_WARNINGS OFF 
GO
IF @@error = 0 PRINT 'ANSI_WARNINGS option for database IXPRD has been set OFF successfully'
PRINT ''
ALTER DATABASE [IXPRD] SET ARITHABORT OFF 
GO
IF @@error = 0 PRINT 'ARITHABORT option for database IXPRD has been set OFF successfully'
PRINT ''
ALTER DATABASE [IXPRD] SET AUTO_CLOSE OFF 
GO
IF @@error = 0 PRINT 'AUTO_CLOSE option for database IXPRD has been set OFF successfully'
PRINT ''
ALTER DATABASE [IXPRD] SET AUTO_CREATE_STATISTICS ON 
GO
IF @@error = 0 PRINT 'AUTO_CREATE_STATISTICS option for database IXPRD has been set ON successfully'
PRINT ''
ALTER DATABASE [IXPRD] SET AUTO_SHRINK OFF 
GO
IF @@error = 0 PRINT 'AUTO_SHRINK option for database IXPRD has been set OFF successfully'
PRINT ''
ALTER DATABASE [IXPRD] SET AUTO_UPDATE_STATISTICS ON 
GO
IF @@error = 0 PRINT 'AUTO_UPDATE_STATISTICS option for database IXPRD has been set ON successfully'
PRINT ''
ALTER DATABASE [IXPRD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
IF @@error = 0 PRINT 'CURSOR_CLOSE_ON_COMMIT option for database IXPRD has been set OFF successfully'
PRINT ''
ALTER DATABASE [IXPRD] SET CURSOR_DEFAULT  GLOBAL 
GO
IF @@error = 0 PRINT 'CURSOR_DEFAULT option for database IXPRD has been set to GLOBAL successfully'
PRINT ''
ALTER DATABASE [IXPRD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
IF @@error = 0 PRINT 'CONCAT_NULL_YIELDS_NULL option for database IXPRD has been set OFF successfully'
PRINT ''
ALTER DATABASE [IXPRD] SET NUMERIC_ROUNDABORT OFF 
GO
IF @@error = 0 PRINT 'NUMERIC_ROUNDABORT option for database IXPRD has been set OFF successfully'
PRINT ''
ALTER DATABASE [IXPRD] SET QUOTED_IDENTIFIER OFF 
GO
IF @@error = 0 PRINT 'QUOTED_IDENTIFIER option for database IXPRD has been set OFF successfully'
PRINT ''
ALTER DATABASE [IXPRD] SET RECURSIVE_TRIGGERS OFF 
GO
IF @@error = 0 PRINT 'RECURSIVE_TRIGGERS option for database IXPRD has been set OFF successfully'
PRINT ''
ALTER DATABASE [IXPRD] SET  ENABLE_BROKER 
GO
IF @@error = 0 PRINT 'ENABLE_BROKER option for database IXPRD has been enabled successfully'
PRINT ''
ALTER DATABASE [IXPRD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
IF @@error = 0 PRINT 'AUTO_UPDATE_STATISTICS_ASYNC option for database IXPRD has been set OFF successfully'
PRINT ''
ALTER DATABASE [IXPRD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
IF @@error = 0 PRINT 'DATE_CORRELATION_OPTIMIZATION option for database IXPRD has been set OFF successfully'
PRINT ''
ALTER DATABASE [IXPRD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
IF @@error = 0 PRINT 'ALLOW_SNAPSHOT_ISOLATION option for database IXPRD has been set OFF successfully'
PRINT ''
ALTER DATABASE [IXPRD] SET PARAMETERIZATION SIMPLE 
GO
IF @@error = 0 PRINT 'PARAMETERIZATION option for database IXPRD has been set to SIMPLE successfully'
PRINT ''
ALTER DATABASE [IXPRD] SET  READ_WRITE 
GO
IF @@error = 0 PRINT 'READ_WRITE option for database IXPRD has been set successfully'
PRINT ''
ALTER DATABASE [IXPRD] SET RECOVERY FULL 
GO
IF @@error = 0 PRINT 'RECOVERY model for database IXPRD has been set to FULL successfully'
PRINT ''
ALTER DATABASE [IXPRD] SET  MULTI_USER 
GO
IF @@error = 0 PRINT 'MULTI_USER mode for database IXPRD has been set successfully'
PRINT ''
ALTER DATABASE [IXPRD] SET PAGE_VERIFY CHECKSUM  
GO
IF @@error = 0 PRINT 'PAGE_VERIFY option for database IXPRD has been set to CHECKSUM successfully'
PRINT ''
ALTER DATABASE [IXPRD] SET  READ_COMMITTED_SNAPSHOT ON;
GO
IF @@error = 0 PRINT 'READ_COMMITTED_SNAPSHOT option for database IXPRD has been set ON successfully'
