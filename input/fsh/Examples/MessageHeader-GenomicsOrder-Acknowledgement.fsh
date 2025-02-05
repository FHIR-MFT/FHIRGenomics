Instance: MessageHeaderGenomicOrderAcknowledgement
InstanceOf: MessageHeader
Title: "Message Header - Genomic Order Acknowledgement"
Usage: #example

* eventCoding = http://terminology.hl7.org/CodeSystem/v2-0003#O22

* sender.identifier.system = "https://fhir.nhs.uk/Id/ods-organization-code"
* sender.identifier.value = "R0A"
* sender.display = "MANCHESTER UNIVERSITY NHS FOUNDATION TRUST"

* destination.receiver.identifier.system = "https://fhir.nhs.uk/Id/ods-organization-code"
* destination.receiver.identifier.value = "R0A"
* destination.receiver.display = "MANCHESTER UNIVERSITY NHS FOUNDATION TRUST"
* destination.endpoint = "https//hive.mft.nhs.uk"

* source.endpoint = "https//glh.mft.nhs.uk/"
* source.software = "NW GLH"

* response.id = "9612365d-52a4-4fab-87e7-8a09d753f095"
* response.code = #ok
