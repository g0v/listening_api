collection @rules
attributes :id, :title, :content, :url

child :tags do
  attributes :name, :eng_name, :value
end