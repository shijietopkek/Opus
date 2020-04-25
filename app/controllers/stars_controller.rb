class StarsController < ApplicationController
    def new
        @star = Star.new
    end
    def show
        @post = Star.find(params[:id])
    end
    
    def create
        @star = Star.new(star_params)
    end

    private def star_params
        params.require(:star).permit(:user_id,:post_id)
    end

end
