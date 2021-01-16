# Short and Swift samples

This reppository contains the source code used in short and swift series

## How to run on windows

These scripts can also be run on windows terminal.

From the command line prompt: `swiftc -sdk %sdkroot% [filename].swift -o app.exe && app.exe`

From powershell: `swiftc -sdk $env:sdkroot [filename].swift -o app.exe && ./app.exe`

Cleanup: `del [filename].exe [filename].exp [filename].lib`

### Legagcy way of building

```bat
set SDKROOT=%SystemDrive%/Library/Developer/Platforms/Windows.platform/Developer/SDKs/Windows.sdk
set SWIFTFLAGS=-sdk %SDKROOT% -I %SDKROOT%/usr/lib/swift -L %SDKROOT%/usr/lib/swift/windows
swiftc -o bin/guard.exe guard.swift %SWIFTFLAGS%
```