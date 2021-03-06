### Installation On Linux

There is a link on `java.com` where you can download a `.tar` file,\
but I could not find a way to download that file with `wget` or `curl`.\
The link does not end with the filename.

Let's try this website: `https://www.oracle.com/java/technologies/downloads/`\
`https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.tar.gz`

```
wget https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.tar.gz
```
```
tar -xvzf jdk-17_linux-x64_bin.tar.gz
```

#### Setting Environment Variables

Go into the untarred jdk folder.\
Go into the `bin` folder and type `pwd`.\
The path to the `bin` folder might look something like this:
```
/home/myuser/opt/java/jdk-17.0.2/bin
```
Now execute this line of code and put it into .bashrc or .bashprofile later:
```
export PATH=$PATH:/home/myuser/opt/java/jdk-17.0.2/bin
```
Check your path with `echo $PATH`.

But the problem is, that when we type `java` or `which java`,\
the old java installation is still being used.

Then I did:
```
export JAVA_HOME=/home/myuser/opt/java/jdk-17.0.2
```

But it doesn't work, `which java` still shows the old version.

So I try to remove the old java installatino from the path by putting this into `~/.bash_profile`.\
(first I do `echo $PATH` to view what I have to add again after unsetting the path)
```
unset PATH
export PATH=/home/someuser/opt/jdk-17.0.2/bin:$PATH
export PATH=$PATH:/somefolder/tools/scripts:/somefolder/tools/sometool-2.05.1/bin:/somefolder/tools/apache-ant-1.9.6/bin:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin
```

And now it works, `which java` shows the right folder and `java version` the right version.\
Compiling a hello world java file with `java hw.java` also works.

There is another way to change the environment variables closer to the root of the system.\
The environment variables on Debian were in this file:
```
sudo vim /etc/profile
```
=> but you have to reboot the computer so that changing environment variables here takes effect\
(just opening a new shell is not enough)

#### when java and javac versions don't work with eachother

I still have the problem that the version of `java` and `javac` are different, and there is an error.
```
HelloWorld has been compiled by a more recent version of the Java Runtime (class file version 61.0), this version of the Java Runtime only recognizes class file versions up to 55.0
```
```
$ java -version
openjdk version "11.0.14" 2022-01-18
OpenJDK Runtime Environment (build 11.0.14+9-post-Debian-1deb11u1)
OpenJDK 64-Bit Server VM (build 11.0.14+9-post-Debian-1deb11u1, mixed mode, sharing)

$ javac -version
javac 17.0.2

$ javap -version
17.0.2
```

The solution was to put the path to the `jdk bin` folder **infront** of the other environment variables.\
So that the `java` version that is installed by default in the system\
(and is in some `bin` directory) comes later.\
```
export PATH=/home/someuser/opt/jdk-17.0.2/bin:$PATH
```
