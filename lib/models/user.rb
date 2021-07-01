require 'active_record'

class User < ActiveRecord::Base
  validates_presence_of :discord_id, :birthdate, :server_id
end
