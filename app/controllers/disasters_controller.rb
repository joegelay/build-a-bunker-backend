class DisastersController < ApplicationController
    def index
        @disasters = Disaster.all
        render json: @disasters
    end
end
