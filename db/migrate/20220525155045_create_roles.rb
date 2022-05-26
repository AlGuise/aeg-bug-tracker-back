class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|

      t.belongs_to :user, null: false, foreign_key: true
      t.integer :role_title 
        # 1. System Admin
        # 2. Project Manager
        # 3. SWE - FrontEnd
        # 4. SWE - BackEnd
      t.timestamps
    end
  end
end
