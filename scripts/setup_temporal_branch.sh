#!/bin/bash
set -e

# ============================================================================
# Temporal Branch Setup Script
# ============================================================================
# Purpose: Creates a temporal branch with commit history for testing temporal
#          analysis pipelines. This branch simulates refactoring from bad to
#          good architecture across two commits.
#
# Usage:
#   ./scripts/setup_temporal_branch.sh
#
# What it does:
#   1. Deletes existing temporal branch (if exists)
#   2. Creates fresh temporal branch
#   3. Commit 1: FIRST (bad architecture) only
#   4. Commit 2: SECOND (good architecture) added
#   5. Creates GitHub issues for temporal analysis testing
#
# Note: You can run this script repeatedly to regenerate the temporal branch
# ============================================================================

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

echo "========================================================================"
echo "Temporal Branch Setup"
echo "========================================================================"
echo ""
echo "This script will:"
echo "  1. Delete existing 'temporal' branch (if exists)"
echo "  2. Create fresh 'temporal' branch with commit history"
echo "  3. Commit 1: FIRST versions (bad architecture)"
echo "  4. Commit 2: SECOND versions (good architecture)"
echo "  5. Create issues for temporal analysis"
echo ""
read -p "Continue? (y/n) " -n 1 -r
echo ""
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Aborted."
    exit 1
fi

cd "$REPO_ROOT"

# ============================================================================
# STEP 1: Clean up existing temporal branch
# ============================================================================
echo ""
echo "Step 1: Cleaning up existing temporal branch..."
echo "========================================================================"

# Delete local temporal branch if it exists
if git show-ref --verify --quiet refs/heads/temporal; then
    echo "Deleting local temporal branch..."
    git branch -D temporal
fi

# Delete remote temporal branch if it exists
if git ls-remote --heads origin temporal | grep -q temporal; then
    echo "Deleting remote temporal branch..."
    git push origin --delete temporal || echo "Note: Could not delete remote branch (may not exist)"
fi

echo "Cleanup complete!"

# ============================================================================
# STEP 2: Create orphan temporal branch (fresh commit history)
# ============================================================================
echo ""
echo "Step 2: Creating fresh temporal branch..."
echo "========================================================================"

git checkout --orphan temporal
git rm -rf .

# ============================================================================
# STEP 3: COMMIT 1 - Initial implementation (FIRST only)
# ============================================================================
echo ""
echo "Step 3: Creating Commit 1 (Initial - Bad Architecture)..."
echo "========================================================================"

# Copy FIRST versions only
mkdir -p java python
cp -r "$REPO_ROOT/../ARCH_ANALYSIS_TRAINTICKET_TOY_EXAMPLES/java/first_godclass_antipattern" java/first_godclass_antipattern
cp -r "$REPO_ROOT/../ARCH_ANALYSIS_TRAINTICKET_TOY_EXAMPLES/python/first_godclass_antipattern" python/first_godclass_antipattern

# Create README for temporal branch
cat > README.md << 'EOF'
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
EOF

# Copy LICENSE and .gitignore from main
cp "$REPO_ROOT/../ARCH_ANALYSIS_TRAINTICKET_TOY_EXAMPLES/LICENSE" .
cp "$REPO_ROOT/../ARCH_ANALYSIS_TRAINTICKET_TOY_EXAMPLES/.gitignore" .

# Stage all files
git add .

# Create commit 1 with specific date
GIT_AUTHOR_DATE="2024-01-15T10:00:00" GIT_COMMITTER_DATE="2024-01-15T10:00:00" \
git commit -m "Initial implementation: Train ticket booking system

Implemented basic train ticket booking system with:
- Passenger management
- Train and route management
- Ticket booking operations
- Basic reporting

Architecture:
- Monolithic god class design (TicketBookingSystem)
- All business logic in single class
- High coupling between components
- Limited separation of concerns

Known limitations:
- Difficult to test individual components
- High maintenance burden
- Low cohesion
- Tight coupling

This represents typical legacy code before refactoring.

Related issues: #1, #2, #3"

echo "Commit 1 created: $(git rev-parse HEAD)"

# ============================================================================
# STEP 4: COMMIT 2 - Refactored implementation (FIRST replaced with SECOND)
# ============================================================================
echo ""
echo "Step 4: Creating Commit 2 (Refactored - Good Architecture)..."
echo "========================================================================"

# Remove FIRST versions
rm -rf java/first_godclass_antipattern
rm -rf python/first_godclass_antipattern

# Add SECOND versions in their place
cp -r "$REPO_ROOT/../ARCH_ANALYSIS_TRAINTICKET_TOY_EXAMPLES/java/second_repository_refactored" java/second_repository_refactored
cp -r "$REPO_ROOT/../ARCH_ANALYSIS_TRAINTICKET_TOY_EXAMPLES/python/second_repository_refactored" python/second_repository_refactored

# Update README to reflect refactoring
cat >> README.md << 'EOF'

## Refactoring Complete

The refactored versions (SECOND) demonstrate:
- Repository pattern implementation
- Service layer architecture
- Low coupling through ID references
- High cohesion with single responsibility
- Improved testability

Compare `first_godclass_antipattern/` vs `second_repository_refactored/` to see improvements.
EOF

# Stage refactored code
git add .

# Create commit 2 with later date
GIT_AUTHOR_DATE="2024-06-15T14:30:00" GIT_COMMITTER_DATE="2024-06-15T14:30:00" \
git commit -m "Refactor: Apply repository pattern and service layer

Major architectural refactoring to address technical debt:

Changes:
- Split god class into 5 separate repositories
  - PassengerRepository
  - TrainRepository
  - RouteRepository
  - TicketRepository
  - TrainStationRepository

- Introduced service layer
  - BookingService (coordinates booking operations)
  - ReportingService (handles analytics and reports)

- Reduced coupling
  - Changed from object references to ID references
  - Each repository manages single entity type
  - Services coordinate cross-entity operations

- Improved cohesion
  - Single responsibility per class
  - Clear separation of concerns
  - Better encapsulation

Benefits:
- Easier to test (can mock repositories)
- Easier to maintain (isolated changes)
- Easier to extend (add new repositories/services)
- Better code organization

Metrics improvements (to be measured):
- Expected M-Score increase from ~20-25% to ~60-65%
- Expected Propagation Cost decrease
- Expected Decoupling Level increase

Fixes #1, #2, #3"

echo "Commit 2 created: $(git rev-parse HEAD)"

# ============================================================================
# STEP 5: Display summary
# ============================================================================
echo ""
echo "========================================================================"
echo "Temporal branch created successfully!"
echo "========================================================================"
echo ""
echo "Commit history:"
git log --oneline --graph --all
echo ""
echo "Branch: temporal"
echo "Commits: 2"
echo "  Commit 1 ($(git log --format='%h' -n 2 | tail -1)): Initial implementation (FIRST only)"
echo "  Commit 2 ($(git log --format='%h' -n 1)): Refactored implementation (SECOND added)"
echo ""
echo "To push temporal branch:"
echo "  git push -f origin temporal"
echo ""
echo "To switch back to main:"
echo "  git checkout main"
echo ""
echo "========================================================================"
echo "Next: Create GitHub issues using create_temporal_issues.py"
echo "========================================================================"
