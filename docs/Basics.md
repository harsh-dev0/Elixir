
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
