
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


``` 
protocol Moveable {
    func move(by: Int)
    var hasMoved: Bool { get }
    var distanceFromStart: Int { get, set }
}

extension Moveable {
    var hasMoved: Bool { return distanceFromStart > 0 }
}

struct ChessPiece: Moveable {
    // only need to implement move(by:) and distanceFromStart here
    // don't have to implement hasMoved because there's default implementation out there
    // would be allowed to implement hasMoved here if we wanted to, though
}
```

### Adding code to struct or class via an extension
- Of course, you can use an extension to add things to structs and classes too
```
struct Boat {
    ...
}

extension Boat {
    func sailAroundTheWorld() { /* implementation */ }
}
```
- You can even make something conform to a protocol purely via an extension
- If the `Boat` extension conformed to `Moveable` protocol, the `Boat` struct would have to conform to the protocol as well

### Why protocols?
- It is a way for types (structs/classes/other protocols) to say *what they are capable of*. Also for other code to *demand certain behavior* out of another type. 
- Neither side has to reveal what sort of struct or class they are
- This is what functional programming is all about - formalizing how data strucutres in our application function. Even when we talk about vars in the context of protocols, we don't define how they're stored. We focus on the functionality and hide the implementation details behind it. It's the promise of encapsulation from OOP but taken to a higher level.


## Layout

### How is the space on-screen apportioned to the View?
1. Container  Views offer space to the Views insede them
2. Views then choose what size they want to be
3. Container Views then position the Views inside of them

### Container Views
- For example HStack and VStack - these divide up the space offered to them amongs their subviews
- ForEach defers to its container to lay out the Views inside of it
- Modifies (.padding(), ...) essentially contain the View they modify. Some do layout.



