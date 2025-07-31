Profile: NgBundleHMOToInsurer
Parent: Bundle
Id: ng-bundle-hmo-to-insurer
Title: "2-NG-Bundle: HMO to Insurer"
Description: "Bundle representing communication from HMO to Insurance Organization for claim adjudication or reporting."

* meta.lastUpdated 0..1 MS
* meta.lastUpdated ^short = "The date and time when the bundle content was last updated."

* type = #collection

// Slice entry by profile
* entry 1..* MS
* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open

* entry contains
    claim 1..* and
    claimResponse 0..* and
    explanationOfBenefit 0..* and
    organization 1..2 and
    task 0..* and
    patient 1..1 and
    coverage 1..1
* entry[claim].resource only NgClaim
* entry[claimResponse].resource only NgClaimResponse
* entry[explanationOfBenefit].resource only NgExplanationOfBenefit
* entry[organization].resource only NgOrganization
* entry[task].resource only NgClaimTask
* entry[patient].resource only NgPatient
* entry[coverage].resource only NgClaimCoverage
