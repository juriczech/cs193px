# MVVM
- code organizing design paradigm
- works very well with the reactive user interfaces
- it is needed for SwiftUI. With UIKit, more popular choice was the MVC design pattern
- Has a lot in common with MVC in that we're trying to separate the Model from the View.

## Model
- UI independent. Works with data and the logic
- "the truth"

## View
- Reflects the model. Data is always flowing from the model to the view.
- Pretty much stateless. The state should be in the model.
- Is declarative - we declare how the view should look like and it's going to adopt that
- Reactive - when the model changes, the view will change automatically - will react to the change

## View Model
- Binds the view to the model
- Its job is to interpret the model to the view
- It always tries to notice the changes in the model - then it might interpret/format that data - then publishes changes to the view which then updates


**Note:** When we want to update the data from the user (for example upon button click etc.), we call "intent" function from the view the the view model which then modifies the model  which again alerts the view model about these changes and then the view will get updated.

![MVVM simplified](./MVVM.png)

## Types 
Some of the types we will be seeing a lot:
- structs
- classes
- "don't care types" aka generics
- functions

### Structs and classes
- Similarities
    - stored vars
    - computed vars
    - constant lets
    - functions
    - initializers (special functions that are called when a struct or class is created)
- Differences
    - struct is stored by value / class is stored by reference
    - struct is copied when passed or assigned / class is passed around via pointers
    - copy on write (it's not copying straight away when you pass it around, only when you try to write to the struct) / automatically reference counted (counting the references and how many pointers are pointing to that class and when there are no pointers left, it gets removed)
    - structs exploit functional programming / classes are object-oriented
    - structs have no inheritence / classes have single inheritence
    - "free" `init` initializes ALL vars / "free" `init` initializes NO vars (with classes, you almost always have your own `init`)
    - with structs, mutability must be explicitly stated (`var`) / classes are always mutable
    - structs are 'go to' data structure / classes are used in specific circumstances
    
![Structs and classes differences](./StructsClasses.png)    
    
### Generics
- sometimes we just don't  care about the type. They are called type parameters.
```
struct Array<Element> {
    func append(_ element: Element) {...}
}
```

- This is how an array might be implemented. The appends function argument is `Element`. A don't care type. Array's implementation of append konw nothing about that argument and it does not care. Element is not any known struct or class or protocol, it's just a placeholder for a type.
- When someone uses Array, that's when `Element` gets determined. (by `Array<Int>`)

### Functions as types
- Examples of functions as types
```
    var a: (Int, Int) -> Bool // Takes two `Int`s and returns `Bool`
    var b: (Double) -> Void // Takes `Double` and returns nothing
    var c: (Int) -> Int // Takes `Int` and returns `Int`
    var d: () -> Void // Takes no parameters and returns nothing
```

- Example of passing function as a value
``` 
var operation: (Double) -> Double
func square(operand: Double) -> Double {
    return operand * operand
}

operation = square
let result = operation(4) // result equals to 16
```

### Closures
- common way to pass functions around is a way of "inlining" them. We call such an inlined function a "closure" and there's special language support for it. Will be covered in more depth later on.

