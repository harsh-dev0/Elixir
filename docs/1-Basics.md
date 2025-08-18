# FunFact: iex = Interactive Elixir shell.

## **Basic Data Types**

* **Integers**: `255`, `0b0110` (binary → 6), `0o644` (octal → 420), `0x1F` (hex → 31)
* **Floats**: `3.14`, `1.0e-10` (64-bit double precision)
* **Booleans**: `true`, `false` (`false` and `nil` are falsy, everything else truthy)
* **Atoms**: constants like `:ok`, `:foo`

  * `true` ≡ `:true`, `false` ≡ `:false`
  * Module names are atoms: `MyApp.Module`
* **Strings**: double quotes, UTF-8 → `"Hello"`, `"foo\nbar"`, `"#{var}"`

---

## **Basic Operations**

### Arithmetic

* `+ - * /` → `/` always float (`10 / 5 → 2.0`)
* `div(10, 3) → 3`
* `rem(10, 3) → 1`

### Boolean

* **Truthiness**: only `false` & `nil` are falsy
* `||`, `&&`, `!` → work with any type

  ```elixir
  false || 42   # 42
  42 && true    # true
  !42           # false
  ```
* `and`, `or`, `not` → left side **must be boolean**

  ```elixir
  true and 42   # 42
  42 and true   # error
  ```

---

## **Comparison**

* `==`, `!=` → normal (coerce int/float)
* `===`, `!==` → strict (type-sensitive)

  ```elixir
  2 == 2.0   # true
  2 === 2.0  # false
  ```
* All types comparable (term ordering):
  `number < atom < reference < function < port < pid < tuple < map < list < bitstring`

Examples:

```elixir
:hello > 999               # true (atom > number)
{:a, :b} > [1, 2, 3]       # false (tuple < list)
```

---

## **Strings**

* **Interpolation**:

  ```elixir
  name = "Sean"
  "Hello #{name}"  # "Hello Sean"
  ```
* **Concatenation**:
  `"Hello " <> name`

---

### 1. **Functional programming language**

* Treats functions as **first-class citizens** (you can pass them around, return them, store them).
* Focus is on **pure functions** (same input → same output, no hidden state).
* Heavy use of **immutability** (data isn’t mutated, new versions are created).
* Example in Elixir:

  ```elixir
  square = fn x -> x * x end
  Enum.map([1,2,3], square)
  # [1, 4, 9]
  ```

---

### 2. **Dynamic language**

* You don’t declare types upfront, runtime figures it out.
* Code can change behavior while running.
* Example in Elixir:

  ```elixir
  x = "hello"
  is_binary(x)   # true
  x = 42
  is_integer(x)  # true
  ```

  No type declarations, just runtime checks.

---

### 3. **Dynamic functional language** (Elixir, Clojure, JavaScript sorta)

* Combines both: functional style **+** dynamic typing.
* Example in Elixir:

  ```elixir
  # Map over a list with an anonymous function
  Enum.map([1,2,3], fn n -> n * 2 end)
  # [2, 4, 6]

  # The function could be changed at runtime
  double = fn n -> n * 2 end
  triple = fn n -> n * 3 end
  Enum.map([1,2,3], triple)
  # [3, 6, 9]
  ```

So when someone says **“Elixir is a dynamic functional language”**, they mean:

* It uses **functional programming** principles (immutability, functions as first-class).
* It’s **dynamic** (types are checked at runtime, not declared at compile time).

