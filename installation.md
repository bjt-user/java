#### Installation On Linux

There is a link on `java.com` where you can download a `.tar` file,\
but I could not find a way to download that file with `wget` or `curl`.\
The link does not end with the filename.

Let's try this website: `https://www.oracle.com/java/technologies/downloads/`
`https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.tar.gz`

```
wget https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.tar.gz
```
```
tar -xvzf jdk-17_linux-x64_bin.tar.gz
```
