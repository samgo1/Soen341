class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.string :user
      t.text :body
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
