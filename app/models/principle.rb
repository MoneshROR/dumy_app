class Principle < ApplicationRecord
    validates :name, presence: true ,uniqueness: true

        #unless: Proc.new { |a| a.name.blank?}
            
    validates :age, presence: true, length: {in: 2..3}, numericality: true
    validates :gender, presence: true,if: :name_gender?

    def name_gender?
        gender == "Male"
        
        p "This is gender is Male"
    end
    validates :address, presence: true, length: { minimum: 5 }
end
