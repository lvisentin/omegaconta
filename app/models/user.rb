class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :clients,
    class_name: "User",
    foreign_key: "accountant_id",
    dependent: :nullify

  belongs_to :accountant,
      class_name: "User",
      optional: true

  scope :accountants, -> { where(is_accountant: true) }
  scope :non_accountants, -> { where(is_accountant: false) }
end
