# `TTS/TicketAgent.java`

## Totals (unique edges, internal-only)

- Extend: 1
- Override: 1
- Create: 0
- Call: 1
- Use: 6
- Total: 9

## Extend edges

- TTS/TicketAgent.java/TicketAgent (Class) -> TTS/Staff.java/Staff (Class)

## Override edges

- TTS/TicketAgent.java/TicketAgent/methods/displayInfo (Method) -> TTS/Person.java/Person/methods/displayInfo (Method)

## Call edges

- TTS/TicketAgent.java/TicketAgent/constructors/TicketAgent (Constructor) -> TTS/Staff.java/Staff/constructors/Staff (Constructor)

## Use edges

- TTS/TicketAgent.java/TicketAgent/constructors/TicketAgent (Constructor) -> TTS/TicketAgent.java/TicketAgent/fields/assignedStationId (Field)
- TTS/TicketAgent.java/TicketAgent/methods/getAssignedStationId (Method) -> TTS/TicketAgent.java/TicketAgent/fields/assignedStationId (Field)
- TTS/TicketAgent.java/TicketAgent/methods/displayInfo (Method) -> TTS/Person.java/Person/fields/name (Field)
- TTS/TicketAgent.java/TicketAgent/methods/displayInfo (Method) -> TTS/Staff.java/Staff/fields/employeeId (Field)
- TTS/TicketAgent.java/TicketAgent/methods/displayInfo (Method) -> TTS/TicketAgent.java/TicketAgent/fields/assignedStationId (Field)
- TTS/TicketAgent.java/TicketAgent/methods/displayInfo (Method) -> TTS/Staff.java/Staff/fields/salary (Field)
