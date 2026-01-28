# TTS/Ticket.java

- Classes: `Ticket`

## Members

**Fields**
- `Ticket.bookingTime` : `LocalDateTime`
- `Ticket.passenger` : `Passenger`
- `Ticket.price` : `double`
- `Ticket.route` : `Route`
- `Ticket.seatNumber` : `String`
- `Ticket.status` : `String`
- `Ticket.ticketCounter` : `int`
- `Ticket.ticketId` : `String`
- `Ticket.train` : `Train`

**Methods/Constructors**
- `Ticket.Ticket()` (Constructor)
- `Ticket.cancel()` (Method)
- `Ticket.complete()` (Method)
- `Ticket.displayTicket()` (Method)
- `Ticket.getPassenger()` (Method)
- `Ticket.getPrice()` (Method)
- `Ticket.getSeatNumber()` (Method)
- `Ticket.getStatus()` (Method)
- `Ticket.getTicketId()` (Method)

## Dependencies (heuristic)

- `Use`: `TTS/Ticket.java/Ticket/constructors/Ticket (Constructor)` -> `TTS/Ticket.java/Ticket/fields/bookingTime (Field)`
- `Use`: `TTS/Ticket.java/Ticket/constructors/Ticket (Constructor)` -> `TTS/Ticket.java/Ticket/fields/passenger (Field)`
- `Use`: `TTS/Ticket.java/Ticket/constructors/Ticket (Constructor)` -> `TTS/Ticket.java/Ticket/fields/price (Field)`
- `Use`: `TTS/Ticket.java/Ticket/constructors/Ticket (Constructor)` -> `TTS/Ticket.java/Ticket/fields/route (Field)`
- `Use`: `TTS/Ticket.java/Ticket/constructors/Ticket (Constructor)` -> `TTS/Ticket.java/Ticket/fields/seatNumber (Field)`
- `Use`: `TTS/Ticket.java/Ticket/constructors/Ticket (Constructor)` -> `TTS/Ticket.java/Ticket/fields/status (Field)`
- `Use`: `TTS/Ticket.java/Ticket/constructors/Ticket (Constructor)` -> `TTS/Ticket.java/Ticket/fields/ticketCounter (Field)`
- `Use`: `TTS/Ticket.java/Ticket/constructors/Ticket (Constructor)` -> `TTS/Ticket.java/Ticket/fields/ticketId (Field)`
- `Use`: `TTS/Ticket.java/Ticket/constructors/Ticket (Constructor)` -> `TTS/Ticket.java/Ticket/fields/train (Field)`
- `Use`: `TTS/Ticket.java/Ticket/methods/cancel (Method)` -> `TTS/Ticket.java/Ticket/fields/seatNumber (Field)`
- `Use`: `TTS/Ticket.java/Ticket/methods/cancel (Method)` -> `TTS/Ticket.java/Ticket/fields/status (Field)`
- `Use`: `TTS/Ticket.java/Ticket/methods/cancel (Method)` -> `TTS/Ticket.java/Ticket/fields/train (Field)`
- `Call`: `TTS/Ticket.java/Ticket/methods/cancel (Method)` -> `TTS/Train.java/Train/methods/releaseSeat (Method)`
- `Use`: `TTS/Ticket.java/Ticket/methods/complete (Method)` -> `TTS/Ticket.java/Ticket/fields/status (Field)`
- `Call`: `TTS/Ticket.java/Ticket/methods/displayTicket (Method)` -> `TTS/Route.java/Route/methods/getDestination (Method)`
- `Call`: `TTS/Ticket.java/Ticket/methods/displayTicket (Method)` -> `TTS/Route.java/Route/methods/getOrigin (Method)`
- `Use`: `TTS/Ticket.java/Ticket/methods/displayTicket (Method)` -> `TTS/Ticket.java/Ticket/fields/bookingTime (Field)`
- `Use`: `TTS/Ticket.java/Ticket/methods/displayTicket (Method)` -> `TTS/Ticket.java/Ticket/fields/passenger (Field)`
- `Use`: `TTS/Ticket.java/Ticket/methods/displayTicket (Method)` -> `TTS/Ticket.java/Ticket/fields/price (Field)`
- `Use`: `TTS/Ticket.java/Ticket/methods/displayTicket (Method)` -> `TTS/Ticket.java/Ticket/fields/route (Field)`
- `Use`: `TTS/Ticket.java/Ticket/methods/displayTicket (Method)` -> `TTS/Ticket.java/Ticket/fields/seatNumber (Field)`
- `Use`: `TTS/Ticket.java/Ticket/methods/displayTicket (Method)` -> `TTS/Ticket.java/Ticket/fields/status (Field)`
- `Use`: `TTS/Ticket.java/Ticket/methods/displayTicket (Method)` -> `TTS/Ticket.java/Ticket/fields/ticketId (Field)`
- `Use`: `TTS/Ticket.java/Ticket/methods/displayTicket (Method)` -> `TTS/Ticket.java/Ticket/fields/train (Field)`
- `Call`: `TTS/Ticket.java/Ticket/methods/displayTicket (Method)` -> `TTS/Train.java/Train/methods/getTrainName (Method)`
- `Call`: `TTS/Ticket.java/Ticket/methods/displayTicket (Method)` -> `TTS/Train.java/Train/methods/getTrainNumber (Method)`
- `Use`: `TTS/Ticket.java/Ticket/methods/getPassenger (Method)` -> `TTS/Ticket.java/Ticket/fields/passenger (Field)`
- `Use`: `TTS/Ticket.java/Ticket/methods/getPrice (Method)` -> `TTS/Ticket.java/Ticket/fields/price (Field)`
- `Use`: `TTS/Ticket.java/Ticket/methods/getSeatNumber (Method)` -> `TTS/Ticket.java/Ticket/fields/seatNumber (Field)`
- `Use`: `TTS/Ticket.java/Ticket/methods/getStatus (Method)` -> `TTS/Ticket.java/Ticket/fields/status (Field)`
- `Use`: `TTS/Ticket.java/Ticket/methods/getTicketId (Method)` -> `TTS/Ticket.java/Ticket/fields/ticketId (Field)`
