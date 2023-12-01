class ContactMessage < ApplicationRecord
  validates :name, presence: true
  validates :first_name, presence: true
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "Adresse e-mail invalide" }
  validates :phone, presence: true, format: { with: /\A\d{10}\z/, message: "Format de téléphone invalide" }
  validates :budget, presence: true
  validates :message, presence: true
end
