create table Accounts
(
    ID int identity(1,1),
    Code not null,
    Name not null,
    ParentAccountID not null,
    Kind not null,
    Balance not null default 0,

    constraint Account_PK primary key (ID)
)

insert into Accounts (Code, Name, ParentAccountID, Kind, Balance)
values ()
