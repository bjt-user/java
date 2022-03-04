The class name should be the same as the file name.\
Create a file named `hw.java`.

Put this code in it:
```
public class hw {
	public static void main(String[] args) {
		System.out.print("hello world");
	}
}
```

And this works in `eclipse` but not on the command line when calling it like this:
```
java hw.java
```
```
Error: Could not find or load main class hw.java
```
=> seems to be a general problem as all my java programs don't work anymore.
```
$ java -version
java version "1.8.0_101"
Java(TM) SE Runtime Environment (build 1.8.0_101-b13)
Java HotSpot(TM) 64-Bit Server VM (build 25.101-b13, mixed mode)
```
