CREATE TABLE Country(
   Name varchar(20),
   Id int PRIMARY KEY
);

CREATE TABLE League(
   Name varchar(20),
   CountryId int,
   Id int PRIMARY KEY,
   FOREIGN KEY(CountryId) REFERENCES Country(Id)
);

CREATE TABLE Team(
   TeamId int PRIMARY KEY, 
   TeamName varchar(50),
   TeamShort varchar(20)
);

CREATE TABLE Matches(
   Id int PRIMARY KEY, 
   CountryId int, 
   LeagueId int, 
   Season char(10),
   MatchDate Date,
   HomeTeamId Int, 
   AwayTeamId Int,
   HomeScore Int, 
   AwayScore Int, 
   FOREIGN KEY(HomeTeamId) REFERENCES Team(TeamId),
   FOREIGN KEY(AwayTeamId) REFERENCES Team(TeamId)
);

