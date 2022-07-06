class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :name
      t.integer :age
      t.string :aasm_state
      t.timestamps
    end
  end
end
