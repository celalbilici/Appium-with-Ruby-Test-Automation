When(/^belirtmiş olduğum  "([^"]*)" adresine bir "([^"]*)" işlemi yapilirsa$/) do |adress, promp|
  if promp == "get"
    $response=RestClient.get "#{adress}"
    p "Servisten Gelen Değer: #{$response.code}"
  elsif promp == "put"
    $response=RestClient.put "#{adress}"
    p "Servisten Gelen Değer: #{$response.code}"
  else
    promp == "post"
    $response=RestClient.post "#{adress}"
    p "Servisten Gelen Değer: #{$response.code}"

  end
end

When(/^http status code (\d+) geldiği görülür$/) do |status_code|

  case
    when status_code == 200
      expect($response.code).to eq status_code
    when status_code == 404
      expect($response.code).to eq "#{status_code} + Not Found"
    when status_code == 504
      expect($response.code).to eq "#{status_code} + Unknown Host"
  end
end