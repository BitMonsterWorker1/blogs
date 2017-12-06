class CommentsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :destroy, :comment_new]



    def create
      @comments = current_user.comments.build(comment_params)
      binding.pry
      if @comment.save
        redirect_to find_post
      else
        render "new"
      end
    end

    def find_post
      @post = Post.find(params[:id])
    end

    private

    def comment_params
      params.require(:comment).permit(:body, :posts, :user)
    end
  end
end
