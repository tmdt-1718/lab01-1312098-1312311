class CommentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.comment_mailer.new_comment.subject
  #
  def new_comment (comment)
    @comment = comment
    @article = @comment.article

    mail to: @article.user.email,
          subject: "New Comment for #{@article.title}"
  end
end
