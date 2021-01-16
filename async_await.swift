// swiftc -Xfrontend -enable-experimental-concurrency -sdk %sdkroot% async_await.swift empty.swift && ./main.exe

func f() async -> String { 
    async let message = "hello, asynchronously" 
    return await message
}

func run() {
    print("hello")
}

run()
