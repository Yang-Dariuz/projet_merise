USE [EL-massar]
GO
/****** Object:  Table [dbo].[categorie_chambre]    Script Date: 25/02/2022 2:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categorie_chambre](
	[code_ch] [int] NOT NULL,
	[descriptions] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[code_ch] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categorie_hotel]    Script Date: 25/02/2022 2:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categorie_hotel](
	[code_h] [int] NOT NULL,
	[nb_etoil] [int] NULL,
	[caracteristique] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[code_h] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chambre]    Script Date: 25/02/2022 2:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chambre](
	[num_cham] [int] NOT NULL,
	[tel_cham] [int] NULL,
	[code_chs] [int] NULL,
	[d_h] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[num_cham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[client]    Script Date: 25/02/2022 2:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client](
	[id_client] [int] NOT NULL,
	[Nom] [varchar](25) NOT NULL,
	[Prenom] [varchar](25) NOT NULL,
	[Adresse] [varchar](25) NOT NULL,
	[Ville] [varchar](25) NOT NULL,
	[cod_post] [varchar](25) NOT NULL,
	[Pays] [varchar](25) NOT NULL,
	[Tel] [varchar](25) NULL,
	[Email] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[conserner_com]    Script Date: 25/02/2022 2:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[conserner_com](
	[id_c] [int] NOT NULL,
	[id_con] [int] NULL,
	[code_p] [int] NULL,
	[description] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_c] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[consommation]    Script Date: 25/02/2022 2:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consommation](
	[id_con] [int] NOT NULL,
	[date_con] [date] NULL,
	[heure_con] [time](7) NULL,
	[id_client] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_con] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[facture]    Script Date: 25/02/2022 2:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[facture](
	[id_f] [int] NOT NULL,
	[date] [date] NULL,
	[heure] [time](7) NULL,
	[montant] [float] NULL,
	[id_reva] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_f] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hotel]    Script Date: 25/02/2022 2:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hotel](
	[id_h] [int] NOT NULL,
	[nomH] [varchar](25) NULL,
	[adresse] [varchar](25) NULL,
	[cph] [varchar](25) NULL,
	[tel] [varchar](25) NULL,
	[code_h] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_h] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[offrir]    Script Date: 25/02/2022 2:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[offrir](
	[id_of] [int] NOT NULL,
	[id_h] [int] NULL,
	[code_p] [int] NULL,
	[description_offre] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_of] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prestation]    Script Date: 25/02/2022 2:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prestation](
	[code_p] [int] NOT NULL,
	[designantion] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[code_p] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[receptionniste]    Script Date: 25/02/2022 2:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[receptionniste](
	[id_res] [int] NOT NULL,
	[Nom] [varchar](25) NULL,
	[Prenom] [varchar](25) NULL,
	[poste] [int] NULL,
	[Tel] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_res] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservation]    Script Date: 25/02/2022 2:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservation](
	[id_reva] [int] NOT NULL,
	[date_debut] [date] NULL,
	[date_fin] [date] NULL,
	[date_paye] [date] NULL,
	[montant] [float] NULL,
	[id_client] [int] NULL,
	[id_rescep] [int] NOT NULL,
	[num_cham] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_reva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[chambre]  WITH CHECK ADD FOREIGN KEY([code_chs])
REFERENCES [dbo].[categorie_chambre] ([code_ch])
GO
ALTER TABLE [dbo].[chambre]  WITH CHECK ADD FOREIGN KEY([d_h])
REFERENCES [dbo].[hotel] ([id_h])
GO
ALTER TABLE [dbo].[conserner_com]  WITH CHECK ADD FOREIGN KEY([code_p])
REFERENCES [dbo].[prestation] ([code_p])
GO
ALTER TABLE [dbo].[conserner_com]  WITH CHECK ADD FOREIGN KEY([id_con])
REFERENCES [dbo].[consommation] ([id_con])
GO
ALTER TABLE [dbo].[consommation]  WITH CHECK ADD FOREIGN KEY([id_client])
REFERENCES [dbo].[client] ([id_client])
GO
ALTER TABLE [dbo].[facture]  WITH CHECK ADD FOREIGN KEY([id_reva])
REFERENCES [dbo].[reservation] ([id_reva])
GO
ALTER TABLE [dbo].[hotel]  WITH CHECK ADD FOREIGN KEY([code_h])
REFERENCES [dbo].[categorie_hotel] ([code_h])
GO
ALTER TABLE [dbo].[offrir]  WITH CHECK ADD FOREIGN KEY([code_p])
REFERENCES [dbo].[prestation] ([code_p])
GO
ALTER TABLE [dbo].[offrir]  WITH CHECK ADD FOREIGN KEY([id_h])
REFERENCES [dbo].[hotel] ([id_h])
GO
ALTER TABLE [dbo].[reservation]  WITH CHECK ADD FOREIGN KEY([id_client])
REFERENCES [dbo].[client] ([id_client])
GO
ALTER TABLE [dbo].[reservation]  WITH CHECK ADD FOREIGN KEY([id_rescep])
REFERENCES [dbo].[receptionniste] ([id_res])
GO
ALTER TABLE [dbo].[reservation]  WITH CHECK ADD FOREIGN KEY([num_cham])
REFERENCES [dbo].[chambre] ([num_cham])
GO
