class Message < ApplicationRecord
    validates_presence_of :message, message: "を書いてください。"
end
