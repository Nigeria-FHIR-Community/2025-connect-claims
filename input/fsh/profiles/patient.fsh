Profile: NgClaimPatient
Parent: Patient
Id: ng-claim-patient
Title: "NG-Claim Patient"
Description: "A profile representing patients involved in insurance claims."

* identifier 1..* MS
* identifier.system 1..1
* identifier.value 1..1
* name 1..* MS
* gender 1..1 MS
* birthDate 1..1 MS
