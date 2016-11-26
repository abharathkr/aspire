class AddUseridToOldFeedback < ActiveRecord::Migration[5.0]
  def change
    add_reference :old_feedbacks, :user, foreign_key: true
  end
end
