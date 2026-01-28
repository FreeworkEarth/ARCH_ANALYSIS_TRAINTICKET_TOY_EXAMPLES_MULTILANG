# `TTS/TrainRepository.java`

## Totals (unique edges, internal-only)

- Extend: 0
- Override: 0
- Create: 0
- Call: 2
- Use: 5
- Total: 7

## Call edges

- TTS/TrainRepository.java/TrainRepository/methods/addTrain (Method) -> TTS/Train.java/Train/methods/getTrainId (Method)
- TTS/TrainRepository.java/TrainRepository/methods/getTrainsByRoute (Method) -> TTS/Train.java/Train/methods/getRouteId (Method)

## Use edges

- TTS/TrainRepository.java/TrainRepository/constructors/TrainRepository (Constructor) -> TTS/TrainRepository.java/TrainRepository/fields/trains (Field)
- TTS/TrainRepository.java/TrainRepository/methods/addTrain (Method) -> TTS/TrainRepository.java/TrainRepository/fields/trains (Field)
- TTS/TrainRepository.java/TrainRepository/methods/getTrain (Method) -> TTS/TrainRepository.java/TrainRepository/fields/trains (Field)
- TTS/TrainRepository.java/TrainRepository/methods/getAllTrains (Method) -> TTS/TrainRepository.java/TrainRepository/fields/trains (Field)
- TTS/TrainRepository.java/TrainRepository/methods/getTrainsByRoute (Method) -> TTS/TrainRepository.java/TrainRepository/fields/trains (Field)
