--#############################################################################
--# COPYRIGHT
--# � 2019 by Daon Holdings Limited. All rights reserved.
--#
--# This software is the confidential and proprietary property and information of Daon.
--# You shall not disclose such Confidential Information and shall use it
--# only in accordance with the terms of the license agreement entered into
--# with Daon.
--#
--# Products sold or licensed by Daon are covered by the terms of its
--# contractual agreements, license agreements and the warranty and
--# guarantees therein. Daon reserves the right to discontinue production
--# and change specifications and processes at any time without notice.
--#
--# No part of this software may be reproduced in any form without the
--# prior written consent of Daon.
--# 
--#############################################################################


--DISK_SPACE_REQUIRED_MB=800

USE Master
GO

PRINT ''
ALTER DATABASE IXPRD
 ADD FILEGROUP DAON_SEQUENCES
GO
if @@error = 0 PRINT 'Filegroup DAON_SEQUENCES created successfully '

ALTER DATABASE IXPRD
ADD FILE
 (NAME = DAON_SEQUENCES1,
   FILENAME = 'C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\DAON_SEQUENCES1.ndf',
   SIZE = 5MB,
   MAXSIZE = UNLIMITED,
   FILEGROWTH = 5MB)
  TO FILEGROUP  DAON_SEQUENCES
GO
if @@error = 0 PRINT ' File C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\DAON_SEQUENCES1.ndf added successfully '

PRINT ''
ALTER DATABASE IXPRD
 ADD FILEGROUP DAON_ASYNC_DATA
GO
if @@error = 0 PRINT 'Filegroup DAON_ASYNC_DATA created successfully '

ALTER DATABASE IXPRD
ADD FILE
 (NAME = DAON_ASYNC_DATA1,
   FILENAME = 'C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\DAON_ASYNC_DATA1.ndf',
   SIZE = 16MB,
   MAXSIZE = UNLIMITED,
   FILEGROWTH = 16MB)
  TO FILEGROUP  DAON_ASYNC_DATA
GO
if @@error = 0 PRINT ' File C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\DAON_ASYNC_DATA1.ndf added successfully '

PRINT ''
ALTER DATABASE IXPRD
 ADD FILEGROUP DAON_ASYNC_INDEXES
GO
if @@error = 0 PRINT 'Filegroup DAON_ASYNC_INDEXES created successfully '

ALTER DATABASE IXPRD
ADD FILE
 (NAME = DAON_ASYNC_INDEXES1,
   FILENAME = 'C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\DAON_ASYNC_INDEXES1.ndf',
   SIZE = 8MB,
   MAXSIZE = UNLIMITED,
   FILEGROWTH = 8MB)
  TO FILEGROUP  DAON_ASYNC_INDEXES
GO
if @@error = 0 PRINT ' File C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\DAON_ASYNC_INDEXES1.ndf added successfully '

PRINT ''
ALTER DATABASE IXPRD
 ADD FILEGROUP DAON_AUDITS
GO
if @@error = 0 PRINT 'Filegroup DAON_AUDITS created successfully '

ALTER DATABASE IXPRD
ADD FILE
 (NAME = DAON_AUDITS1,
   FILENAME = 'C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\DAON_AUDITS1.ndf',
   SIZE = 8MB,
   MAXSIZE = UNLIMITED,
   FILEGROWTH = 8MB)
  TO FILEGROUP  DAON_AUDITS
GO
if @@error = 0 PRINT ' File C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\DAON_AUDITS1.ndf added successfully '

PRINT ''
ALTER DATABASE IXPRD
 ADD FILEGROUP DAON_BIOGRAPHICS
GO
if @@error = 0 PRINT 'Filegroup DAON_BIOGRAPHICS created successfully '

ALTER DATABASE IXPRD
ADD FILE
 (NAME = DAON_BIOGRAPHICS1,
   FILENAME = 'C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\DAON_BIOGRAPHICS1.ndf',
   SIZE = 8MB,
   MAXSIZE = UNLIMITED,
   FILEGROWTH = 8MB)
  TO FILEGROUP  DAON_BIOGRAPHICS
GO
if @@error = 0 PRINT ' File C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\DAON_BIOGRAPHICS1.ndf added successfully '

PRINT ''
ALTER DATABASE IXPRD
 ADD FILEGROUP DAON_BIOMETRICS
GO
if @@error = 0 PRINT 'Filegroup DAON_BIOMETRICS created successfully '

ALTER DATABASE IXPRD
ADD FILE
 (NAME = DAON_BIOMETRICS1,
   FILENAME = 'C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\DAON_BIOMETRICS1.ndf',
   SIZE = 256MB,
   MAXSIZE = UNLIMITED,
   FILEGROWTH = 256MB)
  TO FILEGROUP  DAON_BIOMETRICS
GO
if @@error = 0 PRINT ' File C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\DAON_BIOMETRICS1.ndf added successfully '

PRINT ''
ALTER DATABASE IXPRD
 ADD FILEGROUP DAON_CONFIGS
GO
if @@error = 0 PRINT 'Filegroup DAON_CONFIGS created successfully '

ALTER DATABASE IXPRD
ADD FILE
 (NAME = DAON_CONFIGS1,
   FILENAME = 'C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\DAON_CONFIGS1.ndf',
   SIZE = 16MB,
   MAXSIZE = UNLIMITED,
   FILEGROWTH = 16MB)
  TO FILEGROUP  DAON_CONFIGS
