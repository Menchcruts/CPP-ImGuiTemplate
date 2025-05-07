# C++ Project Template

This is a lightweight and flexible C++ project template designed to kickstart development using **Premake**. It allows you to easily generate either **Visual Studio** or **CMake** project files depending on your workflow.

---

## 🔧 Features
- Organized project structure
- Premake5 build configuration
- Support for both Visual Studio and CMake
- Simple script-based setup

---

## 🚀 Getting Started

1. **Clone the template repository** (or use the "Use this template" button on GitHub to create your own copy).
2. Open a terminal and run one of the setup scripts inside the `Scripts/` directory.

### Example:
```bash
cd Scripts
./Setup-Linux-cmake.sh      # For CMake
```
> On Windows, use the ```.bat``` equivalents:
```bash
cd Scripts
./Setup-Windows-cmake.bat   # For Visual Studio
./Setup-Windows-vs2022.bat  # For CMake
```

---

## 📁 Project Structure
```
Cpp-TemplateProject/
├─ Core/                    # Core libraries
│  ├─ CoreProjectExample/       # Example library. Libraries have an outer folder for generated files and an inner folder for source
│  │  ├─ CoreProject/               # Actual source library
│  │  ├─ Premake5.lua               # Library premake file
├─ Dependencies/            # Dependency libraries
├─ MainProject/             # Main project directory
│  ├─ Premake5.lua              # Main project Premake file
├─ premake-cmake/           # CMake module for Premake
├─ Scripts/                 
├─ Vendor/                  # Premake binaries and example Premake files
├─ .gitignore
├─ LICENSE
├─ premake5.lua             # Main workspace Premake file
├─ README.MD
```

---

## 📦 Requirements
* C++ compiler (MSVC, GCC or Clang)
* CMake (if using CMake)
* (Optional) Visual Studio or CMake-compatible IDE

---

## 🧪 Customization
You can modify the ```premake5.lua``` script to:
* Add dependencies
* Change compiler/linker settings
* Configure additional projects or modules

---

## ✅ License
MIT License