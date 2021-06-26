require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'mysql2',
  host: 'database',
  username: 'root',
  password: '',
  database: 'cake_day'
)
