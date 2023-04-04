create table Company
(
    ID int identity(1,1),
    Name null,
    CompanyTaxID null,
    CompanySecret1 null,
    CompanySecret2 null,

    constraint Company_PK primary key (ID)
)
