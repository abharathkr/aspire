class CreateOldFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :old_feedbacks do |t|
      t.string :f1
      t.string :f2
      t.string :f3
      t.string :f4
      t.string :f5
      t.text :comment

      t.timestamps
    end
  end
end
