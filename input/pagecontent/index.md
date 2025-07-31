# 2025 nigeria Connectathon Claims FHIR Implementation Guide (IG)

#### Revision History

<table class="table table-hover table-bordered table-striped">
    <thead>
        <tr>
            <th>Name</th>
            <th>Date</th>
            <th>Reason for Changes</th>
            <th>Version</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Nigeria FHIR Community</td>
            <td>31st July 2025</td>
            <td>Zero Draft</td>
            <td>0.1.0</td>
        </tr>
    </tbody>
</table>


### Purpose

This Implementation Guide (IG) provides a simplified framework for EMR/EHR vendors and hospitals to understand and experiment with FHIR-based insurance and claims data exchange during the 2025 Nigeria Digital Health Connectathon. It is intended as a hands-on learning tool to support ecosystem readiness for future health financing interoperability efforts in Nigeria.

### Background

As Nigeria advances towards a more integrated digital health landscape, the efficient exchange of insurance and claims data has become critical for service delivery and financial sustainability. The Connectathon provides a unique opportunity to simulate interactions between hospitals, Health Maintenance Organizations (HMOs), insurers, and regulatory systems using international standards like HL7 FHIR.

###  Scope of the FHIR Implementation Guide

This IG focuses on core FHIR interactions and simplified data workflows relevant to health insurance and claims processes in Nigeria. It includes representative profiles, search parameters, and operations to support common tasks like eligibility checking, claims submission, prior authorization, and payment notification.

<!-- The scope of this guide focuses on the following core components:
- **Standardizing how immunization clients (patients) are registered and managed**, using the [**NgImmPatient**](StructureDefinition-NgImmPatient.html) profile.
- **Structuring immunization service delivery records**, such as vaccine administration, using the [**NgImmImmunization**](StructureDefinition-NgImmImmunization.html) profile.
- **Defining the necessary search parameters, RESTful operations, and data constraints** to ensure interoperable exchange of immunization data across digital platforms.
- **Providing the minimum data structures required** for systems to exchange immunization-related data across multiple levels of the health system, from point-of-care to national dashboards. -->

#### Use cases covered in this guide
The IG covers the following key use cases (which will continue to expand in subsequent iterations) by the Nigeria FHIR community:

- Eligibility Verification: Querying patient insurance coverage prior to service delivery.
- Claims Submission: Structured electronic claims sent from hospitals to HMOs or insurers.
- Claims Review and Status: Reviewing submitted claims and tracking approval or rejection.
- Payment Notification: Communicating remittance advice or payment confirmation between payer and provider.