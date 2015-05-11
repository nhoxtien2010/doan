json.array!(@sanvandongs) do |sanvandong|
  json.extract! sanvandong, :id, :soghe, :diachi, :thongtinthem, :doibong_id
  json.url sanvandong_url(sanvandong, format: :json)
end
