
json.array! @article.related_links do |related_link|
  json.title related_link.title
  json.url related_link.url
  json.image_url related_link.image_url
  json.self_description related_link.self_description
  json.relation_description related_link.relation_description
  json.extern_service related_link.extern_service
end
