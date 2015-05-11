json.array!(@thongtintks) do |thongtintk|
  json.extract! thongtintk, :id, :hinhanh, :email, :ten, :tuoi, :diachi, :sdt, :gioitinh, :taikhoan_id
  json.url thongtintk_url(thongtintk, format: :json)
end
