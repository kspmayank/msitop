json.array!(@left_sidebars) do |left_sidebar|
  json.extract! left_sidebar, :id, :content
  json.url left_sidebar_url(left_sidebar, format: :json)
end
