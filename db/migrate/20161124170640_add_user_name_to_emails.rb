class AddUserNameToEmails < ActiveRecord::Migration[5.0]
  def change
    add_column :emails, :user_name, :string
  end
end
