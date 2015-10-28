class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.references :option, index: true
      t.references :collection, index: true

      t.timestamps null: false
    end
    add_foreign_key :choices, :options
    add_foreign_key :choices, :collections
  end
end
