Profile:        DiagnosticReport
Parent:         https://fhir.hl7.org.uk/StructureDefinition/UKCore-DiagnosticReport
Id:             DiagnosticReport
Title:          "Diagnostic Report"
Description:    """
DiagnosticReport based on

- [UK Core DiagnosticReport](https://simplifier.net/hl7fhirukcorer4/ukcore-diagnosticreport)

"""

* identifier 1..* MS

* basedOn ^slicing.discriminator.type = #pattern
* basedOn ^slicing.discriminator.path = "type"
* basedOn ^slicing.rules = #open
* basedOn ^slicing.description = "Slice based on the type"
* basedOn ^slicing.ordered = false
* basedOn contains
  accessionNumber 0..1 MS

* basedOn[accessionNumber] ^short = "Created by Imaging Test Order Workflow"
* basedOn[accessionNumber].type 1..1 MS
* basedOn[accessionNumber].type = "ServiceRequest"
* basedOn[accessionNumber].identifier 1..1
* basedOn[accessionNumber].identifier only AccessionNumber

* subject 1..1
* subject.identifier 1..1

* performer.identifier 1..1
* performer.identifier.system 1..1
* performer.identifier.value 1..1
* performer.type 1..1
* performer.extension contains
      http://hl7.org/fhir/StructureDefinition/event-performerFunction named performerFunction 0..1
* performer ^slicing.discriminator.type = #pattern
* performer ^slicing.discriminator.path = "type"
* performer ^slicing.rules = #open
* performer ^slicing.description = "Slice based on the type"
* performer ^slicing.ordered = false
* performer contains
  organisation 1..1 and operator 0..*

* performer[organisation].identifier only OrganisationCode

* performer[operator].identifier only GeneralMedicalPractitionerCode or GeneralMedicalCouncilReferenceNumber
* performer[operator].extension[performerFunction].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#SPRF

* resultsInterpreter.identifier 1..1
* resultsInterpreter.identifier.system 1..1
* resultsInterpreter.identifier.value 1..1
* resultsInterpreter.type 1..1
* resultsInterpreter.extension contains
      http://hl7.org/fhir/StructureDefinition/event-performerFunction named performerFunction 0..1

* resultsInterpreter ^slicing.discriminator.type = #pattern
* resultsInterpreter ^slicing.discriminator.path = "extension[performerFunction].valueCodeableConcept.coding.code"
* resultsInterpreter ^slicing.rules = #open
* resultsInterpreter ^slicing.description = "Slice based on the type"
* resultsInterpreter ^slicing.ordered = false
* resultsInterpreter contains
  primaryReporter 0..* and
  secondaryReporter 0..*

* resultsInterpreter[primaryReporter].extension[performerFunction].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF
* resultsInterpreter[primaryReporter].identifier only GeneralMedicalPractitionerCode or GeneralMedicalCouncilReferenceNumber
* resultsInterpreter[secondaryReporter].extension[performerFunction].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#SPRF
* resultsInterpreter[secondaryReporter].identifier only GeneralMedicalPractitionerCode or GeneralMedicalCouncilReferenceNumber
