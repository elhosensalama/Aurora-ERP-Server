create table Customers
(
    ID int identity(1,1),
    Name not null,

    constraint Customer_PK primary key (ID)
)
