Instance: HospitalToHMOClaimBundle
InstanceOf: NgBundleHospitalToHMO
Title: "Example: Hospital to HMO Claim Bundle"
Description: "An example bundle submitted from a hospital to an HMO for reimbursement."
Usage: #example

* type = #collection
* timestamp = "2025-07-30T08:00:00+01:00"
* entry[0].fullUrl = "urn:uuid:patient-001"
* entry[0].resource = patient-001

* entry[1].fullUrl = "urn:uuid:claim-001"
* entry[1].resource = claim-001

* entry[2].fullUrl = "urn:uuid:coverage-001"
* entry[2].resource = coverage-001

* entry[3].fullUrl = "urn:uuid:encounter-001"
* entry[3].resource = encounter-001

* entry[4].fullUrl = "urn:uuid:procedure-001"
* entry[4].resource = procedure-001

* entry[5].fullUrl = "urn:uuid:observation-001"
* entry[5].resource = observation-001

* entry[6].fullUrl = "urn:uuid:org-hospital"
* entry[6].resource = org-hospital

* entry[7].fullUrl = "urn:uuid:org-hmo"
* entry[7].resource = org-hmo

* entry[8].fullUrl = "urn:uuid:practitioner-001"
* entry[8].resource = practitioner-001

* entry[9].fullUrl = "urn:uuid:invoice-001"
* entry[9].resource = invoice-001

Instance: patient-001
InstanceOf: NgPatient
* identifier[0].system = "https://nimc.gov.ng"
* identifier[0].value = "NIN123456789"
* name[0].given = "Ade"
* name[0].family = "Ogunleye"
* gender = #male
* birthDate = "1985-09-21"
* meta.lastUpdated = "2025-07-30T14:36:00+01:00"

Instance: claim-001
InstanceOf: NgClaim
* status = #active
* type.coding[0].system = "http://terminology.hl7.org/CodeSystem/claim-type"
* type.coding[0].code = #professional
* use = #claim
* patient.reference = "urn:uuid:patient-001"
* provider.reference = "urn:uuid:org-hospital"
* created = "2025-07-28"
* item[0].sequence = 1
* item[0].productOrService.coding[0].code = #99213
* priority = #high
* insurance.sequence = 8987
* insurance.focal = true
* insurance.coverage = Reference(NgClaimCoverage/coverage-001)

Instance: coverage-001
InstanceOf: NgClaimCoverage
* status = #active
* beneficiary.reference = "urn:uuid:patient-001"
* payor[0].reference = "urn:uuid:org-hmo"
* type = #Premium

Instance: encounter-001
InstanceOf: NgClaimEncounter
* status = #finished
* class.code = #AMB
* subject.reference = "urn:uuid:patient-001"
* period.start = "2025-07-27T10:00:00+01:00"
* period.end = "2025-07-27T11:00:00+01:00"


Instance: procedure-001
InstanceOf: NgClaimProcedure
* status = #completed
* code.text = "Blood test"
* subject.reference = "urn:uuid:patient-001"
* performedDateTime = "2025-07-27T10:30:00+01:00"

Instance: observation-001
InstanceOf: NgClaimObservation
* status = #final
* code.text = "Hemoglobin"
* subject.reference = "urn:uuid:patient-001"
* effectiveDateTime = "2025-07-27T10:40:00+01:00"
* valueQuantity.value = 13.2
* valueQuantity.unit = "g/dL"

Instance: org-hospital
InstanceOf: NgOrganization
* identifier[0].system = "https://herfama.lagos.ng"
* identifier[0].value = "HF001"
* name = "CityCare General Hospital"
* type[0].coding[0].code = #prov
* address.city = "Okija"
* address.line = "10 Shrine road"
* address.district = #amac
* address.state = "Anambra"

Instance: org-hmo
InstanceOf: NgOrganization
* identifier[0].system = "https://nhia.gov.ng"
* identifier[0].value = "HMO123"
* name = "TrustHMO"
* type[0].coding[0].code = #pay
* address.city = "Garki"
* address.line = "15 surulere street"
* address.district = #amac
* address.state = "FCT"
* type = #tertiary
* active = true

Instance: practitioner-001
InstanceOf: NgPractitioner
* identifier[0].system = "https://mdcn.gov.ng"
* identifier[0].value = "MDCN56789"
* name.given = "Fati"
* name.family = "Okafor"

Instance: invoice-001
InstanceOf: NgClaimInvoice
* status = #issued
* totalNet.value = 15000
* totalNet.currency = #NGN
* date = "2025-07-30"
* subject = Reference(NgPatient/patient-001)