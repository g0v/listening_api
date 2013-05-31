collection @rules
attributes :id, :title, :content, :url

child :tags do
  attributes :name, :eng_name, :value, :value_zh
end

child :links do
  attributes :name, :url
end