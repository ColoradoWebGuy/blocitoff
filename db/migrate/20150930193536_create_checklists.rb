class CreateChecklists < ActiveRecord::Migration
  def change
    create_table :checklists do |t|
      t.string :title
      t.boolean :checked, :default => false

      t.timestamps null: false
    end
  end
end
