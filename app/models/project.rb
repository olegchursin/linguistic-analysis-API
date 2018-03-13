class Project < ApplicationRecord
  belongs_to :user
  has_many :lexemes
  has_many :texts
end
