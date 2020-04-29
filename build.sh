VERSION=$(git describe 2>/dev/null || git rev-parse --short HEAD 2>/dev/null)
if [ $? -ne 0 ]; then
    VERSION="UNKNOWN"
fi

go build -ldflags "-X main.version=$VERSION"