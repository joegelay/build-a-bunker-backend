class BunkersController < ApplicationController
    def index
        @bunkers = Bunker.all
        render json: @bunkers
    end
end
