
json.array! @article.related_links do |extern_url|
  json.title extern_url.title
  json.url extern_url.url
  json.image_url extern_url.image_url
  json.self_description extern_url.self_description
  json.relation_description extern_url.relation_description
  json.extern_service extern_url.extern_service
end
