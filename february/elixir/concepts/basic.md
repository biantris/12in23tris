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

#### Named functions (Funções Nomeadas)
<i>Named Functions</i> devem ser definidas em um módulo. A palavra-chave `def` é usada para definir uma função nomeada pública.

Cada função pode ter zero ou mais argumentos. O valor da última expressão em uma função é sempre <i>retornado implicitamente</i>.

```ex
defmodule Calculator do
  def add(x, y) do
    x + y
  end
end
```

A chamada de uma função é feita especificando seu módulo e nome da função e passando valores para cada um dos argumentos da função.

```ex
sum = Calculator.add(1, 2)
# => 3
```

![image](https://user-images.githubusercontent.com/65451957/221311993-85118db5-4938-4b54-9500-f553701fcd96.png)

A palavra-chave `defp` pode ser usada em vez de `def` para definir uma função <i>privada</i>. As funções privadas só podem ser usadas dentro do mesmo módulo que as definiu.

```
    def != defp
```

Ao invocar uma função dentro do mesmo módulo onde está definida, o nome do módulo pode ser omitido.

Você também pode excrever funções curtas usando uma sintaxe de uma linha (observe a vírgula `,` e os dois pintos `:` ao redor da palavra-chave `do`).

```ex
defmodule Calculator do
  def subtract(x, y) do
    private_subtract(x, y)
  end

  defp private_subtract(x, y), do: x - y
end

difference = Calculator.subtract(7, 2)
# => 5

difference = Calculator.private_subtract(7, 2)
# => ** (UndefinedFunctionError) function Calculator.private_subtract/2 is undefined or private
#       Calculator.private_subtract(7, 2)
```

#### Arity of functions (Aridade de funções)
É comum referir-se a funções com a sua <i>aridade</i>. A <i>aridade</i> de uma função é o número de argumentos que ela aceita.

```ex
# add/3 because this function has three arguments, thus an arity of 3
def add(x, y, z) do
  x + y + z
end
```

#### Biblioteca padrão
Elixir tem uma biblioteca padrão muito rica e bem documentada. A documentação está disponível online em [hexdocs.pm/elixir](https://hexdocs.pm/elixir/Kernel.html#content). Guarde esse link, pois você usará bastante!

A maioria dos tipos de dados embutidos tem um módulo correspondente que oferece funções para trabalhar com esses tipos de dados, por exemplo, há o módulo `Integer` para inteiros, modúlo `String` para strings, módulo `List` para listas e assim por diante.