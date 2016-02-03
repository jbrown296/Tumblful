class ArticleLink < ActiveRecord::Base
    scope :recent_reverse, lambda { order("created_at DESC").limit(10).reverse }
    
    validates_presence_of :url
end
