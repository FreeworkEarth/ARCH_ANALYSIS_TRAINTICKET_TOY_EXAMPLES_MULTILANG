# TTS/Staff.java

- Classes: `Staff`
- Extends: `Person`

## Members

**Fields**
- `Staff.department` : `String`
- `Staff.employeeId` : `String`
- `Staff.salary` : `double`

**Methods/Constructors**
- `Staff.Staff()` (Constructor)
- `Staff.getDepartment()` (Method)
- `Staff.getEmployeeId()` (Method)
- `Staff.getSalary()` (Method)

## Dependencies (heuristic)

- `Call`: `TTS/Staff.java/Staff/constructors/Staff (Constructor)` -> `TTS/Person.java/Person/constructors/Person (Constructor)`
- `Use`: `TTS/Staff.java/Staff/constructors/Staff (Constructor)` -> `TTS/Staff.java/Staff/fields/department (Field)`
- `Use`: `TTS/Staff.java/Staff/constructors/Staff (Constructor)` -> `TTS/Staff.java/Staff/fields/employeeId (Field)`
- `Use`: `TTS/Staff.java/Staff/constructors/Staff (Constructor)` -> `TTS/Staff.java/Staff/fields/salary (Field)`
- `Use`: `TTS/Staff.java/Staff/methods/getDepartment (Method)` -> `TTS/Staff.java/Staff/fields/department (Field)`
- `Use`: `TTS/Staff.java/Staff/methods/getEmployeeId (Method)` -> `TTS/Staff.java/Staff/fields/employeeId (Field)`
- `Use`: `TTS/Staff.java/Staff/methods/getSalary (Method)` -> `TTS/Staff.java/Staff/fields/salary (Field)`
- `Extend`: `TTS/Staff.java/Staff/self (Class)` -> `TTS/Person.java/Person/self (Class)`
