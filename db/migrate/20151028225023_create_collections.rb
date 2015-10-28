class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :title
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :collections, :users
  end
end
