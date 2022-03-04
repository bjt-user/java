On the command line I have the problem, that I cannot `<tab>`-complete the `java`-command.\
`java he<tab>` will **not** complete to `java helloworld.java`

There is the `complete -p` command, but the output does not help.

```
$ complete -p java
complete -F _java java
```

#### Solution
Put this in your .bashrc or .bash_profile:
```
complete -o default java
```
