create table EmployeesDocs
(
    ID int identity(1,1),
    Name not null,
    EndingDate null,
    Path null,
    Isbarrowed null,
    ReturningDate null,

    constraint EmployeesDoc_PK primary key (ID)
)
