json.array!(@taikhoans) do |taikhoan|
  json.extract! taikhoan, :id, :usernam, :password
  json.url taikhoan_url(taikhoan, format: :json)
end
