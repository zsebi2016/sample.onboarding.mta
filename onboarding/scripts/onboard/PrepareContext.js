var empData = {};
var user = {};
user.dateOfBirth = '1982-08-25T00:00:00.000';
user.businessPhone = '+1887238812122';
user.department = 'BusInnovation HR Integration (BI_12_D_1_DEP_1)';
user.username = '123456789';
user.title = 'Analyst';
user.division = 'Business Innovation HR (BI_12_D_1)';
user.userId = '123456789';
user.firstName = 'Ervin';
user.mi = 'William';
user.lastName = 'Clark';
user.hireDate = '2016-08-26T00:00:00.000';
user.country = 'United States';
user.email = 'ervi.clark@sfusa.com';
user.jobCode = 'OPS-MGR (OPS-MGR)';
user.defaultFullName = 'Ervin William Clark';

empData.User = user;

var personal = {};
personal.middleName = 'William';
personal.nationality = 'USA';
personal.personIdExternal = 'ERVIN.CLARK';
personal.gender = 'M';

empData.PerPersonal = personal;

var emp = {};
emp.startDate = '2016-08-25T00:00:00.000';
emp.jobEntryDate = '2016-08-25T00:00:00.000';
emp.isFulltimeEmployee = 'true';
emp.department = 'BI_12_D_1_DEP_1';
emp.division = 'BI_12_D_1';
emp.userId = '123456789';
emp.jobTitle = 'Analyst';
emp.countryOfCompany = 'USA';
emp.hireDate = '2016-08-25T00:00:00.000';
emp.payGroup = 'NA_GROUP';
emp.costCenter = '35106';
emp.businessUnit = 'BI_12';
emp.managerId = 'jdekker1';
emp.company = 'ACE_USA';
emp.jobCode = 'OPS-MGR';
emp.localJobTitle = 'Analyst';
emp.emplStatus = '1801';

empData.EmpJob = emp;

$.context.empData = empData;