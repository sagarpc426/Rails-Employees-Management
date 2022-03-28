class Employee < ActiveRecord::Base
    validates :email, format: { with: /[a-z0-9]+@[a-z]+\.[a-z]{2,3}$/i,
                message: "Enter valid email",
                :multiline => true
    }
    validates :phone, format: { with: /^[9876][0-9]{9}$/, 
                message: "Enter valid Phone number (without country code)",
                :multiline => true 
    }
end
