class CreateQuizResponses < ActiveRecord::Migration[7.0]
  def change
    create_table :quiz_responses do |t|
      t.string :name
      t.references :questionnaire, null: false, foreign_key: true

      t.timestamps
    end
  end
end
