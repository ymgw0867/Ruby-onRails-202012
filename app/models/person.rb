class Person < ApplicationRecord
    validates_presence_of     :name, message: "can't be blank"
    validates_numericality_of :age,  message: "is not a number"
end
