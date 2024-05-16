scores = {:power_lv => 9000, :weapons => ['Gun', 'Sword']}

SAVEFILE = 'savefile.yml'

Log.info 'Bytes written: ', dump_data(SAVEFILE, scores)
Log.info 'Object Read: ', load_data(SAVEFILE)
