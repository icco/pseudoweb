--- 
wordpress_id: 195
layout: post
title: Vim Key Bindings
wordpress_url: http://pseudoweb.net/?p=195
---
Hey there kiddos,

I use Vim daily, and as such, I've picked up some key bindings which I think make the program just a little more perfect.

[plain gutter="false"]
&quot; Because we like our line numbers sometimes...
:nnoremap &lt;C-N&gt;&lt;C-N&gt; :set invnumber&lt;CR&gt;

&quot; But we don't always wanna wrap
:nnoremap &lt;C-w&gt;&lt;C-w&gt; :set invwrap&lt;CR&gt;

&quot; And all the cool kids need to paste
:nnoremap &lt;C-p&gt;&lt;C-p&gt; :set invpaste&lt;CR&gt;

&quot; Use the space key to open and close code folds
:vnoremap &lt;space&gt; zf&lt;CR&gt;
:nnoremap &lt;space&gt; zd&lt;CR&gt;
[/plain]

When reading this, remember that the vim configuration file uses " for comments.

So first off I set Ctrl+n to turn line numbers on and off. All you need to do is tap Ctrl+n twice and line numbers will disappear or reappear. This becomes helpful when trying to switch between reading code and needing to copy something into your Instant Messenger.

The next thing I set is Ctrl+w to turn line wrapping on and off. I find line wrapping very annoying, but being able to hit Ctrl+w twice and get the entire line on the screen has proven useful when reading poorly formatted Readme.txts or mysql dumps.

The third binding is something I learned of recently and have fallen in love with. Basically, if you tap Ctrl+p twice before pasting text from an external source (lets say a website or something) vim inserts the text as it looks, instead of trying to do auto-formatting. This is especially useful if posting code with comments in it.

The final key binding lets me open and close code folds by just using spacebar. This is pretty sweet and useful when you need to ignore blocks of text at the same time. You can learn more about code folding with <a href="http://www.dgp.toronto.edu/~mjmcguff/learn/vim/folding.txt">this writeup by Dr. Michael McGuffin</a> or with <a href="http://www.google.com/search?hl=en&amp;q=vim%20code%20folding&amp;aq=f&amp;oq=undefined">a simple Google search</a>.

Oh yeah, before I forget. nmap is a binding in normal mode, vmap is a binding for visual mode, and imap is a binding for insert mode. The letters "nore" in-between the mode specifier and map make it so we don't check for recursive mappings. This is useful here because we are binding the space bar and our bindings have spaces in them.

Anyway, hope this was useful, or at least informative.
/Nat
