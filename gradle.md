Gradle is build tool for java like Maven and Ant.

According to wikipedia.org Gradle was released 2007 while Maven was release 2002 and Ant was released in 2000.

#### Installation

https://gradle.org/install/

According to a tutorial you can also use a gradle wrapper called `gradlew` instead of installing gradle.\
That wrapper will automatically download gradle and build the project.

fail with the most visible link on `gradle.org`:\
~~wget https://gradle.org/next-steps/?version=7.4.1&format=bin~~

this didn't work, need to get a link with the filename at the end

The correct link is hard to find (follow a link named `release candidate`):
```
wget https://services.gradle.org/distributions/gradle-7.4-rc-2-bin.zip
```

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
