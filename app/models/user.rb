class User < ActiveRecord::Base

email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

validates :email, :length     => { :minimum => 1 } 

validates :ph_no, :length     => { :is => 10 }

validates :email, :presence   => true,
                  :format     => { :with => email_regex },
                  :uniqueness => true
end
