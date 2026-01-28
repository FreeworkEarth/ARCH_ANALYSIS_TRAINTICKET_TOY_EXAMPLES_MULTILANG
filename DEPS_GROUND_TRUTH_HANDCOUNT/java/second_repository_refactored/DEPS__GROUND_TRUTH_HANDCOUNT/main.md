# Java SECOND Ground Truth Handcount - Overview

## Project Summary

This is the **refactored** version of the Train Ticket System with proper separation of concerns:
- Repository pattern for data access
- Service layer for business logic
- Clean entity classes with minimal coupling

## Files in Scope

| File | Description |
|------|-------------|
| TTS/Person.java | Abstract base class for all people |
| TTS/Staff.java | Abstract class for staff members (extends Person) |
| TTS/Passenger.java | Passenger entity (extends Person) |
| TTS/TicketAgent.java | Ticket agent staff role (extends Staff) |
| TTS/StationManager.java | Station manager staff role (extends Staff) |
| TTS/Ticket.java | Ticket entity |
| TTS/Train.java | Train entity |
| TTS/TrainStation.java | Train station entity |
| TTS/Route.java | Route entity |
| TTS/PassengerRepository.java | Repository for Passenger entities |
| TTS/TicketRepository.java | Repository for Ticket entities |
| TTS/TrainRepository.java | Repository for Train entities |
| TTS/TrainStationRepository.java | Repository for TrainStation entities |
| TTS/RouteRepository.java | Repository for Route entities |
| TTS/BookingService.java | Service layer for booking operations |
| TTS/ReportingService.java | Service layer for reporting (includes inner classes) |
| TTS/AdvancedReportingService.java | Extended reporting service (extends ReportingService) |
| TTS/Main.java | Entry point / presentation layer |

## Dependency Totals (Full Project)

| Dependency Type | Count |
|-----------------|-------|
| Extend | 5 |
| Override | 3 |
| Create | 15 |
| Call | 91 |
| Use | 193 |
| **Total** | **307** |

## Extend Edges (5)

| Source | Target |
|--------|--------|
| Staff | Person |
| Passenger | Person |
| TicketAgent | Staff |
| StationManager | Staff |
| AdvancedReportingService | ReportingService |

## Override Edges (3)

| Source | Target |
|--------|--------|
| Passenger.displayInfo | Person.displayInfo |
| TicketAgent.displayInfo | Person.displayInfo |
| StationManager.displayInfo | Person.displayInfo |

## Per-File Breakdown

See individual files in `per_file/TTS/` for detailed dependency lists:

- [Person.md](per_file/TTS/Person.md) - 8 edges (8 Use)
- [Staff.md](per_file/TTS/Staff.md) - 6 edges (1 Extend, 1 Call, 4 Use)
- [Passenger.md](per_file/TTS/Passenger.md) - 11 edges (1 Extend, 1 Override, 1 Call, 8 Use)
- [TicketAgent.md](per_file/TTS/TicketAgent.md) - 9 edges (1 Extend, 1 Override, 1 Call, 6 Use)
- [StationManager.md](per_file/TTS/StationManager.md) - 9 edges (1 Extend, 1 Override, 1 Call, 6 Use)
- [Ticket.md](per_file/TTS/Ticket.md) - 27 edges (27 Use)
- [Train.md](per_file/TTS/Train.md) - 21 edges (21 Use)
- [TrainStation.md](per_file/TTS/TrainStation.md) - 12 edges (12 Use)
- [Route.md](per_file/TTS/Route.md) - 13 edges (13 Use)
- [PassengerRepository.md](per_file/TTS/PassengerRepository.md) - 5 edges (1 Call, 4 Use)
- [TicketRepository.md](per_file/TTS/TicketRepository.md) - 7 edges (2 Call, 5 Use)
- [TrainRepository.md](per_file/TTS/TrainRepository.md) - 7 edges (2 Call, 5 Use)
- [TrainStationRepository.md](per_file/TTS/TrainStationRepository.md) - 7 edges (2 Call, 5 Use)
- [RouteRepository.md](per_file/TTS/RouteRepository.md) - 9 edges (4 Call, 5 Use)
- [BookingService.md](per_file/TTS/BookingService.md) - 30 edges (1 Create, 16 Call, 13 Use)
- [ReportingService.md](per_file/TTS/ReportingService.md) - 74 edges (4 Create, 30 Call, 40 Use)
- [AdvancedReportingService.md](per_file/TTS/AdvancedReportingService.md) - 3 edges (1 Extend, 2 Call)
- [Main.md](per_file/TTS/Main.md) - 25 edges (10 Create, 15 Call)

## Architecture Notes

This SECOND version demonstrates good architecture practices:

1. **Repository Pattern**: Data access is encapsulated in repository classes
2. **Service Layer**: Business logic is in BookingService and ReportingService
3. **ID-based References**: Entities use String IDs instead of object references (reduces coupling)
4. **Clean Inheritance**: Person -> Staff -> TicketAgent/StationManager hierarchy
5. **Abstract Methods**: Person.displayInfo() is abstract, overridden by concrete classes
