package TTS;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * ReportingService - analytics/reporting layer (extra for dependency experiments)
 *
 * Keeps the "SECOND" architecture style (repositories + IDs) but adds:
 * - a reporting service that depends on repositories
 * - a subclass (AdvancedReportingService) to test Extend dependencies
 */
public class ReportingService {
    protected TrainRepository trainRepo;
    protected RouteRepository routeRepo;
    protected TicketRepository ticketRepo;
    protected PassengerRepository passengerRepo;
    protected TrainStationRepository stationRepo;

    protected List<ReportEntry> reports;
    protected Map<String, Object> metrics;
    protected Map<String, Integer> cachedStats;

    public ReportingService(
        TrainRepository trainRepo,
        RouteRepository routeRepo,
        TicketRepository ticketRepo,
        PassengerRepository passengerRepo,
        TrainStationRepository stationRepo
    ) {
        this.trainRepo = trainRepo;
        this.routeRepo = routeRepo;
        this.ticketRepo = ticketRepo;
        this.passengerRepo = passengerRepo;
        this.stationRepo = stationRepo;

        this.reports = new ArrayList<>();
        this.metrics = new HashMap<>();
        this.cachedStats = null;
    }

    public List<Map<String, Object>> generateStationReport() {
        List<Map<String, Object>> report = new ArrayList<>();

        for (TrainStation station : stationRepo.getAllStations()) {
            List<Route> stationRoutes = routeRepo.getRoutesByStation(station.getStationId());
            List<String> stationRouteIds = stationRoutes.stream()
                .map(Route::getRouteId)
                .collect(Collectors.toList());

            long trainCount = trainRepo.getAllTrains().stream()
                .filter(t -> stationRouteIds.contains(t.getRouteId()))
                .count();

            Map<String, Object> stationData = new HashMap<>();
            stationData.put("id", station.getStationId());
            stationData.put("name", station.getStationName());
            stationData.put("city", station.getCity());
            stationData.put("routes", stationRoutes.size());
            stationData.put("trains", trainCount);

            report.add(stationData);
        }

        reports.add(new ReportEntry("station", report));
        return report;
    }

    public List<Map<String, Object>> generateTrainReport() {
        List<Map<String, Object>> report = new ArrayList<>();

        for (Train train : trainRepo.getAllTrains()) {
            Map<String, Object> trainData = new HashMap<>();
            trainData.put("id", train.getTrainId());
            trainData.put("name", train.getTrainName());
            trainData.put("route", train.getRouteId());
            trainData.put("seats_total", train.getTotalSeats());
            trainData.put("seats_available", train.getAvailableSeats());
            trainData.put("departure", train.getDepartureTime());
            trainData.put("arrival", train.getArrivalTime());

            report.add(trainData);
        }

        reports.add(new ReportEntry("train", report));
        return report;
    }

    public List<Map<String, Object>> generatePassengerReport() {
        List<Map<String, Object>> report = new ArrayList<>();

        for (Passenger passenger : passengerRepo.getAllPassengers()) {
            Map<String, Object> passengerData = new HashMap<>();
            passengerData.put("id", passenger.getId());
            passengerData.put("name", passenger.getName());
            passengerData.put("email", passenger.getEmail());
            passengerData.put("tickets", passenger.getTicketIds().size());

            report.add(passengerData);
        }

        reports.add(new ReportEntry("passenger", report));
        return report;
    }

    public double calculateOccupancyRate() {
        int totalSeats = 0;
        int bookedSeats = 0;

        for (Train train : trainRepo.getAllTrains()) {
            totalSeats += train.getTotalSeats();
            bookedSeats += (train.getTotalSeats() - train.getAvailableSeats());
        }

        double rate = (totalSeats > 0) ? (bookedSeats * 100.0 / totalSeats) : 0.0;
        metrics.put("occupancy_rate", rate);
        return rate;
    }

    public double calculateRevenue() {
        double total = 0.0;

        for (Ticket ticket : ticketRepo.getAllTickets()) {
            if ("CONFIRMED".equals(ticket.getStatus())) {
                total += ticket.getFare();
            }
        }

        metrics.put("total_revenue", total);
        return total;
    }

    public List<RoutePopularity> getPopularRoutes(int limit) {
        Map<String, Integer> routeBookings = new HashMap<>();

        for (Ticket ticket : ticketRepo.getAllTickets()) {
            String routeId = ticket.getRouteId();
            routeBookings.put(routeId, routeBookings.getOrDefault(routeId, 0) + 1);
        }

        return routeBookings.entrySet().stream()
            .map(entry -> new RoutePopularity(entry.getKey(), entry.getValue()))
            .sorted((a, b) -> Integer.compare(b.getCount(), a.getCount()))
            .limit(limit)
            .collect(Collectors.toList());
    }

    public Map<String, Integer> getStationTraffic() {
        Map<String, Integer> traffic = new HashMap<>();

        for (Route route : routeRepo.getAllRoutes()) {
            String originId = route.getOriginStationId();
            String destId = route.getDestinationStationId();

            traffic.put(originId, traffic.getOrDefault(originId, 0) + 1);
            traffic.put(destId, traffic.getOrDefault(destId, 0) + 1);
        }

        this.cachedStats = traffic;
        return traffic;
    }

    public Map<String, Object> generateSummary() {
        Map<String, Object> summary = new HashMap<>();

        summary.put("total_stations", stationRepo.getAllStations().size());
        summary.put("total_routes", routeRepo.getAllRoutes().size());
        summary.put("total_trains", trainRepo.getAllTrains().size());
        summary.put("total_passengers", passengerRepo.getAllPassengers().size());
        summary.put("total_tickets", ticketRepo.getAllTickets().size());
        summary.put("occupancy_rate", calculateOccupancyRate());
        summary.put("total_revenue", calculateRevenue());
        summary.put("reports_generated", reports.size());

        metrics.putAll(summary);
        return summary;
    }

    public void clearCache() {
        this.cachedStats = null;
        this.metrics.clear();
    }

    public Map<String, Object> exportAllReports() {
        Map<String, Object> export = new HashMap<>();
        export.put("reports", reports);
        export.put("metrics", metrics);
        export.put("summary", generateSummary());
        return export;
    }

    // Helper classes
    public static class ReportEntry {
        private String type;
        private Object data;

        public ReportEntry(String type, Object data) {
            this.type = type;
            this.data = data;
        }

        public String getType() { return type; }
        public Object getData() { return data; }
    }

    public static class RoutePopularity {
        private String routeId;
        private int count;

        public RoutePopularity(String routeId, int count) {
            this.routeId = routeId;
            this.count = count;
        }

        public String getRouteId() { return routeId; }
        public int getCount() { return count; }
    }
}
