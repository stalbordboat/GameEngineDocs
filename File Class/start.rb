File.open('foo.txt', File::Mode::WRITE) do |file|
  bytes_written = file.write('Hello, world!')

  Log.info(bytes_written)
end

File.open('foo.txt', File::Mode::READ) do |file|
  str = file.read
  Log.info("Read String: #{str}", "File Size in bytes: #{file.length}")
end
