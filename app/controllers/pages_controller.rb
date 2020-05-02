class PagesController < ApplicationController
    def about
        @title="About Us"
    end
    def profile
        @user = User.find(params[:id])
    end

    

end
