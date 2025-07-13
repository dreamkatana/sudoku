# 🎮 Sudoku Game in Java

An interactive Sudoku game developed in Java with command-line interface. This project implements classic Sudoku rules with extra features like hint system, move counter, and game timer.

## 📋 Features

- ✅ **Complete Sudoku game** with rule validation
- 🎯 **Hint system** to help the player
- 📊 **Move counter** and timer
- 🎨 **Visual interface** with ASCII board template
- 🔄 **Game reset** preserving fixed values
- ✨ **Robust input validation** against errors
- 📈 **Game status system** (not started, incomplete, complete)

## 🏗️ Project Structure

```
sudoku/
├── src/
│   └── br/
│       └── com/
│           └── dio/
│               ├── Main.java                    # Main class with user interface
│               ├── model/
│               │   ├── Board.java               # Sudoku board logic
│               │   ├── Space.java               # Represents each board cell
│               │   └── GameStatusEnum.java      # Game states
│               └── util/
│                   └── BoardTemplate.java       # Board visual template
├── sudoku.iml                                   # IntelliJ configuration file
└── README.md                                    # This file
```

## 🚀 How to Run

### Prerequisites

- **Java 8** or higher installed
- Terminal or command prompt

### Compilation and Execution

1. **Clone or download the project**
   ```bash
   git clone <repository-url>
   cd sudoku
   ```

2. **Compile the project**
   ```bash
   javac -d . src/br/com/dio/Main.java src/br/com/dio/model/*.java src/br/com/dio/util/*.java
   ```

3. **Run the game**
   ```bash
   java br.com.dio.Main
   ```

### Execution with Initial Configuration (Optional)

You can pass arguments to pre-configure board positions:

```bash
java br.com.dio.Main "0,0;5,true" "0,1;3,false" "1,1;7,true"
```

**Argument format:** `"row,column;value,fixed"`
- `row,column`: Position coordinates (0-8)
- `value`: Number to be placed (1-9)
- `fixed`: `true` if value cannot be changed, `false` otherwise

## 🎮 How to Play

### Main Menu

```
=================================================
           SUDOKU GAME
=================================================
Select one of the following options:

1 - Start a new Game
2 - Place a new number
3 - Remove a number
4 - View current game
5 - Check game status
6 - Clear game
7 - Finish game
8 - Exit
=================================================
```

### Game Instructions

1. **Start the game**: Choose option 1 to begin a new match
2. **Add numbers**: Use option 2 and inform coordinates (0-8) and number (1-9)
3. **Remove numbers**: Use option 3 to clear a position
4. **View board**: Option 4 shows current game state
5. **Check status**: Option 5 shows detailed statistics
6. **Get hints**: Option 8 reveals correct number for a position
7. **Finish**: Option 7 checks if game was completed correctly

### Coordinate System

- **Rows and Columns**: Numbered from 0 to 8
- **Format**: `[column, row]`
- **Example**: Position `[0,0]` is the top-left corner

## 🏛️ Architecture

### Main Classes

#### `Main.java`
- **Responsibility**: User interface and game flow control
- **Features**: Interactive menu, input validation, state management

#### `Board.java`
- **Responsibility**: Sudoku board logic
- **Main methods**:
  - `changeValue()`: Changes position value
  - `clearValue()`: Removes position value
  - `hasErrors()`: Checks for board errors
  - `gameIsFinished()`: Checks if game is completed
  - `getStatus()`: Returns current game status

#### `Space.java`
- **Responsibility**: Represents each board cell
- **Properties**:
  - `actual`: Current value inserted by player
  - `expected`: Correct position value
  - `fixed`: If value is fixed (cannot be changed)

#### `GameStatusEnum.java`
- **Game states**:
  - `NON_STARTED`: Game not started
  - `INCOMPLETE`: Game in progress
  - `COMPLETE`: Game complete

## 📊 Special Features

### Statistics System
- **Move counter**: Tracks how many moves were made
- **Timer**: Measures total game time
- **Empty spaces counter**: Shows how many cells still need to be filled

### Hint System
- Reveals correct value for any position
- Indicates if an already inserted value is correct or incorrect
- Identifies positions with fixed values

### Robust Validation
- Checks valid numeric input
- Validates coordinates within range (0-8)
- Validates Sudoku numbers (1-9)
- Protection against non-numeric values

## 🛠️ Possible Future Improvements

- [ ] **Graphical interface** with JavaFX or Swing
- [ ] **Different difficulty levels**
- [ ] **Automatic puzzle generator**
- [ ] **Scoring system**
- [ ] **Game save and load**
- [ ] **Multiple players**
- [ ] **Game history**

## 🤝 Contributing

1. Fork the project
2. Create a branch for your feature (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is under the MIT license. See the `LICENSE` file for more details.

## 👨‍💻 Developer

Developed as part of Java studies and object-oriented programming.

---

**Have fun playing Sudoku! 🎉**
