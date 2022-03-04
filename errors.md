```
error: can't find main(String[]) method in class
```

The cause was:\
I forgot to put `String[] args` as an argument for the main method.\
The main method has to look like this in java:
```
public static void main(String[] args) {
	System.out.print("hello world");
}
```
