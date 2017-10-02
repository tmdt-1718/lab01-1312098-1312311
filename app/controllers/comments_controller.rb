class CommentsController < ApplicationController
    def new
        @comment = Comment.new
    end

    def create
        @comment = Comment.new(comment_params)
        @comment.user = current_user    
        @article = Article.find_by(id: params[:comment][:article_id])
        if @comment.save
            flash[:success] = "Your comment is post"
            CommentMailer.new_comment(@comment).deliver_now
            redirect_to article_path(@article)
        else 
            render article_path(article_id_params)
        end
    end

    private

        def comment_params 
            params.require(:comment).permit(:comment, :article_id)
        end

end