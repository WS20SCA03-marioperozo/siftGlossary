//  ViewController.swift
//  siftGlossary
//
//  Created by Mario Perozo on 4/26/20.
//  Copyright © 2020 Mario Perozo. All rights reserved.
//

import UIKit

struct Concept {
    let title: String;
    let definition: String;
    let image: String;
    
}


class ViewController: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var conceptPicture: UIImageView!
    @IBOutlet weak var definitionLabel: UILabel!
    
    var index = 0
    
    let concepts: [Concept] = [
        Concept(title: "Function",                    definition: "\tA function is one of the fundamental ways to create an abstraction in code. \n\tFunctions are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to call the function to perform its task when needed. \n\tA function is made up of three things: its name, an optional list of parameters, and an optional return type. \n\tA function in Swift can take zero, one, or multiple parameters, but it can also return zero, one, or multiple values. When a function does return a value, you have the option to ignore it."              ,       image:"function"),
        
        Concept(title: "Parameter",                   definition: "\tWhen you define a function, you can optionally define one or more named, typed values that the function takes as input, known as parameters. You can also optionally define a type of value that the function will pass back as output when it is done, known as its return type. \n\tThe term parameter is often used to refer to the variable as found in the function definition, while argument refers to the actual input passed when the fucntion is called."              ,       image:"parameter"),
        
        Concept(title: "Parameter Name",              definition:   "The parameter name is used in the implementation of the function. By default, parameters use their parameter name as their argument label. You can write a custom argument label before the parameter name, or write _ to use no argument label. \n\tIf you don’t want an argument label for a parameter, write an underscore (_) instead of an explicit argument label for that parameter. If a parameter has an argument label, the argument must be labeled when you call the function."            ,       image:"parametername"),
        
        Concept(title: "Argument",                    definition:   "Arguments are the actual input for the function. The term parameter is often used to refer to the variable as found in the function definition, while argument refers to the actual input passed. By default, functions use their parameter names as labels for their arguments."            ,       image:"argument"),
        
        Concept(title: "Argument Labels",             definition:   "When a parameter has an argument label, you use the argument label instead of the parameter name when calling that function. \n\tThe difference is important, because using argument labels is fairly common in practical iOS development. Many Cocoa Touch SDKs use argument labels to make functions more descriptive. \n\tYou use the argument label when calling the function. It’s an extra description for the function’s arguments. Within the function, you just use the shorter parameter name."            ,       image:"argumentlabel"),
        
        Concept(title: "Default Parameter Values",    definition:   "You can define a default value for any parameter in a function by assigning a value to the parameter after that parameter’s type. \n\tIf a default value is defined, you can omit that parameter when calling the function. Place parameters that don’t have default values at the beginning of a function’s parameter list, before the parameters that have default values. \n\tParameters that don’t have default values are usually more important to the function’s meaning—writing them first makes it easier to recognize that the same function is being called, regardless of whether any default parameters are omitted."            ,       image:"defaultvalue"),
        
        Concept(title: "Structures",                  definition:    "Structures and classes are general-purpose, flexible constructs that become the building blocks of your program’s code. You define properties and methods to add functionality to your structures and classes using the same syntax you use to define constants, variables, and functions. \n\tAn instance of a class is traditionally known as an object. However, Swift structures and classes are much closer in functionality than in other languages, and most functionality applies to instances of either a class or a structure type. Because of this, the more general term instance is used."           ,       image:"struct"),
        
        Concept(title: "Property",                    definition: "A property is a variable inside a Struct or a Class. \n\tProperties associate values with a particular class, structure, or enumeration. Stored properties store constant and variable values as part of an instance, whereas computed properties calculate (rather than store) a value. \n\tComputed properties are provided by classes, structures, and enumerations. Stored properties are provided only by classes and structures. \n\tStored and computed properties are usually associated with instances of a particular type. However, properties can also be associated with the type itself. Such properties are known as type properties. \n\tIn addition, you can define property observers to monitor changes in a property’s value, which you can respond to with custom actions. Property observers can be added to stored properties you define yourself, and also to properties that a subclass inherits from its superclass."                                              ,       image:"property"),
        
        Concept(title: "Method",                      definition: "A method is a function inside a Struct or a Class. \n\tMethods are functions that are associated with a particular type. Classes, structures, and enumerations can all define instance methods, which encapsulate specific tasks and functionality for working with an instance of a given type. \n\tClasses, structures, and enumerations can also define type methods, which are associated with the type itself. In Swift, you can choose whether to define a class, structure, or enumeration, and still have the flexibility to define methods on the type you create."              ,       image:"method"),
        
        Concept(title: "Intances",                    definition:            "The Resolution structure definition and the VideoMode class definition above only describe what a Resolution or VideoMode will look like. They themselves don’t describe a specific resolution or video mode. To do that, you need to create an instance of the structure or class. \n\tStructures and classes both use initializer syntax for new instances. The simplest form of initializer syntax uses the type name of the class or structure followed by empty parentheses, such as Resolution() or VideoMode(). This creates a new instance of the class or structure, with any properties initialized to their default values."   ,       image:"instance"),
        
        Concept(title: "Initializers",                definition:            "Initialization is the process of preparing an instance of a class, structure, or enumeration for use. This process involves setting an initial value for each stored property on that instance and performing any other setup or initialization that is required before the new instance is ready for use. \n\tYou implement this initialization process by defining initializers, which are like special methods that can be called to create a new instance of a particular type. \n\tInitializers are called to create a new instance of a particular type. In its simplest form, an initializer is like an instance method with no parameters, written using the init keyword. \n\tThe example above defines a new structure called Fahrenheit to store temperatures expressed in the Fahrenheit scale. The Fahrenheit structure has one stored property, temperature, which is of type Double. \n\tThe structure defines a single initializer, init, with no parameters, which initializes the stored temperature with a value of 32.0 (the freezing point of water in degrees Fahrenheit)."   ,       image:"init"),
        
        Concept(title: "Default Property Values",              definition:            "You can specify a default property value as part of the property’s declaration. You specify a default property value by assigning an initial value to the property when it is defined. \n\tYou can write the Fahrenheit structure from before in a simpler form by providing a default value for its temperature property at the point that the property is declared. \n\tIf a property always takes the same initial value, provide a default value rather than setting a value within an initializer. The end result is the same, but the default value ties the property’s initialization more closely to its declaration. \n\tIt makes for shorter, clearer initializers and enables you to infer the type of the property from its default value. The default value also makes it easier for you to take advantage of default initializers and initializer inheritance, as described later in this chapter."   ,       image:"defaultvalues"),
        
        Concept(title: "Stored Properties",              definition:            "In its simplest form, a stored property is a constant or variable that is stored as part of an instance of a particular class or structure. Stored properties can be either variable stored properties (introduced by the var keyword) or constant stored properties (introduced by the let keyword). \n\tYou can provide a default value for a stored property as part of its definition (Default Property Values). You can also set and modify the initial value for a stored property during initialization. This is true even for constant stored properties (Assigning Constant Properties During Initialization). \n\tThe example above defines a structure called FixedLengthRange, which describes a range of integers whose range length cannot be changed after it is created. \n\tInstances of FixedLengthRange have a variable stored property called firstValue and a constant stored property called length. In the example above, length is initialized when the new range is created and cannot be changed thereafter, because it is a constant property."   ,       image:"storedproperties"),
        
        
        Concept(title: "Memberwise Initializers",     definition:            "As a side effect of creating the new data type, you automatically create a function called the memberwise initializer. This function has the same name as the data type (Person). The number of arguments of the memberwise initializer is the same as the number of stored properties in the data type. Each argument label is the same as the name of the corresponding stored property."   ,       image:"memberwise"),
        
        Concept(title: "Custom Initializers",         definition:            "You can provide initialization parameters as part of an initializer’s definition, to define the types and names of values that customize the initialization process. Initialization parameters have the same capabilities and syntax as function and method parameters. \n\tThe example above defines a structure called Celsius, which stores temperatures expressed in degrees Celsius. The Celsius structure implements two custom initializers called init(fromFahrenheit:) and init(fromKelvin:), which initialize a new instance of the structure with a value from a different temperature scale. \n\tThe first initializer has a single initialization parameter with an argument label of fromFahrenheit and a parameter name of fahrenheit. The second initializer has a single initialization parameter with an argument label of fromKelvin and a parameter name of kelvin. Both initializers convert their single argument into the corresponding Celsius value and store this value in a property called temperatureInCelsius."   ,       image:"custominit")
        
//        Concept(title: "Intance Methods",             definition:            ""   ,       image:""),
        
//        Concept(title: "Mutating Methods",           definition:            ""   ,       image:"")
    ];


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
        
        
    }
    @IBAction func swipeRight(_ sender: UISwipeGestureRecognizer) {
        if index > 0 {
            index -= 1;
        } else if index == 0 {
            index = concepts.count - 1
        }
        updateUI()
    }
    
    
    @IBAction func swipeLeft(_ sender: UISwipeGestureRecognizer) {
        index += 1
        if index >= concepts.count {
            index = 0;
        }
        updateUI()
    }
    
    func updateUI() {
        conceptPicture.image = UIImage(named: concepts[index].image);
        titleLabel.text = (concepts[index].title);
        definitionLabel.text = (concepts[index].definition);
    }
    
}

