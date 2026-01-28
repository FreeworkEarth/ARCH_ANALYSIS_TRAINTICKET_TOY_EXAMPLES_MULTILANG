# `TTS/BookingService.java`

## Totals (unique edges, internal-only)

- Extend: 0
- Override: 0
- Create: 1
- Call: 16
- Use: 13
- Total: 30

## Create edges

- TTS/BookingService.java/BookingService/methods/bookTicket (Method) -> TTS/Ticket.java/Ticket (Class)

## Call edges

- TTS/BookingService.java/BookingService/methods/bookTicket (Method) -> TTS/PassengerRepository.java/PassengerRepository/methods/getPassenger (Method)
- TTS/BookingService.java/BookingService/methods/bookTicket (Method) -> TTS/TrainRepository.java/TrainRepository/methods/getTrain (Method)
- TTS/BookingService.java/BookingService/methods/bookTicket (Method) -> TTS/Train.java/Train/methods/bookSeat (Method)
- TTS/BookingService.java/BookingService/methods/bookTicket (Method) -> TTS/Train.java/Train/methods/getTotalSeats (Method)
- TTS/BookingService.java/BookingService/methods/bookTicket (Method) -> TTS/Train.java/Train/methods/getAvailableSeats (Method)
- TTS/BookingService.java/BookingService/methods/bookTicket (Method) -> TTS/Train.java/Train/methods/getRouteId (Method)
- TTS/BookingService.java/BookingService/methods/bookTicket (Method) -> TTS/RouteRepository.java/RouteRepository/methods/getRoute (Method)
- TTS/BookingService.java/BookingService/methods/bookTicket (Method) -> TTS/Route.java/Route/methods/getBaseFare (Method)
- TTS/BookingService.java/BookingService/methods/bookTicket (Method) -> TTS/TicketRepository.java/TicketRepository/methods/addTicket (Method)
- TTS/BookingService.java/BookingService/methods/bookTicket (Method) -> TTS/Passenger.java/Passenger/methods/addTicket (Method)
- TTS/BookingService.java/BookingService/methods/cancelTicket (Method) -> TTS/TicketRepository.java/TicketRepository/methods/getTicket (Method)
- TTS/BookingService.java/BookingService/methods/cancelTicket (Method) -> TTS/Ticket.java/Ticket/methods/getStatus (Method)
- TTS/BookingService.java/BookingService/methods/cancelTicket (Method) -> TTS/Ticket.java/Ticket/methods/getTrainId (Method)
- TTS/BookingService.java/BookingService/methods/cancelTicket (Method) -> TTS/TrainRepository.java/TrainRepository/methods/getTrain (Method)
- TTS/BookingService.java/BookingService/methods/cancelTicket (Method) -> TTS/Train.java/Train/methods/cancelSeat (Method)
- TTS/BookingService.java/BookingService/methods/cancelTicket (Method) -> TTS/Ticket.java/Ticket/methods/cancel (Method)
- TTS/BookingService.java/BookingService/methods/searchTrains (Method) -> TTS/TrainRepository.java/TrainRepository/methods/getTrainsByRoute (Method)
- TTS/BookingService.java/BookingService/methods/getPassengerTickets (Method) -> TTS/TicketRepository.java/TicketRepository/methods/getTicketsByPassenger (Method)

## Use edges

- TTS/BookingService.java/BookingService/constructors/BookingService (Constructor) -> TTS/BookingService.java/BookingService/fields/trainRepo (Field)
- TTS/BookingService.java/BookingService/constructors/BookingService (Constructor) -> TTS/BookingService.java/BookingService/fields/routeRepo (Field)
- TTS/BookingService.java/BookingService/constructors/BookingService (Constructor) -> TTS/BookingService.java/BookingService/fields/ticketRepo (Field)
- TTS/BookingService.java/BookingService/constructors/BookingService (Constructor) -> TTS/BookingService.java/BookingService/fields/passengerRepo (Field)
- TTS/BookingService.java/BookingService/constructors/BookingService (Constructor) -> TTS/BookingService.java/BookingService/fields/stationRepo (Field)
- TTS/BookingService.java/BookingService/methods/bookTicket (Method) -> TTS/BookingService.java/BookingService/fields/passengerRepo (Field)
- TTS/BookingService.java/BookingService/methods/bookTicket (Method) -> TTS/BookingService.java/BookingService/fields/trainRepo (Field)
- TTS/BookingService.java/BookingService/methods/bookTicket (Method) -> TTS/BookingService.java/BookingService/fields/routeRepo (Field)
- TTS/BookingService.java/BookingService/methods/bookTicket (Method) -> TTS/BookingService.java/BookingService/fields/ticketRepo (Field)
- TTS/BookingService.java/BookingService/methods/cancelTicket (Method) -> TTS/BookingService.java/BookingService/fields/ticketRepo (Field)
- TTS/BookingService.java/BookingService/methods/cancelTicket (Method) -> TTS/BookingService.java/BookingService/fields/trainRepo (Field)
- TTS/BookingService.java/BookingService/methods/searchTrains (Method) -> TTS/BookingService.java/BookingService/fields/trainRepo (Field)
- TTS/BookingService.java/BookingService/methods/getPassengerTickets (Method) -> TTS/BookingService.java/BookingService/fields/ticketRepo (Field)
