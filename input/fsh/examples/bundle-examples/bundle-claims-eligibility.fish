Instance: EligibilityCheckBundle
InstanceOf: Bundle
Title: "Eligibility Check Bundle"
Description: "Bundle for verifying patient's insurance eligibility"
Usage: #example

* type = #collection
* entry[0].resource = Patient/InsuredPatient
* entry[1].resource = CoverageEligibilityRequest/EligibilityRequest
* entry[2].resource = CoverageEligibilityResponse/EligibilityResponse
* entry[3].resource = Coverage/PatientCoverage
* entry[4].resource = Organization/InsurerOrg
