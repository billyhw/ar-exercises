require 'pry' # in case you want to use binding.pry
require 'active_record'
require_relative 'lib/store' # need to set this up
require_relative 'lib/employee' # neet to set this up

# Output messages from Active Record to standard out
ActiveRecord::Base.logger = Logger.new(STDOUT)

puts 'Establishing connection to database ...'
ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  database: 'ar_exercises',
  username: 'development',
  password: 'development',
  host: 'localhost',
  port: 5432,
  pool: 5,
  encoding: 'unicode',
  min_messages: 'error'
)
puts 'CONNECTED'

puts 'Setting up Database (recreating tables) ...'

ActiveRecord::Schema.define do
  # note here the tables are destroyed and then recreated every time setup.rb is run
  drop_table :stores if ActiveRecord::Base.connection.table_exists?(:stores)
  drop_table :employees if ActiveRecord::Base.connection.table_exists?(:employees)
  # setting up relation, Store has many employees
  class Store < ActiveRecord::Base
    has_many :employees
  end
  create_table :stores do |t|
    t.column :name, :string
    t.column :annual_revenue, :integer
    t.column :mens_apparel, :boolean
    t.column :womens_apparel, :boolean
    t.timestamps null: false
  end
  create_table :employees do |table|
    table.belongs_to :store # every employee belongs to one store, note store is singular
    # table.references :store # delete this line OK????
    table.column :first_name, :string
    table.column :last_name, :string
    table.column :hourly_rate, :integer
    table.timestamps null: false
  end
end

puts 'Setup DONE'
