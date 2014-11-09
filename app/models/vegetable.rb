class Vegetable < ActiveRecord::Base
  belongs_to :famille

  default_scope { includes(:famille).order('familles.nom').order('genre').order('espece') }

  has_attached_file :photo, styles: {
    thumb: '100x100>',
    medium: '500x500>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  def nom
    "#{famille.nom} #{genre} #{espece}"
  end

end
