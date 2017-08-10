function AppViewModel() {
    this.firstName = ko.observable("");
    this.lastName = ko.observable("");
    this.middleName = ko.observable("");
    this.SSSdeduction = ko.observable("");
    this.PHdeduction = ko.observable("");
    this.PIdeduction = ko.observable("");
    this.basicSalary = ko.observable("");
    this.sector = ko.observable("");
    this.workSector = ko.observable("");
    this.period = ko.observable("");
    this.salaryPeriod = ko.observable("");
    this.status = ko.observable("");
    this.employeeStatus = ko.observable("");


    this.Sector = [
        { sector: "Private"},
        { sector: "Government"}
    ];

    this.Period = [
        { period: "Monthly" },
        { period: "Semi-monthly"}
    ];

    this.Status = [
        { status: "Single"},
        { status: "Married"},
        { status: "Single with 1 Dependent"},
        { status: "Single with 2 Dependents"},
        { status: "Single with 3 Dependents"},
        { status: "Single with 4 Dependents"},
        { status: "Married with 1 Dependent"},
        { status: "Married with 2 Dependents"},
        { status: "Married with 3 Dependents"},
        { status: "Married with 4 Dependents"}
    ];

    this.btnCompute = function(data,event) {
        alert("triggered");
    }



}

ko.applyBindings(new AppViewModel());