Setup SAP Cloud Platform Workflow Service Sample Application.

This sample application is an extension to SuccessFactors Employee Onboarding. Please see more details https://www.sap.com/germany/developer/blueprints/finder/automating-employee-onboarding.html 

The sample application contains the workflow model and task UIs.

Enable Workflow Service in SAP WebIDE.
https://help.sap.com/viewer/e157c391253b4ecd93647bf232d18a83/Cloud/en-US/07adfa6d819a42e9966e63de1a654de4.html

Refer workflow model onboard.workflow under sample.onboarding.mta/onboarding/workflows.

1. Build and Deploy the sample application. More details:
https://help.sap.com/viewer/825270ffffe74d9f988a0f0066ad59f0/CF/en-US/1b0a7a0938944c7fac978d4b8e23a63f.html 
	Note: The sample application build archive will be available under 'mta_archives' folder with name 'sample.onboarding.mta_0.0.1.mtar'
2. Create a destination with name as SFSF, Type as HTTP and authentication as BasicAuthentication.

Please refer the user guide to create and operate the workflow instances.
https://help.sap.com/viewer/e157c391253b4ecd93647bf232d18a83/Cloud/en-US/e6163e119ba645d0ae6a31022b670381.html