# TOY: isinstance + polymorphic dependency checks (Python + Java)

Date: 2026-02-01
Repo: ARCH_ANALYSIS_TRAINTICKET_TOY_EXAMPLES_MULTILANG
Scope: add minimal instanceof/isinstance + polymorphic call examples, update ground-truth handcounts, and verify with NeoDepends comparison runner.

---

## Summary

We added one instanceof/isinstance-based polymorphic call per language and per TOY variant, then updated ground-truth handcounts to include the expected dependencies. The new dependencies are detected in the comparison outputs (Python via enhance_python_deps + isinstance handling, Java via Depends cast handling).

Status (after handcount updates):
- Python TOY 1/2: no missing or extra edges.
- Java TOY 1/2: small missing counts remain, but no extra edges from the new polymorphic additions.

---

## Changes to TOY code

### Python TOY 1 (first_godclass_antipattern)
File: python/first_godclass_antipattern/main.py

Added:
- An isinstance check against TicketAgent
- A call to TicketAgent.get_tickets_processed()

Intent: ensure Method->Class Use and Method->Method Call edges are emitted for a polymorphic variable.

### Python TOY 2 (second_repository_refactored)
Files:
- python/second_repository_refactored/tts/ticket_agent.py
- python/second_repository_refactored/main.py

Added:
- TicketAgent.get_assigned_station_id() returning assigned_station_id
- An isinstance check against TicketAgent
- A call to TicketAgent.get_assigned_station_id()

Intent: cover Method->Class Use, Method->Method Call, and Method->Field Use.

### Java TOY 1 (first_godclass_antipattern)
File: java/first_godclass_antipattern/src/TTS/Main.java

Added:
- instanceof check for TicketAgent
- Casted variable used to call getTicketsProcessed()

Intent: Depends should record a Call edge for the casted variable.

### Java TOY 2 (second_repository_refactored)
File: java/second_repository_refactored/src/TTS/Main.java

Added:
- instanceof check for TicketAgent
- Casted variable used to call getAssignedStationId()

Intent: Depends should record Create + Call edges for the casted variable.

---

## Expected new edges (ground truth)

Paths are shown in DV8/handcount naming style.

### Python TOY 1
- Use: main.py/FUNCTIONS/main -> tts/ticket_agent.py/CLASSES/TicketAgent
- Call: main.py/FUNCTIONS/main -> tts/ticket_agent.py/CLASSES/TicketAgent/METHODS/get_tickets_processed

### Python TOY 2
- Use: main.py/FUNCTIONS/main -> tts/ticket_agent.py/CLASSES/TicketAgent
- Call: main.py/FUNCTIONS/main -> tts/ticket_agent.py/CLASSES/TicketAgent/METHODS/get_assigned_station_id
- Use: tts/ticket_agent.py/CLASSES/TicketAgent/METHODS/get_assigned_station_id -> tts/ticket_agent.py/CLASSES/TicketAgent/FIELDS/assigned_station_id

### Java TOY 1
- Call: TTS/Main.java/Main/methods/main -> TTS/TicketAgent.java/TicketAgent/methods/getTicketsProcessed

### Java TOY 2
- Create: TTS/Main.java/Main/methods/main -> TTS/TicketAgent.java/TicketAgent
- Call:   TTS/Main.java/Main/methods/main -> TTS/TicketAgent.java/TicketAgent/methods/getAssignedStationId

---

## Handcount updates (files changed)

Python TOY 1:
- DEPS_GROUND_TRUTH_HANDCOUNT/python/first_godclass_antipattern/DEPS__GROUND_TRUTH_HANDCOUNT/handcount_edges.heuristic.json
- DEPS_GROUND_TRUTH_HANDCOUNT/python/first_godclass_antipattern/DEPS__GROUND_TRUTH_HANDCOUNT/handcount_edges.json

Python TOY 2:
- DEPS_GROUND_TRUTH_HANDCOUNT/python/second_repository_refactored/DEPS__GROUND_TRUTH_HANDCOUNT/handcount_edges.heuristic.json

Java TOY 1:
- DEPS_GROUND_TRUTH_HANDCOUNT/java/first_godclass_antipattern/DEPS__GROUND_TRUTH_HANDCOUNT/handcount_edges.heuristic.json

Java TOY 2:
- DEPS_GROUND_TRUTH_HANDCOUNT/java/second_repository_refactored/DEPS__GROUND_TRUTH_HANDCOUNT/handcount_edges.heuristic.json

Note: Per-file handcount JSONs were not regenerated in this pass.

---

## Regression summary (after updates)

Example Comparison Summary:
- toy_python_first: missing=0 extra=0 diff=0.0%
- toy_python_second: missing=0 extra=0 diff=0.0%
- toy_java_first: missing=3 extra=0 diff=0.9%
- toy_java_second: missing=3 extra=0 diff=0.9%
- survey: missing=0 extra=6 diff=1.3%
- moviepy: missing=18 extra=25 diff=3.6%
- large_single_file: missing=0 extra=4 diff=4.1%

Summary files in NeoDepends repo:
- tests/test_output/handcount_regression/example_comparison_summary.md
- tests/test_output/handcount_regression/example_comparison_summary.json

---

## Notes / Next steps

- If you want per-file handcount JSONs updated too, regenerate file-level handcounts from the updated edge lists and re-export DV8 file-level ground truth.
- Remaining Java missing edges are unrelated to the new instanceof/cast additions.
- Python polymorphic handling remains conservative (safe narrowing only when a single candidate type defines the method).

