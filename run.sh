#!/bin/bash

run_by_system_for_golang() {
    cd go
    local os=""
    local arch=""
    local ext=".bin"

    case "$(uname -s)" in
        Linux) os="linux" ;;
        Darwin) os="mac" ;;
        Android) os="android" ;;
        CYGWIN*|MINGW*|MSYS*|Windows_NT) 
            os="windows"
            ext=".exe"
            ;;
        *) 
            echo "Unsupported operating system"
            exit 1
            ;;
    esac

    case "$(uname -m)" in
        x86_64) arch="amd64" ;;  # 64-bit Intel/AMD
        arm64|aarch64) arch="arm64" ;;  # 64-bit ARM
        armv7) arch="arm" ;;  # ARMv7
        *) 
            echo "Unsupported architecture"
            exit 1
            ;;
    esac

    local file="my_go_project_${os}_${arch}${ext}"

    if [ -f "$file" ]; then
        ./$file
    else
        echo "File $file not found. Please compile the project first."
        exit 1
    fi
    cd ..
}

echo "Python: "
time python python/main.py
echo "Java:"
time java -cp java/bin Main
echo "TypeScript:"
time bun run ts/index.ts
echo "JavaScript:"
time bun run js/index.js
echo "Go/Golang:"
time run_by_system_for_golang
echo "Ruby:"
time ruby ruby/main.rb