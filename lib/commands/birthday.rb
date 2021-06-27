require 'i18n'
require 'date'
require_relative '../models/user'

module Commands
  module Birthday
    extend Discordrb::Commands::CommandContainer

    command(
      :birthday_add,
      description: I18n.t('.commands.birthday_add.description'),
      usage: I18n.t('.commands.birthday_add.usage')
    ) do |event, date|
      user = User.first_or_initialize(discord_id: event.author.id, server_id: event.server.id)

      user.assign_attributes(birthdate: Date.strptime(date, '%d-%m-%Y'))

      event.message.reply!(
        if user.save
          I18n.t('.commands.birthday_add.saved_reply')
        else
          I18n.t('.error_reply')
        end
      )
    end

    command(
      :birthday_remove,
      description: I18n.t('.commands.birthday_remove.description'),
      aliases: %i[birthday_rem],
      usage: I18n.t('.commands.birthday_remove.usage')
    ) do |event|
      user = User.find_by(discord_id: event.author.id, server_id: event.server.id)
      user.delete

      event.message.reply!(I18n.t('.commands.birthday_remove.deleted_reply'))
    end
  end
end
