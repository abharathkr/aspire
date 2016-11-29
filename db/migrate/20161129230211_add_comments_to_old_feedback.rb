class AddCommentsToOldFeedback < ActiveRecord::Migration[5.0]
  def change
    add_column :old_feedbacks, :comment1, :string
    add_column :old_feedbacks, :comment2, :string
    add_column :old_feedbacks, :comment3, :string
    add_column :old_feedbacks, :comment4, :string
    add_column :old_feedbacks, :comment5, :string
    add_column :old_feedbacks, :comment6, :string
    add_column :old_feedbacks, :comment7, :string
    add_column :old_feedbacks, :comment8, :string
  end
end
