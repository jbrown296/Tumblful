class TextPost < ActiveRecord::Base
    scope :recent, lambda { order('created_at DESC').limit(3) }
    
    validates_presence_of :textpost
    validates_presence_of :title
    
    belongs_to :user
    
    # Set up this side of the polymorphic association
    has_many :likes, as: :likeable
end
