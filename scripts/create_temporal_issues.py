#!/usr/bin/env python3
"""
Create GitHub Issues for Temporal Analysis Testing

This script creates issues that correspond to the problems fixed in the
temporal branch's commit history. These issues can be used to test:
- Issue-commit correlation
- Issue resolution tracking
- Temporal analysis of technical debt

Usage:
    python3 scripts/create_temporal_issues.py

Requirements:
    pip install PyGithub

Environment:
    GITHUB_TOKEN - Personal access token with repo scope
"""

import os
import sys
from datetime import datetime

try:
    from github import Github
except ImportError:
    print("Error: PyGithub not installed")
    print("Install with: pip install PyGithub")
    sys.exit(1)


# GitHub repository
REPO_NAME = "FreeworkEarth/ARCH_ANALYSIS_TRAINTICKET_TOY_EXAMPLES_MULTILANG"

# Issues to create (correspond to commit messages in temporal branch)
ISSUES = [
    {
        "title": "God class makes testing difficult",
        "body": """## Problem

The `TicketBookingSystem` class contains all business logic in a single class, making it extremely difficult to write unit tests.

## Details

- Class has ~33 methods covering all system functionality
- Cannot mock individual components
- Tests require full system initialization
- High coupling prevents isolated testing

## Impact

- Low test coverage
- Difficult to verify individual features
- Regression risk when making changes
- Slows down development

## Expected Solution

Split the god class into smaller, focused components that can be tested independently.

## Related Files

- `java/first_godclass_antipattern/src/TTS/TicketBookingSystem.java`
- `python/first_godclass_antipattern/tts/ticket_booking_system.py`
""",
        "labels": ["architecture", "technical-debt", "testability"],
    },
    {
        "title": "High coupling between booking and reporting logic",
        "body": """## Problem

Booking operations and reporting analytics are tightly coupled in the same class, creating unnecessary dependencies.

## Details

- Booking methods directly manipulate report data structures
- Reporting methods access booking state directly
- Changes to booking logic require updating reports
- Cannot modify reporting without affecting bookings

## Impact

- Difficult to maintain either subsystem independently
- Changes ripple across unrelated functionality
- Hard to add new reporting without touching booking code

## Expected Solution

Separate booking and reporting into distinct services with clear interfaces.

## Related Code

```python
# Current: Everything in one class
class TicketBookingSystem:
    def book_ticket(self): ...      # Booking
    def generate_report(self): ...   # Reporting
    # High coupling!
```

## Desired Architecture

```python
# Separated concerns
class BookingService:
    def book_ticket(self): ...

class ReportingService:
    def generate_report(self): ...
```
""",
        "labels": ["architecture", "coupling", "refactoring"],
    },
    {
        "title": "Need to implement repository pattern for better separation",
        "body": """## Enhancement Request

Implement repository pattern to separate data access from business logic.

## Current Architecture

All data management is embedded in the `TicketBookingSystem` god class:
- Direct dictionary manipulation
- No abstraction for data operations
- Tight coupling between logic and storage

## Proposed Architecture

Introduce repository layer:

1. **PassengerRepository** - manages passenger data
2. **TrainRepository** - manages train data
3. **RouteRepository** - manages route data
4. **TicketRepository** - manages ticket data
5. **TrainStationRepository** - manages station data

## Benefits

- **Separation of concerns**: Business logic separate from data access
- **Testability**: Can mock repositories for testing
- **Flexibility**: Can change storage implementation
- **Maintainability**: Each repository has single responsibility

## Implementation Plan

1. Create repository classes for each entity type
2. Move data access methods to repositories
3. Update business logic to use repositories
4. Add service layer to coordinate repositories

## References

- Repository Pattern: https://martinfowler.com/eaaCatalog/repository.html
- Domain-Driven Design patterns

## Related

Will fix #1 and #2 when implemented.
""",
        "labels": ["enhancement", "architecture", "repository-pattern"],
    },
]


def create_issues():
    """Create GitHub issues for temporal analysis testing."""

    # Check for GitHub token
    token = os.environ.get("GITHUB_TOKEN")

    # If not in environment, try to read from PAT file
    if not token:
        pat_file = os.path.join(
            os.path.dirname(__file__),
            "../../../01_STAGE_ANALYZE/PAT_GITHUB_TOKEN.txt"
        )
        if os.path.exists(pat_file):
            with open(pat_file, 'r') as f:
                token = f.read().strip()
                print(f"Using GitHub token from: {pat_file}")

    if not token:
        print("Error: GITHUB_TOKEN not found")
        print("\nTried:")
        print("  1. GITHUB_TOKEN environment variable")
        print("  2. PAT_GITHUB_TOKEN.txt file")
        print("\nTo set token:")
        print("  export GITHUB_TOKEN='your_token_here'")
        sys.exit(1)

    # Connect to GitHub
    print(f"Connecting to GitHub repository: {REPO_NAME}")
    gh = Github(token)
    repo = gh.get_repo(REPO_NAME)

    print(f"\nCreating {len(ISSUES)} issues...\n")

    created_issues = []

    for idx, issue_data in enumerate(ISSUES, 1):
        print(f"[{idx}/{len(ISSUES)}] Creating: {issue_data['title']}")

        try:
            # Create issue
            issue = repo.create_issue(
                title=issue_data["title"],
                body=issue_data["body"],
                labels=issue_data["labels"]
            )

            created_issues.append(issue)
            print(f"  ✓ Created issue #{issue.number}: {issue.html_url}")

        except Exception as e:
            print(f"  ✗ Error creating issue: {e}")
            continue

    print(f"\n{'='*72}")
    print(f"Successfully created {len(created_issues)}/{len(ISSUES)} issues")
    print(f"{'='*72}\n")

    if created_issues:
        print("Created issues:")
        for issue in created_issues:
            print(f"  #{issue.number}: {issue.title}")
            print(f"          {issue.html_url}")

        print("\nThese issues correspond to problems fixed in the temporal branch:")
        print("  - Issue #1: Fixed in Commit 2 (refactoring)")
        print("  - Issue #2: Fixed in Commit 2 (refactoring)")
        print("  - Issue #3: Fixed in Commit 2 (refactoring)")

        print("\nFor temporal analysis testing:")
        print("  1. Analyze Commit 1 (issues open)")
        print("  2. Analyze Commit 2 (issues should be marked as fixed)")
        print("  3. Validate that temporal analysis detects the improvements")

    return created_issues


def main():
    """Main entry point."""
    print("="*72)
    print("GitHub Issues Creator for Temporal Analysis")
    print("="*72)
    print()

    try:
        issues = create_issues()
        return 0 if issues else 1
    except Exception as e:
        print(f"\nError: {e}")
        return 1


if __name__ == "__main__":
    sys.exit(main())
