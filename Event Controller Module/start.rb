# Log the name of each controller.
i = 0

while i < Event::Controller.num
  Log.info "Name: #{Event::Controller.name(i)}"

  i += 1
end

Window.show

while true
  break if Event.quit?
  Event.update
  Renderer.update

  if Event.trigger?(Event::Controller::Button::A)
    Log.info("Which: #{Event::Controller.name(Event.which)}")
    Event::Controller.rumble(65535, 65535, 1000)
  end

  Renderer.draw
end
