--- 
wordpress_id: 208
layout: post
title: 80 Characters and You
wordpress_url: http://pseudoweb.net/?p=208
---
I use vim a lot, and I use it even more now since my work uses it as well. One thing my boss really loves, and I kinda hate, is an 80 character line limit. I used to just commit style breaking code, but now I can have vim yell at me when lines are too long, thanks to <a href="http://stackoverflow.com/questions/235439/vim-80-column-layout-concerns">this useful post over at Stack Overflow</a>.

Just add the following to your ~/.vimrc and you're good to go.

> &quot; Highlights long lines  
> highlight OverLength ctermbg=red ctermfg=white guibg=#592929  
> match OverLength /\%81v.\+/  

/Nat
