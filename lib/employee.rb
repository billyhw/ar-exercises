class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than: 39, less_than: 201}
  validates :store_id, presence: true

  # callback: generate password before create
  before_create :generate_password

  private
  def generate_password
    self.password = (10...36).to_a.map{|i| i.to_s 36}.sample(8).join
  end
end