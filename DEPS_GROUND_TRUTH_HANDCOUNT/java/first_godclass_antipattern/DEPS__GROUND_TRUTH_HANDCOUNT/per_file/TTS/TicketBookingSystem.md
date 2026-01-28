# TTS/TicketBookingSystem.java

- Classes: `AdvancedReportingSystem`
- Extends: `ReportingSystem`

## Members

**Methods/Constructors**
- `AdvancedReportingSystem.AdvancedReportingSystem()` (Constructor)
- `AdvancedReportingSystem.generateExecutiveSummary()` (Method)

## Dependencies (heuristic)

- `Call`: `TTS/TicketBookingSystem.java/AdvancedReportingSystem/constructors/AdvancedReportingSystem (Constructor)` -> `TTS/TicketBookingSystem.java/ReportingSystem/constructors/ReportingSystem (Constructor)`
- `Extend`: `TTS/TicketBookingSystem.java/AdvancedReportingSystem/self (Class)` -> `TTS/TicketBookingSystem.java/ReportingSystem/self (Class)`
- `Use`: `TTS/TicketBookingSystem.java/ReportingSystem/constructors/ReportingSystem (Constructor)` -> `TTS/TicketBookingSystem.java/ReportingSystem/fields/bookingSystem (Field)`
- `Use`: `TTS/TicketBookingSystem.java/ReportingSystem/constructors/ReportingSystem (Constructor)` -> `TTS/TicketBookingSystem.java/ReportingSystem/fields/reports (Field)`
- `Use`: `TTS/TicketBookingSystem.java/ReportingSystem/methods/calculateOccupancyRate (Method)` -> `TTS/TicketBookingSystem.java/ReportingSystem/fields/bookingSystem (Field)`
- `Call`: `TTS/TicketBookingSystem.java/ReportingSystem/methods/calculateOccupancyRate (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/getTrains (Method)`
- `Use`: `TTS/TicketBookingSystem.java/ReportingSystem/methods/calculateRevenue (Method)` -> `TTS/TicketBookingSystem.java/ReportingSystem/fields/bookingSystem (Field)`
- `Call`: `TTS/TicketBookingSystem.java/ReportingSystem/methods/calculateRevenue (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/getTrains (Method)`
- `Use`: `TTS/TicketBookingSystem.java/ReportingSystem/methods/exportAllReports (Method)` -> `TTS/TicketBookingSystem.java/ReportingSystem/fields/reports (Field)`
- `Call`: `TTS/TicketBookingSystem.java/ReportingSystem/methods/exportAllReports (Method)` -> `TTS/TicketBookingSystem.java/ReportingSystem/methods/generateSummary (Method)`
- `Use`: `TTS/TicketBookingSystem.java/ReportingSystem/methods/generatePassengerReport (Method)` -> `TTS/TicketBookingSystem.java/ReportingSystem/fields/bookingSystem (Field)`
- `Use`: `TTS/TicketBookingSystem.java/ReportingSystem/methods/generatePassengerReport (Method)` -> `TTS/TicketBookingSystem.java/ReportingSystem/fields/reports (Field)`
- `Call`: `TTS/TicketBookingSystem.java/ReportingSystem/methods/generatePassengerReport (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/getPassengers (Method)`
- `Use`: `TTS/TicketBookingSystem.java/ReportingSystem/methods/generateStationReport (Method)` -> `TTS/TicketBookingSystem.java/ReportingSystem/fields/bookingSystem (Field)`
- `Use`: `TTS/TicketBookingSystem.java/ReportingSystem/methods/generateStationReport (Method)` -> `TTS/TicketBookingSystem.java/ReportingSystem/fields/reports (Field)`
- `Call`: `TTS/TicketBookingSystem.java/ReportingSystem/methods/generateStationReport (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/getStations (Method)`
- `Use`: `TTS/TicketBookingSystem.java/ReportingSystem/methods/generateSummary (Method)` -> `TTS/TicketBookingSystem.java/ReportingSystem/fields/bookingSystem (Field)`
- `Use`: `TTS/TicketBookingSystem.java/ReportingSystem/methods/generateSummary (Method)` -> `TTS/TicketBookingSystem.java/ReportingSystem/fields/reports (Field)`
- `Call`: `TTS/TicketBookingSystem.java/ReportingSystem/methods/generateSummary (Method)` -> `TTS/TicketBookingSystem.java/ReportingSystem/methods/calculateOccupancyRate (Method)`
- `Call`: `TTS/TicketBookingSystem.java/ReportingSystem/methods/generateSummary (Method)` -> `TTS/TicketBookingSystem.java/ReportingSystem/methods/calculateRevenue (Method)`
- `Call`: `TTS/TicketBookingSystem.java/ReportingSystem/methods/generateSummary (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/getPassengers (Method)`
- `Call`: `TTS/TicketBookingSystem.java/ReportingSystem/methods/generateSummary (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/getRoutes (Method)`
- `Call`: `TTS/TicketBookingSystem.java/ReportingSystem/methods/generateSummary (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/getStations (Method)`
- `Call`: `TTS/TicketBookingSystem.java/ReportingSystem/methods/generateSummary (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/getTrains (Method)`
- `Use`: `TTS/TicketBookingSystem.java/ReportingSystem/methods/generateTrainReport (Method)` -> `TTS/TicketBookingSystem.java/ReportingSystem/fields/bookingSystem (Field)`
- `Use`: `TTS/TicketBookingSystem.java/ReportingSystem/methods/generateTrainReport (Method)` -> `TTS/TicketBookingSystem.java/ReportingSystem/fields/reports (Field)`
- `Call`: `TTS/TicketBookingSystem.java/ReportingSystem/methods/generateTrainReport (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/getTrains (Method)`
- `Use`: `TTS/TicketBookingSystem.java/ReportingSystem/methods/getPopularRoutes (Method)` -> `TTS/TicketBookingSystem.java/ReportingSystem/fields/bookingSystem (Field)`
- `Call`: `TTS/TicketBookingSystem.java/ReportingSystem/methods/getPopularRoutes (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/getTrains (Method)`
- `Use`: `TTS/TicketBookingSystem.java/ReportingSystem/methods/getStationTraffic (Method)` -> `TTS/TicketBookingSystem.java/ReportingSystem/fields/bookingSystem (Field)`
- `Call`: `TTS/TicketBookingSystem.java/ReportingSystem/methods/getStationTraffic (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/getRoutes (Method)`
- `Use`: `TTS/TicketBookingSystem.java/TicketBookingSystem/constructors/TicketBookingSystem (Constructor)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/fields/passengers (Field)`
- `Use`: `TTS/TicketBookingSystem.java/TicketBookingSystem/constructors/TicketBookingSystem (Constructor)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/fields/routes (Field)`
- `Use`: `TTS/TicketBookingSystem.java/TicketBookingSystem/constructors/TicketBookingSystem (Constructor)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/fields/staff (Field)`
- `Use`: `TTS/TicketBookingSystem.java/TicketBookingSystem/constructors/TicketBookingSystem (Constructor)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/fields/stations (Field)`
- `Use`: `TTS/TicketBookingSystem.java/TicketBookingSystem/constructors/TicketBookingSystem (Constructor)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/fields/trains (Field)`
- `Use`: `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/addRoute (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/fields/routes (Field)`
- `Use`: `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/addStaff (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/fields/staff (Field)`
- `Use`: `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/addStation (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/fields/stations (Field)`
- `Use`: `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/addTrain (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/fields/trains (Field)`
- `Use`: `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/analyzeRevenue (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/fields/routes (Field)`
- `Use`: `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/displaySystemStats (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/fields/passengers (Field)`
- `Use`: `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/displaySystemStats (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/fields/routes (Field)`
- `Use`: `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/displaySystemStats (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/fields/staff (Field)`
- `Use`: `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/displaySystemStats (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/fields/stations (Field)`
- `Use`: `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/displaySystemStats (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/fields/trains (Field)`
- `Use`: `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/findPassenger (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/fields/passengers (Field)`
- `Use`: `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/findRoutes (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/fields/routes (Field)`
- `Use`: `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/findStation (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/fields/stations (Field)`
- `Use`: `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/findTrain (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/fields/trains (Field)`
- `Call`: `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/getInstance (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/constructors/TicketBookingSystem (Constructor)`
- `Use`: `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/getInstance (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/fields/instance (Field)`
- `Create`: `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/getInstance (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/self (Class)`
- `Use`: `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/getPassengers (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/fields/passengers (Field)`
- `Use`: `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/getRoutes (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/fields/routes (Field)`
- `Use`: `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/getStaff (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/fields/staff (Field)`
- `Use`: `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/getStations (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/fields/stations (Field)`
- `Use`: `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/getTotalCapacity (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/fields/trains (Field)`
- `Use`: `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/getTrains (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/fields/trains (Field)`
- `Use`: `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/registerPassenger (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/fields/passengers (Field)`
- `Use`: `TTS/TicketBookingSystem.java/TicketBookingSystem/methods/searchAvailableTrains (Method)` -> `TTS/TicketBookingSystem.java/TicketBookingSystem/fields/trains (Field)`
- `Extend`: `TTS/TicketBookingSystem.java/TicketBookingSystem/self (Class)` -> `TTS/BaseManagementSystem.java/BaseManagementSystem/self (Class)`
