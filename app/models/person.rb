class Person < ApplicationRecord
    validates_presence_of     :name, message: "は、必須項目です"
    validates_numericality_of :age,  message: "は、数字で入力してください"
    validates :mail, email: {message: 'はメールアドレスではありません'}
end
