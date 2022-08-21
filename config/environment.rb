# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActiveRecord.use_yaml_unsafe_load = true