GO
if @@error = 0 PRINT ' File C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\DAON_CONFIGS1.ndf added successfully '

PRINT ''
ALTER DATABASE IXPRD
 ADD FILEGROUP DAON_USER_DATA
GO
if @@error = 0 PRINT 'Filegroup DAON_USER_DATA created successfully '

ALTER DATABASE IXPRD
ADD FILE
 (NAME = DAON_USER_DATA1,
   FILENAME = 'C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\DAON_USER_DATA1.ndf',
   SIZE = 256MB,
   MAXSIZE = UNLIMITED,
   FILEGROWTH = 256MB)
  TO FILEGROUP  DAON_USER_DATA
GO
if @@error = 0 PRINT ' File C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\DAON_USER_DATA1.ndf added successfully '

PRINT ''
ALTER DATABASE IXPRD
 ADD FILEGROUP DAON_USER_INDEXES
GO
if @@error = 0 PRINT 'Filegroup DAON_USER_INDEXES created successfully '

ALTER DATABASE IXPRD
ADD FILE
 (NAME = DAON_USER_INDEXES1,
   FILENAME = 'C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\DAON_USER_INDEXES1.ndf',
   SIZE = 16MB,
   MAXSIZE = UNLIMITED,
   FILEGROWTH = 16MB)
  TO FILEGROUP  DAON_USER_INDEXES
GO
if @@error = 0 PRINT ' File C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\DAON_USER_INDEXES1.ndf added successfully '

PRINT ''
ALTER DATABASE IXPRD
 ADD FILEGROUP DAON_IX_DATA
GO
if @@error = 0 PRINT 'Filegroup DAON_IX_DATA created successfully '

ALTER DATABASE IXPRD
ADD FILE
 (NAME = DAON_IX_DATA1,
   FILENAME = 'C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\DAON_IX_DATA1.ndf',
   SIZE = 256MB,
   MAXSIZE = UNLIMITED,
   FILEGROWTH = 256MB)
  TO FILEGROUP  DAON_IX_DATA
GO
if @@error = 0 PRINT ' File C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\DAON_IX_DATA1.ndf added successfully '

PRINT ''
ALTER DATABASE IXPRD
 ADD FILEGROUP DAON_IX_INDEXES
GO
if @@error = 0 PRINT 'Filegroup DAON_IX_INDEXES created successfully '

ALTER DATABASE IXPRD
ADD FILE
 (NAME = DAON_IX_INDEXES1,
   FILENAME = 'C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\DAON_IX_INDEXES1.ndf',
   SIZE = 256MB,
   MAXSIZE = UNLIMITED,
   FILEGROWTH = 256MB)
  TO FILEGROUP  DAON_IX_INDEXES
GO
if @@error = 0 PRINT ' File C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\DAON_IX_INDEXES1.ndf added successfully '

PRINT ''
ALTER DATABASE IXPRD
 ADD FILEGROUP DAON_IX_RC_AUTH_DATA
GO
if @@error = 0 PRINT 'Filegroup DAON_IX_RC_AUTH_DATA created successfully '

ALTER DATABASE IXPRD
ADD FILE
 (NAME = DAON_IX_RC_AUTH_DATA1,
   FILENAME = 'C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\DAON_IX_RC_AUTH_DATA1.ndf',
   SIZE = 256MB,
   MAXSIZE = UNLIMITED,
   FILEGROWTH = 256MB)
  TO FILEGROUP  DAON_IX_RC_AUTH_DATA
GO
if @@error = 0 PRINT ' File C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\DAON_IX_RC_AUTH_DATA1.ndf added successfully '

PRINT ''
ALTER DATABASE IXPRD
 ADD FILEGROUP DAON_IX_DATA_SAMPLES
GO
if @@error = 0 PRINT 'Filegroup DAON_IX_DATA_SAMPLES created successfully '

ALTER DATABASE IXPRD
ADD FILE
 (NAME = DAON_IX_DATA_SAMPLES1,
   FILENAME = 'C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\DAON_IX_DATA_SAMPLES1.ndf',
   SIZE = 256MB,
   MAXSIZE = UNLIMITED,
   FILEGROWTH = 256MB)
  TO FILEGROUP  DAON_IX_DATA_SAMPLES
GO
if @@error = 0 PRINT ' File C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\DAON_IX_DATA_SAMPLES1.ndf added successfully '

PRINT ''
ALTER DATABASE IXPRD
 ADD FILEGROUP DAON_IX_ENROLMENTS
GO
if @@error = 0 PRINT 'Filegroup DAON_IX_ENROLMENTS created successfully '

ALTER DATABASE IXPRD
ADD FILE
 (NAME = DAON_IX_ENROLMENTS1,
   FILENAME = 'C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\DAON_IX_ENROLMENTS1.ndf',
   SIZE = 256MB,
   MAXSIZE = UNLIMITED,
   FILEGROWTH = 256MB)
  TO FILEGROUP  DAON_IX_ENROLMENTS
GO
if @@error = 0 PRINT ' File C:\Microsoft SQL Server\DATA\IXINST1\IXPRD\DAON_IX_ENROLMENTS1.ndf added successfully '
