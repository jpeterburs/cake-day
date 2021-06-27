require 'active_record'

class User < ActiveRecord::Base
  default_scope { order(discord_id: :desc).order(server_id: :desc) }

  validates_presence_of :discord_id, :birthdate, :server_id

  def delete
    ActiveRecord::Base.connection.execute(
      "DELETE FROM cake_day.users WHERE discord_id = #{discord_id} AND server_id = #{server_id}"
    )
  end
end
