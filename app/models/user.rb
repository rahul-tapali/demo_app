class User < ActiveRecord::Base

email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
ph_no_regex = /(\d{10}|\+91\d{10})/ 
validates :email, :length     => { :minimum => 1 } 

validates :ph_no, :format     => { :with => ph_no_regex }
                  
validates :email, :presence   => true,
                  :format     => { :with => email_regex },
                  :uniqueness => true
end
