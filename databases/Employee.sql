create table Banks
(
    ID int identity(1,1),
    Name not null,
    -- Type: Employee , SallesPerson, Driver
    Type null,
    SocialStates null,
    BranchID int,
    DepartmentID int,
    Degree null,
    Job null,
    Nato null,
    Gender null,
    MiliteryState null,
    MiliteryStateReson null,
    Address null,
    Phone null,
    WorkingShift null,
    StartWorkingDate null,
    EndWorkingDate null,
    BirthDate null,
    Salary null,
    SalaryForHousing null,
    SalaryForTransportation null,
    SalaryBouns null,
    SalaryAddons null,
    Tag1 null,
    Tag2 null,
    Tag3 null,
    Tag4 null,
    WorkingState null,

    constraint Banks_PK primary key (ID)
)
