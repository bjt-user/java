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
(first I do `echo $PATH` to view what I have to add)
```
unset PATH
export PATH=$PATH:/home/myuser/opt/java/jdk-17.0.2/bin
export PATH=$PATH:/somefolder/tools/scripts:/somefolder/tools/sometool-2.05.1/bin:/somefolder/tools/apache-ant-1.9.6/bin:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin
```
