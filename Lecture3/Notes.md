
# Lecture 3

## Protocols
- sort of a 'stripped-down' struct/class
- it has functions and vars, but *no implementation*
```
protocol Moveable {
    func move(by: Int)
    var hasMoved: Bool { get }
    var distanceFromStart: Int { get, set }
}
```
- So it only specifies variables, methods etc that the thing following this protocol should have implemented. The `{ }` on the vars are not computed properties, but specification of whether a variable is read-only, or is able to have its value set as well.
- Any type can claim to implement the Moveable protocol - therefore has to implement all of the vars and methods specified in the protocol
- Protocol can also inherit from another protocol, meaning it can inherit all properties and methods from the protocol it inherits from

- Protocol is a type - variables can be of type Moveable

### Protocol extension
- Adding protocol implementation - you can add implementations to a protocol using an extension to the protocol
```
extension Vehicle {
    func registerWithDmv() { /* implementation here */ }
}
```
- Now all classes structs extended by the vehicle extension can be registered with the DMV through the already implemented method thanks to the extension
- Adding extensions to protocols is at the heart of functional programming in Swift. The protocol `View` is the worlds greatest example of this

