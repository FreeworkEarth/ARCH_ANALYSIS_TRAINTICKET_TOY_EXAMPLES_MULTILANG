# TTS/TicketAgent.java

- Classes: `TicketAgent`
- Extends: `Staff`

## Members

**Fields**
- `TicketAgent.assignedStation` : `TrainStation`
- `TicketAgent.ticketsProcessed` : `int`

**Methods/Constructors**
- `TicketAgent.TicketAgent()` (Constructor)
- `TicketAgent.cancelTicket()` (Method)
- `TicketAgent.displayInfo()` (Method)
- `TicketAgent.getTicketsProcessed()` (Method)
- `TicketAgent.issueTicket()` (Method)
- `TicketAgent.performDuties()` (Method)
- `TicketAgent.setAssignedStation()` (Method)

## Dependencies (heuristic)

- `Call`: `TTS/TicketAgent.java/TicketAgent/constructors/TicketAgent (Constructor)` -> `TTS/Staff.java/Staff/constructors/Staff (Constructor)`
- `Use`: `TTS/TicketAgent.java/TicketAgent/constructors/TicketAgent (Constructor)` -> `TTS/TicketAgent.java/TicketAgent/fields/ticketsProcessed (Field)`
- `Call`: `TTS/TicketAgent.java/TicketAgent/methods/cancelTicket (Method)` -> `TTS/Passenger.java/Passenger/methods/cancelTicket (Method)`
- `Call`: `TTS/TicketAgent.java/TicketAgent/methods/cancelTicket (Method)` -> `TTS/Ticket.java/Ticket/methods/cancel (Method)`
- `Use`: `TTS/TicketAgent.java/TicketAgent/methods/cancelTicket (Method)` -> `TTS/TicketAgent.java/TicketAgent/fields/ticketsProcessed (Field)`
- `Call`: `TTS/TicketAgent.java/TicketAgent/methods/cancelTicket (Method)` -> `TTS/TicketAgent.java/TicketAgent/methods/cancelTicket (Method)`
- `Use`: `TTS/TicketAgent.java/TicketAgent/methods/displayInfo (Method)` -> `TTS/TicketAgent.java/TicketAgent/fields/ticketsProcessed (Field)`
- `Use`: `TTS/TicketAgent.java/TicketAgent/methods/getTicketsProcessed (Method)` -> `TTS/TicketAgent.java/TicketAgent/fields/ticketsProcessed (Field)`
- `Call`: `TTS/TicketAgent.java/TicketAgent/methods/issueTicket (Method)` -> `TTS/Passenger.java/Passenger/methods/bookTicket (Method)`
- `Create`: `TTS/TicketAgent.java/TicketAgent/methods/issueTicket (Method)` -> `TTS/Ticket.java/Ticket/self (Class)`
- `Use`: `TTS/TicketAgent.java/TicketAgent/methods/issueTicket (Method)` -> `TTS/TicketAgent.java/TicketAgent/fields/ticketsProcessed (Field)`
- `Use`: `TTS/TicketAgent.java/TicketAgent/methods/setAssignedStation (Method)` -> `TTS/TicketAgent.java/TicketAgent/fields/assignedStation (Field)`
- `Extend`: `TTS/TicketAgent.java/TicketAgent/self (Class)` -> `TTS/Staff.java/Staff/self (Class)`
