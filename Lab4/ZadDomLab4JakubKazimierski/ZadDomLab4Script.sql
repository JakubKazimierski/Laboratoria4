USE [master]
GO
/****** Object:  Database [FBIdataBase]    Script Date: 15.12.2019 02:41:06 ******/
CREATE DATABASE [FBIdataBase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FBIdataBase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\FBIdataBase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FBIdataBase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\FBIdataBase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [FBIdataBase] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FBIdataBase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FBIdataBase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FBIdataBase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FBIdataBase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FBIdataBase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FBIdataBase] SET ARITHABORT OFF 
GO
ALTER DATABASE [FBIdataBase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FBIdataBase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FBIdataBase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FBIdataBase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FBIdataBase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FBIdataBase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FBIdataBase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FBIdataBase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FBIdataBase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FBIdataBase] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FBIdataBase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FBIdataBase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FBIdataBase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FBIdataBase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FBIdataBase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FBIdataBase] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [FBIdataBase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FBIdataBase] SET RECOVERY FULL 
GO
ALTER DATABASE [FBIdataBase] SET  MULTI_USER 
GO
ALTER DATABASE [FBIdataBase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FBIdataBase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FBIdataBase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FBIdataBase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FBIdataBase] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'FBIdataBase', N'ON'
GO
ALTER DATABASE [FBIdataBase] SET QUERY_STORE = OFF
GO
USE [FBIdataBase]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 15.12.2019 02:41:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FBIagentsLists]    Script Date: 15.12.2019 02:41:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FBIagentsLists](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](250) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Birthdate] [datetime] NOT NULL,
	[AgentTypeId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.FBIagentsLists] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FBIagentsTypes]    Script Date: 15.12.2019 02:41:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FBIagentsTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Rank] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.FBIagentsTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FBIagentsUndercovers]    Script Date: 15.12.2019 02:41:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FBIagentsUndercovers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](250) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[AgentCriminalId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.FBIagentsUndercovers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FBIcriminalsLists]    Script Date: 15.12.2019 02:41:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FBIcriminalsLists](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](250) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Birthdate] [datetime] NOT NULL,
	[CriminalTypeId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.FBIcriminalsLists] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FBIcriminalsTypes]    Script Date: 15.12.2019 02:41:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FBIcriminalsTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Rank] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.FBIcriminalsTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201912140638511_InitialMigration', N'ZadDomLab4JakubKazimierski.Migrations.Configuration', 0x1F8B0800000000000400ED5B5B6FDB36147E1FB0FF20E8691B522B4937600BEC16A9930C6E7329E2A418F612D0D2B14384A234910AEC0DFB657BD84FDA5FD8A16E96A8AB1D3B49DB202FB67C6E3CFCCE853CCA7FFFFCDB7F3B7799710F81A01E1F987BBD5DD3006E7B0EE5B38119CAE9AB9FCDB76FBEFDA67FECB873E3534AF75AD121271703F3564AFFC0B2847D0B2E113D97DA8127BCA9ECD99E6B11C7B3F677777FB1F6F62C401126CA328CFE65C8257521FA825F871EB7C1972161679E034C24CFF1977124D538272E089FD830307F27CE91E79E92C98FEFC95D38F940FEA42E45BBEE682F66368D4346091A360636350DC2B9278944B30FAE058C65E0F1D9D8C707845D2D7C40BA29610292E51C2CC9BBAE6C775FADCC5A32A6A2EC5048CF5D51E0DEEBC45596CEBE96C3CDCC95E8CC6374BA5CA855470E1D9827EF4664065C8A532AA469E81A0F862C50D41D9CDE2B88DA31EA1976321421D8D4DF8E310C990C031870086540D88EF1319C306A7F80C59577077CC043C6F20BC1A5E06F8507F8E863E0F910C8C5254C93E58D1CD3B08A7C96CE98B1E578E2358FB87CBD6F1AE7A89C4C186438C9F9672CBD007E050E0191E07C245242C0950C883C5DD2AEE93AA18190EA63AA12D18971671A67647E0A7C266F07E6FE4F186927740E4EFA2431E39A530C5364924108156636AB3E25AD9AF1E33634BFA381BC75D05FA9EA23FC7C45DDD5251D2ABC2919ED7BA6093A27F774166DA1BE23098A9534D3B8041611895BEAC7E9640973457113598009E724F0DC4B8FE5232AF7FBCD15096680F175E535108DBD30B03553FBD63264BB05726CF846025931BC0472A740BE24FC6E0391D415A529EC3685CF147A8DF84C41BC2E3EED0081C371DD1BA93505692F287D2937759A37576E8609E4365E71322C37559D02D14D6A8B1EDB35545515A88EF4A175485BCDA6E2FCA51A3DD76A94C3E236A05B519CDA50DE05BA874278368DACADEAA1D2D259F4C131778C2E7534767DA91EE3362024A98F20448BF0B46DEA60BBE047C040827168C727C621113671CABB81AB7256B22DCB0015B6C515B968DB0F259518001028041286E775812145B92C470BE536F509EBE0278DB763ACA9C5675AF45F8EC007AEC2A4832BBAA82F1C31CA7664EAB4CD697355DFCAC1AF159575F1D3B0FFADC154408196B21F0BA4ADC5AADAC8EDA2B5C5738F83D916CF743142EF561E01BC71A2451E891C102C01EC4CD4439857B5FDD702928E40248547478C123A06A99D7D9659BD3A9B595DC4446A9B64C501D1222B57D1AA2469C0ED2AACC1362D5E3589B9DD598AAD3E17E6489BCE8F3A743A96C16C699ABB4B50EC58BA4AF2CA09A7B8F66E7EA96D4F2ABDD32919AF9A8E732BD3F7BFD9596D29B44AF00A5E4B9BA72CA69717F3567C339FDEE05B3557F8FD33E2FBD881E6AEF49327C638BECF1FBE1AAF7EB3EDC6322C5B545C7067D6669AB09F465869BFA26AB4343A14E399904C88EA81878E5B222B64B09AE84D5515925479EBD2584EC9D5E79865C51BF68A1A90C83CC1A5BAAA9A44A7881C005AF8A3610B6124A838B90C3D16BABCBEBAD573E7EE1CF242728FBBCB5A5E22E4452D9F769794BB14C88BCA3DEE2EABD022E6A535F68E2A64B40D2B15E8125C4ADD55117C2B40334E2E5BC26754951E80CF6AFEEDE0333E2BE7F9E327CF66BF9A2ACC0377ABD898ACB5612D225E72CA7A39456FDEF302DB1AFBA747EA96924BB1EB7D185CBFC21453EAE574924C7BD6D369BD5B3FE9A3DADFD1283556318969A06BEEA9A39AAAF14248707B8AA037FE830D19C5F52E09CE08A7531032BEA935F777F7F6B5F73A9ECF3B1696100E5BE5458B47BF73A6CAB5ADB7CA2BCE434AE3247E4F02FB9604E581D203A745A9E0EF5C32FFFEE11320F5596EE88583C8B3A54B8D1177603E30FF8AF80E8CD16F3739D61DE32240841F18BBC6DF2D26AC39FFFF32F0951F63D422A03CAA587F26FD65B8EDEB0BCBEAC16CD7C82C726F29381B1A8FCF16681B8ECF4D0EE49ECF082EBEF37DCAA1DBA38ED96A4E925FE860EDB9CDD1AAC0F61463B3C79E927546DDB3198A956F9E9BA7425AD6681B7EC5C72D2CA9130FF11067E20249790850AB31C672DB88AC5163E528A34AA306D60ED3B41ABD05AAD554D7AF572369535DBDEA279BCE1586418D03CEA64A563B4FF82C4771FA7A1A07AB2D69B7E962742B13B7F26D0CA6A9DCFFD560CA1474B614A1FECB86835D485019CD884FBD345F6A16A5245AFB77069260CB4E0E0349A7C496F8B30D42446F9B7D222C4492637702CE885F84D20F252E19DC092BBCBDA6F26D93FE68AC58B4B97FE1476F986D6209682655A78E0BFE2EA4CCC9EC3EA968F66B44A8449EF4D46A2FA5EAAD678B4CD2B9C73B0A4ADC97D59F2B707D86C2C4051F937B58C7B66B01A73023F622BD54AB17D2BE1145B7F78F289905C415898C253F7E450C3BEEFCCDFFD565954E5E360000, N'6.4.0')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201912140643490_InitialMigration1', N'ZadDomLab4JakubKazimierski.Migrations.Configuration', 0x1F8B0800000000000400ED5C596FE336107E2FD0FF20E8A92DB251926D8136B077917592C2BB391671B228FA12D012ED10912855A402A7457F591FFA93FA173AD44951177DE658232FB6341787DF7086E438FFFDF36FEFFDCC738D071C32E2D3BEB9BFBB671A98DABE43E8B46F467CF2E667F3FDBB6FBFE99D38DECCF892D1BD1574C04959DFBCE33C38B42C66DF610FB15D8FD8A1CFFC09DFB57DCF428E6F1DECEDFD62EDEF5B18449820CB307A5711E5C4C3F117F83AF0A98D031E21F7DC77B0CBD2E7F066144B352E908759806CDC377F47CEB1EF9DA1F18F1FD17D34FE84FE241E01BBEEC96EC26C1A472E4160D808BB13D34094FA1C7130FBF086E1110F7D3A1D05F000B9D78F0106BA0972194E87735890EB8E6CEF408CCC2A18335176C4B8EFCD2970FF6DEA2A4B655FC8E166EE4A70E609389D3F8A51C70EED9BA71F86688A2967678471D350351E0EDC50506B387DB7246AC76866D8C9510460137F3BC620727914E23EC5110F91BB637C8EC62EB13FE1C76BFF1ED33E8D5C571E080C05DE951EC0A3CFA11FE0903F5EE1493ABCA1631A5699CF52197336892719F390F2B707A67101CAD1D8C5394E24FF8CB81FE25F31C521E2D8F98C38C721153270ECE98A7645D7290919171F3395804E883BD33847B3334CA7FCAE6F1EFC0491764A66D8C99EA466DC5002610A4C3C8C708D99EDAACF50A766F8B80ECD1F48C8EF1CF057A6FA183E5F136F7E4947026F4246F79C29822ED00399C653A8CE488A6221CD34AEB01B13B13B1224CB49017341711B5B000BCE69E87B57BE2B4794F4FEF61A85530CF175EDB7108DFC28B415537B5611B27A819C18BE9240160CDB40D60AE42B44EF571049BA28CD60B72A7C66D06BC56706E2E5F079431D1CDA3E141C2B426921708BD56DD269D21C637810021C2872579A2EEC54685A42B5856401D5DB2A634D88B6D037876C1BD3B221AC98BC64FC96A46D83771BBC4D9A575731662BC0CA8BC61CCB6D856389E836B3454DCF0D5475456413E9B2A5A4329A55C5F9B6A07CAE05A584C57540B7265975A15C07BA478CF93689ADADDB0665D56FD90727D431744AE1C4F595921AA601204902002158D437F74D156C97F418BB9863E3C84E0E7D0688D9C8A9CE068CCA99CBB67C05A8B12DC9C865DB7EA8A88400C0A14020720730C5105284F26AB4106A9300B91A7E527835634D0C3ED7A2BE39C601A6224C345CA1A3BE744A50B52357A74C4E97AB7A9604BF4E5436C54FCBFC7706530905CA92BD29907626AB7A23D78BD60ECF6D06B31D9ED13142AD569E0ABCDDBB97CE654C6B2B53B3ACC9C7055D709953ED02105D691C2DB7166B8C6C936BB3C6FC6AAFD5F2367D03904F6A0BE0E1C081C302F6CE583CC4B3BA9DEE0DC36911CCD25A4BC5A2103AC25C39B12B0A99FA045E81749D98586D9BAC240768C99203AC59A04CD52156AA0DEBE429F1A52BAC65C84AE653244A935E88AD3F249548DB0E5355446A1694F9D09459AC205CB308ACC8AB2E39E5B1EBF9A5B1D0AFF58E5659336F61238D4C9DFF7667751523758257E3358DF3BD16746967D6C5736B052DCD11BD78265DD2BFD9362F5F8A8B2E002B6903C8DA05AC867E81DE390A02D82B4BFD03E9136394340F0CDE8CE6BF46F7121996CD6A6ED3736B734DB0F3079F296F4135581A1FDF1D238EC648ECD6078E57212B259E86D5315355CA2DD549CCD6CA8C5C7C4E58E6BCCEAFC9DDA9CC5318AA27EA81F8BC430240077FDCD9815C14D69CB10C7C37F268737DD2CC2D9D8ECA42A4C7FAB28AE34E5954F1545F92747C298B921EEBCB2A6D666569ADBB5C1132CA8455EAAA0A5C2AF56B197C73403359BCD784CF38EB2F81CF7AFEF5E03339D593F99327CF6CBEA4DCB0A6496BD630CFD4B549F99A1698CAAEA9B230B46DA99E0C6C6DE5E292286BADA1F420D621E26BC2D72A13987AA6250BEC3AEF7A7AA4AE299395B7B0CBC1F52BCC67958D834A926BCF3710CA46A19716EDDDDDC7952A3E21310D70CD037144053F7A641C7BBB826077F4873B70098CB7203847944C30E3C905A679B0B77FA0742C3F9FEE618B31C7ADD9F434B6106FFC2A9608D7765EB6CED92650E9B2A00F28B4EF5058EDB358B2892213FC9D8766DF2FDF18213EF315B5D2C69EAD1C7C0EA1E69AF5CDBF62BE4363F8DBADC4BA635C8680F04363CFF8BBC384053B5B5F07BEE4DBFD4604546FF097EAB67C1D9E7B2991D9D06F38574C15EC6B8AABB63BBC2D405ECAD25DDFD3A68BB432F7BA81B65DC337D1CBF47CBA9792AB8FA7EC57DAE82D78C369C32BED497A6E2D4875607B8A8EA34D371869A3EE55F4132D3EDDEB5EECE42BD5657B999606A2362856DF01F4C23A7DAAF7B20D6782F5BF99AE6B4991DF27E74350DF8D7D804552169448AA57E48D1A9385B55963F2BE55636D2345B3C6F9DB835AB517845A3628E15C678042D2A0BD44359FEA669F2B245DAAEB3DFF64FD49A5768DD6CEB1B6D2AEF1C6FF453623A9E3696D2DEB484C6DB7492FB9E768F1617667CD8E4BDEB5B412554FFE21C348FF9D04321E23D34284F85F2514DBA5DC92D30CE9C4CF729D625146A26C23CF3147B0F547472127136473786D63C6E21FFC7C416E042427DE183B437A19F120E23064EC8DDDD20F8844AA6CD31FF74B956DEE5D06F18F7C563104309388D38B4BFA2122AE93DB7D5A7368D02042E4E0746F2EE6928B3DFAF4319774E1534D41A9FBF2D2E11A7B810BC2D8251DA107BC886D370C9FE129B21FB30B9C6621DD1351767BEF98A069883C96CA28F8E12B60D8F166EFFE072AB9CF1DA4470000, N'6.4.0')
