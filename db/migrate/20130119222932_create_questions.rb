class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :prompt
      t.text :answer
      t.integer :difficulty
      t.references :user

      t.timestamps
    end
    add_index :questions, :user_id
  end
end
