class Famille < ActiveRecord::Base
  default_scope { order('nom') }

  has_many :vegetable
end
