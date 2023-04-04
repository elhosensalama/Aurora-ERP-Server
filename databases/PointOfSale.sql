create table PointOfSales(
    ID int identity(1,1),
    Name not null,
    BranchID int,
    PosTaxID null,
    PosTaxSecret1 null,
    PosTaxSecret2 null,

    constraint PointOfSale_PK primary key (ID)
)
