json.array!(@primary_menus) do |primary_menu|
  json.extract! primary_menu, :id, :name, :link, :order
  json.url primary_menu_url(primary_menu, format: :json)
end
