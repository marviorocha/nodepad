class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :title, null: false, default: ''
      t.text :body, null: false, default: ''
      t.datetime :date
      t.string :priority, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
