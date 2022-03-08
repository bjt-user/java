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
and press `<enter>` the snippet will be placed.
