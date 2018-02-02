# declare variables for file/executable names
asm_file=$1
executable_name=${asm_file%.*}
object_file="${executable_name}.o"

# assemble program
nasm -f elf $asm_file

# link object file and create executable
ld -m elf_i386 -s -o $executable_name $object_file
