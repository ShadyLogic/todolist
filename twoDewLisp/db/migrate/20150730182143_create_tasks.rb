class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.belongs_to :list, index: true
      t.boolean :complete

      t.timestamps
    end
  end
end
