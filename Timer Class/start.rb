Window.show

timer = Timer.new
timer.start

FONT_PATH = 'mplus-1m-regular.ttf'

text = Text.new(FONT_PATH, timer.avg_fps.to_s, 30)

while true
  # Advance Game State
  break if Event.quit?
  Event.update
  Renderer.update
  text.update

  text = Text.new(FONT_PATH, timer.avg_fps.to_s, 30)

  # Render Graphics
  text.draw
  Renderer.draw

  # Count frames after each draw!
  timer.counted_frames += 1
end
