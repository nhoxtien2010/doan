json.array!(@baiviets) do |baiviet|
  json.extract! baiviet, :id, :tieude, :noidung, :taikhoan_id
  json.url baiviet_url(baiviet, format: :json)
end
