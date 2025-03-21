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
