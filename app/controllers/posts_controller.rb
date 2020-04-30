class PostsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    def index
        @posts = Post.order(created_at: :desc).paginate(:page => params[:page], per_page: 5)
        
    end
    def new
        @post = Post.new
        @maximum_length_tldr = Post.validators_on( :tldr ).first.options[:maximum]
    end
    def show
        @post = Post.find(params[:id])
        @post_comments = @post.comments.order(created_at: :desc).paginate(:page => params[:page], per_page:5)
    end
    def create
        @post = Post.new(post_params)
        @post.user = current_user
        if(@post.save)
            redirect_to @post
        else
            render 'new'
        end
    end
    def edit 
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        if(@post.update(post_params))
            redirect_to post_path
        else
            render 'edit'
        end
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy

        #*
        if request.referer == post_url(id: params[:id])
            redirect_to posts_path
        else 
            redirect_back(fallback_location:user_path)
        end
        # case URI(request.referer).path 
        # when ''
        # if params[:action_name] == 'showusers'
        #     redirect_back(fallback_location:user_path)
        # elsif params[:action_name] == "showposts"
        #     reirect_to posts_path
        # end
    end

    def star
        @post = Post.find(params[:id])
        @post.liked_by current_user
        respond_to do |format|
            format.html {redirect_back(fallback_location: home_path)}
            format.js
        end

    end

    def unstar
        @post = Post.find(params[:id])
        @post.unliked_by current_user
        respond_to do |format|
            format.html {redirect_back(fallback_location: home_path)}
            format.js
        end

    end







    
    private def post_params
        params.require(:post).permit(:title, :tldr, :body, :category,:search)
    end
end
