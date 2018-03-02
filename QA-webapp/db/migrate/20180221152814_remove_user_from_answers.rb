class RemoveUserFromAnswers < ActiveRecord::Migration[5.1]
  def change
    remove_column :answers, :user, :string
  end
end
