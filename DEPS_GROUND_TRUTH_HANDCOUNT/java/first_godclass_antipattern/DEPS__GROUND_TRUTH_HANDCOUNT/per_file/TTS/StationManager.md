# TTS/StationManager.java

- Classes: `StationManager`
- Extends: `Staff`

## Members

**Fields**
- `StationManager.managedStation` : `TrainStation`
- `StationManager.scheduledTrains` : `ArrayList`

**Methods/Constructors**
- `StationManager.StationManager()` (Constructor)
- `StationManager.addTrainSchedule()` (Method)
- `StationManager.displayInfo()` (Method)
- `StationManager.getScheduledTrains()` (Method)
- `StationManager.performDuties()` (Method)
- `StationManager.removeTrainSchedule()` (Method)
- `StationManager.setManagedStation()` (Method)

## Dependencies (heuristic)

- `Call`: `TTS/StationManager.java/StationManager/constructors/StationManager (Constructor)` -> `TTS/Staff.java/Staff/constructors/Staff (Constructor)`
- `Use`: `TTS/StationManager.java/StationManager/constructors/StationManager (Constructor)` -> `TTS/StationManager.java/StationManager/fields/scheduledTrains (Field)`
- `Use`: `TTS/StationManager.java/StationManager/methods/addTrainSchedule (Method)` -> `TTS/StationManager.java/StationManager/fields/scheduledTrains (Field)`
- `Call`: `TTS/StationManager.java/StationManager/methods/addTrainSchedule (Method)` -> `TTS/Train.java/Train/methods/getTrainNumber (Method)`
- `Use`: `TTS/StationManager.java/StationManager/methods/displayInfo (Method)` -> `TTS/StationManager.java/StationManager/fields/scheduledTrains (Field)`
- `Use`: `TTS/StationManager.java/StationManager/methods/getScheduledTrains (Method)` -> `TTS/StationManager.java/StationManager/fields/scheduledTrains (Field)`
- `Use`: `TTS/StationManager.java/StationManager/methods/removeTrainSchedule (Method)` -> `TTS/StationManager.java/StationManager/fields/scheduledTrains (Field)`
- `Use`: `TTS/StationManager.java/StationManager/methods/setManagedStation (Method)` -> `TTS/StationManager.java/StationManager/fields/managedStation (Field)`
- `Extend`: `TTS/StationManager.java/StationManager/self (Class)` -> `TTS/Staff.java/Staff/self (Class)`
