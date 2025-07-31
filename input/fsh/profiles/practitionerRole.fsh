Profile: NgClaimPractitionerRole
Parent: PractitionerRole
Id: ng-claim-practitionerrole
Title: "NG-Claim PractitionerRole"
Description: "A profile for defining the role of a practitioner within a claims-processing organization."

* practitioner 1..1 MS
* organization 1..1 MS
* code 0..* MS
* specialty 0..*
* location 0..*
* active 0..1
