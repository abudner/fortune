class CommentsController < ApplicationController
before_filter do
    @fort = Fort.find(params[:fort_id])
  end

  def create
    @comment = @fort.comments.build(params[:comment])
    @comment.save
    respond_with(@fort, @comment, :location => @fort)
  end

  def destroy
    @comment = @fort.comments.find(params[:id])
    @comment.destroy
    respond_with(@fort, @comment, :location => @fort)
  end

  def edit
  @comment = @fort.comments.find(params[:id])
end

def update
  @comment = @fort.comments.find(params[:id])
  @comment.update_attributes(params[:comment])
  respond_with(@fort, @comment, :location => @fort)
end


end
