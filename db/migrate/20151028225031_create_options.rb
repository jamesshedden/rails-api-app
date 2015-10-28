class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :title
      t.references :collection, index: true

      t.timestamps null: false
    end
    add_foreign_key :options, :collections
  end
end
