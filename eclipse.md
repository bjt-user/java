#### code completion

Window -> Preferences -> Java -> Editor -> Content Assist\
Put all letters into this field, so that code completion activates after each letter typed:
```
Auto activation triggers for Java: .abcdefghijklmnopqrstuvwxyz
```

Next: Tick `disable insertion triggers except enter`\
(otherwise your code will be completed even though you don't want it)

Now you can start typing and you will get proposals by eclipse.\
You can choose one by hitting `<enter>`.


#### snippets

Snippets are called `templates` in Eclipse.\
Window -> Preferences -> Java -> Editor -> Templates\
Here are all the default snippets with their aliases, and you can add custom snippets.

For example there is the default snippet for `System.out.println()`.\
You can type `syso` and if you have the `auto activation triggers` set like shown [here](#code completion)\
then the autocompletion will trigger and propose `sysout` then press `<enter>` the snippet will be placed.


#### keyboard shortcuts

Window -> Preferences -> General -> Keys

You can sort by binding, command, or category or type in a search text to find specific key bindings.\
Select the desired row, click into `binding:` field and hit your desired key.

For example I set the `run` command to `<F5>`.\
(note that there are two run commands and one of them opens a menu)

When there are conflicts you can select a row and hit `unbind` button.

After your changes hit `Apply and close`.

#### terminal
to open a Windows (cmd) terminal:
```
ctrl + alt + t
```
