<div align="center">

# 🚗 SimpleVehControl

### A standalone FiveM vehicle control system for managing doors and windows through configurable commands.

<p>
  <a href="https://simpledevelopments.org/store"><img src="https://img.shields.io/badge/Explore_Our_Store-5865F2?style=for-the-badge&logo=googlechrome&logoColor=white" /></a>
  <a href="https://discord.gg/RquDVTfDwu"><img src="https://img.shields.io/badge/Join_Our_Discord-5865F2?style=for-the-badge&logo=discord&logoColor=white" /></a>
  <a href="https://github.com/Fadinlaws123/SimpleVehControl"><img src="https://img.shields.io/badge/View_on_GitHub-181717?style=for-the-badge&logo=github&logoColor=white" /></a>
</p>

<p>
  <img src="https://img.shields.io/badge/FiveM-Standalone-FF6B35?style=flat-square&logo=fivem&logoColor=white" />
  <img src="https://img.shields.io/badge/Vehicle-Doors_%26_Windows-238636?style=flat-square" />
  <img src="https://img.shields.io/badge/Status-Release_Ready-238636?style=flat-square" />
  <img src="https://img.shields.io/github/stars/Fadinlaws123/SimpleVehControl?style=flat-square&logo=github&label=Stars" />
</p>

</div>

---

## 📖 About

**SimpleVehControl** lets players control individual vehicle doors and windows through simple configurable commands.

The door and window systems can be enabled independently, command arguments can be customized, and optional ACE permissions can restrict access when needed.

---

## ✨ Features

### 🚪 Door Controls

- Driver door
- Front passenger door
- Rear driver door
- Rear passenger door
- Both rear doors
- Trunk
- Hood

### 🪟 Window Controls

- Driver window
- Front passenger window
- Rear driver window
- Rear passenger window
- Front windows
- Rear windows
- All windows

### ⚙️ Additional Features

- Individually toggleable door and window systems
- Configurable command arguments
- Optional ACE permissions
- Configurable success and error messages
- Built-in version checking
- Standalone with no framework dependency

---

## 🎮 Commands

### Door Control

```text
/toggledoor <option>
```

Default options include:

`rdoors`, `driver`, `passenger`, `rdriver`, `rpassenger`, `trunk`, and `hood`.

### Window Control

```text
/togglewindow <option>
```

Default options include:

`driver`, `passenger`, `rdriver`, `rpassenger`, `all`, `front`, and `rear`.

---

## 🔐 Optional ACE Permissions

When permission requirements are enabled, the default examples are:

```cfg
add_ace group.staff door.control allow
add_ace group.staff window.control allow
```

---

## ⚙️ Configuration

The resource configuration controls:

- Door system availability
- Window system availability
- Command arguments
- ACE permission requirements
- Open and close messages
- Error messages

---

## 📥 Installation

1. Place `SimpleVehControl` in your server's resources directory.
2. Configure `config.lua`.
3. Add the following to your `server.cfg`:

```cfg
ensure SimpleVehControl
```

4. Add ACE permissions if enabled.
5. Restart the resource or server.

---

## 📋 Requirements

- FiveM server
- No framework required
- No database required

---

## 🌐 SimpleDevelopments

SimpleVehControl is developed and maintained by **SimpleDevelopments**.

<div align="center">

### Keep it Simple. Keep it SimpleDevelopments.

</div>
