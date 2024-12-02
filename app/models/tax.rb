class Tax < ApplicationRecord
  belongs_to :company

  validates :amount, presence: true
  validates :description, presence: true
  validates :tax_type, presence: true
  validates :company_id, presence: true
  validates :due_date, presence: true
  validates :file, presence: true
  validates :paid, presence: true
  has_one_attached :file, service: :google
end
