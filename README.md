# Train Ticket System - Temporal Analysis Ground Truth

**Temporal evolution dataset for testing architecture analysis over time**

This branch contains commit history showing the evolution from bad to good architecture.

## Branch Purpose

The `temporal` branch is specifically designed for testing temporal analysis pipelines that:
- Analyze architecture evolution across commits
- Detect refactoring events
- Track metric improvements over time
- Correlate code changes with issue resolution

## Commit History

### Commit 1: Initial Implementation (Bad Architecture)
- Date: 2024-01-15
- Contains: FIRST versions only (god class anti-pattern)
- Issues: High coupling, low cohesion, difficult to test

### Commit 2: Refactoring (Good Architecture)
- Date: 2024-06-15
- Contains: SECOND versions (repository pattern)
- Improvements: Separated concerns, reduced coupling, improved maintainability

## Using This Branch

For temporal analysis testing:

```bash
# Clone with full history
git clone --branch temporal https://github.com/FreeworkEarth/ARCH_ANALYSIS_TRAINTICKET_TOY_EXAMPLES_MULTILANG.git

# Analyze commit 1 (bad architecture)
git checkout <commit1_hash>
# Run your analysis tools...

# Analyze commit 2 (good architecture)
git checkout <commit2_hash>
# Run your analysis tools...

# Compare results
# Expected: Metrics should improve significantly from commit 1 to commit 2
```

## Expected Metrics (To Be Validated)

| Metric | Commit 1 (FIRST) | Commit 2 (SECOND) |
|--------|------------------|-------------------|
| M-Score | Low (measure with DV8) | High (measure with DV8) |
| Propagation Cost | High | Low |
| Decoupling Level | Low | High |

Note: Actual metric values should be calculated by running NeoDepends + DV8 analysis.

## Related Branches

- `main` branch: Side-by-side comparison (both versions in single commit)
- `temporal` branch: This branch (commit history showing evolution)

## Issues

See GitHub issues for problems addressed in Commit 2 refactoring.

## Contact

For questions: charing@hawaii.edu

## Refactoring Complete

The refactored versions (SECOND) demonstrate:
- Repository pattern implementation
- Service layer architecture
- Low coupling through ID references
- High cohesion with single responsibility
- Improved testability

Compare `first_godclass_antipattern/` vs `second_repository_refactored/` to see improvements.
