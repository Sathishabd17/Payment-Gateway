class Card < ApplicationRecord
    validates :card_number, presence: true, uniqueness: true, 
    length: {minimum: 16, maximum: 16}

    DATE = %r(^(3[01]|[12][0-9]|0[1-9])/[0-9]{4}$)
    validates :expiration_date, presence: true, length: {minimum: 7, maximum: 7}, 
    format: {with: DATE, multiline: true, message: "should be MM/YYYY"}
    
    validates :cvc, presence: true, uniqueness: true, length: {minimum: 3, maximum: 3}
    validates :card_owner, presence: true, length: {minimum: 3, maximum: 25}
end