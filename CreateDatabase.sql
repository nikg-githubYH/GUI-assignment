CREATE TABLE [dbo].[Cinemas](
    [ID] [int] IDENTITY(1,1) NOT NULL,
    [Name] [nvarchar](255) NOT NULL,
    [City] [nvarchar](255) NOT NULL,
    CONSTRAINT [PK_Cinemas] PRIMARY KEY CLUSTERED([ID] ASC)
)

CREATE TABLE [dbo].[Movies](
    [ID] [int] IDENTITY(1,1) NOT NULL,
    [Title] [nvarchar](255) NOT NULL,
    [Runtime] [smallint] NOT NULL,
    [ReleaseDate] [date] NOT NULL,
    [PosterPath] [nvarchar](255) NOT NULL,
    CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED([ID] ASC)
)

CREATE TABLE [dbo].[Screenings](
    [ID] [int] IDENTITY(1,1) NOT NULL,
    [Time] [time](0) NOT NULL,
    [MovieID] [int] NOT NULL,
    [CinemaID] [int] NOT NULL,
    CONSTRAINT [PK_Screenings] PRIMARY KEY CLUSTERED([ID] ASC)
)

CREATE TABLE [dbo].[Tickets](
    [ID] [int] IDENTITY(1,1) NOT NULL,
    [ScreeningID] [int] NOT NULL,
    [TimePurchased] [datetime] NOT NULL,
    CONSTRAINT [PK_Tickets] PRIMARY KEY CLUSTERED([ID] ASC)
)

CREATE UNIQUE NONCLUSTERED INDEX [IX_Cinemas] ON [dbo].[Cinemas]([Name] ASC)

ALTER TABLE [dbo].[Screenings] ADD CONSTRAINT [FK_Screenings_Cinemas] FOREIGN KEY([CinemaID]) REFERENCES [dbo].[Cinemas] ([ID])

ALTER TABLE [dbo].[Screenings] ADD CONSTRAINT [FK_Screenings_Movies] FOREIGN KEY([MovieID]) REFERENCES [dbo].[Movies] ([ID])

ALTER TABLE [dbo].[Tickets] ADD CONSTRAINT [FK_Tickets_Screenings] FOREIGN KEY([ScreeningID]) REFERENCES [dbo].[Screenings] ([ID])