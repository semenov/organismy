class User < ActiveRecord::Base
  acts_as_authentic
  is_gravtastic :default => 'identicon', :size => 20
  
  has_many :posts
  
  def deliver_invitation
    reset_perishable_token!
    #Notifier.deliver_password_reset_instructions(self)
  end
end
