class CreateSeats < ActiveRecord::Migration[7.1]
  def change
    create_table :seats do |t|
      t.references :movie_show, null: false, foreign_key: true
      t.integer :row
      t.integer :number
      t.string :category
      t.string :status
      t.timestamps
    end
  end
end
