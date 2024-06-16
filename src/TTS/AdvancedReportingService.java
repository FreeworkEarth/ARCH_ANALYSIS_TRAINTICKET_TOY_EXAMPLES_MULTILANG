package TTS;

import java.util.Map;

/**
 * AdvancedReportingService - subclass to test Extend dependencies (service layer)
 *
 * Extends ReportingService to demonstrate inheritance patterns for dependency analysis.
 */
public class AdvancedReportingService extends ReportingService {

    public AdvancedReportingService(
        TrainRepository trainRepo,
        RouteRepository routeRepo,
        TicketRepository ticketRepo,
        PassengerRepository passengerRepo,
        TrainStationRepository stationRepo
    ) {
        super(trainRepo, routeRepo, ticketRepo, passengerRepo, stationRepo);
    }

    /**
     * Generate an executive summary with additional metadata
     */
    public Map<String, Object> generateExecutiveSummary() {
        Map<String, Object> summary = generateSummary();
        summary.put("generated_by", "AdvancedReportingService");
        return summary;
    }
}
