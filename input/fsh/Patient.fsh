Profile: Patient
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-Patient
Id: Patient
Description: """
Extension of UKCore-Patient which includes constraints from:
- HL7 PID segment definitions from [NHS England HL7 v2 ADT Message Specification](https://drive.google.com/drive/folders/1FRkyZvWpZB1nCKbvQbo-eW_q9VtlR3Ws)
"""

* identifier 1..* MS

* identifier contains
  MedicalRecordNumber 0..*

* identifier[nhsNumber] only NHSNumber
* identifier[nhsNumber] ^short = "UK National Health Identifiers"
* identifier[MedicalRecordNumber] only MedicalRecordNumber
* identifier[MedicalRecordNumber] ^short = "Medical Record Number"

* name 1..*
