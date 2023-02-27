### Bit Manipulation

Elixir suporta muitas funções para trabalhar com bits encontrados no módulo <i>Bitwise</i>.

- `band/2: bitwise AND`
- `bsl/2: bitwise SHIFT LEFT`
- `bsr/2: bitwise SHIFT RIGHT`
- `bxor/2: bitwise XOR`
- `bor/2: bitwise OR`
- `bnot/1: bitwise NOT`

Aqui está um exemplo de como usar uma função bit a bit:

```ex
Bitwise.bsl(1, 3)
# => 8
```

Todas as funções bit a bit funcionam apenas em númerosinteiros.

Se você estiver executando o Elixir v1.9 ou inferior, precisará chamar `require Bitwise` no início da definição do módulo para poder usar o módulo <i>Bitwise</i>

#### Saber mais
- [The Bitwise module](https://hexdocs.pm/elixir/Bitwise.html)
- [Bitwise operators - Wikipedia](https://en.wikipedia.org/wiki/Bitwise_operation#Bitwise_operators)