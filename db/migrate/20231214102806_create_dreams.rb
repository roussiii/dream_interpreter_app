class CreateDreams < ActiveRecord::Migration[7.0]
  def change
    create_table :dreams do |t|
      t.references :user, null: false, foreign_key: true
      t.text :content
      t.text :interpretation
      t.date :date_submitted

      t.timestamps
    end
  end
end
