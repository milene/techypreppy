class CreateAttempts < ActiveRecord::Migration
  def change
    create_table :attempts do |t|
      t.text :answer
      t.boolean :correct
      t.integer :difficulty_rating
      t.integer :attempt_ms
      t.integer :attempt_number
      t.integer :session
      t.references :user
      t.references :question

      t.timestamps
    end
    add_index :attempts, :user_id
    add_index :attempts, :question_id
  end 
end