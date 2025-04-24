
#
#  MIT No Attribution
#  Full text: https://opensource.org/licenses/MIT-0
#
#  Copyright 2025 Antônio Ivo da Silva Gomes
#

$cc = 'gcc'

$include_flags = '-ISDL/include'
$library_folder_path = '-Lvendor'
$library_flags = '-lSDL3'

$files = 'main.c'
$executable_name = 'a.exe'

$command = "$cc -o $executable_name $files $include_flags $library_folder_path $library_flags"
iex $command
