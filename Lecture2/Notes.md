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