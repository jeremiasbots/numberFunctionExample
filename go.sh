cd go
GOOS=darwin GOARCH=amd64 go build -o my_go_project_darwin_amd64
GOOS=darwin GOARCH=arm64 go build -o my_go_project_darwin_arm64
GOOS=linux GOARCH=amd64 go build -o my_go_project_linux_amd64
GOOS=linux GOARCH=arm go build -o my_go_project_linux_arm
GOOS=linux GOARCH=arm64 go build -o my_go_project_linux_arm64
GOOS=windows GOARCH=amd64 go build -o my_go_project_windows_amd64.exe
GOOS=windows GOARCH=arm go build -o my_go_project_windows_arm.exe
GOOS=windows GOARCH=arm64 go build -o my_go_project_windows_arm64.exe