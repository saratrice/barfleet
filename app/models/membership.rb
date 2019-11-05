class Membership < ApplicationRecord
  belongs_to :profile
  belongs_to :division
end
