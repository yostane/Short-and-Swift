// swiftc -Xfrontend -enable-experimental-concurrency -sdk %sdkroot% async_await.swift empty.swift && ./main.exe
import _Concurrency

func f() async -> String {
    return await withUnsafeContinuation { c in
        print("test")
        c.resume(returning: "hello")
    }
}

@main struct Eat {
  static func main() async {
    print(await f())
  }
}
