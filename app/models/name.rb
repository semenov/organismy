class Name < ActiveRecord::Base
  validates_presence_of :name
  named_scope :availible, :conditions => { :used => false }
  
  def self.random
    find :first, :offset => rand(count)
  end
end
