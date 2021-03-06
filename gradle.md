#### What is Gradle?

Gradle is a build tool for java like Maven and Ant.

According to wikipedia.org Gradle was released 2007 while Maven was release 2002 and Ant was released in 2000.

#### Installation

https://gradle.org/install/

According to a tutorial you can also use a gradle wrapper called `gradlew` instead of installing gradle.\
That wrapper will automatically download gradle and build the project.

fail with the most visible link on `gradle.org`:\
~~wget https://gradle.org/next-steps/?version=7.4.1&format=bin~~

this didn't work, need to get a link with the filename at the end

The correct link is hard to find (follow a link named `release candidate`):
```bash
wget https://services.gradle.org/distributions/gradle-7.4-rc-2-bin.zip
```

```
unzip gradle-7.4-rc-2-bin.zip
```

Put this in your .bashprofile:
```
export GRADLE_HOME=/home/myuser/opt/gradle-7.4-rc-2
export PATH=$PATH:/home/myuser/opt/gradle-7.4-rc-2/bin
```

Maybe you can also `git clone https://github.com/gradle/gradle` and then execute the `gradlew` wrapper script?!

#### Proxy

If you use a proxy where all your internet traffic has to go through,\
`Gradle` will not work without some adjustments.\
I put this in my `.bashprofile` and it worked (i can now do `./gradlew tasks`):
```
export JAVA_OPTS="-Dhttps.proxyPort=1234 -Dhttps.proxyHost=proxy.company.com"
```

#### Gradle Tasks

gradle tasks are individual build action that you can run from the command line.

#### Eclipse

I tried creating a `Gradle Project` with `Eclipse` but it failed.\
File -> New -> Project -> Gradle Project -> ...\
Three hidden directories were created, but no folder structure for source and class files.\
Also no `gradle.build` file.\
I can see that `Gradle` is installed in Eclipse under `help -> Eclipse Marketplace -> installed`

Now I went to `Window -> Preferences -> Gradle`\
Then I enabled `specific gradle version` and chose the latest version. (7.4.1)\
Now it seems to work.

But I don't have the folder structure that gradle wants and I can't create a new class by right-clicking the project\
because it is `not a java project`.

Setting the `gradle user home` in `window->preferences->gradle` didn't do anything.

I tried it again but now Eclipse creates two Projects, one with a `-lib` ending...this is not what I want...

Answer from stackoverflow.com:\
It seems to be a problem with newer Gradle versions, as indicated here:

https://stackoverflow.com/a/66857125

-> you could try it with gradle version 6.6


***
#### Tutorial

It looks like with `gradle init` gradle asks you what kind of project you would like to set up.\
Then it will set up some gradle files.\
(but not the directory structure `src/main/java/main.java` that is needed)

Choose `1` for `basic project`.
Choose `1` for `Groovy`.
`no` for `no new features`
and `<enter>` for the default application name (same as directory name)

But executing the gradlew wrapper failed:
```
$ ./gradlew tasks
Downloading from https://services.gradle.org/distributions/gradle-7.4-rc-2-bin.zip failed: timeout
```

https://riptutorial.com/gradle/example/17338/using-the-gradle-wrapper-behind-a-proxy

No matter what you do, gradle does only work with an internet connection.

It worked after setting the environment variable `JAVA_OPTS` for the proxy.

To build java projects you need to add the `java plugin` to your `build.gradle` file.

Put this in your `build.gradle`:
```
plugins {
    id 'java'
}
```
Then run `./gradlew tasks` again and there will be new tasks available.

Setup a `HelloWorld.java` file and type the following command to build the project:
```
./gradlew build
```
Now there is a folder named `build`.\
In `/build/libs` there is a `.jar` file with the project name.\
But I cant seem to execute it:
```
$ java -jar gradle-tutorial.jar
no main manifest attribute, in gradle-tutorial.jar
```
Java does not know which class to run.\
We need to add the main class manifest attribute.\
So I add a section to the `build.gradle` file:
``` Groovy
plugins {
    id 'java'
}

jar {
    manifest {
        attributes 'Main-Class': 'HelloWorld'
    }
}
```
Now I ran `./gradlew build` again.\
Went into `build/libs` and executed:
```
$ java -jar gradle-tutorial.jar
hello world
```
It worked.

But besides that `.jar` file there are no `.class` files.

The reason for this is probably because I didn't setup the folder structure that `gradle` expects.

```
mkdir -p src/main/java
mv HelloWorld.java src/main/java/.
```
I ran `./gradlew build` again and now there are two more folders in the `build` directory.\
The `build/generated` folder has only folders in it no files.\
`build/classes/java` contains the `.class` files.

But how do I run the project? There is no `./gradlew run`...

I specify the main class in my `build.gradle`:
```
plugins {
    id 'java'
}

jar {
    manifest {
        attributes 'Main-Class': 'HelloWorld'
    }
}

mainClassName = 'HelloWorld'
```
Error:
```
> Could not set unknown property 'mainClassName' for root project 'gradle-tutorial' of type org.gradle.api.Project.
```

I managed to run my project with this `build.gradle` config:
```
plugins {
    id 'java'
}

apply plugin: 'application'

jar {
    manifest {
        attributes 'Main-Class': 'HelloWorld'
    }
}

application {
    mainClass = 'HelloWorld'
}
```

Then you can do `gradle -q run` (where `-q` stands for quiet and doesn't show log messages)

At first there were warnings, because I used `mainClassName` instead of `mainClass`, but that is deprecated.

#### dependencies
To implement a library it looks like you can do it the following way:\
Go to https://mvnrepository.com and search for your lib.\
Click on the latest version of your lib, select `gradle` ribbon.\
Then copy that line into your `build.gradle` into the dependencies:
```
dependencies {
    implementation group: 'org.apache.camel', name: 'camel-core', version: '3.15.0'
}
```
But you also need to add a repository:
```
repositories {
    mavenCentral()
}
```

