### Conceitos Básicos (Elixir)

#### Variáveis
Elixir é uma linguagem com tipagem dinâmica, o que significa que o tipo de uma variável só é verificada em tempo de execução. Usando o operador de correspondência `=`, podemos vincular um valor de qualquer tipo a um nome de variável:

```ex
count = 1 # Bound an integer value of 1
count = 2 # You may re-bind variables

count = false # You may re-bind any type to a variable

message = "Success!" # Strings can be created by enclosing characters within double quotes
```

#### Módulos
Elixir é uma linguagem de programação funcional e requer que todas as funções nomeadas sejam definidas em um <i>módulo</i>. A palavra chave `defmodule` é usada para definir um módulo. Todos os módulos estão disponíveis para todos os outros módulos em tempo de execução e não requerem um <i>modificador</i> de acesso para torná-las visíveis para outras partes do programa. Um <i>módulo</i> é análogo a uma <i>classe</i> em outras linguagens de programação.

```ex
defmodule Calculator do
  # ...
end
```