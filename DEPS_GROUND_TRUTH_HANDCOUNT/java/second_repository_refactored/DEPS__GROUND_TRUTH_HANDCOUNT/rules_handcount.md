# Handcount Rules (Ground Truth Spec)

Use this document as the **single source of truth** for what we mean by "a dependency" in the TrainTicketSystem_TOY_JAVA_SECOND Java project.

This is written in a prompt-like format so you can paste it into local LLMs.

---

## Role

You are a "dependency counter" for a small Java codebase.

Your job: produce the exact set of **internal** dependency edges that exist in the code, according to the rules below, and then count them.

---

## Scope

The project root contains:

- `src/TTS/Main.java`
- package directory `src/TTS/` with multiple `*.java` files

Only these files are in-scope. Everything else is out-of-scope.

---

## Entities (nodes)

We model these internal entities:

1) **File**
   - A Java source file (e.g. `TTS/TicketAgent.java`, `TTS/Main.java`)
2) **Class**
   - `class X { ... }` or `abstract class X { ... }` defined in a file
   - Includes inner/nested classes (e.g. `ReportingService.ReportEntry`)
3) **Constructor**
   - A constructor defined inside a class
4) **Method**
   - A method defined inside a class (`public void m(...)`)
5) **Field**
   - Any instance variable declared in a class (`private String name;`)
   - Also includes class variables (`static` fields)

We consider a target "internal" if it is defined in any `TTS/*.java` file.

---

## Dependency kinds (categories)

We count these categories (even if we later "collapse" them in the DV8 DSM):

1) `Extend` (Class -> Class)
   - `class A extends B` where `B` resolves to an internal class

2) `Override` (Method -> Method)
   - A child class method overrides an abstract method from a parent class
   - Method annotated with `@Override` that implements a parent's abstract method
   - Only count overrides of abstract methods (methods declared with `abstract` keyword)

3) `Create` (Method/Constructor -> Class)
   - `new C(...)` where `C` resolves to an internal class (constructor call)

4) `Call` (Method/Constructor -> Method/Constructor)
   - `obj.m(...)` where `m` resolves to an internal method
   - includes `this.m(...)`, `super(...)`, `super.m(...)`, and `ClassName.m(...)` (static method call) if resolvable

5) `Use` (Method/Constructor -> Field)
   - any read/write of `this.<field>` inside a method/constructor body where `<field>` is an internal field
   - inherited fields: if `this.name` is defined on a base class inside this project, it counts as `Use` too
   - direct field access without `this.` also counts if it refers to an internal field

---

## Internal-only rule (important)

Do NOT count dependencies to:

- Java builtins (`System.out.println`, `String`, `Integer`, etc.)
- JDK classes (`ArrayList`, `HashMap`, `LocalDateTime`, etc.)
- third-party libraries (none here)

Only count edges where the **target entity is internal** (in this project).

---

## Uniqueness rule (what is "one" dependency?)

We count **unique edges**, not "call sites".

That means:

- If a function calls `bookingService.bookTicket` 3 times, it is **1** `Call` edge.
- If a method accesses `this.trainRepo` 10 times, it is **1** `Use` edge.

Uniqueness is by `(source_entity, target_entity, kind)`.

---

## Output requirements

For each file, produce:

1) A list of edges grouped by kind (`Extend`, `Override`, `Create`, `Call`, `Use`)
2) A totals section:
   - `Extend: N`
   - `Override: N`
   - `Create: N`
   - `Call: N`
   - `Use: N`
   - `Total: N` (sum of the above)

Also produce a "full-project" DSM for DV8:

- Use DV8 DSM JSON format (variables + cells).
- Represent each internal entity with a **path-like variable name** so DV8 shows a tree even without a clustering file:
  - `TTS/Ticket.java/Ticket/methods/cancel (Method)`
  - `TTS/Ticket.java/Ticket/fields/status (Field)`
  - `TTS/Main.java/Main/methods/main (Method)`
- For DV8, it's acceptable to **collapse all kinds into `Use`** values (kind is not important right now), but the edge set must match the rules exactly.

---

## Tie-breakers / ambiguity policy

If you cannot resolve a reference to a specific internal entity (because Java allows polymorphism), do **not** count it.

Examples:

- `passenger.addTicket(...)`: count only if `passenger` can be resolved to internal class `Passenger`.
- `this.trainRepo.getTrain()`: count only if `trainRepo` can be resolved to internal class `TrainRepository`.

Prefer "don't guess" over "overcount".
