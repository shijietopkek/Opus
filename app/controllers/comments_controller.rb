class CommentsController < ApplicationController
    before_action :authenticate_user!
    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(comment_params)

        if(current_user)
        @comment.user_id = current_user.id
        @comment.save
        
        end
        redirect_to post_path(@post)
    end
    
    def destroy
        @post = Post.find(params[:post_id])
        @comment = @post.comments.find(params[:id])
        @comment.destroy
        redirect_to post_path(@post)
    end

    private def comment_params
        params.require(:comment).permit(:username, :body,:user_id)
    end
end