SET IDENTITY_INSERT [dbo].[FBIagentsLists] ON 

INSERT [dbo].[FBIagentsLists] ([Id], [FirstName], [LastName], [Birthdate], [AgentTypeId]) VALUES (2, N'James', N'Blunt', CAST(N'1997-12-12T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[FBIagentsLists] ([Id], [FirstName], [LastName], [Birthdate], [AgentTypeId]) VALUES (3, N'Michael', N'Cole', CAST(N'1988-02-11T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[FBIagentsLists] ([Id], [FirstName], [LastName], [Birthdate], [AgentTypeId]) VALUES (5, N'Jacob', N'Colombo', CAST(N'1965-04-10T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[FBIagentsLists] ([Id], [FirstName], [LastName], [Birthdate], [AgentTypeId]) VALUES (6, N'Johny', N'Doe', CAST(N'1967-11-11T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[FBIagentsLists] ([Id], [FirstName], [LastName], [Birthdate], [AgentTypeId]) VALUES (7, N'Jake', N'Taylor', CAST(N'1933-03-07T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[FBIagentsLists] ([Id], [FirstName], [LastName], [Birthdate], [AgentTypeId]) VALUES (8, N'Adrian', N'James', CAST(N'1991-01-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[FBIagentsLists] ([Id], [FirstName], [LastName], [Birthdate], [AgentTypeId]) VALUES (9, N'Victor', N'Marson', CAST(N'1997-05-12T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[FBIagentsLists] ([Id], [FirstName], [LastName], [Birthdate], [AgentTypeId]) VALUES (10, N'Edmund', N'Kirk', CAST(N'1976-11-10T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[FBIagentsLists] ([Id], [FirstName], [LastName], [Birthdate], [AgentTypeId]) VALUES (11, N'Jones', N'Kristhoper', CAST(N'1988-03-11T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[FBIagentsLists] ([Id], [FirstName], [LastName], [Birthdate], [AgentTypeId]) VALUES (12, N'Ignacy', N'Paderewski', CAST(N'1966-11-11T00:00:00.000' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[FBIagentsLists] OFF
SET IDENTITY_INSERT [dbo].[FBIagentsTypes] ON 

INSERT [dbo].[FBIagentsTypes] ([Id], [Rank]) VALUES (1, N'Captain')
INSERT [dbo].[FBIagentsTypes] ([Id], [Rank]) VALUES (2, N'Detective')
INSERT [dbo].[FBIagentsTypes] ([Id], [Rank]) VALUES (3, N'Major')
SET IDENTITY_INSERT [dbo].[FBIagentsTypes] OFF
SET IDENTITY_INSERT [dbo].[FBIagentsUndercovers] ON 

INSERT [dbo].[FBIagentsUndercovers] ([Id], [FirstName], [LastName], [AgentCriminalId]) VALUES (5, N'Nevil', N'Cards', 8)
INSERT [dbo].[FBIagentsUndercovers] ([Id], [FirstName], [LastName], [AgentCriminalId]) VALUES (6, N'Mark', N'Wilson', 7)
INSERT [dbo].[FBIagentsUndercovers] ([Id], [FirstName], [LastName], [AgentCriminalId]) VALUES (9, N'Jack', N'Nevil', 10)
INSERT [dbo].[FBIagentsUndercovers] ([Id], [FirstName], [LastName], [AgentCriminalId]) VALUES (10, N'Kristian', N'Bale', 15)
SET IDENTITY_INSERT [dbo].[FBIagentsUndercovers] OFF
SET IDENTITY_INSERT [dbo].[FBIcriminalsLists] ON 

INSERT [dbo].[FBIcriminalsLists] ([Id], [FirstName], [LastName], [Birthdate], [CriminalTypeId]) VALUES (3, N'Michael', N'Corleone', CAST(N'1921-04-12T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[FBIcriminalsLists] ([Id], [FirstName], [LastName], [Birthdate], [CriminalTypeId]) VALUES (7, N'John', N'Adams', CAST(N'1991-12-11T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[FBIcriminalsLists] ([Id], [FirstName], [LastName], [Birthdate], [CriminalTypeId]) VALUES (8, N'Kevin', N'Cards', CAST(N'1991-02-11T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[FBIcriminalsLists] ([Id], [FirstName], [LastName], [Birthdate], [CriminalTypeId]) VALUES (10, N'Karl', N'Stefanson', CAST(N'1955-04-14T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[FBIcriminalsLists] ([Id], [FirstName], [LastName], [Birthdate], [CriminalTypeId]) VALUES (11, N'Newil', N'Derk', CAST(N'1977-10-10T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[FBIcriminalsLists] ([Id], [FirstName], [LastName], [Birthdate], [CriminalTypeId]) VALUES (12, N'Adam', N'Nice', CAST(N'1979-04-15T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[FBIcriminalsLists] ([Id], [FirstName], [LastName], [Birthdate], [CriminalTypeId]) VALUES (13, N'Pander', N'Wilson', CAST(N'1999-10-03T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[FBIcriminalsLists] ([Id], [FirstName], [LastName], [Birthdate], [CriminalTypeId]) VALUES (14, N'Kars', N'Wamu', CAST(N'1966-05-14T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[FBIcriminalsLists] ([Id], [FirstName], [LastName], [Birthdate], [CriminalTypeId]) VALUES (15, N'Kirsten', N'Dust', CAST(N'1977-04-30T00:00:00.000' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[FBIcriminalsLists] OFF
SET IDENTITY_INSERT [dbo].[FBIcriminalsTypes] ON 

INSERT [dbo].[FBIcriminalsTypes] ([Id], [Rank]) VALUES (1, N'Boss')
INSERT [dbo].[FBIcriminalsTypes] ([Id], [Rank]) VALUES (2, N'Soldier')
INSERT [dbo].[FBIcriminalsTypes] ([Id], [Rank]) VALUES (3, N'GodFather')
SET IDENTITY_INSERT [dbo].[FBIcriminalsTypes] OFF
/****** Object:  Index [IX_AgentTypeId]    Script Date: 15.12.2019 02:41:06 ******/
CREATE NONCLUSTERED INDEX [IX_AgentTypeId] ON [dbo].[FBIagentsLists]
(
	[AgentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AgentCriminalId]    Script Date: 15.12.2019 02:41:06 ******/
CREATE NONCLUSTERED INDEX [IX_AgentCriminalId] ON [dbo].[FBIagentsUndercovers]
(
	[AgentCriminalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CriminalTypeId]    Script Date: 15.12.2019 02:41:06 ******/
CREATE NONCLUSTERED INDEX [IX_CriminalTypeId] ON [dbo].[FBIcriminalsLists]
(
	[CriminalTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FBIagentsLists]  WITH CHECK ADD  CONSTRAINT [FK_dbo.FBIagentsLists_dbo.FBIagentsTypes_AgentTypeId] FOREIGN KEY([AgentTypeId])
REFERENCES [dbo].[FBIagentsTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FBIagentsLists] CHECK CONSTRAINT [FK_dbo.FBIagentsLists_dbo.FBIagentsTypes_AgentTypeId]
GO
ALTER TABLE [dbo].[FBIagentsUndercovers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.FBIagentsUndercovers_dbo.FBIcriminalsLists_AgentCriminalId] FOREIGN KEY([AgentCriminalId])
REFERENCES [dbo].[FBIcriminalsLists] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FBIagentsUndercovers] CHECK CONSTRAINT [FK_dbo.FBIagentsUndercovers_dbo.FBIcriminalsLists_AgentCriminalId]
GO
ALTER TABLE [dbo].[FBIcriminalsLists]  WITH CHECK ADD  CONSTRAINT [FK_dbo.FBIcriminalsLists_dbo.FBIcriminalsTypes_CriminalTypeId] FOREIGN KEY([CriminalTypeId])
REFERENCES [dbo].[FBIcriminalsTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FBIcriminalsLists] CHECK CONSTRAINT [FK_dbo.FBIcriminalsLists_dbo.FBIcriminalsTypes_CriminalTypeId]
GO
USE [master]
GO
ALTER DATABASE [FBIdataBase] SET  READ_WRITE 
GO
