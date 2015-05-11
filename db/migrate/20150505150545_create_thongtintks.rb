class CreateThongtintks < ActiveRecord::Migration
  def change
    create_table :thongtintks do |t|
      t.string :hinhanh
      t.string :email
      t.string :ten
      t.integer :tuoi
      t.string :diachi
      t.string :sdt
      t.boolean :gioitinh
      t.references :taikhoan, index: true

      t.timestamps
    end
  end
end
