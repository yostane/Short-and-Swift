# Short and Swift samples

This reppository contains the source code used in the [short and swift video series](https://www.youtube.com/watch?v=2CwybH2rWZ4&list=PLPuaqQB3lRflZysa-IPMArT0q_LTxXQ2z)

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

## VSCode

Install extension [Maintained Swift Development Environment](https://marketplace.visualstudio.com/items?itemName=vknabel.vscode-swift-development-environment)

Add these settings:

```json
{
    "sde.languageServerMode": "sourcekit-lsp",
    "sourcekit-lsp.serverPath": "C:\\Library\\Developer\\Toolchains\\unknown-Asserts-development.xctoolchain\\usr\\bin\\sourcekit-lsp.exe",
    "swift.path.shell": "C:\\WINDOWS\\system32\\cmd.exe",
        "sde.swiftBuildingParams": [
        "build",
        "-Xswiftc",
        "-Xfrontend",
        "-Xswiftc",
        "-enable-experimental-concurrency",
        "-Xswiftc",
        "-sdk",
        "-Xswiftc",
        "%sdkroot%"
    ],
}
```

