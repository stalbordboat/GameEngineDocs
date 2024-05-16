obj = {:str => 'Foo', :list => ['A', 'B']}

Log.info 'Bytes written: ', dump_data('foo.yml', obj)
Log.info 'Object Read: ', load_data('foo.yml')
