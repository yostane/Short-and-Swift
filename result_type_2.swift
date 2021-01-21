enum CustomError: Error {
    case invalidParameter(name: String)
    case nilParameter
}

func doSometing(thatThrows: Bool?) -> Result<String, CustomError> {
    guard let thatThrows = thatThrows else {
        return .failure(.nilParameter)
    }

    guard thatThrows == false else {
        return .failure(.invalidParameter("thatThrows"))
    }

    return .success("SUCCESS")
}

func runMain(){
    let message = doSometing(thatThrows: false)
    print(message)
    if case .success(let val) = message{
        print(val)
    }
}