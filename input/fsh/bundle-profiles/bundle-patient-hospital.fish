Profile: NgBundlePatientToHospital
Parent: Bundle
Id: ng-bundle-patient-to-hospital
Title: "NG-Bundle: Patient to Hospital"
Description: "Bundle representing care encounter and services delivered to a patient by a hospital."

* type = #collection
* entry contains
    patient 1..1 and
    encounter 1..1 and
    practitioner 0..1 and
    procedure 0..* and
    observation 0..* and
    serviceRequest 0..* and
    invoice 0..1
* entry[patient].resource only Patient
* entry[encounter].resource only Encounter
* entry[practitioner].resource only Practitioner
* entry[procedure].resource only Procedure
* entry[observation].resource only Observation
* entry[serviceRequest].resource only ServiceRequest
* entry[invoice].resource only Invoice
