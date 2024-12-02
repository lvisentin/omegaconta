class Company < ApplicationRecord
  belongs_to :user
  has_many :taxes

  validates :name, presence: true
  validates :document, presence: true

  def company_option
    "#{name} - #{document}"
  end
end
