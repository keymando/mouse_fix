Mouse Fix
----------

Keymando plugin/hotfix to fix some mouse functionality.  'left_click' broken and this plugin attempts to fix and adds a few additional mouse methods.

New mouse methods
========

``` ruby

  # Move mouse to 20, 20
  map '<Ctrl-r>' { mouse_move(20, 20)}

  
  # Show mouse x coordinate
  map '<Ctrl-r>' { alert(mouse_x) }

  # Show mouse y coordinate
  map '<Ctrl-r>' { alert(mouse_y) }
```

Requirements
============

Keymando version 1.0.3


