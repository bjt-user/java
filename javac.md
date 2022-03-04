Executing java programs with `java filename` is slow.

You can compile the `.java` file to a `.class` file like this:
```
javac helloworld.java
```

Now there is a `helloworld.class` file in your folder.

You can execute that file by typing:
```
java helloworld
```
Hint: **Don't** type the `.class` extension as it will create an error.


#### Bytecode and .class files

That `.class` file that we generated with `javac` contains bytecode.\
But you cannot just read that with `vim` or `cat`.\
But you can get information with commands like:
```
javap -p helloworld.class
```
```
javap -v helloworld.class
```

This seems to print the bytecode:
```
javap -c helloworld.class
```

from `man javap`:
```
-c     Prints disassembled code, for example, the instructions that comprise the Java bytecodes, for each of the methods in the class.
```
