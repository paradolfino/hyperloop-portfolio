class CreateDeclarations < ActiveRecord::Migration[5.1]
  def change
    create_table :declarations do |t|
      t.text :content
      t.string :directory
      t.string :git

      t.timestamps
    end
  end
end
