# `TTS/RouteRepository.java`

## Totals (unique edges, internal-only)

- Extend: 0
- Override: 0
- Create: 0
- Call: 4
- Use: 5
- Total: 9

## Call edges

- TTS/RouteRepository.java/RouteRepository/methods/addRoute (Method) -> TTS/Route.java/Route/methods/getRouteId (Method)
- TTS/RouteRepository.java/RouteRepository/methods/getRoutesByStation (Method) -> TTS/Route.java/Route/methods/getOriginStationId (Method)
- TTS/RouteRepository.java/RouteRepository/methods/getRoutesByStation (Method) -> TTS/Route.java/Route/methods/getDestinationStationId (Method)
- TTS/RouteRepository.java/RouteRepository/methods/getRoutesByStation (Method) -> TTS/Route.java/Route/methods/getIntermediateStopIds (Method)

## Use edges

- TTS/RouteRepository.java/RouteRepository/constructors/RouteRepository (Constructor) -> TTS/RouteRepository.java/RouteRepository/fields/routes (Field)
- TTS/RouteRepository.java/RouteRepository/methods/addRoute (Method) -> TTS/RouteRepository.java/RouteRepository/fields/routes (Field)
- TTS/RouteRepository.java/RouteRepository/methods/getRoute (Method) -> TTS/RouteRepository.java/RouteRepository/fields/routes (Field)
- TTS/RouteRepository.java/RouteRepository/methods/getAllRoutes (Method) -> TTS/RouteRepository.java/RouteRepository/fields/routes (Field)
- TTS/RouteRepository.java/RouteRepository/methods/getRoutesByStation (Method) -> TTS/RouteRepository.java/RouteRepository/fields/routes (Field)
