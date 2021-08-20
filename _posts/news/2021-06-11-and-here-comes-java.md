---
layout: postlog
title: "And Here Come's Java"
subtitle: "La Javanaise • Serge Gainsbourg • 1963"
urlsong: https://www.lyrics.com/lyric/3543905/Serge+Gainsbourg
tag: Java
date: 2021-06-11
categories: blog
permalink: /:categories/:year/:month/:day/:title.html
---  
This week, it's ... Java. So, Go head!   
Although this first day was quiet, the foundations of this language are laid! 
Object Oriented − In Java, everything is an Object:  
- portable, statically typed, object-oriented programming language
- developed by Sun in the mid 1990s
- useful for  web pages and mobile apps or  for the needs scalability, performance, multithreading, memory management and portability
- From C and C++

Here, I found help in my Java path:  
[Java Tutorial (English)](https://www.tutorialspoint.com/java/index.htm)   
[Achref El Mouelhi (French)](http://www.lsis.org/elmouelhia/teaching.html)

Major Building blocks
- **Keywords** : predefined words of the Java language
- **Variables** : to store data
- **Loops**: to iterate over data structures
- **Methods** : to write a block of code once that we can then re-use many times
- **Access Modifiers**: to restrict access to variables and methods
- **Javadoc** : JavaDoc produces a searchable HTML document that defines the classes and interfaces of an application
- **Arrays** : to easily and efficiently store and retrieve collections of data

### Java Keyword

- Keywords are simply words that have a predefined meaning in the Java language.
- used for some internal process or represent some predefined actions.
- these words already have a meaning in Java, so they are reserved.
- not allowed to use as a variable names or objects.

### Variables

- A **variable** is a combination of:
    - A *location* in the computer's memory and
    - An associated *name* that we can use in our code to refer to the data in that memory location
- Static Typing
    - The data type is attached to the variable when it is first declared
    - The data type is checked when the code is compiled
    - The data type for a variable cannot later be changed
    - `;` : end of the statement
- Primitive vs Reference
    - **primitive** : a value, by itself   `type name = value;` lowercase
        `char name = 'value' ;` !!!! simple quote
    - **reference value** : refers to an object stored in another location in memory, with data object `Type name = value;` uppercase
        - `String name = "few words"  ;` !!!! double quote
        - Types are String or Array, methods attached to accss and manipulate the data they contain `text.length();`, can be customized
        - user-defined classes
- Type Casting
    - change type in another type
        - **Automatic** : converts a smaller type into a larger type
            ```sql
            int intNumber = 3;
            double doubleNumber = intNumber;
            ```
        - **Manuel** : Convert a larger type into a smaller type, Convert one object type into another.
            ```sql
            double doubleNumber = 3.5;
            int intNumber = (int)doubleNumber;
            ```
        - Truncation : loss precision

### Methods
- block of code to re-use
- **calling** or **invoking** the method
- Syntax : Name, Parameters, Method body, Return type
- Methods vs Functions:
    - A function is any block of reusable/callable code
    - A method is a block of reusable/callable code **that is attached to a class or object**
	```sql
	public class MethodExercise{
		public static void main(String[] args) {
		    System.out.println("The Sum is:" + MethodExercise.addNumbers(7,7));
		}

		//Add your function here:
		public static int addNumbers(int num1, int num2){
				return num1 + num2;
		}
	```
- Stack vs Heap
    - two different memory regions
        - **Stack** used to store primitives and object references   //pile
            - Items  get added and removed as a given method executes
            - can only be accessed by the related method
            - removed from the stack in a Last-In-First-Out (LIFO) order:  last element added to the stack is the first that gets popped off the stack
        - **Heap** is used to store the objects themselves             //paquet
            - objects stay until the application is done or no object references using them
            - accessible from anywhere in the program
    - determine how other classes are allowed to access your variables and methods.

### Access Modifiers

- restrict access to certain data in the application in order to ensure it doesn't get modified
- Access modifiers determine how other classes are allowed to access your variables and methods.
- Type of Access Modifiers:
    - **Public :** the class can be accessed from everywhere.  expose a method to all other classes.
    - **Private :** only the defining class can access the data. This provides security, by not allowing other classes to change the data directly. changes the data via the provided methods only.
    - **Protected** means that access is restricted to the defining class, package, or subclass. useful with subclasses and inheritance. allow subclasses to use variables and methods from the parent class.
    - **Default** means access is restricted to the defining class or the package. used when classes inside the same package that we may want to expose data and methods too.

        Access Modifiers on Methods  
            `private void methodName()`   
            `void methodName() // The default is no access modifier`

        Access Modifiers on Variables  
            `private int number;`  
            `int number3; // Default is no access modifier`

### Array
- fixed-sized data structure =⇒ on ne plus rajouter d'element. seulement modifier
- to store multiple values same value
- array element be accessed by array index
- `int [] numbers = {1, 2, 3, 4};` create an array
- `int variable  =numbers[1]` access te array
- Create  array
	```sql
	int [] numbers =newint[4]; // init array, empty
	numbers[0] = 1; // assign values
	numbers[1] = 2;
	numbers[2] = 3;
	numbers[3] = 4;
	```
- Loop over array 
### Loops
Components of a loop: Initialization, condition, execution body, increment or decrement
#### while Loop: continuously executes as long as a given condition is True.
	```sql
	while(condition){
	    Execution block
	}
	```
#### for Loop: iterates over the execution blocked until condition is met
	```sql
	for(initialization; condition; increment or decrement){
	    Execution block
	}
	```
#### do while Loop: runs the wxeption block first the evluates the condition to determine if it shoulld continue to iterate
	```sql
	do {
	 Execution block
	} while(condition);
	```
Even if the condition is false right from the start, the code inside the loop will still get run once.
