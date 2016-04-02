class Drug < ActiveRecord::Base
  validates :generic_name, presence: true
end
