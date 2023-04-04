create table Users (
    ID int identity (1,1),
    Username varchar(150) null,
    Photo varchar(100),
    Role char(5) default 'user',
    Password varchar(100),
    Active tinyint default 1,
)
