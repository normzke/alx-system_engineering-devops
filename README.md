# 🐚 Shell Variables and Expansions

---

<p align="center">
  <img src="https://img.shields.io/badge/Bash-Scripting-blue?logo=gnubash" alt="Bash">
  <img src="https://img.shields.io/badge/ALX-Project-green" alt="ALX">
  <img src="https://img.shields.io/badge/License-ALX-lightgrey" alt="License">
</p>

---

## 📑 Table of Contents
- [About](#about)
- [Scripts Overview](#-scripts-overview)
- [Getting Started](#-getting-started)
- [Usage](#-usage)
- [Environment Variables](#-environment-variables)
- [Examples](#-examples)
- [Resources](#-resources)
- [Contributing](#-contributing)
- [Author](#-author)
- [License](#-license)

## 📖 About

This repository contains a collection of shell scripts that demonstrate various shell variables and expansions in bash. These scripts are part of the ALX System Engineering & DevOps curriculum.

## 📋 Scripts Overview

| Script | Description |
|--------|-------------|
| `0-alias` | Creates an alias for `ls` with value `rm *` |
| `1-hello_you` | Prints "hello" followed by the current Linux user |
| `2-path` | Adds `/action` to the PATH environment variable |
| `3-paths` | Counts the number of directories in the PATH |
| `4-global_variables` | Lists all environment variables |
| `5-local_variables` | Lists all local variables, environment variables, and functions |
| `6-create_local_variable` | Creates a local variable named `BEST` with value `School` |
| `7-create_global_variable` | Creates a global variable named `BEST` with value `School` |
| `8-true_knowledge` | Adds 128 to the value stored in `TRUEKNOWLEDGE` environment variable |
| `9-divide_and_rule` | Divides `POWER` by `DIVIDE` environment variables |
| `10-love_exponent_breath` | Calculates `BREATH` to the power of `LOVE` |
| `11-binary_to_decimal` | Converts a binary number to decimal |
| `12-combinations` | Prints all possible two-letter combinations except 'oo' |
| `13-print_float` | Prints a number with two decimal places |

## 🚀 Getting Started

1. **Clone the repository:**
   ```bash
   git clone https://github.com/normzke/alx-system_engineering-devops.git
   ```
2. **Navigate to the scripts directory:**
   ```bash
   cd alx-system_engineering-devops/0x03-shell_variables_expansions
   ```
3. **Make scripts executable:**
   ```bash
   chmod +x *
   ```

## ⚡ Usage

Run any script with:
```bash
./<script_name>
```

Some scripts require specific environment variables to be set. See [Environment Variables](#-environment-variables).

## 🔧 Environment Variables

Some scripts require specific environment variables to be set:

- `TRUEKNOWLEDGE`: Used in script 8
- `POWER` and `DIVIDE`: Used in script 9
- `BREATH` and `LOVE`: Used in script 10
- `BINARY`: Used in script 11
- `NUM`: Used in script 13

## 📝 Examples

### Creating an alias
```bash
source ./0-alias
```

### Printing hello to current user
```bash
./1-hello_you
```

### Converting binary to decimal
```bash
export BINARY=10100111001
./11-binary_to_decimal
```

## 📚 Resources

- [Bash Reference Manual](https://www.gnu.org/software/bash/manual/bash.html)
- [Shell Variables and Expansions](https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html)

## 🤝 Contributing

Contributions are welcome! Please fork the repository and submit a pull request for any improvements or bug fixes.

## 👤 Author

- GitHub: [@normzke](https://github.com/normzke)

## 📄 License

This project is part of the ALX System Engineering & DevOps curriculum. 