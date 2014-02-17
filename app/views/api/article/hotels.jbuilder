# article
json.src_id @article.src_id
json.title_plain @article.title_plain
json.excerpt @article.content

# author
json.author @article.author, :src_id, :name, :nickname, :url

# hotels
json.hotels @article.hotels_relations do |hotel_relation|
  hotel = hotel_relation.hotel
  json.name hotel.name
  json.image_url hotel.image_url
  json.content hotel.content
  json.relation_description hotel_relation.relation_description
end
