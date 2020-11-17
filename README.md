# Vortigo - Teste prático - Ruby on Rails

  ## Contexto:

  Implementar uma página web para o controle de posição de um drone em um plano cartesiano (X, Y).

  Essa página deve conter um campo de texto para receber a string de entrada, um botão de enviar coordenadas e, conforme achar melhor, deve responder o plano cartesiano calculado.

  O ponto inicial do drone é `(0, 0)` para cada execução.

  A string de entrada pode conter os seguintes caracteres **N**, **S**, **L**, e **O** representando **Norte**, **Sul**, **Leste** e **Oeste** respectivamente.
 Estes catacteres podem estar presentes aleatóriamente na string de entrada.
 Uma string de entrada `NNNLLL` irá resultar em uma posição final `(3, 3)`, assim como uma string `NLNLNL` irá resultar em `(3, 3)`.

  Caso o caracter **X** esteja presente, o mesmo irá cancelar a operação anterior. 
 Caso houver mais de um caracter X consecutivo, o mesmo cancelará mais de uma ação na quantidade em que o X estiver presente.
 Uma string de entrada `NNNXLLLXX` irá resultar em uma posição final `(1, 2)` pois a string poderia ser simplificada para `NNL`.

  Além disso, um número pode estar presente após o caracter da operação, representando o "passo" que a operação deve acumular.
 Este número deve estar compreendido entre `1` e `2147483647`.
 Deve-se observar que a operação `X` não suporta opção de *passo* e deve ser considerado inválido. Uma string de entrada `NNX2` deve ser considerada inválida.
 Uma string de entrada `N123LSX` irá resultar em uma posição final `(1, 123)` pois a string pode ser simplificada para `N123L`
 Uma string de entrada `NLS3X` irá resultar em uma posição final `(1, 1)` pois a string pode ser siplificada para `NL`.

  Caso a string de entrada seja inválida ou tenha algum outro problema, o resultado deve ser `(999, 999)`.

  ## Dica:

  Os teste unitários esperados são:
 ```
 Quando a string de entrada for: NNNNNLLLLL
 O retorno esperado é: (5, 5)

 Quando a string de entrada for: NLNLNLNLNL
 O retorno esperado é: (5, 5)

 Quando a string de entrada for: NNNNNXLLLLLX
 O retorno esperado é: (4, 4)

 Quando a string de entrada for: SSSSSOOOOO
 O retorno esperado é: (-5, -5)

 Quando a string de entrada for: S5O5
 O retorno esperado é: (-5, -5)

 Quando a string de entrada for: NNX2
 O retorno esperado é: (999, 999)

 Quando a string de entrada for: N123LSX
 O retorno esperado é: (1, 123)

 Quando a string de entrada for: NLS3X
 O retorno esperado é: (1, 1)

 Quando a string de entrada for: NNNXLLLXX
 O retorno esperado é: (1, 2)

 Quando a string de entrada for: N40L30S20O10NLSOXX
 O retorno esperado é: (21, 21)

 Quando a string de entrada for: NLSOXXN40L30S20O10
 O retorno esperado é: (21, 21)

 Quando a string de entrada for: nula
 O retorno esperado é: (999, 999)

 Quando a string de entrada for: vazia
 O retorno esperado é: (999, 999)

 Quando a string de entrada for: espaços em branco
 O retorno esperado é: (999, 999)

 Quando a string de entrada for: 123N
 O retorno esperado é: (999, 999)

 Quando a string de entrada for: N2147483647N
 O retorno esperado é: (999, 999)

 Quando a string de entrada for: NNI
 O retorno esperado é: (999, 999)

 Quando a string de entrada for: N2147483647XN
 O retorno esperado é: (0, 1)
 ```