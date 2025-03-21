# Optimize Explorer Performance

## Overview
This PowerShell script improves the performance of File Explorer in Windows 11 by clearing the folder view cache and resetting its database. Over time, Windows stores information about how each folder is displayed, which can slow down File Explorer. This script removes those stored settings and resets the system to a default state, making navigation faster.

## How It Works
1. Deletes the `Bags` and `BagMRU` registry keys, which store folder view settings.
2. Recreates the `Bags` key.
3. Creates a subkey called `AllFolders` inside `Bags`.
4. Adds another subkey called `Shell` inside `AllFolders`.
5. Sets a string value (`FolderType`) to `NotSpecified`, ensuring that folders load faster without unnecessary metadata.

## Usage
### Running the Script
1. **Download the script** (`Optimize_Explorer_Performance.ps1`).
2. **Run PowerShell as Administrator**:
   - Press `Win + X` and select **Windows Terminal (Admin)** or **PowerShell (Admin)**.
3. **Allow script execution (if needed)**:
   ```powershell
   Set-ExecutionPolicy Unrestricted -Scope Process
   ```
4. **Execute the script**:
   ```powershell
   .\Optimize_Explorer_Performance.ps1
   ```

## Compatibility
- **Operating System**: Windows 10, Windows 11
- **Permissions**: Requires administrative privileges

## Disclaimer
Use this script at your own risk. Modifying the Windows Registry can affect system behavior. Always create a backup before making changes.

## License
This project is open-source and released under the MIT License.

## Author
[Straker](https://github.com/strakerbit)


# 🚀 Optimize Explorer Performance 🚀

## 📌 Overview
Windows Explorer can slow down over time due to accumulated folder view settings. This PowerShell script **clears the cache**, **resets the database**, and **optimizes performance**, ensuring a **faster and smoother navigation experience**.

## 🔧 How It Works
✅ Deletes the `Bags` and `BagMRU` registry keys, which store folder view settings.  
✅ Recreates the `Bags` key.  
✅ Creates a subkey called `AllFolders` inside `Bags`.  
✅ Adds another subkey called `Shell` inside `AllFolders`.  
✅ Sets a string value (`FolderType`) to `NotSpecified`, preventing unnecessary metadata storage.  

## 🚀 Usage
### Running the Script
1. **Download the script** (`Optimize_Explorer_Performance.ps1`).
2. **Run PowerShell as Administrator**:
   - Press `Win + X` and select **Windows Terminal (Admin)** or **PowerShell (Admin)**.
3. **Allow script execution (if needed)**:
   ```powershell
   Set-ExecutionPolicy Unrestricted -Scope Process
   ```
4. **Execute the script**:
   ```powershell
   .\Optimize_Explorer_Performance.ps1
   ```

## 🖥️ Compatibility
- **Supported OS**: Windows 10, Windows 11  
- **Permissions Required**: Administrator privileges  

## ⚠️ Disclaimer
⚠️ **Use at your own risk!** Modifying the Windows Registry can impact system behavior. Always create a backup before making changes.

## 📜 License
This project is **open-source** and released under the **MIT License**.

## 👤 Author
[Straker](https://github.com/strakerbit)
