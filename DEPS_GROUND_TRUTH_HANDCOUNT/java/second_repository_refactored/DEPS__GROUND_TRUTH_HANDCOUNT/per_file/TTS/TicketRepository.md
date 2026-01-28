# `TTS/TicketRepository.java`

## Totals (unique edges, internal-only)

- Extend: 0
- Override: 0
- Create: 0
- Call: 2
- Use: 5
- Total: 7

## Call edges

- TTS/TicketRepository.java/TicketRepository/methods/addTicket (Method) -> TTS/Ticket.java/Ticket/methods/getTicketId (Method)
- TTS/TicketRepository.java/TicketRepository/methods/getTicketsByPassenger (Method) -> TTS/Ticket.java/Ticket/methods/getPassengerId (Method)

## Use edges

- TTS/TicketRepository.java/TicketRepository/constructors/TicketRepository (Constructor) -> TTS/TicketRepository.java/TicketRepository/fields/tickets (Field)
- TTS/TicketRepository.java/TicketRepository/methods/addTicket (Method) -> TTS/TicketRepository.java/TicketRepository/fields/tickets (Field)
- TTS/TicketRepository.java/TicketRepository/methods/getTicket (Method) -> TTS/TicketRepository.java/TicketRepository/fields/tickets (Field)
- TTS/TicketRepository.java/TicketRepository/methods/getAllTickets (Method) -> TTS/TicketRepository.java/TicketRepository/fields/tickets (Field)
- TTS/TicketRepository.java/TicketRepository/methods/getTicketsByPassenger (Method) -> TTS/TicketRepository.java/TicketRepository/fields/tickets (Field)
