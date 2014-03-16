
json.array! @article.hotels_relations do |hotel_relation|
  hotel = hotel_relation.hotel
  json.name hotel.name
  json.image_url hotel.image_url
  json.content hotel.content
  json.relation_description hotel_relation.relation_description
end
