TODO: why use maven? and how to use it both on command line and in eclipse?

`Apache Maven` downloads libraries, so you don't have to download a java library with a web browser,\
put it into some folder and set the `classpath` for compiling.\
(The `classpath` is the path where additional classes for you java application are located.\
The classpath should only be necessary if the classes are not in the same folder.) 

TODO: make a page for classpath and link to it

A `maven` project is configured in a file called `pom.xml`.\
In that file the libraries that need to be downloaded (`dependencies`) are referenced.

In a `maven` project you usually have a `src` and a `target` folder.\
The `src` fodler contains the `.java` files and the `target` folder contains the `.class` files that have been comiled.\
Inside the `src` is a `main` folder where your code is in and a `test` folder for `junit tests`.\
Inside the `main` and the `test` folder is another folder named `java` and inside that are the `.java` files.\
(pretty unnecessary but whatever)


#### installation (command line)

```
$ wget https://dlcdn.apache.org/maven/maven-3/3.8.4/binaries/apache-maven-3.8.4-bin.tar.gz
ERROR: cannot verify dlcdn.apache.org's certificate, issued by '/C=US/O=Let\'s Encrypt/CN=R3':
Issued certificate has expired.
To connect to dlcdn.apache.org insecurely, use `--no-check-certificate'.
```
