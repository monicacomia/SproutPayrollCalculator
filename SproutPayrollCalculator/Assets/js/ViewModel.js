function AppViewModel() {
    this.username = ko.observable("");
    this.password = ko.observable("");
    this.firstName = ko.observable("Juan");
    this.lastName = ko.observable("Dela Cruz");
    this.middleName = ko.observable("");
    this.SSSdeduction = ko.observable("");
    this.PHdeduction = ko.observable("");
    this.PIdeduction = ko.observable("");
    this.period = ko.observable("");
    this.salaryPeriod = ko.observable("");
    this.status = ko.observable("");
    this.employeeStatus = ko.observable("");
    this.sector = ko.observable("");
    this.workSector = ko.observable("");

    this.healthMaintainance = ko.observable("");
    this.overtimePay = ko.observable("");
    this.nightDiff = ko.observable("");
    this.holidayPay = ko.observable("");
    this.absences = ko.observable("");
    this.tardiness = ko.observable("");
    this.undertime = ko.observable("");

    this.fullName = ko.computed(function () {
        return this.lastName() + ", " + this.firstName() + " " + this.middleName();
    }, this);

    this.basicSalary = ko.observable().extend({
        isValid: {
            validate: { min: 0 },
            message: "Please enter positive values."
        }
    });

    this.Sector = [
        { sector: "Private" },
        { sector: "Government" }
    ];

    this.Period = [
        { period: "Monthly" },
        { period: "Semi-monthly" }
    ];

    this.Status = [
        { status: "Single" },
        { status: "Married" },
        { status: "Single with 1 Dependent" },
        { status: "Single with 2 Dependents" },
        { status: "Single with 3 Dependents" },
        { status: "Single with 4 Dependents" },
        { status: "Married with 1 Dependent" },
        { status: "Married with 2 Dependents" },
        { status: "Married with 3 Dependents" },
        { status: "Married with 4 Dependents" }
    ];

    this.Profile = [
        { profile: "Logout" }
    ];

    this.btnCompute = function (data, event) {

        alert("triggered");
    }

}

ko.applyBindings(new AppViewModel());
