USE MASTER
GO
PRINT ''
CREATE LOGIN IXUSER
WITH PASSWORD = 'ixpass',
	DEFAULT_DATABASE = IXPRD,
	CHECK_EXPIRATION = OFF,
	CHECK_POLICY = OFF
GO
IF @@error = 0 PRINT  'Login IXUSER created successfully'
PRINT ''
USE IXPRD
GO
PRINT ''
create user IXUSER for login IXUSER
GO
IF @@error = 0 PRINT  'User IXUSER created successfully'
PRINT ''
EXEC sp_addrolemember N'db_owner', N'IXUSER'
GO
IF @@error = 0 PRINT  'User IXUSER granted db_owner role successfully'
PRINT ''
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'IXUSER_SCHEMA')
	Exec('CREATE SCHEMA [IXUSER_SCHEMA]') 
IF @@error = 0 PRINT  'Schema IXUSER created successfully'
PRINT ''
ALTER AUTHORIZATION ON SCHEMA::[IXUSER_SCHEMA] TO [IXUSER]
GO
IF @@error = 0 PRINT  'AUTHORIZATION on schema IXUSER_SCHEMA altered successfully'
PRINT ''
ALTER USER IXUSER WITH DEFAULT_SCHEMA=IXUSER_SCHEMA
GO
IF @@error = 0 PRINT  'DEAFULT_SCHEMA set to IXUSER_SCHEMA for IXUSER successfully'
PRINT ''
GRANT CREATE TABLE TO IXUSER
GO
IF @@error = 0 PRINT  'User IXUSER granted CREATE TABLE privilege successfully'
PRINT ''
GRANT CREATE DEFAULT TO IXUSER
GO
IF @@error = 0 PRINT  'User IXUSER granted CREATE DEFAULT privilege successfully'
PRINT ''
