Profile: NgBundlePatientToInsurer
Parent: Bundle
Id: ng-bundle-patient-to-insurer
Title: "4-NG-Bundle: Patient to Insurer"
Description: "Bundle representing patient-initiated interaction with insurer, such as eligibility verification or coverage inquiry."

* meta.lastUpdated 0..1 MS
* meta.lastUpdated ^short = "The date and time when the bundle content was last updated."

* type = #collection

// Slice entry by profile
* entry 1..* MS
* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open

* entry contains
    patient 1..1 and
    coverageEligibilityRequest 1..1 and
    coverage 1..1 and
    organization 1..1 and
    coverageEligibilityResponse 0..1
* entry[patient].resource only NgPatient
* entry[coverageEligibilityRequest].resource only NgCoverageEligibilityRequest
* entry[coverageEligibilityResponse].resource only NgCoverageEligibilityResponse
* entry[coverage].resource only NgClaimCoverage
* entry[organization].resource only NgOrganization
