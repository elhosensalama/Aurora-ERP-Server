create table Currency
(
    ID int identity(1,1),
    Name not null,
    Unit null,
    ValueInEGP null,

    constraint Currency_PK primary key (ID)
)
