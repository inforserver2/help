json.array!(@usertests) do |usertest|
  json.extract! usertest, :id, :name, :age
  json.url usertest_url(usertest, format: :json)
end
