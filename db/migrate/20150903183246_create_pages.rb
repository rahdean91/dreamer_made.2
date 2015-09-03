class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :goal
      t.string :link
      t.references :user, index: true
      t.boolean :public

      t.timestamps
    end
  end
end
