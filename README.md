# MCC20
**M**ódulo **C**ontrolador de **C**arga 2020  
Embarcação Guarapuvu II  
Equipe Zênite Solar  

### Sobre

Este módulo é responsável por gerenciar o carregamento da bateria e a operação do painel no seu ponto de maxima potencia 

#### Requisitos e Abordagens
1. Encontrar o ponto de maxima potencia (MPP) do painel solar
    - Utilizar a tecnica perturbar e observar (p&o) para achar o MPP
    - Ao iniciar barrer o duty cicle para iniciar no MPP
    - Se a potencia for 0 fazer o barrido novamente 
2. Medir a Potencia do painel
    - Usar um ina826 para medir a tensao do painel
    - Usar um ina240 para medir a corrente do painel
    
3. Eficiencia energetica
    - Indutores
        - Utilizar fios em paralelo para diminuir o *skin effect*
        - Utilizar indutor acoplado (não implementado)
    - Capacitores
        - Utilizar capacitores SMD com baixa ESR
    - Chaves
        - Utilizar snubber para amortecer oscilações e picos de tensão
        - Utilizar chaves com baixa Rdson e rapidas
        - Utilizar conversor sincrono (não implementado)
    - Frequencia
        - Utilizar frequencia que tenha uma boa relação entre perdas nas chaves e volume do onversor
    - Layout
        - Baixa indutancia no braço (entre chaves)
4. Robustes
     
