
## References

- A. [IHE Pathology and Laboratory Medicine (PaLM) Technical Framework - Volume 2a (PaLM TF-2a) Transactions](https://www.ihe.net/uploadedFiles/Documents/PaLM/IHE_PaLM_TF_Vol2a.pdf)
- B. [HL7 Version 2.5.1 Implementation Guide: Lab Results Interface (LRI), Release 1 from May 2017](https://confluence.hl7.org/download/attachments/25559919/2018%2004%2003%20-%20V2%20LRI%20-%20Ch.%205%20CG%20and%20Code%20System%20Tables.pdf?api=v2)

## Reporting Component Model

<figure>
{%include reports-component.svg%}
<p id="fX.X.X.X-X" class="figureTitle">Genomics Test Report Component Model</p>
</figure>
<br clear="all">

## North West Genomics Report Message Exchange Options

<figure>
{%include reports.svg%}
<p id="fX.X.X.X-X" class="figureTitle">Genomics Report Options</p>
</figure>
<br clear="all">

## Interface Standards

Is based on a HL7 FHIR [unsolicited-observation (R01)](MessageDefinition-unsolicited-observation.html) Message which is backwards compatible with HL7 v2 ORU_R01 Message.

### HL7 v2 Mapping Overview 

Detailed Mapping can be here [Message ORU_R01 to Bundle Map (Experimental)](https://build.fhir.org/ig/HL7/v2-to-fhir/ConceptMap-message-oru-r01-to-bundle.html)

| HL7 v2 ORU Segment           | Cardinality | FHIR Resource                                                 | Map                                                                                                               | 
|------------------------------|-------------|---------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------|
| MSH - Message Header         | 1..1        | MessageHeader                                                 | [MSH[MessageHeader]](https://build.fhir.org/ig/HL7/v2-to-fhir/ConceptMap-segment-msh-to-messageheader.html)       |
| PID - Patient Identification | 0..1        | Patient                                                       | [PID[Patient]](https://build.fhir.org/ig/HL7/v2-to-fhir/ConceptMap-segment-pid-to-patient.html)                   |    
| PV1 - Patient visit          | 0..1        | Encounter                                                     | [PV1[Encounter]](https://build.fhir.org/ig/HL7/v2-to-fhir/ConceptMap-segment-pv1-to-encounter.html)               | 
| ORC - Common Order           | 1..*        | [DiagnosticReport](StructureDefinition-DiagnosticReport.html) | [ORC[DiagnosticReport]](https://build.fhir.org/ig/HL7/v2-to-fhir/ConceptMap-segment-orc-to-diagnosticreport.html) |
|                              |             | [ServiceRequest](StructureDefinition-ServiceRequest.html)     | [ORC[ServiceRequest]](https://build.fhir.org/ig/HL7/v2-to-fhir/ConceptMap-segment-orc-to-servicerequest.html)     |
| OBR - Observations Request   |             | [DiagnosticReport](StructureDefinition-DiagnosticReport.html) | [OBR[DiagnosticReport]](https://build.fhir.org/ig/HL7/v2-to-fhir/ConceptMap-segment-obr-to-diagnosticreport.html) |
| NTE - Notes and Comments     |             | Observation.note?                                             |                                                                                                                   |
| OBX - Observation/Result     |             | Observation or Attachment (part of DiagnosticReport)          | [OBX[Observation]](https://build.fhir.org/ig/HL7/v2-to-fhir/ConceptMap-segment-obx-to-observation.html)           |                                                                                                          |


