class House

  attr_accessor :clause

  def initialize
    @clause = Clause.new
  end

  def shuffle
    clause.clause_order = @clause.shuffled_order
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

  attr_accessor :clause_order
  
  def initialize(clause_order = [1,2,3,4,5,6,7,8,9,10,11,12])
    @clause_order = clause_order
  end

  def clause_order_for(number)
    clause_order[number-1]
  end

  def shuffled_order
    [1] + @clause_order[1..@clause_order.length-1].shuffle
  end

  def noun_and_verb(number)
    index = clause_order_for(number)
    "the #{noun(index)} that #{verb(index)}"
  end

  def noun(number)
    nouns = ["house", "malt", "rat", "cat", "dog", "cow with the crumpled horn", 
              "maiden all forlorn", "man all tattered and torn", "priest all shaven and shorn", 
              "rooster that crowed in the morn", "farmer sowing his corn", "horse and the hound and the horn"]

    nouns[number-1]
  end

  def verb(number)
    verbs = ["Jack built", "lay in", "ate", "killed", "worried", "tossed", "milked", 
              "kissed", "married", "woke", "kept", "belonged to"]

    verbs[number-1]
  end

end

class PirateHouse < House
  def article
    "Thar be "
  end
end
