class HomeController < ApplicationController
  before_action :authenticate_user!
  def feedback
  	@questions = Question.all
  end
  
  def submitfeedback
  	if @feedback = OldFeedback.create(old_feedback_params)
      flash.discard
    else
      flash[:notice] = "Feedback aint posted"
      redirect_to root_url
    end
    
  end
  
  def feedbacks
#  	@feedbacks = OldFeedback.all.order(updated_at: :desc)
    authenticate_admin
    @feedbacks = OldFeedback.all
  end

  def unauthorized
  end

private
  
  def old_feedback_params
    params.permit(:f1 ,:f2 ,:f3 ,:f4 ,:f5 , :comment1, :comment2, :comment3, :comment4, :comment5, :comment6, :comment7, :comment8, :comment, :user_id)
  end

end
