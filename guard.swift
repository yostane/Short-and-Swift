func doSomething(condition: Bool){
    guard condition else {
        print("Nothing to do")
        return
    }
    print("Doing stuff")
}

func doSomething(param: String?, condition: Bool){
    guard let param = param, condition && param == "hello" else {
        print("null param or false condition or param not hello")
        return
    }

    print("not null \(param)")
}

doSomething(param: nil, condition: false)
doSomething(param: "hello", condition: true)
doSomething(param: "world", condition: true)