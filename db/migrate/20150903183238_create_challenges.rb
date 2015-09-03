class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :title
      t.text :details
      t.boolean :public

      t.timestamps
    end
  end
end
