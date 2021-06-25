require 'discordrb'

client = Discordrb::Commands::CommandBot.new(token: File.read('token.txt'), prefix: ENV['PREFIX'])

Dir['lib/commands/*.rb'].each { |command| load command }

Commands.constants.each do |cmd|
  client.include! Commands.const_get(cmd)
end

begin
  client.run
rescue SignalException
  client.stop
end
