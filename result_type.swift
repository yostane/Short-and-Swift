enum CustomError: Error {
    case invalidParameter
    case nilParameter
}

func doSometing(thatThrows: Bool?) -> Result<String, CustomError> {
    guard let thatThrows = thatThrows else {
        return .failure(.nilParameter)
    }

    guard thatThrows == false else {
        return .failure(.invalidParameter)
    }

    return .success("SUCCESS")
}

func runMain(){
    let message = doSometing(thatThrows: nil)
    print(message)
    switch message {
    case .failure(let error):
        print("error \(error)")
        break
    case .success(let value):
        print("success value: \(value)")
        break
    }
}

runMain()