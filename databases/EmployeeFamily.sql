create table EmployeesFamily
(
    ID int identity(1,1),
    Name not null,
    EmployeeID null,
    NID null,
    BirthDate null,
    StudingLevel null,

    constraint EmployeesFamily_PK primary key (ID)
)
