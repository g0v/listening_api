object @org
attribute :name, :eng_name

child @rules do
  attributes :id, :title, :content, :url

  child @tags do
    attributes :name, :eng_name, :value, :value_zh
  end
end
