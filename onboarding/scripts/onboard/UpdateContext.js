var sfData = $.context.empData;

var empData = {};
var user = {};
user.dateOfBirth = sfData.d.results[0].dateOfBirth;
user.businessPhone = sfData.d.results[0].businessPhone;
user.department = sfData.d.results[0].department;
user.username = sfData.d.results[0].username;
user.title = sfData.d.results[0].title;
user.division = sfData.d.results[0].division;
user.userId = sfData.d.results[0].userId;
user.firstName = sfData.d.results[0].firstName;
user.mi = sfData.d.results[0].mi;
user.lastName = sfData.d.results[0].lastName;
user.hireDate = sfData.d.results[0].hireDate;
user.country = sfData.d.results[0].country;
user.email = sfData.d.results[0].email;
user.jobCode = sfData.d.results[0].jobCode;
user.defaultFullName = sfData.d.results[0].defaultFullName;

empData.User = user;

var personal = {};
personal.middleName = sfData.d.results[0].empInfo.personNav.personalInfoNav.results[0].middleName;
personal.nationality = sfData.d.results[0].empInfo.personNav.personalInfoNav.results[0].nationality;
personal.personIdExternal = sfData.d.results[0].empInfo.personNav.personalInfoNav.results[0].personIdExternal;
personal.gender = sfData.d.results[0].empInfo.personNav.personalInfoNav.results[0].gender;

empData.PerPersonal = personal;

var emp = {};
emp.startDate = sfData.d.results[0].empInfo.jobInfoNav.results[0].startDate;
emp.jobEntryDate = sfData.d.results[0].empInfo.jobInfoNav.results[0].jobEntryDate;
emp.isFulltimeEmployee = sfData.d.results[0].empInfo.jobInfoNav.results[0].isFulltimeEmployee;
emp.department = sfData.d.results[0].empInfo.jobInfoNav.results[0].department;
emp.division = sfData.d.results[0].empInfo.jobInfoNav.results[0].division;
emp.userId = sfData.d.results[0].empInfo.jobInfoNav.results[0].userId;
emp.jobTitle = sfData.d.results[0].empInfo.jobInfoNav.results[0].jobTitle;
emp.countryOfCompany = sfData.d.results[0].empInfo.jobInfoNav.results[0].countryOfCompany;
emp.hireDate = sfData.d.results[0].empInfo.jobInfoNav.results[0].hireDate;
emp.payGroup = sfData.d.results[0].empInfo.jobInfoNav.results[0].payGroup;
emp.costCenter = sfData.d.results[0].empInfo.jobInfoNav.results[0].costCenter;
emp.businessUnit = sfData.d.results[0].empInfo.jobInfoNav.results[0].businessUnit;
emp.managerId = sfData.d.results[0].empInfo.jobInfoNav.results[0].managerId;
emp.company = sfData.d.results[0].empInfo.jobInfoNav.results[0].company;
emp.jobCode = sfData.d.results[0].empInfo.jobInfoNav.results[0].jobCode;
emp.localJobTitle = sfData.d.results[0].empInfo.jobInfoNav.results[0].localJobTitle;
emp.emplStatus = sfData.d.results[0].empInfo.jobInfoNav.results[0].emplStatus;

empData.EmpJob = emp;

$.context.empData = empData;