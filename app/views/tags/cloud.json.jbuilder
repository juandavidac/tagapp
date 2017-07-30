json.array!(@tags) do |tag|
  json.text tag.text
  json.weight tag.weight
  json.link tag_filter_path(tag.text)
end
