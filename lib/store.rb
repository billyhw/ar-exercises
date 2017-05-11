class Store < ActiveRecord::Base
  # setting up relation, Store has many employees
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  # not quite doing the job for checking boolean.
  # any string other then empty-string, "false", or "f" will give true
  # it does disallow "nil" as documented from the rails guide
  # one link suggests using custom validation:
  # http://stackoverflow.com/questions/26363147/validate-boolean-fields-in-rails-activerecord
  validates :mens_apparel, inclusion: { in: [true, false] }
  validates :womens_apparel, inclusion: { in: [true, false] }
  validate :one_of_mens_or_women_apparel_must_be_true

  def one_of_mens_or_women_apparel_must_be_true
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "mens_ and womens_apparel can't be both false")
      errors.add(:womens_apparel, "mens_ and womens_apparel can't be both false")
    end
  end
end