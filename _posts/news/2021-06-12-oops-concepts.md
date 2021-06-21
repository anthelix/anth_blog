---
layout: postlog
title: "OOP concepts"
subtitle: "test"
subtitle: " •  • "
urlsong: 
tag: Java
date: 2021-06-12
categories: blog
permalink: /:categories/:year/:month/:day/:title.html
---
Well.   
Introduction to the Object-oriented programming (OOP)! This is a topic that could take a whole week. In the programming history, we have 4 generations: Binary Programming, Assembly Language, Procedural Programming then OOP. Everything is an object with Java and java supports the following concepts: Polymorphism, Inheritance, Encapsulation, Abstraction, Classes, Objects, Instance, Method, Message Passing.  


**object** is create from the class. Inside class, **attributs** and **methods**.  It's an instance of a class. Objects have states and behaviors.  
- The object-to-object communication is done via methods.  
- Object's state is stored in fields
- Behavior is shown via methods 
- 3 ways to initialize object:
  - By reference variable: 's1.name="Sonoo";'
  - By method: 's1.insertRecord(111,"Karan");'
  - By constructor
**class** can be compare to a template or blueprint( I love this word), It's a collection of objects. 
Can contains 
- Local variables: Variables defined inside methods, constructors or Local variables. 
- Instance variables: variables within a class but outside a method, initilized when the claas is instantiated, can be accessed from inside any method, constructor of that particular class.
**Inheritance** when one object acquires all the properties and behavior of a parent object, provide code reusability.  
**Polymorphism** if one task is performed in different ways. Java uses method overloading and method overriding.
**Abstraction** hiding internal details and showing functionnality. Java uses abstract class and interface.
**Encapsulation** wrapping code and data together into a single unit, like java class

Other concepts:
- **coupling** information or dependency of another class. Java uses private, protected and public modifiers to display the visibilty level.
- **cohesion** level of a componemt which performs a single well-defined task. 
- **association** represents relationship between objects. 
- **aggregation** a way to achieve Association. It represents the weak relationship between objects.
- **composition** a way to achieve Association. There is a strong relationship between the containing object and the dependent object.
- **constructor**: to construct a new object. every class have one or more  constructor
		```java
			public class Puppy {
			int puppyAge;

			public Puppy(String name) {
				// This constructor has one parameter, name.
				System.out.println("Name chosen is :" + name );
			}

			public void setAge( int age ) {
				puppyAge = age;
			}

			public int getAge( ) {
				System.out.println("Puppy's age is :" + puppyAge );
				return puppyAge;
			}

			public static void main(String []args) {
				/* Object creation */
				Puppy myPuppy = new Puppy( "tommy" );

				/* Call class method to set puppy's age */
				myPuppy.setAge( 2 );

				/* Call another class method to get puppy's age */
				myPuppy.getAge( );

				/* You can access instance variable as follows as well */
				System.out.println("Variable Value :" + myPuppy.puppyAge );
			}
		```


Definition : `public class NameClass{ attributs; methods }`
- Instance Variable: inside class, outside methods. It gets memory when an object or instance is created.
- Method: like a function which is used to expose the behavior of an object: Reusablity and Optimization
- the keyword **new** : used to allocate memory at runtime
  
		```java
		/* First create an object */
		ObjectReference = new Constructor();

		/* Now call a variable as follows */
		ObjectReference.variableName;

		/* Now you can call a class method as follows */
		ObjectReference.MethodName();

		```


Methods tips:
- block of code to re-use
- **calling** or **invoking** the method
- Syntax : Name, Parameters, Method body, Return type
- Methods vs Functions:
    - A function is any block of reusable/callable code
    - A method is a block of reusable/callable code **that is attached to a class or object**
