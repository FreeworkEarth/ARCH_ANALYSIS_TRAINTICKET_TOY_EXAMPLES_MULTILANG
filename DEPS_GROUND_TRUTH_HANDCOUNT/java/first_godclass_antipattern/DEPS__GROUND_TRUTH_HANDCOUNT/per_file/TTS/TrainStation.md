# TTS/TrainStation.java

- Classes: `TrainStation`

## Members

**Fields**
- `TrainStation.agents` : `ArrayList`
- `TrainStation.availableTrains` : `ArrayList`
- `TrainStation.city` : `String`
- `TrainStation.name` : `String`
- `TrainStation.stationCode` : `String`

**Methods/Constructors**
- `TrainStation.TrainStation()` (Constructor)
- `TrainStation.addAgent()` (Method)
- `TrainStation.addTrain()` (Method)
- `TrainStation.displayInfo()` (Method)
- `TrainStation.equals()` (Method)
- `TrainStation.getAgents()` (Method)
- `TrainStation.getCity()` (Method)
- `TrainStation.getName()` (Method)
- `TrainStation.getStationCode()` (Method)
- `TrainStation.removeTrain()` (Method)
- `TrainStation.searchTrains()` (Method)

## Dependencies (heuristic)

- `Use`: `TTS/TrainStation.java/TrainStation/constructors/TrainStation (Constructor)` -> `TTS/TrainStation.java/TrainStation/fields/agents (Field)`
- `Use`: `TTS/TrainStation.java/TrainStation/constructors/TrainStation (Constructor)` -> `TTS/TrainStation.java/TrainStation/fields/availableTrains (Field)`
- `Use`: `TTS/TrainStation.java/TrainStation/constructors/TrainStation (Constructor)` -> `TTS/TrainStation.java/TrainStation/fields/city (Field)`
- `Use`: `TTS/TrainStation.java/TrainStation/constructors/TrainStation (Constructor)` -> `TTS/TrainStation.java/TrainStation/fields/name (Field)`
- `Use`: `TTS/TrainStation.java/TrainStation/constructors/TrainStation (Constructor)` -> `TTS/TrainStation.java/TrainStation/fields/stationCode (Field)`
- `Call`: `TTS/TrainStation.java/TrainStation/methods/addAgent (Method)` -> `TTS/TicketAgent.java/TicketAgent/methods/setAssignedStation (Method)`
- `Use`: `TTS/TrainStation.java/TrainStation/methods/addAgent (Method)` -> `TTS/TrainStation.java/TrainStation/fields/agents (Field)`
- `Use`: `TTS/TrainStation.java/TrainStation/methods/addTrain (Method)` -> `TTS/TrainStation.java/TrainStation/fields/availableTrains (Field)`
- `Use`: `TTS/TrainStation.java/TrainStation/methods/displayInfo (Method)` -> `TTS/TrainStation.java/TrainStation/fields/agents (Field)`
- `Use`: `TTS/TrainStation.java/TrainStation/methods/displayInfo (Method)` -> `TTS/TrainStation.java/TrainStation/fields/availableTrains (Field)`
- `Use`: `TTS/TrainStation.java/TrainStation/methods/displayInfo (Method)` -> `TTS/TrainStation.java/TrainStation/fields/city (Field)`
- `Use`: `TTS/TrainStation.java/TrainStation/methods/displayInfo (Method)` -> `TTS/TrainStation.java/TrainStation/fields/name (Field)`
- `Use`: `TTS/TrainStation.java/TrainStation/methods/displayInfo (Method)` -> `TTS/TrainStation.java/TrainStation/fields/stationCode (Field)`
- `Use`: `TTS/TrainStation.java/TrainStation/methods/equals (Method)` -> `TTS/TrainStation.java/TrainStation/fields/stationCode (Field)`
- `Call`: `TTS/TrainStation.java/TrainStation/methods/equals (Method)` -> `TTS/TrainStation.java/TrainStation/methods/equals (Method)`
- `Use`: `TTS/TrainStation.java/TrainStation/methods/getAgents (Method)` -> `TTS/TrainStation.java/TrainStation/fields/agents (Field)`
- `Use`: `TTS/TrainStation.java/TrainStation/methods/getCity (Method)` -> `TTS/TrainStation.java/TrainStation/fields/city (Field)`
- `Use`: `TTS/TrainStation.java/TrainStation/methods/getName (Method)` -> `TTS/TrainStation.java/TrainStation/fields/name (Field)`
- `Use`: `TTS/TrainStation.java/TrainStation/methods/getStationCode (Method)` -> `TTS/TrainStation.java/TrainStation/fields/stationCode (Field)`
- `Use`: `TTS/TrainStation.java/TrainStation/methods/removeTrain (Method)` -> `TTS/TrainStation.java/TrainStation/fields/availableTrains (Field)`
- `Use`: `TTS/TrainStation.java/TrainStation/methods/searchTrains (Method)` -> `TTS/TrainStation.java/TrainStation/fields/availableTrains (Field)`
- `Call`: `TTS/TrainStation.java/TrainStation/methods/searchTrains (Method)` -> `TTS/TrainStation.java/TrainStation/methods/equals (Method)`
