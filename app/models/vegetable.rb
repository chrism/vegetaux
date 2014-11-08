class Vegetable < ActiveRecord::Base
  belongs_to :famille

  def nom
    "#{classe} #{genre} #{espece}"
  end
end
