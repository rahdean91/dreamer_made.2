class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.string :title
      t.text :details
      t.references :challenge, index: true
      t.references :user, index: true
      t.string :reward
      t.string :contribution_type

      t.timestamps
    end
  end
end
