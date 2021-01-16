func openResource() -> Bool { false }
func closeResource() { print("Closed") }

func doSomething(){
    defer {
        closeResource()
    }
    guard openResource() else{
        print("Failed")
        return
    }
    print("finished")
}

//doSomething()

func callBlock(block: () -> Void){
    block()
}

callBlock {
    defer {
        print("Finished bloc")
    }
    print("start block")
    print("end of block")
}
