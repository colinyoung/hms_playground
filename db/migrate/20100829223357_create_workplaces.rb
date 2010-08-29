class CreateWorkplaces < ActiveRecord::Migration
  def self.up
    create_table :workplaces do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :lng
      t.string :lat
      t.string :phone
      t.string :country
      t.string :company_id

      t.timestamps
    end
  end

  def self.down
    drop_table :workplaces
  end
end
