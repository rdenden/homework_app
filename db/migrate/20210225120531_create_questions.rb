class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.integer :answer1
      t.integer :answer2
      t.integer :answer3
      t.integer :answer4
      t.integer :answer5      
      t.timestamps
    end
  end
end
