class User < ActiveRecord::Base
validates :email, :presence   => true,
                  :format     => { :with => email_regex },
                  :uniqueness => true
end
