# Contributing to Sudoku Game

Thank you for your interest in contributing to our Sudoku game project! 🎉

## 🚀 Getting Started

### Prerequisites
- Java 8 or higher
- Git
- Basic knowledge of Java and object-oriented programming

### Setting up Development Environment

1. **Fork the repository**
   ```bash
   git clone https://github.com/your-username/sudoku.git
   cd sudoku
   ```

2. **Compile and test**
   ```bash
   javac -d . src/br/com/dio/Main.java src/br/com/dio/model/*.java src/br/com/dio/util/*.java
   java br.com.dio.Main
   ```

## 📋 How to Contribute

### 🐛 Reporting Bugs

1. Check if the bug has already been reported in Issues
2. Create a new Issue with:
   - Clear description of the problem
   - Steps to reproduce
   - Expected vs actual behavior
   - Java version and OS

### ✨ Suggesting Features

1. Check existing Issues for similar suggestions
2. Create a new Issue describing:
   - The feature you'd like to see
   - Why it would be useful
   - Possible implementation approach

### 🛠️ Code Contributions

1. **Create a branch**
   ```bash
   git checkout -b feature/amazing-feature
   ```

2. **Make your changes**
   - Follow the existing code style
   - Add comments for complex logic
   - Ensure compatibility with Java 8+

3. **Test your changes**
   - Compile without errors
   - Test all game functions
   - Verify no regression bugs

4. **Commit your changes**
   ```bash
   git commit -m "Add amazing feature that does X"
   ```

5. **Push and create Pull Request**
   ```bash
   git push origin feature/amazing-feature
   ```

## 📝 Code Style Guidelines

### General Rules
- Use clear and descriptive variable names
- Add comments for complex logic
- Keep methods small and focused
- Follow Java naming conventions

### Example
```java
// Good
private static boolean isValidMove(int row, int column, int value) {
    // Check if the move is valid according to Sudoku rules
    return isValidInRow(row, value) && 
           isValidInColumn(column, value) && 
           isValidInBox(row, column, value);
}

// Avoid
private static boolean check(int r, int c, int v) {
    return stuff(r,v) && stuff2(c,v) && stuff3(r,c,v);
}
```

## 🎯 Areas Where You Can Help

### 🔧 Technical Improvements
- [ ] Add more robust error handling
- [ ] Implement better input validation
- [ ] Optimize board rendering performance
- [ ] Add unit tests

### 🎨 User Experience
- [ ] Improve menu interface
- [ ] Add colored output support
- [ ] Implement save/load functionality
- [ ] Add difficulty levels

### 📚 Documentation
- [ ] Improve code comments
- [ ] Add more usage examples
- [ ] Create video tutorials
- [ ] Translate to other languages

### 🚀 New Features
- [ ] Graphical user interface (JavaFX/Swing)
- [ ] Puzzle generator
- [ ] Online multiplayer
- [ ] Statistics tracking
- [ ] Achievement system

## 🤝 Community Guidelines

### Be Respectful
- Be kind and respectful to other contributors
- Provide constructive feedback
- Help newcomers learn

### Be Patient
- Code review takes time
- Maintainers are volunteers
- Complex features need discussion

### Be Collaborative
- Ask questions if unsure
- Share knowledge and resources
- Celebrate others' contributions

## 📞 Getting Help

If you need help or have questions:

1. **Check the README** - Most common questions are answered there
2. **Search existing Issues** - Your question might already be answered
3. **Create a new Issue** - Tag it as "question" or "help wanted"
4. **Join discussions** - Participate in existing conversations

## 🏆 Recognition

Contributors will be:
- Added to the README contributors section
- Mentioned in release notes for significant contributions
- Given credit in commit messages

## 📄 License

By contributing, you agree that your contributions will be licensed under the same license as the project (MIT License).

---

**Thank you for making this project better! 🚀**
