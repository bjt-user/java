#### What is Apache Maven?

`Apache Maven` downloads libraries, so you don't have to download a java library with a web browser,\
put it into some folder and set the `classpath` for compiling.\
(The `classpath` is the path where additional classes for you java application are located.\
The classpath should only be necessary if the classes are not in the same folder.) \
So it is also a build tool.

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
(no idea what this is, but I used `--no-check-certificate` as workaround)
```
wget --no-check-certificate https://dlcdn.apache.org/maven/maven-3/3.8.4/binaries/apache-maven-3.8.4-bin.tar.gz
```
```
tar -xvzf apache-maven-3.8.4-bin.tar.gz
```

put this in your `$PATH` (change this to whereever you have untarred the package):\
[how to set environment variables and $PATH](https://gitlab.com/bjt-user/java/-/blob/main/installation.md#setting-environment-variables)
```
/home/myuser/opt/apache-maven-3.8.4/bin
```
now you can type
```
which mvn
```
or
```
mvn -version
```

#### create pom.xml

I did not find a way yet to create a pom.xml on the command line.\
It looks like you have to write that file manually...

#### Maven Project in Eclipse

File -> New -> Project -> type `maven` into the search field\
Select `Maven Project`. -> `Next`\
Tick `create simple project (skip archetype selection)` -> `Next`\
Now you have to enter a `group id` and `Artifact id`...\
The `Artifact ID` seems to be something like a project name, so I just use the Project name.\
`group id` I use the initials of my name or you could use your company name.\
`Finish`

And it created a skeleton for my project with a `src/main/java` directory structure.\
Looked fine at first sight but on the right bottom side of Eclipse there is never ending progress bar at 0% that says `creating project ...`.\
Maybe my Eclipse version is too new and not stable...
