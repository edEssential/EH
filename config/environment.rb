# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
V1::Application.initialize!


Time::DATE_FORMATS[:due_date] = "%B %d 20%y"