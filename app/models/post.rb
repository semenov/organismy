class Post < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  default_scope :order => 'created_at DESC'
  
  acts_as_voteable
  acts_as_commentable
    
  def self.per_page
    10
  end    
end
