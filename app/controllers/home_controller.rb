class HomeController < ApplicationController
  before_action :authenticate_user!
  def feedback
  	@questions = Question.all
  end
  
  def submitfeedback
  	if @feedback = OldFeedback.create(old_feedback_params)
      flash[:notice] = "Feedback successfully posted"
    else
      flash[:notice] = "Feedback aint posted"
    end
    
  end
  
  def feedbacks
#  	@feedbacks = OldFeedback.all.order(updated_at: :desc)
    @feedbacks = OldFeedback.all
  end

private
  
  def old_feedback_params
    params.permit(:f1 ,:f2 ,:f3 ,:f4 ,:f5 , :email, :comment)
  end

end
