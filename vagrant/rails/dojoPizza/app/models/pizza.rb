class Pizza < ActiveRecord::Base
    before_validation :putsify 
    validates :size, :sauce, :crust, presence: true 

    def putsify
        self.size = 12 
    end
end
