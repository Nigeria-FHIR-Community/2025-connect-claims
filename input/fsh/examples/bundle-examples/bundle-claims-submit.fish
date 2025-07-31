Instance: InsuranceClaimSubmissionBundle
InstanceOf: Bundle
Title: "Insurance Claim Submission"
Description: "Bundle to support the submission of claims to insurers"
Usage: #example

* type = #collection
* entry[0].resource = Patient/InsuredPatient
* entry[1].resource = Coverage/PatientCoverage
* entry[2].resource = Claim/ClaimForConsultation
* entry[3].resource = Encounter/OutpatientVisit
* entry[4].resource = Practitioner/TreatingDoctor
* entry[5].resource = Organization/ProviderFacility
* entry[6].resource = Procedure/BloodTest
* entry[7].resource = Observation/Result_Hb
* entry[8].resource = ServiceRequest/Request_BloodTest
