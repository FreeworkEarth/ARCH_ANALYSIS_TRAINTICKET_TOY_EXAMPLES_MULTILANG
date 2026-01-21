# Temporal Branch Setup Scripts

This directory contains scripts to set up the `temporal` branch for testing temporal analysis pipelines.

## Purpose

The `temporal` branch provides commit history showing architectural evolution from bad to good design. This is essential for testing temporal analysis features that:
- Track architecture evolution over time
- Detect refactoring events
- Correlate code changes with issue resolution
- Measure metric improvements across commits

## Scripts

### 1. setup_temporal_branch.sh

Creates the temporal branch with proper commit history.

**What it does:**
- Deletes existing temporal branch (can be run repeatedly)
- Commit 1: FIRST versions only (bad architecture, dated 2024-01-15)
- Commit 2: SECOND versions added (good architecture, dated 2024-06-15)
- Creates branch-specific README

**Usage:**
```bash
cd /path/to/ARCH_ANALYSIS_TRAINTICKET_TOY_EXAMPLES_MULTILANG
chmod +x scripts/setup_temporal_branch.sh
./scripts/setup_temporal_branch.sh

# After script completes, push the branch
git push -f origin temporal
```

**Output:**
- Temporal branch with 2 commits
- Clean commit messages referencing issues
- Proper git dates for temporal analysis

### 2. create_temporal_issues.py

Creates GitHub issues that correspond to problems fixed in the refactoring.

**What it does:**
- Creates 3 issues:
  - Issue #1: God class makes testing difficult
  - Issue #2: High coupling between booking and reporting
  - Issue #3: Need repository pattern implementation
- Issues are referenced in Commit 2 message ("Fixes #1, #2, #3")

**Requirements:**
```bash
pip install PyGithub
export GITHUB_TOKEN="your_github_token"
```

**Usage:**
```bash
python3 scripts/create_temporal_issues.py
```

**Output:**
- 3 GitHub issues created
- Issues linked to commit that fixes them
- Ready for temporal analysis testing

## Workflow

Complete workflow to set up temporal analysis testing:

```bash
# 1. Create temporal branch
./scripts/setup_temporal_branch.sh

# 2. Push temporal branch
git push -f origin temporal

# 3. Create issues
export GITHUB_TOKEN="your_token"
python3 scripts/create_temporal_issues.py

# 4. Verify
git log temporal --oneline --graph
# Should show 2 commits
```

## Testing Temporal Analysis

After setup, test your temporal analysis pipeline:

```bash
# Clone temporal branch
git clone --branch temporal https://github.com/FreeworkEarth/ARCH_ANALYSIS_TRAINTICKET_TOY_EXAMPLES_MULTILANG.git

# Get commit hashes
git log --oneline
# commit2_hash - Refactor: Apply repository pattern...
# commit1_hash - Initial implementation: Train ticket booking system

# Analyze Commit 1 (bad architecture)
git checkout commit1_hash
# Run NeoDepends, DV8, Deicide...
# Expected: Poor metrics (low M-Score, high coupling)

# Analyze Commit 2 (good architecture)
git checkout commit2_hash
# Run analysis again...
# Expected: Improved metrics

# Compare results
# Your temporal analysis should detect:
# - Architectural improvement
# - Issues #1, #2, #3 were fixed
# - Metric improvements
```

## Regenerating the Branch

The temporal branch can be regenerated anytime:

```bash
# Delete and recreate
./scripts/setup_temporal_branch.sh
git push -f origin temporal

# Issues are persistent (don't need recreation)
```

This is useful for:
- Testing script changes
- Fixing commit messages
- Updating dates or metadata

## Notes

- **No synthetic commits**: Only 2 real commits (FIRST and SECOND)
- **No fake metrics**: Commit messages use placeholders like "Expected M-Score increase" - actual values must be measured
- **Repeatable**: Scripts can be run multiple times
- **Clean history**: Orphan branch ensures clean commit history

## Integration with Agent Pipeline

Your agent's temporal analysis can use this branch to test:

1. **Backfill temporal payloads** ([backfill_temporal_payloads.py](../../01_STAGE_ANALYZE/backfill_temporal_payloads.py))
2. **Issue pipeline integration** ([issue_pipeline.py](../../01_STAGE_ANALYZE/issue_pipeline.py))
3. **Multi-commit analysis**
4. **Refactoring detection**

Expected agent workflow:
```python
# Analyze commit 1
payload_commit1 = agent.analyze(commit="commit1_hash")
# Should detect god class, high coupling

# Analyze commit 2
payload_commit2 = agent.analyze(commit="commit2_hash")
# Should detect improvement, link to issues

# Compare
improvements = agent.compare_commits(commit1, commit2)
# Should show refactoring event
```

## Contact

For questions: charing@hawaii.edu
