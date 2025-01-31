Instance: DiagnosticReportGenomicsReport
InstanceOf: DiagnosticReport
Title: "First draft based on Royal College of Radiologists HL7 v2 ORU converted to HL7 FHIR. Will be converted to a Genomics example"

* meta.versionId = "1.0"

* identifier[+].value = "25edee2b-add8-4522-9fa2-1ee8f229bd75"

* basedOn[accessionNumber]
  * type = "ServiceRequest"
  * identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#ACSN
  * identifier.system = "https://fhir.leedsth.nhs.uk/Id/AccessionNumber"
  * identifier.value = "123456789"
  * identifier.assigner.identifier.system = "https://fhir.nhs.uk/Id/ods-organization-code"
  * identifier.assigner.identifier.value = "R0A"

* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#GE "Genetics"

* code.coding[+] = $sct#1054161000000101 "Genetic report"

* subject.reference = "urn:uuid:d6faafcf-db64-4c11-9da8-25f36774c1bd"
* subject.display = "Jack DAWKINS"
* subject.identifier
  * system = "https://fhir.nhs.uk/Id/nhs-number"
  * value = "9912003888"


* issued = "2023-09-07T11:45:41+11:00"

* performer[+]
  * identifier.system = "https://fhir.nhs.uk/Id/ods-organization-code"
  * identifier.value = "R0A"
  * type = #Organization
  * display = "MANCHESTER UNIVERSITY NHS FOUNDATION TRUST"

* resultsInterpreter[primaryReporter]
  * extension[performerFunction]
    * url = "http://hl7.org/fhir/StructureDefinition/event-performerFunction"
    * valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF "primary performer"
  * type = "Practitioner"
  * identifier.system = "https://fhir.hl7.org.uk/Id/gmc-number"
  * identifier.value = "C1234567"
  * display = "FICTITIOUS, Ralph"

* conclusion = "Normal - no action"

* presentedForm[+]
  * contentType = #application/pdf
  * language = #en-GB
  * url = "https://o719on.axshare.com/?id=8aol33&p=introduction&g=1"
  * size = 43272
  * title = "Genomic Report for Anita Lamberts"
  * creation = "2023-11-24"
