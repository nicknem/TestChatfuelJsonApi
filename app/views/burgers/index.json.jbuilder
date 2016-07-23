json.burgers @burgers do |burger|
  json.name burger.name
  json.price number_to_currency burger.price
end
