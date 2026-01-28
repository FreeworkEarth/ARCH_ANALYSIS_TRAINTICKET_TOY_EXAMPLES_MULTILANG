# TTS/Passenger.java

- Classes: `Passenger`
- Extends: `Person`

## Members

**Fields**
- `Passenger.bookedTickets` : `ArrayList`
- `Passenger.loyaltyPoints` : `int`
- `Passenger.passportNumber` : `String`

**Methods/Constructors**
- `Passenger.Passenger()` (Constructor)
- `Passenger.bookTicket()` (Method)
- `Passenger.cancelTicket()` (Method)
- `Passenger.displayInfo()` (Method)
- `Passenger.getBookedTickets()` (Method)
- `Passenger.getLoyaltyPoints()` (Method)

## Dependencies (heuristic)

- `Use`: `TTS/Passenger.java/Passenger/constructors/Passenger (Constructor)` -> `TTS/Passenger.java/Passenger/fields/bookedTickets (Field)`
- `Use`: `TTS/Passenger.java/Passenger/constructors/Passenger (Constructor)` -> `TTS/Passenger.java/Passenger/fields/loyaltyPoints (Field)`
- `Use`: `TTS/Passenger.java/Passenger/constructors/Passenger (Constructor)` -> `TTS/Passenger.java/Passenger/fields/passportNumber (Field)`
- `Call`: `TTS/Passenger.java/Passenger/constructors/Passenger (Constructor)` -> `TTS/Person.java/Person/constructors/Person (Constructor)`
- `Use`: `TTS/Passenger.java/Passenger/methods/bookTicket (Method)` -> `TTS/Passenger.java/Passenger/fields/bookedTickets (Field)`
- `Use`: `TTS/Passenger.java/Passenger/methods/bookTicket (Method)` -> `TTS/Passenger.java/Passenger/fields/loyaltyPoints (Field)`
- `Use`: `TTS/Passenger.java/Passenger/methods/cancelTicket (Method)` -> `TTS/Passenger.java/Passenger/fields/bookedTickets (Field)`
- `Use`: `TTS/Passenger.java/Passenger/methods/cancelTicket (Method)` -> `TTS/Passenger.java/Passenger/fields/loyaltyPoints (Field)`
- `Use`: `TTS/Passenger.java/Passenger/methods/displayInfo (Method)` -> `TTS/Passenger.java/Passenger/fields/bookedTickets (Field)`
- `Use`: `TTS/Passenger.java/Passenger/methods/displayInfo (Method)` -> `TTS/Passenger.java/Passenger/fields/loyaltyPoints (Field)`
- `Use`: `TTS/Passenger.java/Passenger/methods/getBookedTickets (Method)` -> `TTS/Passenger.java/Passenger/fields/bookedTickets (Field)`
- `Use`: `TTS/Passenger.java/Passenger/methods/getLoyaltyPoints (Method)` -> `TTS/Passenger.java/Passenger/fields/loyaltyPoints (Field)`
- `Extend`: `TTS/Passenger.java/Passenger/self (Class)` -> `TTS/Person.java/Person/self (Class)`
