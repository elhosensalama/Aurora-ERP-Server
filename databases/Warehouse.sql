create table Warehouses(
    ID int identity(1,1),
    Name not null,
    BranchID,

    constraint Warehouse_PK primary key (ID)
)
