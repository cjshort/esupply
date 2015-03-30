class CreateGetstateds < ActiveRecord::Migration
  def change
    create_table :getstateds do |t|
      t.string :fullname
      t.string :phonenumber
      t.string :emailaddress
      t.string :franchisename
      t.string :franchisewebsite

      t.timestamps
    end
  end
end
