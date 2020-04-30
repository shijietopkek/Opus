class UsersController < ApplicationController
    require 'will_paginate/array'
    def show
        @user = User.find(params[:id])
        @user_posts = @user.posts.order(created_at: :desc).paginate(:page => params[:page], per_page: 5)
    end

    def starred_list
        @user = User.find(params[:id])
        @user_starred_posts = @user.find_liked_items.paginate(:page => params[:page], per_page:5)
    end

    






end 
