class CommentsController < ApplicationController
 def create
    @teacher = Teacher.find(params[:teacher_id])
    @comment = @teahcer.comments.create(comment_params)
    redirect_to teacher_path(@teacher)
  end

  def destroy
    @teacher = Teacher.find(params[:teacher_id])
    @comment = @teacher.comments.find(params[:id])
    @comment.destroy
    redirect_to teacher_path(@teacher)
  end

  private
    def comment_params
      params.require(:comment).permit(:comment, :body)
    end
end
