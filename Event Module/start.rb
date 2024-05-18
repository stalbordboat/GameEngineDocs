Window.show
Window.resolution(1280, 720)

Audio::Mix.open

bitmap = Bitmap.new('IMG/Sprites/keyboard.png')
sprite = Sprite.new(8, 8, bitmap)

music = Music.new('Audio/BGM/background.ogg')
music.play(Music::PLAY_INFINITE)

sound = Sound.new('Audio/SE/select.wav')

while true
  # Advance Game State

  Event.update
  Renderer.update

  if Event.quit? || Event.trigger?(Event::Keyboard::Key::ESC)
    break
  end

  sprite.color.alpha = 0

  if Event.trigger?(Event::Keyboard::Key::Z)
    sprite.color.alpha = 255
    sprite.src.x = sprite.src.width
    sprite.src.y = sprite.src.height * 3
    sound.play(Sound::PLAY_ONCE)
  end

  if Event.trigger?(Event::Keyboard::Key::X)
    sprite.color.alpha = 255
    sprite.src.x = sprite.src.width  * 7
    sprite.src.y = sprite.src.height * 2
    sound.play(Sound::PLAY_ONCE)
  end

  if Event.trigger?(Event::Keyboard::Key::I)
    sprite.color.alpha = 255
    sprite.src.x = 0
    sprite.src.y = sprite.src.height
    sound.play(Sound::PLAY_ONCE)
  end

  if Event.trigger?(Event::Keyboard::Key::J)
    sprite.color.alpha = 255
    sprite.src.x = sprite.src.width
    sprite.src.y = sprite.src.height
    sound.play(Sound::PLAY_ONCE)
  end

  if Event.trigger?(Event::Keyboard::Key::K)
    sprite.color.alpha = 255
    sprite.src.x = sprite.src.width * 2
    sprite.src.y = sprite.src.height
    sound.play(Sound::PLAY_ONCE)
  end

  if Event.trigger?(Event::Keyboard::Key::L)
    sprite.color.alpha = 255
    sprite.src.x = sprite.src.width * 3
    sprite.src.y = sprite.src.height
    sound.play(Sound::PLAY_ONCE)
  end

  if Event.trigger?(Event::Keyboard::Key::UP)
    sprite.color.alpha = 255
    sprite.src.x = sprite.src.width  * 7
    sprite.src.y = sprite.src.height * 3
    sound.play(Sound::PLAY_ONCE)
  end

  if Event.trigger?(Event::Keyboard::Key::DOWN)
    sprite.color.alpha = 255
    sprite.src.x = sprite.src.width  * 7
    sprite.src.y = sprite.src.height * 4
    sound.play(Sound::PLAY_ONCE)
  end

  if Event.trigger?(Event::Keyboard::Key::LEFT)
    sprite.color.alpha = 255
    sprite.src.x = sprite.src.width  * 7
    sprite.src.y = sprite.src.height * 5
    sound.play(Sound::PLAY_ONCE)
  end

  if Event.trigger?(Event::Keyboard::Key::RIGHT)
    sprite.color.alpha = 255
    sprite.src.x = sprite.src.width  * 7
    sprite.src.y = sprite.src.height * 6
    sound.play(Sound::PLAY_ONCE)
  end

  Timer.wait 120

  sprite.update

  # Perform Rendering

  sprite.draw
  Renderer.draw
end

ensure Audio::Mix.close
