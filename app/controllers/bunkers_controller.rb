class BunkersController < ApplicationController
    def index
        @bunkers = Bunker.all
        render json: @bunkers
    end

    def create 
        @bunker = Bunker.create(
            name: params[:name],
            user: params[:user]
        )

        render json: @bunker
    end 
end
