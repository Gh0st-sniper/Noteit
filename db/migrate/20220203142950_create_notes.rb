class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.text :description
      t.string :tag

      t.timestamps
    end
  end
end
