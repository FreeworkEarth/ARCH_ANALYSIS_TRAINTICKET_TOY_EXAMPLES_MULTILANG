# Temporal Branch Quick Start

## What This Creates

A `temporal` branch with **2 commits** showing refactoring evolution:

```
Commit 1 (2024-01-15): FIRST versions only
├── java/first_godclass_antipattern/
└── python/first_godclass_antipattern/

Commit 2 (2024-06-15): FIRST replaced with SECOND
├── java/second_repository_refactored/    (FIRST removed, SECOND added)
└── python/second_repository_refactored/  (FIRST removed, SECOND added)
```

This simulates a **complete refactoring** from bad to good architecture.

## Setup Commands

```bash
# 1. Navigate to repo
cd /path/to/ARCH_ANALYSIS_TRAINTICKET_TOY_EXAMPLES_MULTILANG

# 2. Run setup script
./scripts/setup_temporal_branch.sh

# 3. Push temporal branch
git push -f origin temporal

# 4. Create GitHub issues (auto-finds your PAT token)
python3 scripts/create_temporal_issues.py
```

## What You Get

**Temporal Branch:**
- ✅ 2 commits with realistic dates
- ✅ Clean commit messages
- ✅ No fake metrics (uses placeholders)
- ✅ Issues referenced in commit 2

**GitHub Issues:**
- ✅ Issue #1: God class makes testing difficult
- ✅ Issue #2: High coupling between booking and reporting
- ✅ Issue #3: Need repository pattern
- ✅ All fixed in Commit 2 ("Fixes #1, #2, #3")

## Testing Your Agent

```bash
# Clone temporal branch
git clone --branch temporal https://github.com/FreeworkEarth/ARCH_ANALYSIS_TRAINTICKET_TOY_EXAMPLES_MULTILANG.git
cd ARCH_ANALYSIS_TRAINTICKET_TOY_EXAMPLES_MULTILANG

# Get commit hashes
git log --oneline
# Example output:
# abc1234 (HEAD -> temporal) Refactor: Apply repository pattern...
# def5678 Initial implementation: Train ticket booking system

# Analyze Commit 1 (bad architecture)
git checkout def5678  # Use actual hash
# Run your analysis: NeoDepends, Deicide, etc.
# Expected: God class, high coupling, poor metrics

# Analyze Commit 2 (good architecture)
git checkout abc1234  # Use actual hash
# Run your analysis again
# Expected: Repository pattern, low coupling, good metrics

# Test your temporal pipeline
# Should detect:
# - Refactoring event between commits
# - Issues #1, #2, #3 were resolved
# - Metric improvements (M-Score, etc.)
```

## Regenerating the Branch

You can run the setup script anytime to recreate the temporal branch:

```bash
./scripts/setup_temporal_branch.sh
git push -f origin temporal
```

This is useful for:
- Testing script changes
- Fixing commit messages
- Updating metadata

## Integration with Your Agent

Your [backfill_temporal_payloads.py](../../../01_STAGE_ANALYZE/backfill_temporal_payloads.py) can use this to test:

1. **Multi-commit analysis**
2. **Refactoring detection**
3. **Issue-commit correlation**
4. **Metric evolution tracking**

Example agent workflow:

```python
# Analyze both commits
commit1 = "def5678"  # Bad architecture
commit2 = "abc1234"  # Good architecture

# Run analysis
payload1 = agent.analyze(commit=commit1)
payload2 = agent.analyze(commit=commit2)

# Compare
refactoring = agent.detect_refactoring(commit1, commit2)
assert refactoring.detected == True
assert refactoring.issues_fixed == [1, 2, 3]
assert payload2.m_score > payload1.m_score
```

## Troubleshooting

**Script fails with "No such file or directory":**

- Make sure you're running from the repo root
- The script uses relative paths to find source files in your local directory

**Issues not created:**
- Verify GitHub token in `/Users/.../01_STAGE_ANALYZE/PAT_GITHUB_TOKEN.txt`
- Or set: `export GITHUB_TOKEN="your_token"`

**Branch already exists:**
- Script will delete it automatically
- Use `-f` when pushing: `git push -f origin temporal`

## Files Created

- `scripts/setup_temporal_branch.sh` - Main setup script
- `scripts/create_temporal_issues.py` - Issue creator
- `scripts/README.md` - Detailed documentation
- `scripts/QUICKSTART.md` - This file

## Contact

For questions: charing@hawaii.edu
