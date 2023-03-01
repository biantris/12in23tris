### Átomos

Você pode usar <b>átomos</b> sempre que tiver um conjunto de constantes para expressar. Os átomos fornecem uma maneira segura de comparar valores. Um átomo é definido por seu nome, prefixado por dois pontos:

```ex
# Atoms start with a ':',
# followed by alphanumeric snake_cased characters
:an_atom
```

Muitas funções na biblioteca padrão do Elixir retornam um átomo para anotar o resultado:

```ex
Enum.fetch([1], 0)
# => {:ok, 1}
Enum.fetch([1], 2)
# => :error
```

Os átomos são representados internamente por um número inteiro em uma tabela de consulta, que são definidos automaticamente. Isso torna a comparação de átomos mais rápida do que a comparação de strings. Não é possível alterar este valor interno. É geralmente considerado um <b>anti-pattern</b> para criar átomos dinamicamente a partit da entrada fornrcida pelo usuário. O tempo de execução só tem espaço para um número limitado de átomos, gerar novos átomos em tempo de execução pode falhar se a tabela de átomos estiver cheia.

#### Saber mais
- [Getting Started - Atoms](https://elixir-lang.org/getting-started/basic-types.html#atoms)