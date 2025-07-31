Profile: NgClaimObservation
Parent: Observation
Id: ng-claim-observation
Title: "NG-Claim Observation"
Description: "A profile representing clinical or diagnostic findings used in claims."

* status 1..1 MS
* code 1..1 MS
* subject 1..1 MS
* effective[x] 0..1
* value[x] 0..1 MS
* performer 0..*
