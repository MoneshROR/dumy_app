class Student < ApplicationRecord
    
    #after_create :test_callback
    
    after_save :test_callback2

    has_many :studentclasses
    validates :firstname ,  presence: true
    
    validates :lastname, confirmation: { case_sensitive: false }
    
    validates :fathername, format: { with: /\A[a-zA-Z]+\z/,message: "only allows letters" }
    
    validates :address, presence: true, length: { minimum: 5 }
    
    validates :gender, presence: true, length: {maximum: 5}

    before_validation :ensure_student_name_has_a_value

    def ensure_student_name_has_a_value
        if firstname.nil?   
          self.firstname = firstname unless firstname.blank?
        end
    end



    #acceptance: { message: 'must be add this field' } ,


    
    #def test_callback
    #    Studentclass.create(name: "12", student_id: self.id)
    #end
    private

    def test_callback2
        p "I'm Before save callback"
        studentclass = Studentclass.new(name: "raghu ", student_id: self.id)
      #  Studentclass.create(name: "13", student_id: self.id)
        
        studentclass.save()
    end

    around_destroy :log_destroy_action

    def log_destroy_action
      puts 'Article destroyed'
      p "Hello raghu"
    end

    after_update :log_update_action

    def log_update_action
        p "I'm upate callback"
    end

    before_update :log_update_action_before
    
    def log_update_action_before
        puts "I'm before update callback"
    end

end

