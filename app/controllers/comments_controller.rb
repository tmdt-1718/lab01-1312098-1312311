class CommentsController < ApplicationController
    before_action :require_user
    def new
        @comment = Comment.new
    end

    def create
        @comment = Comment.new(comment_params)
        @comment.user = current_user    
        @article = Article.find_by(id: params[:comment][:article_id])
        if @comment.save
            CommentMailer.new_comment(@comment).deliver_now

            respond_to do |format|
                format.html { redirect_to article_path(@article), success: 'Comment is posted' }
                format.js   { }
                format.json { render :show, status: :created, location: @comment }
            end
        else 
            redirect_to article_path(@article)
        end
    end

    private
        def comment_params 
            params.require(:comment).permit(:comment, :article_id)
        end
end