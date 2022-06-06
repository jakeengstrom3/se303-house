class House

  attr_accessor :clause

  def initialize
    @clause = Clause.new
  end

  def shuffle
    clause.clause_order = clause.shuffled_order
    self
  end

  def shuffle_nouns_and_verbs
    clause.noun_order = clause.shuffled_order
    clause.verb_order = clause.shuffled_order
    self
  end

  def article
    "This is "
  end

  def line(number)  
    article + number.downto(1).map {|number| clause.noun_and_verb(number)}.join(' ') + ".\n"
  end

  def recite
    (1..12).each.map {|n| line(n)}.join("\n")
  end

end

class Clause

  attr_accessor :clause_order, :noun_order, :verb_order
  
  def initialize
    @clause_order = unshuffled_order
    @noun_order = unshuffled_order
    @verb_order = unshuffled_order
  end

  def clause_number_for(number)
    clause_order[number-1]
  end

  def noun_number_for(number)
    noun_order[number-1]
  end

  def verb_number_for(number)
    verb_order[number-1]
  end

  def unshuffled_order
    [1,2,3,4,5,6,7,8,9,10,11,12]
  end

  def shuffled_order
    unshuffled_order.drop(1).shuffle.prepend(1)
  end

  def noun_and_verb(number)
    index = clause_number_for(number)
    "the #{noun(index)} that #{verb(index)}"
  end

  def noun(number)
    index = noun_number_for(number)
    nouns = ["house", "malt", "rat", "cat", "dog", "cow with the crumpled horn", 
              "maiden all forlorn", "man all tattered and torn", "priest all shaven and shorn", 
              "rooster that crowed in the morn", "farmer sowing his corn", "horse and the hound and the horn"]

    nouns[index-1]
  end

  def verb(number)
    index = verb_number_for(number) 
    verbs = ["Jack built", "lay in", "ate", "killed", "worried", "tossed", "milked", 
              "kissed", "married", "woke", "kept", "belonged to"]
    
    verbs[index-1]
  end

end

class PirateHouse < House
  def article
    "Thar be "
  end
end