Instance: InsuranceClaimResponseBundle
InstanceOf: Bundle
Title: "Insurance Claim Response"
Description: "Bundle representing insurer's adjudication of a submitted claim"
Usage: #example

* type = #collection
* entry[0].resource = Claim/ClaimForConsultation
* entry[1].resource = ClaimResponse/AdjudicationOutcome
* entry[2].resource = ExplanationOfBenefit/PaymentDetails
* entry[3].resource = Organization/InsurerOrg
* entry[4].resource = Task/ReviewWorkflow
