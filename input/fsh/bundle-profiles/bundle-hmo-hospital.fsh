Profile: NgBundleHospitalToHMO
Parent: Bundle
Id: ng-bundle-hospital-to-hmo
Title: "1-NG-Bundle: Hospital to HMO (Claim Submission)"
Description: "Bundle used by a healthcare provider (hospital) to submit a claim to an HMO for services rendered."

* meta.lastUpdated 0..1 MS
* meta.lastUpdated ^short = "The date and time when the bundle content was last updated."

* type = #collection

// Slice entry by resource profile
* entry 1..* MS
* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open

* entry contains
    claim 1..1 and
    patient 1..1 and
    coverage 1..1 and
    encounter 0..1 and
    procedure 0..* and
    observation 0..* and
    organization 1..2 and
    practitioner 0..1 and
    invoice 0..1
* entry[claim].resource only NgClaim
* entry[patient].resource only NgPatient
* entry[coverage].resource only NgClaimCoverage
* entry[encounter].resource only NgClaimEncounter
* entry[procedure].resource only NgClaimProcedure
* entry[observation].resource only NgClaimObservation
* entry[organization].resource only NgOrganization
* entry[practitioner].resource only NgPractitioner
* entry[invoice].resource only NgClaimInvoice
