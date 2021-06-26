require 'i18n'

module Commands
  module Ping
    extend Discordrb::Commands::CommandContainer

    command(:ping, description: I18n.t('.commands.ping.description')) do |event|
      message = event.message.reply! I18n.t('.commands.ping.calculating')

      message.edit I18n.t('.commands.ping.reply', time: ((message.timestamp - event.timestamp) * 1000).to_i)
    end
  end
end
