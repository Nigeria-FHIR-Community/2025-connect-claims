Profile: NgClaim
Parent: Claim
Id: ng-claim
Title: "NG-Claim"
Description: "A profile representing submitted claims from providers to payers."

* status 1..1 MS
* type 1..1 MS
* use 1..1 MS
* patient 1..1 MS
* created 1..1 MS
* provider 1..1 MS
* priority 1..1
* diagnosis 0..* MS
* item 1..* MS
