class CardsController < ApplicationController
    def new
        @card = Card.new
    end
    def create
        @card = Card.new(params.require(:card).permit(:card_number, :expiration_date, :cvc, :card_owner))
        if(@card.save)
            flash[:notice] = "Your card added succesfully...."
            redirect_to root_path
        else
            render 'new'
        end
    end
end