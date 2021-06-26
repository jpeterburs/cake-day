require 'active_record'
require 'i18n'

class User < ActiveRecord::Base
  validates_presence_of :discord_id, :birthdate, :server_id

  def self.find(*_)
    raise 'No primary key. Please use find_by instead.'
  end
end
