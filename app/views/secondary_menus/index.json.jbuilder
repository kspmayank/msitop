json.array!(@secondary_menus) do |secondary_menu|
  json.extract! secondary_menu, :id, :name, :link, :order
  json.url secondary_menu_url(secondary_menu, format: :json)
end
