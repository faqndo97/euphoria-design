class Contact < ApplicationRecord
  validates :name, :email, :message, presence: true
  validates :email, 'valid_email_2/email': { mx: true, disposable: true, disallow_subaddressing: true }
end
