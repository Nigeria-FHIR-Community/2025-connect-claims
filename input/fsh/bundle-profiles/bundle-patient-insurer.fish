Profile: NgBundlePatientToInsurer
Parent: Bundle
Id: ng-bundle-patient-to-insurer
Title: "NG-Bundle: Patient to Insurer"
Description: "Bundle capturing patient-initiated interaction with insurer, e.g., eligibility verification."

* type = #collection
* entry contains
    patient 1..1 and
    coverageEligibilityRequest 1..1 and
    coverage 1..1 and
    coverageEligibilityResponse 0..1
* entry[patient].resource only Patient
* entry[coverageEligibilityRequest].resource only CoverageEligibilityRequest
* entry[coverageEligibilityResponse].resource only CoverageEligibilityResponse
* entry[coverage].resource only Coverage
