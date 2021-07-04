require 'discordrb'
require 'i18n'
require 'rake'

require_relative 'lib/database'
require_relative 'lib/models/user'

I18n.load_path << Dir['lib/locales/*.yml']
I18n.default_locale = ENV.fetch('LOCALIZATION', :de)

namespace :cake_day do
  task :announce_todays_birthdays do
    client = Discordrb::Bot.new(token: File.read('token.txt'))

    client.run(true)

    User.where(birthdate: Date.today).each do |user|
      server = client.servers.fetch(user.server_id)
      discord_user = server.members.select { |m| m.id == user.discord_id }&.first
      channel = server.text_channels.select { |ch| ch.name == 'birthdays' }&.first

      next if channel.nil?

      channel.send_message(I18n.t('.tasks.cake_day.announce_todays_birthdays.announcement', user: discord_user.mention))
    end

    client.stop
  end
end
