# name:string agent:text addons:boolean 

class Visitor < ApplicationRecord
    validates :name, presence: true,
    length: { minimum: 5 }
end
