class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|

      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :project, null: false, foreign_key: true
      t.integer :priority
        # 1. Immediate
        # 2. High
        # 3. Average
        # 4. Low
      t.integer :cat
        # 1. Bug Fix - Frontend
        # 2. Bug Fix - Backend
        # 3. Feature Update - Frontend
        # 4. Feature Update - Backend
        # 5. Feature Add/Delete - Frontend
        # 6. Feature Add/Delete - Backend
      t.integer :status
      t.string :description
      t.string :submitted_by
      t.string :closed_by
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false

    end
  end
end
