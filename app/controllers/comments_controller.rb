class CommentsController < ApplicationController
  before_action :load_estimate
  before_action :load_comment, only: [:edit,:update,:show,:destroy]
  #before_action :authenticate_user!

  def load_estimate
    @estimate = Estimate.find(params[:estimate_id])
    @comment = Comment.new
  end

  def load_comment
    @comment = Comment.find(params[:id])
  end

  def edit
  end

  def create
    @comment = @estimate.comments.new(comment_params)
    if @comment.save
			redirect_to estimate_path(@estimate)
		end
  end

	def destroy
		@estimate = Estimate.find(params[:estimate_id])
		@comment = @estimate.comments.find(params[:id])
		@comment.destroy
		redirect_to estimate_path(@estimate)
	end

	 def update
    @comment = Comment.find(params[:estimate_id])
    @comment = @estimate.comments.find(params[:id])
    if @comment.update(comment_params)
       redirect_to estimate_path(@estimate)
    else
        render 'edit'
    end
  end

  private
 	def comment_params
 		params.require(:comment).permit(
 		:asahi,
    :cocacola,
    :dydo,
    :itoen,
    :kirin,
    :otsuka,
    :suntory
    )
 	end
end
