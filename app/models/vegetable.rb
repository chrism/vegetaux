class Vegetable < ActiveRecord::Base
  belongs_to :famille

  validates_presence_of :nom_commun, :classe, :genre, :espece
  validate :famille_chosen

  default_scope { includes(:famille).order('familles.nom').order('genre').order('espece') }

  has_attached_file :photo, styles: {
    thumb: '100x',
    medium: 'x400'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  def nom
    full = []

    full << famille.nom unless famille.nil?
    full << genre unless genre.nil?
    full << espece unless espece.nil?

    if full.any?
      full.join(" ")
    else
      ""
    end
  end

  def famille_chosen
    errors.add(:famille_id, "You must select a Famille") unless famille_id.present?
  end
end
