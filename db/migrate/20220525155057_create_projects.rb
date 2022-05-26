class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.belongs_to :team
      t.string :name
      t.string :deadline
      t.string :created_by
      t.timestamps
    end
  end
end
