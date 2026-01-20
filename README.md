# Train Ticket System - Ground Truth Examples for Architecture Analysis

**Ground truth dataset for testing software architecture analysis tools**

This repository contains structurally identical Java and Python implementations demonstrating bad vs good software architecture patterns. Used as reference data for [NeoDepends](https://github.com/jlefever/neodepends) and [Deicide](https://github.com/jlefever/deicide) development and validation.

**Active Forks**:

- [NeoDepends Fork](https://github.com/FreeworkEarth/neodepends) - Multi-language dependency extraction
- [Deicide Fork](https://github.com/FreeworkEarth/deicide) - God class detection and decomposition

## Purpose

Provides **ground truth** for validating that architecture analysis tools:
- Detect the **same problems** in both Java and Python
- Recommend **similar improvements** across languages
- Produce **consistent metrics** for identical structures

## Structure

```
├── java/
│   ├── first_godclass_antipattern/      # Bad: God class + anti-patterns
│   └── second_repository_refactored/    # Good: Repository pattern
└── python/
    ├── first_godclass_antipattern/      # Bad: God class + anti-patterns (mirrors Java)
    └── second_repository_refactored/    # Good: Repository pattern (mirrors Java)
```

## Versions

### FIRST: God Class Anti-Pattern (Bad Architecture)

**Purpose**: Combines multiple bad patterns to test detection capabilities

**Characteristics**:

- **God Class**: Single class managing all responsibilities (~301 lines in Python, ~343 in Java)
- **Anti-patterns**: High coupling, low cohesion, mixed concerns
- **Multi-class file** (Java): TicketBookingSystem.java contains 3 classes for testing multi-class parsing

**Files**:

- Java: 13 classes (BaseManagementSystem, entities, TicketBookingSystem with embedded classes)
- Python: 11 modules (base_management_system, entities, ticket_booking_system)

**Java and Python versions are structurally identical** - same entities, same god class structure.

### SECOND: Repository Pattern (Good Architecture)

**Purpose**: Shows proper refactoring of FIRST's problems

**Characteristics**:
- **Repository Pattern**: Separate repositories for each entity type
- **Service Layer**: BookingService + ReportingService coordinate operations
- **Low Coupling**: ID references instead of object references
- **High Cohesion**: Single responsibility per class

**Files**:
- Java: 18 classes (5 repositories, 2 services, 9 entities, base classes)
- Python: 17 modules (5 repositories, 2 services, 9 entities, base modules)

**Java and Python versions are structurally identical** - same repository structure, same services.

## Expected Metrics (DV8)

| Metric | FIRST (Bad) | SECOND (Good) |
|--------|-------------|---------------|
| **M-Score** | 20-25% | 60-65% |
| **Propagation Cost** | 60-70% | 18-22% |
| **Decoupling Level** | 5-15% | 65-70% |

**Goal**: 3× improvement from FIRST to SECOND

## Usage

### With NeoDepends

Extract dependencies for analysis:

```bash
# Java FIRST
python3 neodepends/tools/neodepends_python_export.py \
  --input ARCH_ANALYSIS_TRAINTICKET_TOY_EXAMPLES/java/first_godclass_antipattern/src \
  --output-dir ./output_java_first \
  --langs java

# Python SECOND
python3 neodepends/tools/neodepends_python_export.py \
  --input ARCH_ANALYSIS_TRAINTICKET_TOY_EXAMPLES/python/second_repository_refactored/tts \
  --output-dir ./output_python_second \
  --langs python
```

### With Deicide

Analyze god class and get decomposition recommendations:

```bash
python -m deicide \
  --dv8-input ./output_java_first/dependencies.stackgraphs_ast.filtered.dv8-dsm-v3.json \
  --class "TicketBookingSystem" \
  --use-arch-similarity \
  --output-dir ./deicide_results
```

**Expected**: Deicide should recommend splitting TicketBookingSystem into structure similar to SECOND.

## Validation Workflow

1. **Extract dependencies** from FIRST (Java + Python)
2. **Run metrics** - should show poor architecture (M-Score ~20-25%)
3. **Analyze with Deicide** - get refactoring recommendations
4. **Compare recommendations** to SECOND structure
5. **Validate cross-language consistency** - Java and Python results should be similar

## Key Testing Scenarios

### Multi-Language Consistency
- Run same analysis on Java FIRST and Python FIRST
- Results should identify **same architectural problems**
- Metrics should be **comparable** (within 5-10%)

### Refactoring Validation
- Deicide recommendations for FIRST should resemble SECOND structure
- Metrics for recommended decomposition should match SECOND metrics

### Repository Pattern Detection
- Tools should recognize repository pattern in SECOND
- Should show **low coupling** between repositories
- Should identify **service layer** coordination

## File Counts

| Version | Java | Python |
|---------|------|--------|
| **FIRST** | 13 classes | 11 modules |
| **SECOND** | 18 classes | 17 modules |

## Domain: Train Ticket Booking System

Both versions implement a train ticket booking system with:
- **Entities**: Passenger, Train, Route, TrainStation, Ticket, Staff
- **Operations**: Book tickets, manage trains/routes, handle passengers
- **Reporting**: Revenue, occupancy, popular routes

Domain complexity is realistic but manageable for testing purposes.

## Related Projects

- **[NeoDepends](https://github.com/jlefever/neodepends)**: Multi-language dependency extraction
- **[Deicide](https://github.com/jlefever/deicide)**: God class detection and decomposition

## License

MIT License - See [LICENSE](LICENSE) file

## Contributors

- **Christoph Haring** - Enhanced examples with multi-class patterns and repository services
- **Jason Lefever** - Original Deicide baseline

## Contact

For questions: charing@hawaii.edu

---

**Note**: These examples are designed as **ground truth data** - they are intentionally simplified and structurally identical across languages to enable reliable cross-language tool validation.
