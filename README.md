# Problema do miojo

João é um fanático por miojos; ele os adora, e, como era de se esperar, ele levou vários pacotes quando foi acampar com seus colegas. Como João só gosta de miojos feitos com o tempo exato, ele se deseperou ao perceber que havia esquecido seu relógio em casa.

Por sorte, ele conseguiu, no caminho, comprar duas ampulhetas de durações diferentes. Por exemplo, se o miojo precisa de 3 minutos para ficar pronto, e João tiver uma ampulheta de 5 minutos e outra de 7, uma possível forma de cozinhar o miojo é:

- João começa virando as duas ampulhetas ao mesmo tempo.
- Quando a areia da ampulheta de 5 minutos se esgotar, João torna a virá-la.
- João começa a preparar o miojo quando a areia da ampulheta de 7 minutos acabar.
- João tira o miojo do fogo quando a ampulheta de 5 minutos acabar novamente.
- Dessa forma, o miojo ficará 3 minutos no fogo (do minuto 7 ao minuto 10). Assim, apesar do miojo levar apenas três minutos para ser cozido, ele precisa de 10 minutos para ficar pronto.

Faça um programa que, dado o tempo de preparo do miojo, e os tempos das duas ampulhetas (ambos maiores que o tempo do miojo), determina o tempo mínimo necessário para o miojo ficar pronto ou se não é possível cozinhar o miojo no tempo exato com as ampulhetas disponíveis.

- Instruções

Rode o programa calculate_noodies_time.rb.
Dentro do arquivo tem a chamada para executar a solução. Basta passar os valores que queira testar:

-noodleTime -> tempo de preparo do miojo

-hourGlass1 -> ampulheta 1

-hourGlass2 -> ampulheta 2

O resultado é o tempo total que se gasta para poder preparar o miojo.

# Distancia entre Pontos
Esse é mais simples, a ideia é criar um programa que recebe N pontos (latitude e longitude) e retorna a distancia entre eles, ou seja a distancia do primeiro ponto para todos os outros pontos, do segundo ponto para todos os outros pontos…e assim por diante...

- Instruções

O projeto é dividido em controller, service e model. 

No service está a lógica. Existem duas classes lá. Uma pra calcular a coordenada geográfica, outra pra calcular a distância entre dois pontos.

O controller pega todas as informações dos pontos de dentro do arquivo input.file. Esse arquivo começa com o nome do ponto e vem seguido das coordenadas geograficas (grau, minuto segundo) e direção da latitude e longitude, respectivamente.

Ex:

Ponto1 40 30 30 'S' 40 30 30 'W'

Ponto2 39 30 30 'S' 40 30 30 'W'

Ponto3 27 30 30 'N' 32 25 12 'W'

Ponto4 28 45 12 'N' 10 12 21 'E'

Ponto5 28 50 12 'N' 10 12 21 'E'

Basta executar a classe calculate_distance_controller.rb para calcular tudo.

O programa retorna o arquivo output.file com todas as quilometragens calculadas. O arquivo retorna os nomes dos pontos com a quilometragem.

Ex: 

Ponto1 Ponto2 111.19492664455873

Ponto1 Ponto3 7609.130822571531

Ponto1 Ponto4 9307.88973058297

Ponto1 Ponto5 9315.357700537821

Ponto2 Ponto3 7498.948635746562

Ponto2 Ponto4 9226.688941760605

Ponto2 Ponto5 9234.090557303092

Ponto3 Ponto4 4159.679581249301

Ponto3 Ponto5 4158.3001938364005

Ponto4 Ponto5 9.26624388704643

Os arquivos ficam na pasta file na mesma hierarquia da pasta app.
