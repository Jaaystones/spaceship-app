class CommentsController < ApplicationController
    before_action :authenticate_user!
    before_action :find_commentable, only: :create
    respond_to :js
  
    def create
      @post = Post.find(params[:post_id])
      @comment = @post.comments.build(comment_params)
      @comment.user = current_user
      respond_to do |format|
        if @comment.save
          #format.js
          format.html { redirect_to @post, notice: 'Comment was successfully created.' }
        else
          #format.js { render :error }
          format.html { redirect_to @post, alert: 'Failed to create comment.' }
        end
      end
    end
    
  
    def destroy
      @comment = current_user.comments.find(params[:id])
      @comment_id = params[:id]
      @comment.destroy
    end
  
    private

  def find_commentable
    if params[:commentable_type].present?
      @commentable_type = params[:commentable_type].classify
      @commentable = @commentable_type.constantize.find(params[:commentable_id])
    else
      flash[:error] = "Commentable type is missing"
      redirect_to root_path # Redirect to the home page or any other appropriate page
    end
  end
end
