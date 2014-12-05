class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.references :company, index: true
      t.references :lovedone, index: true

      t.timestamps
    end
  end
end
