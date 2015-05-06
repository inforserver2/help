class CreateUsertests < ActiveRecord::Migration
  def change
    create_table :usertests do |t|
      t.string :name
      t.string :age

      t.timestamps null: false
    end
  end
end
