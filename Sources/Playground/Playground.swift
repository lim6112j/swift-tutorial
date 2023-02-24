// weak reference example
class Employee {
    var name: String
    var salary: Int
    var colleague: Employee?
    //weak var colleague: Employee?
    // define initializer
    init(name: String, salary: Int) {
        self.name = name
        self.salary = salary
    }
    // define deinitializer
    deinit {
        print("Memory Deallocated")
    }
}

@main
public struct Playground {
    public private(set) var text = "Hello, World!"

    public static func main() {
        print(Playground().text)

        var sabby: Employee? = Employee(name: "Sabby", salary: 50000)
        var cathy: Employee? = Employee(name: "Cathy", salary: 45000)

        sabby?.colleague = cathy
        cathy?.colleague = sabby

        sabby = nil
        cathy = nil
    }
}
