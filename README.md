# 🎮 Jogo de Sudoku em Java

Um jogo de Sudoku interativo desenvolvido em Java com interface de linha de comando. Este projeto implementa as regras clássicas do Sudoku com funcionalidades extras como sistema de dicas, contador de movimentos e cronômetro.

## 📋 Funcionalidades

- ✅ **Jogo de Sudoku completo** com validação de regras
- 🎯 **Sistema de dicas** para ajudar o jogador
- 📊 **Contador de movimentos** e cronômetro
- 🎨 **Interface visual** com template ASCII do tabuleiro
- 🔄 **Reset do jogo** preservando valores fixos
- ✨ **Validação de entrada** robusta contra erros
- 📈 **Sistema de status** do jogo (não iniciado, incompleto, completo)

## 🏗️ Estrutura do Projeto

```
sudoku/
├── src/
│   └── br/
│       └── com/
│           └── dio/
│               ├── Main.java                    # Classe principal com interface do usuário
│               ├── model/
│               │   ├── Board.java               # Lógica do tabuleiro de Sudoku
│               │   ├── Space.java               # Representa cada célula do tabuleiro
│               │   └── GameStatusEnum.java      # Estados do jogo
│               └── util/
│                   └── BoardTemplate.java       # Template visual do tabuleiro
├── sudoku.iml                                   # Arquivo de configuração do IntelliJ
└── README.md                                    # Este arquivo
```

## 🚀 Como Executar

### Pré-requisitos

- **Java 8** ou superior instalado
- Terminal ou prompt de comando

### Compilação e Execução

1. **Clone ou baixe o projeto**
   ```bash
   git clone <url-do-repositorio>
   cd sudoku
   ```

2. **Compile o projeto**
   ```bash
   javac -d . src/br/com/dio/Main.java src/br/com/dio/model/*.java src/br/com/dio/util/*.java
   ```

3. **Execute o jogo**
   ```bash
   java br.com.dio.Main
   ```

### Execução com Configuração Inicial (Opcional)

Você pode passar argumentos para pré-configurar posições do tabuleiro:

```bash
java br.com.dio.Main "0,0;5,true" "0,1;3,false" "1,1;7,true"
```

**Formato dos argumentos:** `"linha,coluna;valor,fixo"`
- `linha,coluna`: Coordenadas da posição (0-8)
- `valor`: Número a ser colocado (1-9)
- `fixo`: `true` se o valor não pode ser alterado, `false` caso contrário

## 🎮 Como Jogar

### Menu Principal

```
=================================================
           JOGO DE SUDOKU
=================================================
Selecione uma das opções a seguir:

1 - Iniciar um novo Jogo
2 - Colocar um novo número
3 - Remover um número
4 - Visualizar jogo atual
5 - Verificar status do jogo
6 - Limpar jogo
7 - Finalizar jogo
8 - Obter dica para posição
9 - Sair
=================================================
```

### Instruções de Jogo

1. **Iniciar o jogo**: Escolha a opção 1 para começar uma nova partida
2. **Adicionar números**: Use a opção 2 e informe coordenadas (0-8) e o número (1-9)
3. **Remover números**: Use a opção 3 para limpar uma posição
4. **Visualizar tabuleiro**: Opção 4 mostra o estado atual do jogo
5. **Verificar status**: Opção 5 mostra estatísticas detalhadas
6. **Obter dicas**: Opção 8 revela o número correto para uma posição
7. **Finalizar**: Opção 7 verifica se o jogo foi completado corretamente

### Sistema de Coordenadas

- **Linhas e Colunas**: Numeradas de 0 a 8
- **Formato**: `[coluna, linha]`
- **Exemplo**: Posição `[0,0]` é o canto superior esquerdo

## 🏛️ Arquitetura

### Classes Principais

#### `Main.java`
- **Responsabilidade**: Interface do usuário e controle do fluxo do jogo
- **Funcionalidades**: Menu interativo, validação de entrada, gestão de estado

#### `Board.java`
- **Responsabilidade**: Lógica do tabuleiro de Sudoku
- **Métodos principais**:
  - `changeValue()`: Altera valor de uma posição
  - `clearValue()`: Remove valor de uma posição
  - `hasErrors()`: Verifica se há erros no tabuleiro
  - `gameIsFinished()`: Verifica se o jogo foi completado
  - `getStatus()`: Retorna o status atual do jogo

#### `Space.java`
- **Responsabilidade**: Representa cada célula do tabuleiro
- **Propriedades**:
  - `actual`: Valor atual inserido pelo jogador
  - `expected`: Valor correto da posição
  - `fixed`: Se o valor é fixo (não pode ser alterado)

#### `GameStatusEnum.java`
- **Estados do jogo**:
  - `NON_STARTED`: Jogo não iniciado
  - `INCOMPLETE`: Jogo em andamento
  - `COMPLETE`: Jogo completo

## 📊 Funcionalidades Especiais

### Sistema de Estatísticas
- **Contador de movimentos**: Rastreia quantos movimentos foram feitos
- **Cronômetro**: Mede o tempo total de jogo
- **Contador de espaços vazios**: Mostra quantas células ainda precisam ser preenchidas

### Sistema de Dicas
- Revela o valor correto para qualquer posição
- Indica se um valor já inserido está correto ou incorreto
- Identifica posições com valores fixos

### Validação Robusta
- Verifica entrada numérica válida
- Valida coordenadas dentro do range (0-8)
- Valida números do Sudoku (1-9)
- Proteção contra valores não numéricos

## 🛠️ Possíveis Melhorias Futuras

- [ ] **Interface gráfica** com JavaFX ou Swing
- [ ] **Diferentes níveis de dificuldade**
- [ ] **Gerador automático de puzzles**
- [ ] **Sistema de pontuação**
- [ ] **Salvamento e carregamento de jogos**
- [ ] **Múltiplos jogadores**
- [ ] **Histórico de jogos**

## 🤝 Contribuindo

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## 📝 Licença

Este projeto está sob a licença MIT. Veja o arquivo `LICENSE` para mais detalhes.

## 👨‍💻 Desenvolvedor

Desenvolvido como parte dos estudos em Java e programação orientada a objetos.

---

**Divirta-se jogando Sudoku! 🎉**
