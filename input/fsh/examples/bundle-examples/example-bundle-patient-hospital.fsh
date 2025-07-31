Instance: PatientToHospitalBundleExample
InstanceOf: NgBundlePatientToHospital
Title: "Example: Patient to Hospital Interaction Bundle"
Description: "An example bundle representing a patient registration and clinical encounter at a hospital."
Usage: #example

* type = #collection
* timestamp = "2025-08-02T10:15:00+01:00"

* entry[0].fullUrl = "urn:uuid:patient-003"
* entry[0].resource = patient-003

* entry[1].fullUrl = "urn:uuid:encounter-003"
* entry[1].resource = encounter-003

* entry[2].fullUrl = "urn:uuid:practitioner-003"
* entry[2].resource = practitioner-003

* entry[3].fullUrl = "urn:uuid:procedure-003"
* entry[3].resource = procedure-003

* entry[4].fullUrl = "urn:uuid:observation-003"
* entry[4].resource = observation-003

* entry[5].fullUrl = "urn:uuid:service-request-003"
* entry[5].resource = service-request-003

* entry[6].fullUrl = "urn:uuid:invoice-003"
* entry[6].resource = invoice-003

* entry[7].fullUrl = "urn:uuid:org-hospital"
* entry[7].resource = org-hospital-2

Instance: patient-003
InstanceOf: NgPatient
* identifier[0].system = "https://nimc.gov.ng"
* identifier[0].value = "NIN44556677"
* name[0].given = "John"
* name[0].family = "Doe"
* gender = #male
* birthDate = "1995-05-20"
* meta.lastUpdated = "2023-05-21T14:36:00+01:00"

Instance: encounter-003
InstanceOf: NgClaimEncounter
* status = #in-progress
* class.code = #AMB
* subject.reference = "urn:uuid:patient-003"
* period.start = "2025-08-02T09:00:00+01:00"

Instance: practitioner-003
InstanceOf: NgPractitioner
* identifier[0].system = "https://mdcn.gov.ng"
* identifier[0].value = "MDCN334455"
* name.given = "Grace"
* name.family = "Ibrahim"

Instance: procedure-003
InstanceOf: NgClaimProcedure
* status = #in-progress
* code.text = "Wound dressing"
* subject.reference = "urn:uuid:patient-003"
* performedDateTime = "2025-08-02T09:30:00+01:00"

Instance: observation-003
InstanceOf: NgClaimObservation
* status = #final
* code.text = "Temperature"
* subject.reference = "urn:uuid:patient-003"
* effectiveDateTime = "2025-08-02T09:40:00+01:00"
* valueQuantity.value = 37.4
* valueQuantity.unit = "°C"

Instance: service-request-003
InstanceOf: ServiceRequest
* status = #active
* intent = #order
* code.text = "Malaria test"
* subject.reference = "urn:uuid:patient-003"
* authoredOn = "2025-08-02"

Instance: invoice-003
InstanceOf: NgClaimInvoice
* status = #draft
* totalNet.value = 8000
* totalNet.currency = #NGN
* date = "2025-08-02"
* subject = Reference(Patient/patient-003)

Instance: org-hospital-2
InstanceOf: NgOrganization
* identifier[0].system = "https://herfama.lagos.ng"
* identifier[0].value = "HF123"
* name = "St. Raphael Hospital"
* type[0].coding[0].code = #prov
* address.city = "Ikeja"
* address.line = "22 Raymond Street"
* address.district = #ikeja
* address.state = "Lagos"