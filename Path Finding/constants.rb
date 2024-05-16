Log.info "This is the home path: #{HOME_PATH} for user: #{HOME_PATH.split('/').last}"

Log.info "Your HOME_PATH exceeds the limit of #{PATH_MAX}" if HOME_PATH.length > PATH_MAX

Log.info "First bin path #{PATH.split(':').first}"
Log.info "Last bin path #{PATH.split(':').last}"
