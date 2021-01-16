enum CustomError: Error {
    case invalidParameter
    case nilParameter
}

func doSometing(thatThrows: Bool?) throws -> String {
    guard let thatThrows = thatThrows else {
        throw CustomError.nilParameter
    }
    guard thatThrows == false else {
        throw CustomError.invalidParameter
    }
    return "SUCCESS"
}

func runMain(){
    do {
        let message = try doSometing(thatThrows: nil)
        print(message)
    } catch CustomError.invalidParameter {
        print("invalid param")
    } catch CustomError.nilParameter {
        print("nil param")
    } catch {
        print("Unexpected error")
    }
}

runMain()