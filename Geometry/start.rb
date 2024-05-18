# The Window is hidden by default.
Window.show

color         = Color.set(0, 255, 0, 255)
bitmap_coord  = Point.new(1, 1)
vertex_1      = Vertex.new(Point.new(100.5, 100.5), color, bitmap_coord)
vertex_2      = Vertex.new(Point.new(200.5, 100.5), color, bitmap_coord)
vertex_3      = Vertex.new(Point.new(100.5, 200.5), color, bitmap_coord)

vertices =  [ vertex_1, vertex_2, vertex_3 ]

geom = Geometry.new(vertices)

# This loop will run the game until the loop is broken.
while true
  # Advance Game State
  break if Event.quit? || Event.trigger?(Event::Keyboard::Key::ESC)
  Event.update
  Renderer.update
  geom.update

  geom.vertices[0].color.a -= 1
  geom.vertices[1].color.a -= 1
  geom.vertices[2].color.a -= 1

  # Render Graphics
  geom.draw
  Renderer.draw
end
