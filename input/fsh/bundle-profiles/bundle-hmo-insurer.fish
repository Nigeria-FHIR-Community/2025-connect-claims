Profile: NgBundleHMOToRegulator
Parent: Bundle
Id: ng-bundle-hmo-to-regulator
Title: "NG-Bundle: HMO to Regulator"
Description: "Bundle for regulatory reporting from HMO to insurance authorities."

* type = #collection
* entry contains
    organization 1..1 and
    claim 1..* and
    claimResponse 1..* and
    explanationOfBenefit 0..* and
    task 0..*
* entry[organization].resource only Organization
* entry[claim].resource only Claim
* entry[claimResponse].resource only ClaimResponse
* entry[explanationOfBenefit].resource only ExplanationOfBenefit
* entry[task].resource only Task
