Profile: NgClaimEncounter
Parent: Encounter
Id: ng-claim-encounter
Title: "NG-Claim Encounter"
Description: "A profile representing patient encounters related to claims."

* status 1..1 MS
* class 1..1 MS
* subject 1..1 MS
* period 0..1
* reasonCode 0..* MS
* serviceProvider 0..1
