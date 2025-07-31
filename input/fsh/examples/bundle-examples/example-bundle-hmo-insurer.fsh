Instance: HMOToInsurerBundleExample
InstanceOf: NgBundleHMOToInsurer
Title: "Example: HMO to Insurer Claim Submission Bundle"
Description: "An example bundle from an HMO to an insurer containing submitted claims and associated resources."
Usage: #example

* type = #collection
* timestamp = "2025-08-01T09:00:00+01:00"

* entry[0].fullUrl = "urn:uuid:claim-002"
* entry[0].resource = claim-002

* entry[1].fullUrl = "urn:uuid:patient-002"
* entry[1].resource = patient-002

* entry[2].fullUrl = "urn:uuid:coverage-002"
* entry[2].resource = coverage-002

* entry[3].fullUrl = "urn:uuid:org-hmo"
* entry[3].resource = org-hmo-2

* entry[4].fullUrl = "urn:uuid:org-insurer"
* entry[4].resource = org-insurer-2

* entry[5].fullUrl = "urn:uuid:task-claim-review"
* entry[5].resource = task-claim-review

Instance: claim-002
InstanceOf: NgClaim
* status = #active
* type.coding[0].system = "http://terminology.hl7.org/CodeSystem/claim-type"
* type.coding[0].code = #institutional
* use = #claim
* patient.reference = "urn:uuid:patient-002"
* provider.reference = "urn:uuid:org-hmo"
* created = "2025-07-31"
* item[0].sequence = 1
* item[0].productOrService.coding[0].code = #99214
* priority = #high
* insurance.sequence = 666
* insurance.focal = false
* insurance.coverage = Reference(NgClaimCoverage/coverage-002)

Instance: patient-002
InstanceOf: NgPatient
* identifier[0].system = "https://nimc.gov.ng"
* identifier[0].value = "NIN99887766"
* name[0].given = "Chinyere"
* name[0].family = "Okoro"
* gender = #female
* birthDate = "1990-03-15"
* meta.lastUpdated = "2024-06-30T14:36:00+01:00"

Instance: coverage-002
InstanceOf: NgClaimCoverage
* status = #active
* beneficiary.reference = "urn:uuid:patient-002"
* payor[0].reference = "urn:uuid:org-insurer"
* type = #basic

Instance: org-insurer-2
InstanceOf: NgOrganization
* identifier[0].system = "https://nhia.gov.ng"
* identifier[0].value = "INS789"
* name = "SecureHealth Insurance Ltd"
* type[0].coding[0].code = #ins
* address.city = "Maitama"
* address.line = "Plot 7 Abuja Crescent"
* address.district = #bwari
* address.state = "FCT"

Instance: org-hmo-2
InstanceOf: NgOrganization
* identifier[0].system = "https://nhia.gov.ng"
* identifier[0].value = "HMO456"
* name = "WellCare HMO"
* type[0].coding[0].code = #pay
* address.city = "Wuse"
* address.line = "22 Insurance Avenue"
* address.district = #bwari
* address.state = "FCT"

Instance: task-claim-review
InstanceOf: NgClaimTask
* status = #requested
* intent = #order
* code.text = "Review Claim"
* for.reference = "urn:uuid:claim-002"
* requester.reference = "urn:uuid:org-hmo"
* description = "Please review this claim for adjudication"