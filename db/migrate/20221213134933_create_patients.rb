class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :document
      t.string :health_system_id
      t.date :birthday
      t.string :insurance_plan

      t.timestamps
    end
    add_index :patients, :document, unique: true
    add_index :patients, :health_system_id, unique: true
  end
end
