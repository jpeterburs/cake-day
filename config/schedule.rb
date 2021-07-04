require 'whenever'
require 'rake'

every 1.day do
  rake 'cake_day:announce_todays_birthdays'
end
