# Changelog

All notable changes to the Sudoku Game project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Planned
- Graphical user interface with JavaFX
- Puzzle difficulty levels
- Save/load game functionality
- Online multiplayer support

## [2.0.0] - 2025-07-13

### Added
- **Hint System**: New option 8 in menu to reveal correct values for any position
- **Move Counter**: Tracks the number of moves made by the player
- **Game Timer**: Measures total game time from start to finish
- **Enhanced Statistics**: Detailed game status including empty spaces count
- **Input Validation**: Robust protection against invalid inputs and non-numeric values
- **Confirmation Dialogs**: Safety confirmation before clearing game progress
- **Better User Interface**: Organized menu with clear options and descriptions
- **Comprehensive Documentation**: Complete README with usage instructions and architecture explanation
- **Execution Scripts**: Ready-to-use `.bat` and `.sh` files for easy compilation and execution
- **Configuration Examples**: Sample scripts showing how to run with predefined board positions

### Changed
- **Menu Interface**: Redesigned for better user experience and clarity
- **Error Messages**: More descriptive and user-friendly feedback
- **Game Status Display**: Enhanced with move count, timer, and progress information
- **Code Structure**: Improved organization and documentation

### Fixed
- **NullPointerException**: Fixed crash when no position configuration is provided
- **Java Compatibility**: Ensured compatibility with Java 8+ by removing newer language features
- **Input Handling**: Better error recovery for invalid user inputs

### Technical
- **Java 8+ Compatible**: Removed `var` keyword and text blocks for broader compatibility
- **Traditional Switch Syntax**: Changed from arrow syntax to traditional case statements
- **String Formatting**: Replaced `String.formatted()` with `String.format()` for older Java versions

## [1.0.0] - Initial Release

### Added
- Basic Sudoku game implementation
- Command-line interface
- Board display with ASCII art template
- Basic input/output operations
- Game state management (not started, incomplete, complete)
- Fixed and editable cell support
- Error detection for incorrect values

### Features
- Start new game
- Place numbers on the board
- Remove numbers from the board
- View current game state
- Check game status
- Clear entire board
- Finish and validate completed game

---

## Legend

- **Added** for new features
- **Changed** for changes in existing functionality
- **Deprecated** for soon-to-be removed features
- **Removed** for now removed features
- **Fixed** for any bug fixes
- **Security** for vulnerability fixes
- **Technical** for internal/development changes
