# Eliminar Bags y BagMRU si existen / Delete Bags and BagMRU if they exist
Remove-Item -Path "HKCU:\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "HKCU:\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" -Recurse -Force -ErrorAction SilentlyContinue

# Recrear la clave Bags / Recreate the Bags key
New-Item -Path "HKCU:\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" -Force

# Crear la subclave AllFolders dentro de Bags / Create the AllFolders subkey inside Bags
New-Item -Path "HKCU:\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders" -Force

# Crear la subclave Shell dentro de AllFolders / Create the Shell subkey inside AllFolders
New-Item -Path "HKCU:\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell" -Force

# Crear el valor de cadena FolderType con el valor NotSpecified / Create the string value FolderType with the value NotSpecified
New-ItemProperty -Path "HKCU:\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell" -Name "FolderType" -Value "NotSpecified" -PropertyType String -Force
