class Comments
attr_accessor :id, :author, :content

def initialize(id, author, content)
  @id = id_comment
  @author = author_comment
  @content = content_comment
end 

def save
CSV.open("/db/comments.csv", "ab") do |csv|
  csv << [@id, @author, @content]
end




end