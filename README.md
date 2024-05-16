![Icon](Imgs/3.png)
***

## GameEngine

**GameEngine** is an SDK used for game development. It's good for hobbyists and professionals alike! It provides ease of development through
an API that is consistent, so if you learn how to do one thing, you've learned how to do the rest! This keeps the API very small. Through
The Programming Language Ruby, we provide powerful dynamic features, such as modifiable classes and extensiblity through native C extensions!
All you need to get started is to have project folder with the script called *start.rb*! You can package your game how like afterwards and
share with friends and family! If these words are flying over your head because perhaps you've never programmed before, don't be worried,
just get started! The best interface for game development is with code!

## How to install

**GameEngine** is not yet available for installation, but will be soon!

## How to use

At the most minimal just create a *start.rb* file and run `game` from the terminal.
You can also copy the `game` executable to your projects directory and double click
on it to run.

Example of a *start.rb*:

```ruby
# The Window is hidden by default.
Window.show

# Construct Text for a nice greeting!
text = Text.new('mplus-1m-regular.ttf', 'Hello, world!', 30)

# Center the Text
text.dest.x = Window.width  / 3.5
text.dest.y = Window.height / 3.5

while true
  # Advance Game State
  break if Event.quit?
  Event.update
  Renderer.update
  text.update

  # Render Graphics
  text.draw
  Renderer.draw
end
```

Then just run `game` in the terminal, or double click on `game` if you've placed it
in your projects directory.
