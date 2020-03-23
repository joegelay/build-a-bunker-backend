class BunkerSuppliesController < ApplicationController
    def create 
        @bunkersupply = BunkerSupply.create(
            bunker: params[:bunker],
            supply: params[:supply]
        )

        render json: @bunkersupply
    end 
end
