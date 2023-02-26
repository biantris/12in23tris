### Floating Point Numbers

Floats são números com um ou mais dígitos atrás do separador decimal. Eles usam o formato de ponto flutuante de precisão dupla de 64 bits.

```ex
float = 3.45
# => 3.45
```

#### Trabalhando com números

Nos módulos `Integer` e `Float` você pode encontrar algumas funções úteis para trabalhar com esses tipos. Os operadores aritméticos básicos são definidos no módulo `Kernel`.

#### Conversão

Inteiros e floats podem ser misturados em uma única expressão aritmética. Usar float em uma expressão garante que o resultado também seja um float.

```ex
2 * 3
# => 6

2 * 3.0
# => 6.0
```

Porém. ao fazer a divisão, o resultado sempre será um float, mesmo que sejam usados apenas números inteiros.

```ex
6 / 2
# => 3.0
```

Para converter um float em um inteiro, você pode descartar a parte decimal com `trunc/1`.

#### Saber mais
- [The Float module](https://hexdocs.pm/elixir/Float.html)
- [0.30000000000000004](https://0.30000000000000004.com/)