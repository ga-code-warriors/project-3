class CommentsController < ApplicationController
  
  def create
    @book = Book.find(params[:book_id])
    @comment = @book.comments.create(comment_params)
     redirect_to books_id_path(@book)    
      
  end

  def index
  end

  private
def comment_params
params.require(:comment).permit(:comment, :commenter)
end

end
