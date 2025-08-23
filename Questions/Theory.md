
---

### **Elixir Fundamentals (Interview Theory)**

* **Immutable Data** – all variables are rebinding, nothing is mutable. Huge contrast with JS.
* **Pattern Matching** – it’s not just `switch/case`, it’s assignment + control flow. `=` is a match operator, not an assignment.
* **Data Types** – atoms, tuples, lists, maps, binaries, processes (yes, process is a first-class thing).
* **Functions** – arity matters (`foo/1` vs `foo/2` are different). Anonymous vs named.
* **Recursion > loops** – iteration is recursion + higher-order functions (`Enum`, `Stream`).
* **Processes & Concurrency** – lightweight processes managed by BEAM VM. Don’t confuse with OS threads. Message passing with `send`/`receive`.
* **Supervision Trees** – resilience model. OTP apps survive crashes because supervisors restart workers.
* **Modules & Behaviours** – `GenServer`, `Supervisor` are behaviours (like interfaces + lifecycle contracts).
* **Concurrency Model** – actor model. Compare it to JS event loop, but with isolated processes instead of a single queue.
* **Compilation & Execution** – code runs on BEAM, not compiled to machine code. Hot code swapping possible.
* **Fault Tolerance Philosophy** – “let it crash.” Unlike JS where you defensive-program, Elixir encourages supervision.
* **fundamentals of Elixir** - **immutability, pattern matching, processes/actor model, and OTP/supervision**.

---


