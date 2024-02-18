class Child < ApplicationRecord
  belongs_to :user
  has_many :task_lists
  has_many :gifts
  has_many :finances
end
