class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user, index: true
      t.string :job_title
      t.text :about_me

      t.timestamps
    end
  end
end
