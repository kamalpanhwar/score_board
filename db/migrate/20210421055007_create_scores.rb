# froen_string_literal: true

# migration for score
class CreateScores < ActiveRecord::Migration[6.1]
  def change
    create_table :scores do |t|
      t.string :team
      t.integer :p
      t.integer :w
      t.integer :l
      t.integer :d
      t.integer :f
      t.integer :a
      t.integer :pts

      t.timestamps
    end
  end
end
