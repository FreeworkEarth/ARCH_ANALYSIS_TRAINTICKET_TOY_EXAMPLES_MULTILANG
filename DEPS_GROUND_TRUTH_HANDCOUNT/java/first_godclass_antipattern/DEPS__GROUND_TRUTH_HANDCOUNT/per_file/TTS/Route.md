# TTS/Route.java

- Classes: `Route`

## Members

**Fields**
- `Route.baseFare` : `double`
- `Route.destination` : `TrainStation`
- `Route.distance` : `double`
- `Route.intermediateStops` : `ArrayList`
- `Route.origin` : `TrainStation`
- `Route.routeId` : `String`

**Methods/Constructors**
- `Route.Route()` (Constructor)
- `Route.addIntermediateStop()` (Method)
- `Route.calculateFare()` (Method)
- `Route.displayInfo()` (Method)
- `Route.getBaseFare()` (Method)
- `Route.getDestination()` (Method)
- `Route.getDistance()` (Method)
- `Route.getIntermediateStops()` (Method)
- `Route.getOrigin()` (Method)
- `Route.getRouteId()` (Method)

## Dependencies (heuristic)

- `Use`: `TTS/Route.java/Route/constructors/Route (Constructor)` -> `TTS/Route.java/Route/fields/baseFare (Field)`
- `Use`: `TTS/Route.java/Route/constructors/Route (Constructor)` -> `TTS/Route.java/Route/fields/destination (Field)`
- `Use`: `TTS/Route.java/Route/constructors/Route (Constructor)` -> `TTS/Route.java/Route/fields/distance (Field)`
- `Use`: `TTS/Route.java/Route/constructors/Route (Constructor)` -> `TTS/Route.java/Route/fields/intermediateStops (Field)`
- `Use`: `TTS/Route.java/Route/constructors/Route (Constructor)` -> `TTS/Route.java/Route/fields/origin (Field)`
- `Use`: `TTS/Route.java/Route/constructors/Route (Constructor)` -> `TTS/Route.java/Route/fields/routeId (Field)`
- `Call`: `TTS/Route.java/Route/constructors/Route (Constructor)` -> `TTS/Route.java/Route/methods/calculateFare (Method)`
- `Use`: `TTS/Route.java/Route/methods/addIntermediateStop (Method)` -> `TTS/Route.java/Route/fields/intermediateStops (Field)`
- `Use`: `TTS/Route.java/Route/methods/calculateFare (Method)` -> `TTS/Route.java/Route/fields/distance (Field)`
- `Use`: `TTS/Route.java/Route/methods/displayInfo (Method)` -> `TTS/Route.java/Route/fields/baseFare (Field)`
- `Use`: `TTS/Route.java/Route/methods/displayInfo (Method)` -> `TTS/Route.java/Route/fields/destination (Field)`
- `Use`: `TTS/Route.java/Route/methods/displayInfo (Method)` -> `TTS/Route.java/Route/fields/distance (Field)`
- `Use`: `TTS/Route.java/Route/methods/displayInfo (Method)` -> `TTS/Route.java/Route/fields/intermediateStops (Field)`
- `Use`: `TTS/Route.java/Route/methods/displayInfo (Method)` -> `TTS/Route.java/Route/fields/origin (Field)`
- `Use`: `TTS/Route.java/Route/methods/displayInfo (Method)` -> `TTS/Route.java/Route/fields/routeId (Field)`
- `Call`: `TTS/Route.java/Route/methods/displayInfo (Method)` -> `TTS/TrainStation.java/TrainStation/methods/getName (Method)`
- `Call`: `TTS/Route.java/Route/methods/displayInfo (Method)` -> `TTS/TrainStation.java/TrainStation/methods/getName (Method)`
- `Use`: `TTS/Route.java/Route/methods/getBaseFare (Method)` -> `TTS/Route.java/Route/fields/baseFare (Field)`
- `Use`: `TTS/Route.java/Route/methods/getDestination (Method)` -> `TTS/Route.java/Route/fields/destination (Field)`
- `Use`: `TTS/Route.java/Route/methods/getDistance (Method)` -> `TTS/Route.java/Route/fields/distance (Field)`
- `Use`: `TTS/Route.java/Route/methods/getIntermediateStops (Method)` -> `TTS/Route.java/Route/fields/intermediateStops (Field)`
- `Use`: `TTS/Route.java/Route/methods/getOrigin (Method)` -> `TTS/Route.java/Route/fields/origin (Field)`
- `Use`: `TTS/Route.java/Route/methods/getRouteId (Method)` -> `TTS/Route.java/Route/fields/routeId (Field)`
