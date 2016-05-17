class Message < ActiveRecord::Base
    #nameは必須入力かつ二十文字以内
    validates :name , length: { maximum:20 } , presence: true
    
    #内容は必須かつ二文字以上三〇文字以内
    validates :body , length: { minimum:2 , maximum:30 } , presence: true
end
