class ChangeColumnTypeInOldFeedback < ActiveRecord::Migration[5.0]
  def change
  	change_column :old_feedbacks, :comment1,  :text
  	change_column :old_feedbacks, :comment2,  :text
  	change_column :old_feedbacks, :comment3,  :text
  	change_column :old_feedbacks, :comment4,  :text
  	change_column :old_feedbacks, :comment5,  :text
  	change_column :old_feedbacks, :comment6,  :text
  	change_column :old_feedbacks, :comment7,  :text
  	change_column :old_feedbacks, :comment8,  :text
  end
end
