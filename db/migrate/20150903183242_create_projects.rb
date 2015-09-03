class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :goal
      t.references :user, index: true
      t.references :page, index: true
      t.boolean :public
      t.references :category, index: true
      t.references :phase, index: true

      t.timestamps
    end
  end
end
