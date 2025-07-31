Profile: NgBundleHMOToHospital
Parent: Bundle
Id: ng-bundle-hmo-to-hospital
Title: "NG-Bundle: HMO to Hospital"
Description: "Bundle representing interaction between HMO and healthcare provider for claim submission or response."

* type = #collection
* entry contains
    claim 1..1 and
    claimResponse 0..1 and
    patient 1..1 and
    coverage 1..1 and
    organization 1..1 and
    practitioner 0..1 and
    encounter 0..1 and
    procedure 0..* and
    observation 0..*
* entry[claim].resource only Claim
* entry[claimResponse].resource only ClaimResponse
* entry[patient].resource only Patient
* entry[coverage].resource only Coverage
* entry[organization].resource only Organization
* entry[practitioner].resource only Practitioner
* entry[encounter].resource only Encounter
* entry[procedure].resource only Procedure
* entry[observation].resource only Observation
