class Calculator<T: AdditiveArithmetic> {
    func add(lhs: T, rhs: T) -> T {
        return lhs + rhs
    }
}


let calc = Calculator<Int>()
print(calc.add(lhs: 10, rhs: 5))

protocol CalculatorProtocol {
    associatedtype T: AdditiveArithmetic
    func add(lhs: T, rhs: T) -> T
}

struct IntCalculator {
    func add(lhs: Int, rhs: Int) -> Int{
        return lhs + rhs
    }
}

let intCalc = IntCalculator()
print(intCalc.add(lhs: 20, rhs: 7))