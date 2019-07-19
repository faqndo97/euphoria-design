class Newsletter < ApplicationRecord
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :email, 'valid_email_2/email': { mx: true, disposable: true, disallow_subaddressing: true}
end
