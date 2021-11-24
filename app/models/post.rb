class Post < ApplicationRecord
    

 #validates :name, name: {message: 'Oupsss erreur'}
 #validates :content, name: true
include Sluggable

belongs_to :category, optional: true, counter_cache: true
has_and_belongs_to_many :tags
has_many :metas, as: :metaable

scope :online, -> { where(online: 1) }

validates :slug, format: { with: /\A[a-z0-9\-]+\z/}, uniqueness: true


end