USE [master]
GO
/****** Object:  Database [GroceryStore]    Script Date: 8/2/2021 10:27:29 AM ******/
CREATE DATABASE [GroceryStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GroceryStore', FILENAME = N'C:\Users\annap\GroceryStore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GroceryStore_log', FILENAME = N'C:\Users\annap\GroceryStore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [GroceryStore] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GroceryStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GroceryStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GroceryStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GroceryStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GroceryStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GroceryStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [GroceryStore] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [GroceryStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GroceryStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GroceryStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GroceryStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GroceryStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GroceryStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GroceryStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GroceryStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GroceryStore] SET  ENABLE_BROKER 
GO
ALTER DATABASE [GroceryStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GroceryStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GroceryStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GroceryStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GroceryStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GroceryStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GroceryStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GroceryStore] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GroceryStore] SET  MULTI_USER 
GO
ALTER DATABASE [GroceryStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GroceryStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GroceryStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GroceryStore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GroceryStore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GroceryStore] SET QUERY_STORE = OFF
GO
USE [GroceryStore]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [GroceryStore]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 8/2/2021 10:27:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[DeleteCustomer]    Script Date: 8/2/2021 10:27:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE [dbo].[DeleteCustomer]
	@id int
AS 
BEGIN
delete from Customers where id=@id


	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    
END

GO
/****** Object:  StoredProcedure [dbo].[GetAllCustomers]    Script Date: 8/2/2021 10:27:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

	CREATE PROCEDURE [dbo].[GetAllCustomers]
AS
BEGIN
select * from dbo.Customers


	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    
END

GO
/****** Object:  StoredProcedure [dbo].[InsertCustomer]    Script Date: 8/2/2021 10:27:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

	CREATE PROCEDURE [dbo].[InsertCustomer]
	@Name nvarchar(50)
AS 
BEGIN
insert into customers (name) values (@Name)


	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateCustomer]    Script Date: 8/2/2021 10:27:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE [dbo].[UpdateCustomer]
@Name varchar(50)
,@id int
AS 
BEGIN
update customers
set Name=@Name
 where id=@id


	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    
END

GO
USE [master]
GO
ALTER DATABASE [GroceryStore] SET  READ_WRITE 
GO
