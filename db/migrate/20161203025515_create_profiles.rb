class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :place
      t.string :email
      t.bigint :phonenumber
      t.string :degree1p
      t.string :degree1c
      t.string :degree2p
      t.string :degree2c
      t.string :twelvep
      t.string :twelvec
      t.string :tenthp
      t.string :tenthc
      t.text :technicalskills
      t.text :nontechnicalskills
      t.text :analyticalskills
      t.text :projects
      t.text :coursestaken
      t.text :goodat
      t.text :dreamjob
      t.text :awards
      t.text :internship
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
