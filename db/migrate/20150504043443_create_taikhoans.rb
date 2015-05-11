class CreateTaikhoans < ActiveRecord::Migration
  def change
    create_table :taikhoans do |t|
      t.string :usernam
      t.string :password

      t.timestamps
    end
  end
end
