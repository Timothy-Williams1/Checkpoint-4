import Cocoa

enum UserNumber: Error {
    case tooHigh
    case tooLow
    case noRoot
}

func findSquareRoot(number: Int) throws -> Int {
    if (number < 1) {
        throw UserNumber.tooLow
    } else if (number > 10_000) {
        throw UserNumber.tooHigh
    }
    
    for i in 1...100 {
        if (i * i == number){
            return i
        }
    }
    
    throw UserNumber.noRoot
}

do {
    let response = try findSquareRoot(number: 4)
    print("The square root is \(response)")
} catch {
    print("There was an error")
}
