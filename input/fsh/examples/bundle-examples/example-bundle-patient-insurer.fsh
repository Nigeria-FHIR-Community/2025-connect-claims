Instance: PatientToInsurerBundleExample
InstanceOf: NgBundlePatientToInsurer
Title: "Example: Patient to Insurer Eligibility Check Bundle"
Description: "An example bundle representing a patient-initiated eligibility request to an insurer."
Usage: #example

* type = #collection
* timestamp = "2025-08-03T11:00:00+01:00"

* entry[0].fullUrl = "urn:uuid:patient-004"
* entry[0].resource = patient-004

* entry[1].fullUrl = "urn:uuid:coverage-004"
* entry[1].resource = coverage-004

* entry[2].fullUrl = "urn:uuid:eligibility-request-004"
* entry[2].resource = eligibility-request-004

* entry[3].fullUrl = "urn:uuid:org-insurer"
* entry[3].resource = org-insurer-4

* entry[4].fullUrl = "urn:uuid:eligibility-response-004"
* entry[4].resource = eligibility-response-004

Instance: patient-004
InstanceOf: NgPatient
* identifier[0].system = "https://nimc.gov.ng"
* identifier[0].value = "NIN55667788"
* name[0].given = "Ngozi"
* name[0].family = "Adamu"
* gender = #female
* birthDate = "1988-04-10"
* meta.lastUpdated = "2019-01-25T15:36:00+01:00"

Instance: coverage-004
InstanceOf: NgClaimCoverage
* status = #active
* beneficiary.reference = "urn:uuid:patient-004"
* payor[0].reference = "urn:uuid:org-insurer"
* type = #basic

Instance: eligibility-request-004
InstanceOf: NgCoverageEligibilityRequest
* status = #active
* patient.reference = "urn:uuid:patient-004"
* created = "2025-08-02"
* insurer.reference = "urn:uuid:org-insurer"
* insurance[0].coverage.reference = "urn:uuid:coverage-004"
* purpose = #familycoverage

Instance: org-insurer-4
InstanceOf: NgOrganization
* identifier[0].system = "https://nhia.gov.ng"
* identifier[0].value = "INS456"
* name = "Guardian Health Insurance"
* type[0].coding[0].code = #ins
* address.city = "Abuja"
* address.line = "88 Medical Blvd"
* address.district = #gwarinpa
* address.state = "FCT"

Instance: eligibility-response-004
InstanceOf: NgCoverageEligibilityResponse
* status = #active
* patient.reference = "urn:uuid:patient-004"
* created = "2025-08-03"
* insurer.reference = "urn:uuid:org-insurer"
* insurance[0].coverage.reference = "urn:uuid:coverage-004"
* purpose = #another
* outcome = #well
* request = Reference(eligibility-request-004)