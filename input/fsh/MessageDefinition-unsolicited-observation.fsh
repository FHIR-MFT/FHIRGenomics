Instance:  MessageDefinition-unsolicited-observation
InstanceOf: MessageDefinition
Title:   "Message Definition - Unsolicited Observation"
Usage:  #definition

* status = #draft
* date = 2024-10-04
* eventCoding = http://terminology.hl7.org/CodeSystem/v2-0003#R01
* description = """
Event Notification
"""
* category = #consequence

* focus[+]
* focus[=]
  * code = #DiagnosticReport
  * profile = Canonical(DiagnosticReport)
  * min = 1
  * max = "*"


