#!/bin/bash

# Function to compile the Go project for multiple OS and architectures
compile_go_project() {
    # Declare all OS and architecture combinations
    declare -a os_list=("linux" "darwin" "windows")
    declare -a arch_list=("amd64" "386" "arm64" "arm" "mips" "ppc64le" "s390x" "riscv64")

    # Iterate over OS and architecture combinations
    for os in "${os_list[@]}"; do
        for arch in "${arch_list[@]}"; do
            # Set the extension for Windows
            if [ "$os" == "windows" ]; then
                ext=".exe"
            else
                ext=".bin"  # Default extension for non-Windows
            fi

            # Build the filename
            local file="my_go_project_${os}_${arch}${ext}"

            echo "Compiling for $os $arch..."

            # Set GOOS and GOARCH environment variables and run the Go build command
            GOOS=$os GOARCH=$arch go build -o "$file"

            # Check if the compilation was successful
            if [ -f "$file" ]; then
                echo "Compilation successful. File created: $file"
            else
                echo "Compilation failed for $os $arch"
            fi
        done
    done
}

cd go
compile_go_project
