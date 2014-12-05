class CreatePrimaryContacts < ActiveRecord::Migration
  def change
    create_table :primary_contacts do |t|
      t.integer :lovedone_id
      t.integer :user_id

      t.timestamps
    end
  end
end
