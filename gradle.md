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

#### Gradle Tasks

gradle tasks are individual build action that you can run from the command line.

#### Fails

I tried creating a `Gradle Project` with `Eclipse` but it failed.\
File -> New -> Project -> Gradle Project -> ...\
Three hidden directories were created, but no folder structure for source and class files.\
Also no `gradle.build` file.


todo: follow tutorial after gradle installation
```
https://www.youtube.com/watch?v=-dtcEMLNmn0&ab_channel=TomGregoryTech
```
at around 9:30

It looks like with `gradle init` gradle asks you what kind of project you would like to set up.\
Then it will set up the directory structure.

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
