public protocol Foo {}

public struct Bar: Foo {}

// OK
/// @mockable
public protocol ControllerA {
    func method<F: Foo>(foo: F) -> Int
}

// NG
/// @mockable
public protocol ControllerB {
    func method(foo: some Foo) -> Int
}
