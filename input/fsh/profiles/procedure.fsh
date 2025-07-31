Profile: NgClaimProcedure
Parent: Procedure
Id: ng-claim-procedure
Title: "NG-Claim Procedure"
Description: "A profile for clinical procedures tied to a submitted claim."

* status 1..1 MS
* code 1..1 MS
* subject 1..1 MS
* performed[x] 1..1
* performer 0..*
