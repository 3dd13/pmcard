class Card < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :image_url, allow_blank: true, format: {
            with: %r{\.(gif|jpg|png)\Z}i,
            message: 'must be a URL for GIF, JPG or PNG image.'
            }

  belongs_to :admin
end
