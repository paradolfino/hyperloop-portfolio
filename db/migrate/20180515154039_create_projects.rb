class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :frameworks
      t.text :languages
      t.text :gems
      t.string :image
      t.timestamps
    end
  end
end
