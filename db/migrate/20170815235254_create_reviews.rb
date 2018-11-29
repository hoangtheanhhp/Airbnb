class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.integer :star, default: 1
      t.references :room, foreign_key: true
      t.references :reservation, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :type, default: 0

      t.timestamps
    end

  end
end
