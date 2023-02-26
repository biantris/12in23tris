### Booleans

Elixir representa valores `true` e `false` como tipo booleano. Esses valores podem ser vinculados a uma variável.

```ex
true_variable = true
false_variable = false
```

Podemos avaliar expressões booleanas estritas usando os operadores `and/2`, `or/2` e `not/1`

```ex
true_variable = true and true
false_variable = true and false

true_variable = false or true
false_variable = false or false

true_variable = not false
false_variable = not true
```

Ao escrever uma função que retorna um valor booleano, é idiomático terminar o nome da função com `?`.

```ex
def either_true?(a, b) do
  a or b
end
```

#### Saber mais
- [Getting Started guide - Booleans](https://elixir-lang.org/getting-started/basic-types.html#booleans)