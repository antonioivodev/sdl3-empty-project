
#
#  MIT No Attribution
#  Full text: https://opensource.org/licenses/MIT-0
#
#  Copyright 2025 Antônio Ivo da Silva Gomes
#

$debug_info = "DEBUG: (INFO)"
$debug_error = "DEBUG: (ERROR)"

if (Get-Command git -ErrorAction SilentlyContinue) {
    Write-Host "${debug_info} git installed"
} else {
    Write-Host "${debug_info} git NOT installed. Check https://git-scm.com/"
}

if (Get-Command cmake -ErrorAction SilentlyContinue) {
    Write-Host "${debug_info} CMake installed"
} else {
    Write-Host "${debug_info} CMake NOT installed. Check https://cmake.org/"
}

$repository_path = "https://github.com/libsdl-org/SDL.git"
$repository_folder_name = "SDL"

$vendor_build_folder_name = "vendor"


$first_command = "git clone ${repository_path} ${repository_folder_name}"
$second_command = "cmake -S ${repository_folder_name} -B ${vendor_build_folder_name}"
$third_command = "cmake --build ${vendor_build_folder_name}"
$forth_command = "cp .\${vendor_build_folder_name}\SDL3.dll ."


Write-Host "${debug_info} Cloning SDL3 library..."
iex $first_command | Out-Null
Write-Host "${debug_info} Cloned or already exist!"

Write-Host "${debug_info} Configuring CMake build folder..."
iex $second_command | Out-Null
Write-Host "${debug_info} Configured!"

Write-Host "${debug_info} Compiling SDL3..."
iex $third_command | Out-Null
Write-Host "${debug_info} Compiled!"

Write-Host "${debug_info} Copying SDL3.dll to root..."
iex $forth_command | Out-Null
Write-Host "${debug_info} Copied!"
