Window.show

while true
  # For the first controller only log info if the axis is not in the deadzone.
  if Event.which == 0
    if Event.axis?(Event::Controller::Axis::RIGHTY)
      value = Event.value

      if value > Event::Controller::Axis::DEFAULT_DEADZONE
        Log.info(value)
      end
    end
  end

  break if Event.quit?
  Event.update
  Renderer.update

  Renderer.draw
end
