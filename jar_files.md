To compile and execute a java project with a `.jar` file as a library you should try
```
javac -cp lib.jar Hello.java
java -cp lib.jar Hello
```
Note that the `.jar` needs to be in the same directory as the Hello.java file otherwise you would need a slightly different command.
