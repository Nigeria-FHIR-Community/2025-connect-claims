Profile: NgBundlePatientToHospital
Parent: Bundle
Id: ng-bundle-patient-to-hospital
Title: "3-NG-Bundle: Patient to Hospital"
Description: "Bundle representing patient registration and care events with a hospital. Used for service documentation, referrals, or internal claim preparation."

* meta.lastUpdated 0..1 MS
* meta.lastUpdated ^short = "The date and time when the bundle content was last updated."

* type = #collection

// Slice entry by resource profile
* entry 1..* MS
* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open

* entry contains
    patient 1..1 and
    encounter 1..1 and
    practitioner 0..1 and
    procedure 0..* and
    observation 0..* and
    serviceRequest 0..* and
    invoice 0..1 and
    organization 1..1
* entry[patient].resource only NgPatient
* entry[encounter].resource only NgClaimEncounter
* entry[practitioner].resource only NgPractitioner
* entry[procedure].resource only NgClaimProcedure
* entry[observation].resource only NgClaimObservation
* entry[serviceRequest].resource only ServiceRequest
* entry[invoice].resource only NgClaimInvoice
* entry[organization].resource only NgOrganization
