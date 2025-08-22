
# 📌 Elixir Functions – Cheatsheet + Interview Qs

---

## 1. Anonymous Functions

```elixir
sum = fn (a, b) -> a + b end
sum.(2, 3) # 5
```

👉 Must be called with `.(...)`.

### Interview Qs:

* Q: How do you define an anonymous function?
  A: With `fn -> end`, call using `.(...)`.
* Q: Why `sum.(2,3)` and not `sum(2,3)`?
  A: Because variables hold functions, need `.` to call.

---

## 2. Shorthand (`&` capture syntax)

```elixir
sum = &(&1 + &2)
sum.(4, 5) # 9
```

### Interview Qs:

* Q: What does `&` do in Elixir functions?
  A: Captures arguments in shorthand, e.g., `&(&1 + &2)`.

---

## 3. Named Functions (inside modules)

```elixir
defmodule Math do
  def add(a, b), do: a + b
end

Math.add(2, 3) # 5
```

### Interview Qs:

* Q: Where can named functions be defined?
  A: Inside modules, using `def`.
* Q: Difference between `def` and `defp`?
  A: `def` is public, `defp` is private.

---

## 4. Pattern Matching in Function Clauses

```elixir
defmodule Greeter do
  def hello("admin"), do: "Welcome back, boss!"
  def hello(name), do: "Hello, #{name}"
end
```

### Interview Qs:

* Q: How does Elixir choose which function clause to run?
  A: Based on pattern matching of arguments (first match wins).
* Q: Can we overload functions with same name but different patterns?
  A: Yes, that’s normal in Elixir.

---

## 5. Guards

```elixir
defmodule Check do
  def number(n) when n > 0, do: "positive"
  def number(0), do: "zero"
  def number(_), do: "negative"
end
```

### Interview Qs:

* Q: What are guards in functions?
  A: Extra conditions (`when`) on parameters.
* Q: Example?
  A: `def f(x) when is_integer(x) -> ... end`.

---

## 6. Default Arguments

```elixir
defmodule Greeter do
  def hello(name \\ "world"), do: "Hello, #{name}"
end

Greeter.hello() # "Hello, world"
```

### Interview Qs:

* Q: How are default args handled in Elixir?
  A: With `\\` in param list.

---

## 7. Private Functions

```elixir
defmodule Helper do
  def greet(name), do: "Hi, " <> format(name)
  defp format(name), do: String.capitalize(name)
end
```

### Interview Qs:

* Q: Can you call a private function from outside its module?
  A: No, only inside the same module.

---

## 8. Function Capture Operator (`&Module.func/arity`)

```elixir
add = &Math.add/2
add.(1, 2) # 3
```

### Interview Qs:

* Q: What does `/2` mean?
  A: Arity (number of arguments). `add/2` means function `add` with 2 args.
* Q: What is `&Module.func/arity` useful for?
  A: Passing functions as values (higher-order functions).

---

