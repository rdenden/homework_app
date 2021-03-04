class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string     :question_index,   null: false
      t.integer    :score,            null: false
      t.references :user,             foreign_key: true
      t.timestamps
    end
  end
end
