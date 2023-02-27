### Funções Anônimas

As funções são tratadas como cidadãos de primeira classe no Elixir. Isso significa que:

- Funções nomeadas e anônimas podem ser atribuídas a variáveis.
- Funções nomeadas e anônimas podem ser passadas como dados como argumentos e valores de retorno.
- Funções anônimas podem ser criadas dinamicamente.

As funções anônimas, ao contrário das funções nomeadas, não têm uma referência estática disponível para elas, elas só estarão disponíveis se forem atribuídas a uma variável ou invocadas imediatamente.

Podemos usar funções anônimas para:

- Ocultar dados usando escopo léxico (também conhecido como closure).
- Crie funções dinamicamente em tempo de execução.

As funções anônimas começam com a palavra reservada `fn`, os argumentos são separados do corpo da função com o token `->` e são finalizadas com `end`. Assim como nas funções nomeadas, a última expressão na função <i>é retornada implicitamente</i> para a função de chamada.

Para invocar uma referência de função, você deve usar um `.` entre a variável de referência e alista de argumentos:

```ex
function_variable = fn param ->
  param + 1
end

function_variable.(1)
# => 2
```

Você pode até usar a notação do operador de captura para tornar isso mais conciso:

```ex
variable = &(&1 + 1)

variable.(1)
# => 2
```

#### Saber mais
- [Getting Started guide - Anonymous Functions](https://elixir-lang.org/getting-started/basic-types.html#anonymous-functions)
- [Documentation - &](https://hexdocs.pm/elixir/Kernel.SpecialForms.html#&/1)
- [Understanding the & operator](https://dockyard.com/blog/2016/08/05/understand-capture-operator-in-elixir)