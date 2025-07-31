Profile: NgCoverageEligibilityRequest
Parent: CoverageEligibilityRequest
Id: ng-eligibility-request
Title: "NG-CoverageEligibilityRequest"
Description: "A profile for checking patient's eligibility for insurance services."

* status 1..1 MS
* patient 1..1 MS
* created 1..1 MS
* insurer 1..1 MS
* provider 0..1
* insurance 1..* MS
