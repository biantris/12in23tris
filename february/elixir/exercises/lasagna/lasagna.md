### Instruções

Neste exercício, você escreverá um código para ajudar a cozinhar uma lasanha brilhante de seu livro de culinária favorito.

Você tem cinco tarefas, todas relacionadas ao tempo gasto no preparo da lasanha

#### 1.Defina o tempo esperado de forno em minutos ✅

Defina a função `Lasagna.expected_minutes_in_oven/0` que não aceita nenhum argumento e retorna quantos minutos a lasanha deve ficar no forno. De acordo com o livro de culinária, o tempo de forno esperado em minutos é 40:

```ex
Lasagna.expected_minutes_in_oven()
# => 40
```

#### 2.Calcule o tempo restante do forno em minutos ✅

Defina a função `Lasagna.remaining_minutes_in_oven/1` que leva como argumento os minutos reais que a lasanha está ao forno e retorna quantos minutos a lasanha ainda tem para permanecer no forno, com base no tempo de forno esperado em minutos da tarefa anterior.

```ex
Lasagna.remaining_minutes_in_oven(30)
# => 10
```

#### 3.Calcule o tempo de preparo em minutos ✅

Defina a função `Lasagna.preparation_time_in_minutes/1` que usa o número de camadas que você adicionou à lasanha como argumento e retorna quantos minutos você gastou preparando a lasanha, assumindo que cada camada leva 2 minutos para ser preparada.

```ex
Lasagna.preparation_time_in_minutes(2)
# => 4
```

#### 4.Calcule o tempo total de trabalho em minutos ✅

Defina a função `Lasagna.total_time_in_minutes/2` que recebe dois argumentos: o primeiro argumento é o número de camadas que você adicionou à lasanha e o segundo argumento é o número de minutos que a lasanha está no forno. A função deve retornar quantos minutos no total você trabalhou no cozimento da lasanha, que é a soma do tempo de praparo em minutos e o tempo que a lasanha passou no forno no momento.

```ex
Lasagna.total_time_in_minutes(3, 20)
# => 26
```

#### 5.Cria um alarme quando a lasanha estiver pronta ✅

Defina a função `Lasagna.alarm/0` que não aceita nenhum argumento e retorna uma mensagem indicando que a lasanha está pronta para comer.

```ex
Lasagna.alarm()
# => "Ding!"
```