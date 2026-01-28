# TTS/Train.java

- Classes: `Train`

## Members

**Fields**
- `Train.bookedSeats` : `ArrayList`
- `Train.route` : `Route`
- `Train.totalSeats` : `int`
- `Train.trainName` : `String`
- `Train.trainNumber` : `String`
- `Train.type` : `String`

**Methods/Constructors**
- `Train.Train()` (Constructor)
- `Train.bookSeat()` (Method)
- `Train.displayInfo()` (Method)
- `Train.getAvailableSeats()` (Method)
- `Train.getRoute()` (Method)
- `Train.getTotalSeats()` (Method)
- `Train.getTrainName()` (Method)
- `Train.getTrainNumber()` (Method)
- `Train.isSeatAvailable()` (Method)
- `Train.releaseSeat()` (Method)
- `Train.setRoute()` (Method)

## Dependencies (heuristic)

- `Use`: `TTS/Train.java/Train/constructors/Train (Constructor)` -> `TTS/Train.java/Train/fields/bookedSeats (Field)`
- `Use`: `TTS/Train.java/Train/constructors/Train (Constructor)` -> `TTS/Train.java/Train/fields/totalSeats (Field)`
- `Use`: `TTS/Train.java/Train/constructors/Train (Constructor)` -> `TTS/Train.java/Train/fields/trainName (Field)`
- `Use`: `TTS/Train.java/Train/constructors/Train (Constructor)` -> `TTS/Train.java/Train/fields/trainNumber (Field)`
- `Use`: `TTS/Train.java/Train/constructors/Train (Constructor)` -> `TTS/Train.java/Train/fields/type (Field)`
- `Use`: `TTS/Train.java/Train/methods/bookSeat (Method)` -> `TTS/Train.java/Train/fields/bookedSeats (Field)`
- `Call`: `TTS/Train.java/Train/methods/bookSeat (Method)` -> `TTS/Train.java/Train/methods/isSeatAvailable (Method)`
- `Call`: `TTS/Train.java/Train/methods/displayInfo (Method)` -> `TTS/Route.java/Route/methods/getDestination (Method)`
- `Call`: `TTS/Train.java/Train/methods/displayInfo (Method)` -> `TTS/Route.java/Route/methods/getOrigin (Method)`
- `Use`: `TTS/Train.java/Train/methods/displayInfo (Method)` -> `TTS/Train.java/Train/fields/route (Field)`
- `Use`: `TTS/Train.java/Train/methods/displayInfo (Method)` -> `TTS/Train.java/Train/fields/totalSeats (Field)`
- `Use`: `TTS/Train.java/Train/methods/displayInfo (Method)` -> `TTS/Train.java/Train/fields/trainName (Field)`
- `Use`: `TTS/Train.java/Train/methods/displayInfo (Method)` -> `TTS/Train.java/Train/fields/trainNumber (Field)`
- `Use`: `TTS/Train.java/Train/methods/displayInfo (Method)` -> `TTS/Train.java/Train/fields/type (Field)`
- `Call`: `TTS/Train.java/Train/methods/displayInfo (Method)` -> `TTS/Train.java/Train/methods/getAvailableSeats (Method)`
- `Use`: `TTS/Train.java/Train/methods/getAvailableSeats (Method)` -> `TTS/Train.java/Train/fields/bookedSeats (Field)`
- `Use`: `TTS/Train.java/Train/methods/getAvailableSeats (Method)` -> `TTS/Train.java/Train/fields/totalSeats (Field)`
- `Use`: `TTS/Train.java/Train/methods/getRoute (Method)` -> `TTS/Train.java/Train/fields/route (Field)`
- `Use`: `TTS/Train.java/Train/methods/getTotalSeats (Method)` -> `TTS/Train.java/Train/fields/totalSeats (Field)`
- `Use`: `TTS/Train.java/Train/methods/getTrainName (Method)` -> `TTS/Train.java/Train/fields/trainName (Field)`
- `Use`: `TTS/Train.java/Train/methods/getTrainNumber (Method)` -> `TTS/Train.java/Train/fields/trainNumber (Field)`
- `Use`: `TTS/Train.java/Train/methods/isSeatAvailable (Method)` -> `TTS/Train.java/Train/fields/bookedSeats (Field)`
- `Use`: `TTS/Train.java/Train/methods/releaseSeat (Method)` -> `TTS/Train.java/Train/fields/bookedSeats (Field)`
- `Use`: `TTS/Train.java/Train/methods/setRoute (Method)` -> `TTS/Train.java/Train/fields/route (Field)`
