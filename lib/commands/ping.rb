module Commands
  module Ping
    extend Discordrb::Commands::CommandContainer

    command(:ping, description: 'Ein Testbefehl, um die derzeitige Latenzzeit und den API-Ping zu sehen.') do |event|
      message = event.message.reply! 'Berechne...'

      message.edit "**🏓 Pong!** \`#{((message.timestamp - event.timestamp) * 1000).to_i}ms\`"
    end
  end
end
