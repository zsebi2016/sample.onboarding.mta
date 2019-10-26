{
	"contents": {
		"72f53f11-cef3-46ba-aa5e-e56634fe7c76": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "onboard",
			"subject": "Onboarding ${context.userId}",
			"businessKey": "${context.userId}",
			"customAttributes": [{
				"id": "jobTitle",
				"label": "Job Title",
				"type": "string",
				"value": "${context.empData.personalInfo.jobTitle}"
			}, {
				"id": "country",
				"label": "Country",
				"type": "string",
				"value": "${context.empData.personalInfo.country}"
			}, {
				"id": "division",
				"label": "Division",
				"type": "string",
				"value": "${context.empData.personalInfo.division}"
			}, {
				"id": "username",
				"label": "User Name",
				"type": "string",
				"value": "${context.empData.personalInfo.username}"
			}],
			"name": "onboard",
			"documentation": "",
			"lastIds": "600eee18-fc10-4576-982b-74d08fbcb62e",
			"events": {
				"5f136fac-3aee-4c23-b9e4-5e4b837f3a16": {
					"name": "StartEvent1"
				},
				"b919de38-e160-4e57-8331-f1ee1aecd6f1": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"73782a02-988b-45d7-8557-0c6028f36181": {
					"name": "Get Employee Details from SuccessFactors"
				},
				"f0d6bbbe-6780-4d77-86f6-9a8f08e3ddfb": {
					"name": "Process Buddy List"
				},
				"279de180-6739-4615-b4b4-254005ef4f2b": {
					"name": "Change or Confirm equipment"
				},
				"c3176c60-9c77-43ef-8273-dd6b919ff1db": {
					"name": "Approve Equipment"
				},
				"8d59f760-8a8b-45cd-9591-2d05d71d7d12": {
					"name": "Accept workplace for new hire"
				},
				"7ba66efa-4d2e-47ff-bb5e-86e58b871488": {
					"name": "Prepare Rules Input"
				},
				"abdd4b7e-4934-419d-844e-e7daa896b0c6": {
					"name": "Merge"
				},
				"a8fe5750-1d27-4d9f-acdf-4350134cfc8b": {
					"name": "Get Buddy List from SFSF"
				},
				"f7bdd829-1523-44c8-94cc-17589aed7b38": {
					"name": " Determine Equipment"
				},
				"311e2517-9b51-4411-aaa7-6e3b1f2555da": {
					"name": "Enrich Context"
				}
			},
			"gateways": {
				"02ae551c-9537-4329-8def-60223984cb6a": {
					"name": "Split"
				},
				"a337a31f-dda3-452d-9296-9f3f5f9610fc": {
					"name": "Merge"
				},
				"a994f5eb-0a71-4d2c-bc67-94bde11a4052": {
					"name": "IsApproved"
				}
			},
			"sequenceFlows": {
				"97c061be-9415-456c-8587-0d182df22ea6": {
					"name": "SequenceFlow2"
				},
				"07df13d5-6eb1-4e44-9cfb-d683dd570652": {
					"name": "SequenceFlow9"
				},
				"f64b1fa6-714e-421c-89a3-4f5573abdc0d": {
					"name": "SequenceFlow11"
				},
				"0dc3be2e-8747-4908-869b-316b9f750d03": {
					"name": "Approved"
				},
				"f1073489-0fa7-499d-a170-da7040951ceb": {
					"name": "SequenceFlow16"
				},
				"f90ec70e-fd19-498e-a4a5-42e56ec87dea": {
					"name": "SequenceFlow18"
				},
				"80c472f8-81df-464d-9212-401f9f53c6cf": {
					"name": "SequenceFlow22"
				},
				"9b8f3946-3102-46d0-ae34-c4143a40016e": {
					"name": "Rejected"
				},
				"51db33c0-17de-4fc7-8242-a89856f1d0c7": {
					"name": "SequenceFlow24"
				},
				"102fc75c-0beb-4392-b9f0-5dac06ab2cd7": {
					"name": "SequenceFlow25"
				},
				"57248737-d91c-4ab8-9c05-3fabb339baf4": {
					"name": "SequenceFlow42"
				},
				"9e33400e-d354-4a9a-822d-11715cb9ca0b": {
					"name": "SequenceFlow47"
				},
				"ea06fcda-9a3c-4ed5-9cdb-556e0616322c": {
					"name": "SequenceFlow49"
				},
				"57199c54-0c15-4210-9040-d62d40e353bc": {
					"name": "SequenceFlow50"
				},
				"9d129990-b1a5-4339-8bd4-870cb43b7acb": {
					"name": "SequenceFlow51"
				},
				"77ba4d0e-94c1-47c7-a57c-a4824f7941ba": {
					"name": "SequenceFlow52"
				}
			},
			"diagrams": {
				"4ab8548a-fd15-4d6b-af74-84067a3c82b0": {}
			}
		},
		"5f136fac-3aee-4c23-b9e4-5e4b837f3a16": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"230b9879-ad0f-44ea-b14b-0d03f578364a": {}
			}
		},
		"b919de38-e160-4e57-8331-f1ee1aecd6f1": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"73782a02-988b-45d7-8557-0c6028f36181": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "SFSF",
			"path": "/odata/v2/User?$select=location,department,city,title,division,zipCode,userId,firstName,jobTitle,lastName,reloWilling,hireDate,addressLine1,reloLocation,country,keyPosition,jobCode,defaultFullName,empInfo/jobInfoNav/position,empInfo/jobInfoNav/startDate,empInfo/jobInfoNav/isFulltimeEmployee,empInfo/jobInfoNav/department,empInfo/jobInfoNav/division,empInfo/jobInfoNav/jobTitle,empInfo/jobInfoNav/countryOfCompany,empInfo/jobInfoNav/costCenter,empInfo/jobInfoNav/businessUnit,empInfo/jobInfoNav/managerId,empInfo/jobInfoNav/company,empInfo/jobInfoNav/jobCode&$filter=userId eq '${context.userId}'&$expand=empInfo/jobInfoNav&$format=json",
			"httpMethod": "GET",
			"responseVariable": "${context.empData}",
			"id": "servicetask1",
			"name": "Get Employee Details from SuccessFactors",
			"documentation": "Service task to get employee details from SuccessFactors system for a given employee id of an employee who is onboarding. ",
			"apiReference": "ac38d7da-575d-4efd-9df8-2b985108b6dc"
		},
		"f0d6bbbe-6780-4d77-86f6-9a8f08e3ddfb": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/onboard/ProcessCo-workersList.js",
			"id": "scripttask1",
			"name": "Process Buddy List",
			"documentation": "Prepare list of co-workers that we have got from SuccessFactors to show in User task."
		},
		"279de180-6739-4615-b4b4-254005ef4f2b": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Confirm or Change Equipment for ${context.empData.d.results[0].firstName} ${context.empData.d.results[0].lastName}",
			"description": "The buddy assigns appropriate equipment to the new hire",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://comsapcloudworkflowsamplesonboardequip/com.sap.cloud.workflow.samples.onboardequip",
			"recipientUsers": "${context.empData.buddies}, ${context.buddyId}",
			"id": "usertask1",
			"name": "Change or Confirm equipment",
			"documentation": "The buddy identifies the list of equipments which the new hire would need, considering the available inventory and profile of the new hire. "
		},
		"c3176c60-9c77-43ef-8273-dd6b919ff1db": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approve Equipment for ${context.empData.d.results[0].firstName} ${context.empData.d.results[0].lastName}",
			"description": "The manager approves the equipment list proposed by the buddy",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://comsapcloudworkflowsamplesonboardapprove/com.sap.cloud.workflow.samples.onboardapprove",
			"recipientUsers": "${context.managerId}",
			"id": "usertask2",
			"name": "Approve Equipment",
			"documentation": "The manager approves the equipment list proposed by the buddy"
		},
		"8d59f760-8a8b-45cd-9591-2d05d71d7d12": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Accept Workplace for ${context.empData.d.results[0].firstName} ${context.empData.d.results[0].lastName}",
			"description": "The buddy should confirm that the workplace & equipments are ready before the new hire joins the organization.",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://comsapcloudworkflowsamplesonboardaccept/com.sap.cloud.workflow.samples.onboardaccept",
			"recipientUsers": "${context.empData.buddies},${context.buddyId}",
			"id": "usertask3",
			"name": "Accept workplace for new hire",
			"documentation": "Confirm that all equipment for the new hire is ready and accept the workplace setup"
		},
		"7ba66efa-4d2e-47ff-bb5e-86e58b871488": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/onboard/DetermineEquipment.js",
			"id": "scripttask3",
			"name": "Prepare Rules Input",
			"documentation": "Identify the required equipment like laptop, mobile to onboarding employee"
		},
		"abdd4b7e-4934-419d-844e-e7daa896b0c6": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Merge"
		},
		"a8fe5750-1d27-4d9f-acdf-4350134cfc8b": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "SFSF",
			"path": "/odata/v2/User('${context.empData.d.results[0].empInfo.jobInfoNav.results[0].managerId}')?$expand=directReports&$select=directReports/userId&$format=json",
			"httpMethod": "GET",
			"responseVariable": "${context.empData.team}",
			"id": "servicetask6",
			"name": "Get Buddy List from SFSF",
			"documentation": "Service task to get co-workers of employee who is onboarding from SuccessFactors system, we will assign one of these co-worker as a Buddy to new join "
		},
		"02ae551c-9537-4329-8def-60223984cb6a": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway1",
			"name": "Split"
		},
		"a337a31f-dda3-452d-9296-9f3f5f9610fc": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway2",
			"name": "Merge"
		},
		"a994f5eb-0a71-4d2c-bc67-94bde11a4052": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "IsApproved",
			"default": "0dc3be2e-8747-4908-869b-316b9f750d03"
		},
		"97c061be-9415-456c-8587-0d182df22ea6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "73782a02-988b-45d7-8557-0c6028f36181",
			"targetRef": "02ae551c-9537-4329-8def-60223984cb6a"
		},
		"07df13d5-6eb1-4e44-9cfb-d683dd570652": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "f0d6bbbe-6780-4d77-86f6-9a8f08e3ddfb",
			"targetRef": "a337a31f-dda3-452d-9296-9f3f5f9610fc"
		},
		"f64b1fa6-714e-421c-89a3-4f5573abdc0d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "c3176c60-9c77-43ef-8273-dd6b919ff1db",
			"targetRef": "a994f5eb-0a71-4d2c-bc67-94bde11a4052"
		},
		"0dc3be2e-8747-4908-869b-316b9f750d03": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "Approved",
			"sourceRef": "a994f5eb-0a71-4d2c-bc67-94bde11a4052",
			"targetRef": "8d59f760-8a8b-45cd-9591-2d05d71d7d12"
		},
		"f1073489-0fa7-499d-a170-da7040951ceb": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "SequenceFlow16",
			"sourceRef": "8d59f760-8a8b-45cd-9591-2d05d71d7d12",
			"targetRef": "b919de38-e160-4e57-8331-f1ee1aecd6f1"
		},
		"f90ec70e-fd19-498e-a4a5-42e56ec87dea": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow18",
			"name": "SequenceFlow18",
			"sourceRef": "02ae551c-9537-4329-8def-60223984cb6a",
			"targetRef": "a8fe5750-1d27-4d9f-acdf-4350134cfc8b"
		},
		"80c472f8-81df-464d-9212-401f9f53c6cf": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow22",
			"name": "SequenceFlow22",
			"sourceRef": "7ba66efa-4d2e-47ff-bb5e-86e58b871488",
			"targetRef": "f7bdd829-1523-44c8-94cc-17589aed7b38"
		},
		"9b8f3946-3102-46d0-ae34-c4143a40016e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.equipApproved==\"false\"}",
			"id": "sequenceflow23",
			"name": "Rejected",
			"sourceRef": "a994f5eb-0a71-4d2c-bc67-94bde11a4052",
			"targetRef": "abdd4b7e-4934-419d-844e-e7daa896b0c6"
		},
		"51db33c0-17de-4fc7-8242-a89856f1d0c7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow24",
			"name": "SequenceFlow24",
			"sourceRef": "a337a31f-dda3-452d-9296-9f3f5f9610fc",
			"targetRef": "abdd4b7e-4934-419d-844e-e7daa896b0c6"
		},
		"102fc75c-0beb-4392-b9f0-5dac06ab2cd7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow25",
			"name": "SequenceFlow25",
			"sourceRef": "abdd4b7e-4934-419d-844e-e7daa896b0c6",
			"targetRef": "279de180-6739-4615-b4b4-254005ef4f2b"
		},
		"57248737-d91c-4ab8-9c05-3fabb339baf4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow42",
			"name": "SequenceFlow42",
			"sourceRef": "279de180-6739-4615-b4b4-254005ef4f2b",
			"targetRef": "c3176c60-9c77-43ef-8273-dd6b919ff1db"
		},
		"9e33400e-d354-4a9a-822d-11715cb9ca0b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow47",
			"name": "SequenceFlow47",
			"sourceRef": "5f136fac-3aee-4c23-b9e4-5e4b837f3a16",
			"targetRef": "73782a02-988b-45d7-8557-0c6028f36181"
		},
		"ea06fcda-9a3c-4ed5-9cdb-556e0616322c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow49",
			"name": "SequenceFlow49",
			"sourceRef": "02ae551c-9537-4329-8def-60223984cb6a",
			"targetRef": "7ba66efa-4d2e-47ff-bb5e-86e58b871488"
		},
		"57199c54-0c15-4210-9040-d62d40e353bc": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow50",
			"name": "SequenceFlow50",
			"sourceRef": "a8fe5750-1d27-4d9f-acdf-4350134cfc8b",
			"targetRef": "f0d6bbbe-6780-4d77-86f6-9a8f08e3ddfb"
		},
		"4ab8548a-fd15-4d6b-af74-84067a3c82b0": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"616eec04-9bb6-4d3a-a10e-ab0f4512d369": {},
				"d5e35e7d-25e6-45e5-a803-15c7a9810a7e": {},
				"b3544792-7266-4916-82d2-d134a942a01c": {},
				"371ae770-7cca-454e-809a-091b9c729611": {},
				"8d380226-f84e-4f2d-a3a2-2165afbb4be5": {},
				"7bdde287-0e92-46a1-a5af-440b4104abf6": {},
				"eb7eadd6-8414-4981-893e-af12d0b08d64": {},
				"2c3a5548-a52f-490b-bafe-65700c63ab32": {},
				"a16a5088-600d-42bd-829a-fbbdd06604f4": {},
				"01f5c6b6-249f-4726-91ed-2307d2323aed": {},
				"bfbb37b9-e2c4-4256-b073-27df40e06e20": {},
				"fce5ea91-dbff-41f2-b7e2-0aeacc77aa63": {},
				"8607286e-c04a-463d-a218-b243fdb74914": {},
				"7bdcc596-ba0c-4f35-9195-417ce2d5cea8": {},
				"9ba9c8cf-6669-490e-9108-b59de89c724d": {},
				"966f8c6d-35b9-4794-bbbd-74a443939280": {},
				"c70603d3-3097-4658-b334-38a8358d4991": {},
				"aac5ad4e-1719-408f-9dfe-d8053630d084": {},
				"2fa17141-4599-41bf-a7f5-2a959a918fda": {},
				"22384c7f-78bc-48de-8a19-ad0f0f9e2414": {},
				"34e1cf55-a6d6-4887-9f87-56712668c689": {},
				"c9a1b5ba-b464-46bc-9498-3f66b2bc45d4": {},
				"e7b583bf-4c81-4cd1-85f7-98f9b132f05b": {},
				"eafcbca7-d1be-4896-81fa-c1f49a057df8": {},
				"4392159f-22d1-456b-9138-2e6cdc3a7d4c": {},
				"dfe2c1bc-d29b-4e37-be5a-5258075cdf76": {},
				"fc603043-80e1-482c-b070-a8bdaec8efab": {},
				"5948e3b9-ed32-4253-b714-8e85bc746d33": {},
				"3160f13f-00a5-4dae-9214-7dc7c1548bc4": {},
				"c8bef8af-0dc3-468a-8277-314cdceb7c1c": {},
				"da0baf7b-46e5-4d09-90e5-1cc3fda4a4e4": {}
			}
		},
		"230b9879-ad0f-44ea-b14b-0d03f578364a": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/onboard/SampleInputContext.json",
			"id": "default-start-context"
		},
		"616eec04-9bb6-4d3a-a10e-ab0f4512d369": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 55,
			"y": 152,
			"width": 32,
			"height": 32,
			"object": "5f136fac-3aee-4c23-b9e4-5e4b837f3a16"
		},
		"d5e35e7d-25e6-45e5-a803-15c7a9810a7e": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1702,
			"y": 138,
			"width": 32,
			"height": 32,
			"object": "b919de38-e160-4e57-8331-f1ee1aecd6f1"
		},
		"b3544792-7266-4916-82d2-d134a942a01c": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 217.5,
			"y": 140.5,
			"width": 100,
			"height": 55,
			"object": "73782a02-988b-45d7-8557-0c6028f36181"
		},
		"371ae770-7cca-454e-809a-091b9c729611": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "267.5,168 419.75,168",
			"sourceSymbol": "b3544792-7266-4916-82d2-d134a942a01c",
			"targetSymbol": "8d380226-f84e-4f2d-a3a2-2165afbb4be5",
			"object": "97c061be-9415-456c-8587-0d182df22ea6"
		},
		"8d380226-f84e-4f2d-a3a2-2165afbb4be5": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 398.75,
			"y": 147,
			"object": "02ae551c-9537-4329-8def-60223984cb6a"
		},
		"7bdde287-0e92-46a1-a5af-440b4104abf6": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 645.0625,
			"y": 59.5,
			"width": 100,
			"height": 55,
			"object": "f0d6bbbe-6780-4d77-86f6-9a8f08e3ddfb"
		},
		"eb7eadd6-8414-4981-893e-af12d0b08d64": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 804.6875,
			"y": 133.5,
			"object": "a337a31f-dda3-452d-9296-9f3f5f9610fc"
		},
		"2c3a5548-a52f-490b-bafe-65700c63ab32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "695.0625,87 826,87 826,134",
			"sourceSymbol": "7bdde287-0e92-46a1-a5af-440b4104abf6",
			"targetSymbol": "eb7eadd6-8414-4981-893e-af12d0b08d64",
			"object": "07df13d5-6eb1-4e44-9cfb-d683dd570652"
		},
		"a16a5088-600d-42bd-829a-fbbdd06604f4": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 1040.34375,
			"y": 120.25,
			"width": 100,
			"height": 55,
			"object": "279de180-6739-4615-b4b4-254005ef4f2b"
		},
		"01f5c6b6-249f-4726-91ed-2307d2323aed": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 1259.6720920165053,
			"y": 127.375,
			"width": 100,
			"height": 55,
			"object": "c3176c60-9c77-43ef-8273-dd6b919ff1db"
		},
		"bfbb37b9-e2c4-4256-b073-27df40e06e20": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1358.6720920165053,153.90625 1425.3361002618885,153.90625",
			"sourceSymbol": "01f5c6b6-249f-4726-91ed-2307d2323aed",
			"targetSymbol": "fce5ea91-dbff-41f2-b7e2-0aeacc77aa63",
			"object": "f64b1fa6-714e-421c-89a3-4f5573abdc0d"
		},
		"fce5ea91-dbff-41f2-b7e2-0aeacc77aa63": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1404.3361002618885,
			"y": 132.9375,
			"object": "a994f5eb-0a71-4d2c-bc67-94bde11a4052"
		},
		"8607286e-c04a-463d-a218-b243fdb74914": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1425.3361002618885,154.4375 1578.1681043845801,154.4375",
			"sourceSymbol": "fce5ea91-dbff-41f2-b7e2-0aeacc77aa63",
			"targetSymbol": "7bdcc596-ba0c-4f35-9195-417ce2d5cea8",
			"object": "0dc3be2e-8747-4908-869b-316b9f750d03"
		},
		"7bdcc596-ba0c-4f35-9195-417ce2d5cea8": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 1528.1681043845801,
			"y": 127.4375,
			"width": 100,
			"height": 55,
			"object": "8d59f760-8a8b-45cd-9591-2d05d71d7d12"
		},
		"9ba9c8cf-6669-490e-9108-b59de89c724d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1578.1681043845801,154.46875 1718,154.46875",
			"sourceSymbol": "7bdcc596-ba0c-4f35-9195-417ce2d5cea8",
			"targetSymbol": "d5e35e7d-25e6-45e5-a803-15c7a9810a7e",
			"object": "f1073489-0fa7-499d-a170-da7040951ceb"
		},
		"966f8c6d-35b9-4794-bbbd-74a443939280": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "419.75,168 419.75,88.5 513.75,88.5",
			"sourceSymbol": "8d380226-f84e-4f2d-a3a2-2165afbb4be5",
			"targetSymbol": "4392159f-22d1-456b-9138-2e6cdc3a7d4c",
			"object": "f90ec70e-fd19-498e-a4a5-42e56ec87dea"
		},
		"c70603d3-3097-4658-b334-38a8358d4991": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 459.375,
			"y": 222.5,
			"width": 100,
			"height": 55,
			"object": "7ba66efa-4d2e-47ff-bb5e-86e58b871488"
		},
		"aac5ad4e-1719-408f-9dfe-d8053630d084": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "509.375,251.5 662.6875,251.5",
			"sourceSymbol": "c70603d3-3097-4658-b334-38a8358d4991",
			"targetSymbol": "5948e3b9-ed32-4253-b714-8e85bc746d33",
			"object": "80c472f8-81df-464d-9212-401f9f53c6cf"
		},
		"2fa17141-4599-41bf-a7f5-2a959a918fda": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 878,
			"y": 133,
			"object": "abdd4b7e-4934-419d-844e-e7daa896b0c6"
		},
		"22384c7f-78bc-48de-8a19-ad0f0f9e2414": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1425.3361002618885,153.9375 1425.3360595703125,225 899,225 899,175",
			"sourceSymbol": "fce5ea91-dbff-41f2-b7e2-0aeacc77aa63",
			"targetSymbol": "2fa17141-4599-41bf-a7f5-2a959a918fda",
			"object": "9b8f3946-3102-46d0-ae34-c4143a40016e"
		},
		"34e1cf55-a6d6-4887-9f87-56712668c689": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "825.6875,154.5 862.34375,154.5 862.34375,154 878,154",
			"sourceSymbol": "eb7eadd6-8414-4981-893e-af12d0b08d64",
			"targetSymbol": "2fa17141-4599-41bf-a7f5-2a959a918fda",
			"object": "51db33c0-17de-4fc7-8242-a89856f1d0c7"
		},
		"c9a1b5ba-b464-46bc-9498-3f66b2bc45d4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "899,150.875 1090.34375,150.875",
			"sourceSymbol": "2fa17141-4599-41bf-a7f5-2a959a918fda",
			"targetSymbol": "a16a5088-600d-42bd-829a-fbbdd06604f4",
			"object": "102fc75c-0beb-4392-b9f0-5dac06ab2cd7"
		},
		"e7b583bf-4c81-4cd1-85f7-98f9b132f05b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1090.34375,147.75 1275,147.75",
			"sourceSymbol": "a16a5088-600d-42bd-829a-fbbdd06604f4",
			"targetSymbol": "01f5c6b6-249f-4726-91ed-2307d2323aed",
			"object": "57248737-d91c-4ab8-9c05-3fabb339baf4"
		},
		"eafcbca7-d1be-4896-81fa-c1f49a057df8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "71,170 236,170",
			"sourceSymbol": "616eec04-9bb6-4d3a-a10e-ab0f4512d369",
			"targetSymbol": "b3544792-7266-4916-82d2-d134a942a01c",
			"object": "9e33400e-d354-4a9a-822d-11715cb9ca0b"
		},
		"4392159f-22d1-456b-9138-2e6cdc3a7d4c": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 463.75,
			"y": 60,
			"width": 100,
			"height": 60,
			"object": "a8fe5750-1d27-4d9f-acdf-4350134cfc8b"
		},
		"dfe2c1bc-d29b-4e37-be5a-5258075cdf76": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "419.75,168 419.75,205.75 483,205.75 483,258",
			"sourceSymbol": "8d380226-f84e-4f2d-a3a2-2165afbb4be5",
			"targetSymbol": "c70603d3-3097-4658-b334-38a8358d4991",
			"object": "ea06fcda-9a3c-4ed5-9cdb-556e0616322c"
		},
		"fc603043-80e1-482c-b070-a8bdaec8efab": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "513.75,87.25 685,87.25",
			"sourceSymbol": "4392159f-22d1-456b-9138-2e6cdc3a7d4c",
			"targetSymbol": "7bdde287-0e92-46a1-a5af-440b4104abf6",
			"object": "57199c54-0c15-4210-9040-d62d40e353bc"
		},
		"600eee18-fc10-4576-982b-74d08fbcb62e": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 2,
			"messageeventdefinition": 1,
			"hubapireference": 1,
			"sequenceflow": 52,
			"startevent": 1,
			"intermediatemessageevent": 1,
			"endevent": 2,
			"usertask": 3,
			"servicetask": 7,
			"scripttask": 6,
			"exclusivegateway": 4,
			"parallelgateway": 5
		},
		"ac38d7da-575d-4efd-9df8-2b985108b6dc": {
			"classDefinition": "com.sap.bpm.wfs.HubAPIReference",
			"apiPackage": "SuccessFactorsFoundationPlatform",
			"api": "PLTUserManagement",
			"apiName": "User Management",
			"id": "hubapireference1"
		},
		"f7bdd829-1523-44c8-94cc-17589aed7b38": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BUSINESS_RULES",
			"path": "/rest/v2/rule-services",
			"httpMethod": "POST",
			"requestVariable": "${context.rulesPayload}",
			"responseVariable": "${context.equipment.EquipmentsInfo}",
			"id": "servicetask7",
			"name": " Determine Equipment"
		},
		"5948e3b9-ed32-4253-b714-8e85bc746d33": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 612.6875,
			"y": 223,
			"width": 100,
			"height": 60,
			"object": "f7bdd829-1523-44c8-94cc-17589aed7b38"
		},
		"9d129990-b1a5-4339-8bd4-870cb43b7acb": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow51",
			"name": "SequenceFlow51",
			"sourceRef": "f7bdd829-1523-44c8-94cc-17589aed7b38",
			"targetRef": "311e2517-9b51-4411-aaa7-6e3b1f2555da"
		},
		"3160f13f-00a5-4dae-9214-7dc7c1548bc4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "662.6875,252.75 825.6875,252.75",
			"sourceSymbol": "5948e3b9-ed32-4253-b714-8e85bc746d33",
			"targetSymbol": "c8bef8af-0dc3-468a-8277-314cdceb7c1c",
			"object": "9d129990-b1a5-4339-8bd4-870cb43b7acb"
		},
		"311e2517-9b51-4411-aaa7-6e3b1f2555da": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/onboard/EnrichContext.js",
			"id": "scripttask6",
			"name": "Enrich Context"
		},
		"c8bef8af-0dc3-468a-8277-314cdceb7c1c": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 775.6875,
			"y": 222.5,
			"width": 100,
			"height": 60,
			"object": "311e2517-9b51-4411-aaa7-6e3b1f2555da"
		},
		"77ba4d0e-94c1-47c7-a57c-a4824f7941ba": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow52",
			"name": "SequenceFlow52",
			"sourceRef": "311e2517-9b51-4411-aaa7-6e3b1f2555da",
			"targetRef": "a337a31f-dda3-452d-9296-9f3f5f9610fc"
		},
		"da0baf7b-46e5-4d09-90e5-1cc3fda4a4e4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "825.6875,252.5 825.6875,154.5",
			"sourceSymbol": "c8bef8af-0dc3-468a-8277-314cdceb7c1c",
			"targetSymbol": "eb7eadd6-8414-4981-893e-af12d0b08d64",
			"object": "77ba4d0e-94c1-47c7-a57c-a4824f7941ba"
		}
	}
}