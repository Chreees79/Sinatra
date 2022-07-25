require 'csv'
class Gossip
  attr_accessor :author, :content, :comment

# permet d'initialiser un potin avec ses paramètres
  def initialize(author, content, comment)
    @author = author
    @content = content
    @comment = comment
  end

# permet d'enregistrer un potin dans un fichier CSV
  def save
    CSV.open("./db/gossip.csv", "ab") do |csv|
      csv << [@author, @content, @comment]
    end
  end

# permet de récupérer tous les potins dans un array
  def self.all
    all_gossips = []
    CSV.read("db/gossip.csv").each do |row| 
      all_gossips.push(Gossip.new(row[0], row[1], row[2]))
    end
    return all_gossips
  end

# permet de récupérer un potin à partir de son id
  def self.find(id)
    searched_gossip = []
    CSV.open('db/gossip.csv').each do |row|
      searched_gossip.push(Gossip.new(row[0], row[1], row[2]))
    end
    return searched_gossip[id.to_i - 1]
  end

# permet de modifier un potin à partir de son id et de le mettre à jour
  def self.update(id, updated_author, updated_content, updated_comment)
    id = id.to_i - 1
    new_list_gossips = CSV.read("db/gossip.csv")
    new_list_gossips[id][0] = updated_author
    new_list_gossips[id][1] = updated_content
    new_list_gossips[id][2] = updated_comment
    CSV.open("db/gossip.csv", "w+") do |csv|
      new_list_gossips.each do |updated_row|
        csv << updated_row
      end
    end
  end
end
