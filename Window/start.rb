# The Window is hidden by default.
Window.show

# Set window to 720p.
Window.resolution(1280, 720)

# Log resolution.
Log.info "Resolution: #{Window.width}x#{Window.height}"

# Set to true for fullscreen.
Window.fullscreen(false)

# Sets title.
Window.title('Window Example')

# This loop will run the game until the loop is broken.
while true
  # Advance Game State
  break if Event.quit? || Event.trigger?(Event::Keyboard::Key::ESC)
  Event.update
  Renderer.update

  # Render Graphics
  Renderer.draw
end
