Window.show
Window.resolution(1280, 720)

Audio::Mix.open

bitmap = Bitmap.new('IMG/Sprites/keyboard.png')
sprite = Sprite.new(8, 8, bitmap)

NONE      = 0
KEY_Z     = 1
KEY_X     = 2
KEY_I     = 3
KEY_J     = 4
KEY_K     = 5
KEY_L     = 6
KEY_UP    = 11
KEY_DOWN  = 12
KEY_RIGHT = 13
KEY_LEFT  = 14

id = NONE

music = Music.new('Audio/BGM/background.ogg')
music.play(-1)

sound = Sound.new('Audio/SE/select.wav')

while true
  # Advance Game State

  Event.update
  Renderer.update

  if Event.quit? || Event.trigger?(Event::Keyboard::Key::ESC)
    break
  end

  sprite.color.alpha = 0
  id = NONE

  id = KEY_Z     if Event.trigger?(Event::Keyboard::Key::Z)
  id = KEY_X     if Event.trigger?(Event::Keyboard::Key::X)
  id = KEY_I     if Event.trigger?(Event::Keyboard::Key::I)
  id = KEY_J     if Event.trigger?(Event::Keyboard::Key::J)
  id = KEY_K     if Event.trigger?(Event::Keyboard::Key::K)
  id = KEY_L     if Event.trigger?(Event::Keyboard::Key::L)
  id = KEY_UP    if Event.trigger?(Event::Keyboard::Key::UP)
  id = KEY_DOWN  if Event.trigger?(Event::Keyboard::Key::DOWN)
  id = KEY_LEFT  if Event.trigger?(Event::Keyboard::Key::LEFT)
  id = KEY_RIGHT if Event.trigger?(Event::Keyboard::Key::RIGHT)

  case id
  when KEY_Z
    sprite.color.alpha = 255
    sprite.src.x = sprite.src.width
    sprite.src.y = sprite.src.height * 3
    sound.play(0)
  when KEY_X
    sprite.color.alpha = 255
    sprite.src.x = sprite.src.width  * 7
    sprite.src.y = sprite.src.height * 2
    sound.play(0)
  when KEY_I
    sprite.color.alpha = 255
    sprite.src.x = 0
    sprite.src.y = sprite.src.height
    sound.play(0)
  when KEY_J
    sprite.color.alpha = 255
    sprite.src.x = sprite.src.width
    sprite.src.y = sprite.src.height
    sound.play(0)
  when KEY_K
    sprite.color.alpha = 255
    sprite.src.x = sprite.src.width * 2
    sprite.src.y = sprite.src.height
    sound.play(0)
  when KEY_L
    sprite.color.alpha = 255
    sprite.src.x = sprite.src.width * 3
    sprite.src.y = sprite.src.height
    sound.play(0)
  when KEY_UP
    sprite.color.alpha = 255
    sprite.src.x = sprite.src.width  * 7
    sprite.src.y = sprite.src.height * 3
    sound.play(0)
  when KEY_DOWN
    sprite.color.alpha = 255
    sprite.src.x = sprite.src.width  * 7
    sprite.src.y = sprite.src.height * 4
    sound.play(0)
  when KEY_LEFT
    sprite.color.alpha = 255
    sprite.src.x = sprite.src.width  * 7
    sprite.src.y = sprite.src.height * 5
    sound.play(0)
  when KEY_RIGHT
    sprite.color.alpha = 255
    sprite.src.x = sprite.src.width  * 7
    sprite.src.y = sprite.src.height * 6
    sound.play(0)
  else
    sprite.src.x = 0
    sprite.src.y = 0
  end
  Timer.wait 120

  sprite.update

  # Perform Rendering

  sprite.draw
  Renderer.draw
end

Audio::Mix.close
