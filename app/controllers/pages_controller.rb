class PagesController < ApplicationController
    def about
        @title="about us"
        @content="gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang gucci gang"
    end
    def profile
        @user = User.find(params[:id])
    end

end